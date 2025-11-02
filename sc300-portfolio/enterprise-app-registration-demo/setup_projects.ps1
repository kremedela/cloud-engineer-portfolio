# ----------------------------
# Enterprise App Integration Demo Setup Script
# ----------------------------

# Create folders
$folders = @(
    "demo-app",
    "demo-app\templates",
    "demo-app\static",
    "scim",
    "scripts",
    "tests",
    "docs"
)
foreach ($f in $folders) { New-Item -Path $f -ItemType Directory -Force }

# ---------- Root Files ----------
Set-Content -Path "README.md" -Value @"
# Enterprise App Integration Demo

Demo project integrating a SaaS app with Microsoft Entra ID (Azure AD) for:
- 🔐 SSO (OpenID Connect)
- 👤 SCIM provisioning
- 📊 User reporting with Pandas
- 🧪 Automated testing with Pytest

## Structure

\`\`\`
demo-app/     # Flask web app
scim/         # SCIM provisioning server
scripts/      # Reports & automation
tests/        # Pytest validation
docs/         # Setup & troubleshooting
screenshots/  # Optional images
\`\`\`
"@

Set-Content -Path ".gitignore" -Value @"
venv/
__pycache__/
*.pyc
.env
*.log
.DS_Store
"@

# Optional architecture diagram
New-Item -Path "architecture-diagram.png" -ItemType File -Force

# ---------- demo-app ----------
Set-Content -Path "demo-app\app.py" -Value @"
from flask import Flask, redirect, url_for, session, render_template
from authlib.integrations.flask_client import OAuth
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)
app.secret_key = os.getenv('SECRET_KEY', 'devsecret')

oauth = OAuth(app)
oauth.register(
    name='azure',
    client_id=os.getenv('OIDC_CLIENT_ID'),
    client_secret=os.getenv('OIDC_CLIENT_SECRET'),
    server_metadata_url=f'https://login.microsoftonline.com/{os.getenv("AZURE_TENANT_ID")}/v2.0/.well-known/openid-configuration',
    client_kwargs={'scope': 'openid profile email'}
)

@app.route('/')
def index():
    user = session.get('user')
    return render_template('home.html', user=user)

@app.route('/login')
def login():
    redirect_uri = url_for('auth', _external=True)
    return oauth.azure.authorize_redirect(redirect_uri)

@app.route('/auth/callback')
def auth():
    token = oauth.azure.authorize_access_token()
    user = oauth.azure.parse_id_token(token)
    session['user'] = user
    return redirect('/')

@app.route('/logout')
def logout():
    session.clear()
    return redirect('/')

if __name__ == '__main__':
    app.run(debug=True, port=5000)
"@

Set-Content -Path "demo-app\config.py" -Value @"
import os
from dotenv import load_dotenv

load_dotenv()

SECRET_KEY = os.getenv('SECRET_KEY', 'devsecret')
OIDC_CLIENT_ID = os.getenv('OIDC_CLIENT_ID')
OIDC_CLIENT_SECRET = os.getenv('OIDC_CLIENT_SECRET')
AZURE_TENANT_ID = os.getenv('AZURE_TENANT_ID')
OIDC_REDIRECT_URI = os.getenv('OIDC_REDIRECT_URI')
"@

Set-Content -Path "demo-app\requirements.txt" -Value @"
Flask
Authlib
python-dotenv
requests
pandas
pytest
"@

Set-Content -Path "demo-app\templates\home.html" -Value @"
<!DOCTYPE html>
<html>
<head>
    <title>Enterprise App Integration Demo</title>
    <link rel='stylesheet' href='{{ url_for('static', filename='style.css') }}'>
</head>
<body>
    <h1>Enterprise App Integration Demo</h1>
    {% if user %}
        <p>Welcome, {{ user['name'] }} ({{ user['email'] }})</p>
        <a href='{{ url_for('logout') }}'>Logout</a>
    {% else %}
        <a href='{{ url_for('login') }}'>Login with Microsoft</a>
    {% endif %}
</body>
</html>
"@

Set-Content -Path "demo-app\static\style.css" -Value @"
body {
    font-family: Arial, sans-serif;
    margin: 40px;
    background-color: #f0f2f5;
    color: #333;
}
h1 { color: #0078d7; }
a { text-decoration: none; color: #0078d7; font-weight: bold; }
"@

# ---------- scim ----------
Set-Content -Path "scim\scim_server.py" -Value @"
from flask import Flask, request, jsonify

app = Flask(__name__)
users = {}

@app.route('/scim/v2/Users', methods=['POST'])
def create_user():
    data = request.json
    user_id = data.get('userName')
    if not user_id:
        return jsonify({'error':'Missing userName'}), 400
    users[user_id] = data
    return jsonify(data), 201

@app.route('/scim/v2/Users/<user_id>', methods=['DELETE'])
def delete_user(user_id):
    if user_id in users:
        del users[user_id]
        return '', 204
    return jsonify({'error':'User not found'}), 404

@app.route('/scim/v2/Users', methods=['GET'])
def list_users():
    return jsonify({'Resources': list(users.values())}), 200

if __name__ == '__main__':
    app.run(debug=True, port=5001)
"@

# ---------- scripts ----------
Set-Content -Path "scripts\user_report.py" -Value @"
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
"@

# ---------- tests ----------
Set-Content -Path "tests\test_scim.py" -Value @"
import requests

BASE_URL = 'http://localhost:5001/scim/v2'

def test_user_creation():
    user = {'userName':'test_user','active':True}
    r = requests.post(f'{BASE_URL}/Users', json=user)
    assert r.status_code == 201

def test_user_listing():
    r = requests.get(f'{BASE_URL}/Users')
    assert r.status_code == 200
    assert 'Resources' in r.json()

def test_user_deletion():
    user_id = 'test_user'
    r = requests.delete(f'{BASE_URL}/Users/{user_id}')
    assert r.status_code == 204
"@

# ---------- docs ----------
$doc_files = @(
    "setup-azure-entra.md",
    "configure-sso.md",
    "configure-scim-provisioning.md",
    "troubleshooting.md"
)
foreach ($f in $doc_files) { New-Item -Path "docs\$f" -ItemType File -Force }

Write-Host "✅ Enterprise App Integration Demo structure created successfully!"
