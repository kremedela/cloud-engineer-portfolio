import pandas as pd
import matplotlib.pyplot as plt
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
import os

# Paths
base_path = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
data_path = os.path.join(base_path, "data")
charts_path = os.path.join(base_path, "charts")
reports_path = os.path.join(base_path, "reports")

# Create folders if they don't exist
os.makedirs(charts_path, exist_ok=True)
os.makedirs(reports_path, exist_ok=True)

# Process each CSV in data/
for file_name in os.listdir(data_path):
    if file_name.endswith(".csv"):
        csv_file = os.path.join(data_path, file_name)
        df = pd.read_csv(csv_file)

        # Summary statistics
        summary = df.describe()
        print(f"\nSummary for {file_name}:\n", summary)

        # Generate charts for numeric columns
        numeric_cols = df.select_dtypes(include='number').columns
        chart_files = []

        for col in numeric_cols:
            plt.figure()
            df[col].plot(kind='bar', title=f"{col} Chart")
            chart_file = os.path.join(charts_path, f"{file_name}_{col}.png")
            plt.savefig(chart_file)
            plt.close()
            chart_files.append(chart_file)

        # Generate PDF report
        pdf_file = os.path.join(reports_path, f"{file_name}_report.pdf")
        c = canvas.Canvas(pdf_file, pagesize=letter)
        width, height = letter
        c.setFont("Helvetica-Bold", 14)
        c.drawString(50, height - 50, f"Report for {file_name}")

        # Add summary stats to PDF
        c.setFont("Helvetica", 10)
        text = c.beginText(50, height - 80)
        text.textLines(summary.to_string())
        c.drawText(text)

        # Add charts to PDF
        y_position = height - 300
        for chart in chart_files:
            c.drawImage(chart, 50, y_position, width=500, preserveAspectRatio=True)
            y_position -= 250  # move down for next chart

        c.save()
        print(f"Report generated: {pdf_file}")
