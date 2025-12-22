## 🧪 **Optional Script (Flow YAML Style Example)**

```yaml
# Example Flow Structure (Conceptual Only)
trigger:
  type: Manual
actions:
  Get_Posts:
    type: CustomConnector.GetPosts
  Show_Results:
    type: Compose
    inputs: "@{body('Get_Posts')}"
