import pandas as pd

def load_hr_data(file_path):
    """Load HR data from CSV"""
    return pd.read_csv(file_path)

def get_active_users(df):
    """Filter active employees"""
    return df[df['Status'] == 'Active'].to_dict(orient='records')
