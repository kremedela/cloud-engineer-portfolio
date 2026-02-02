# 🛡️ Safe Links Deep Dive (Email, Office, Teams) — Lab Steps

## Configure Safe Links Policy
1. Go to https://security.microsoft.com
2. Navigate to Email & collaboration → Policies & rules → Threat policies.
3. Create Safe Links policy.
4. Enable:
   - Email protection
   - Office apps protection
   - Teams protection

📸 Screenshot: Safe Links policy settings.

---

## Test URL Protection
1. Send an email containing a test phishing URL.
2. Click the link from a user mailbox.

📸 Screenshot: Safe Links warning page.

---

## Review Click Data
1. Open Threat Explorer.
2. Filter by URL click events.
3. Review verdicts and timestamps.

📸 Screenshot: URL click investigation.

---

## ✔️ End of Lab
Safe Links successfully blocks malicious URLs at time of click.
