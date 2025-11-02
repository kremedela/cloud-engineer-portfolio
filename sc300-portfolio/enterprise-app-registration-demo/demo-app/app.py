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
