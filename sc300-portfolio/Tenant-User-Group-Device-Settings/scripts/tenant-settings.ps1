🧪 Lab Steps (Full Detailed Instructions — Plain Text)

Step 1 — Access and Review Tenant Properties
Log into the Azure Portal.
Navigate to Microsoft Entra → Overview.
Review tenant details:

Tenant ID

Primary domain

Tenant name

Regional settings
📸(/screenshots/01-tenant-overview.png)

Step 2 — Configure Tenant Properties
Navigate to Microsoft Entra → Tenant properties.
Modify settings such as:

Organization display name

Tech support contact or URL

Privacy statement

Default language
Click Save.
📸(/screenshots/02-tenant-properties.png)

Step 3 — Configure User Settings
Navigate to Microsoft Entra → Users → User settings.
Set policies such as:

Allow users to register applications: On/Off

Self-service password reset: Enabled for all or selected

External collaboration settings (Guest restrictions)
Set recommended security:

Guests: Restrict to limited access

App registrations: Admins only
Click Save.
📸(/screenshots/03-user-settings.png)

Step 4 — Configure Group Settings
Navigate to Microsoft Entra → Groups → General & Settings.
Configure:

Group creation permissions (Admins vs users)

Group expiration policies (Access review-based lifecycle)

Naming policy (Prefix/Suffix enforcement like CORP_)
Click Save.
📸(/screenshots/04-group-settings.png)

Step 5 — Configure Device Settings
Navigate to Microsoft Entra → Devices → Device settings.
Set:

User device join restrictions (e.g., Only specific users)

Maximum number of devices per user

Require MFA for device registration

Device join types (Azure AD joined / Hybrid)
Click Save.
📸(/screenshots/05-device-settings.png)

Step 6 — Validate Tenant Configuration
Create a test user if not yet created.
Assign the user to a test group.
Register a device or simulate device join.
Validate that:

Device restrictions apply

User cannot create groups if disabled

User cannot register apps if restricted
📸(/screenshots/06-validation.png)