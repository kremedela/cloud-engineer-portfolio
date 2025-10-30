import pandas as pd
from src.hr_integration import load_hr_data, get_active_users

def test_load_hr_data():
    df = load_hr_data("sample_data/employees.csv")
    assert isinstance(df, pd.DataFrame)
    assert "Email" in df.columns

def test_get_active_users():
    df = load_hr_data("sample_data/employees.csv")
    active = get_active_users(df)
    assert all(emp["Status"] == "Active" for emp in active)
