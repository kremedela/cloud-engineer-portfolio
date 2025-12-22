{
  "type": "AdaptiveCard",
  "body": [
    {
      "type": "TextBlock",
      "text": "New Employee Onboarding Request",
      "size": "Large",
      "weight": "Bolder"
    },
    {
      "type": "FactSet",
      "facts": [
        { "title": "Employee:", "value": "@{triggerOutputs()?['body/EmployeeName']}" },
        { "title": "Department:", "value": "@{triggerOutputs()?['body/Department']}" },
        { "title": "Start Date:", "value": "@{triggerOutputs()?['body/StartDate']}" }
      ]
    }
  ],
  "actions": [
    { "type": "Action.Submit", "title": "Approve" },
    { "type": "Action.Submit", "title": "Reject" }
  ],
  "version": "1.3"
}
