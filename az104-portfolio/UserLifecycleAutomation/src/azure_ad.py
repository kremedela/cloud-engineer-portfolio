from azure.identity import ClientSecretCredential
from msgraph.core import GraphClient

TENANT_ID = "<YOUR_TENANT_ID>"
CLIENT_ID = "<YOUR_CLIENT_ID>"
CLIENT_SECRET = "<YOUR_CLIENT_SECRET>"

credential = ClientSecretCredential(TENANT_ID, CLIENT_ID, CLIENT_SECRET)
client = GraphClient(credential=credential)

def create_user(user_data):
    """Create a user in Azure AD"""
    payload = {
        "accountEnabled": True,
        "displayName": f"{user_data['FirstName']} {user_data['LastName']}",
        "mailNickname": user_data['FirstName'].lower(),
        "userPrincipalName": user_data['Email'],
        "passwordProfile": {
            "forceChangePasswordNextSignIn": True,
            "password": "TempPass123!"
        }
    }
    print(f"Mock creating user: {user_data['Email']}")  # Demo line for safety
    # Uncomment below for real API call
    # response = client.post("/users", json=payload)
    # return response.json()
