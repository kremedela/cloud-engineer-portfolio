import requests
import pandas as pd

resp = requests.get('http://localhost:5001/scim/v2/Users')
data = resp.json().get('Resources', [])

df = pd.DataFrame(data)

if not df.empty:
    df['userName'] = df['userName'].str.lower()
    print('Provisioned Users:')
    print(df[['userName','active']])
    df.to_csv('user_report.csv', index=False)
    print('Saved user_report.csv')
else:
    print('No users found.')
