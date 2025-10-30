import logging
import os
from hr_integration import load_hr_data, get_active_users
from azure_ad import create_user

# Logging setup
os.makedirs("logs", exist_ok=True)
logging.basicConfig(filename="logs/run.log", level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

def main():
    hr_file = "sample_data/employees.csv"
    hr_data = load_hr_data(hr_file)
    active_employees = get_active_users(hr_data)

    for emp in active_employees:
        try:
            logging.info(f"Creating user: {emp['Email']}")
            create_user(emp)
            logging.info(f"User created successfully: {emp['Email']}")
        except Exception as e:
            logging.error(f"Failed to create user {emp['Email']}: {e}")

if __name__ == "__main__":
    main()
