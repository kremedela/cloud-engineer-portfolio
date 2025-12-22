{
  "name": "AIBuilderPredictionFlow",
  "definition": {
    "$schema": "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#",
    "actions": {
      "AI_Builder_Prediction": {
        "type": "OpenApiConnection",
        "inputs": {
          "host": { "connectionName": "aibuilder", "operationId": "Predict", "apiId": "/providers/Microsoft.PowerApps/apis/shared_ai-builder" },
          "parameters": {
            "modelId": "INSERT-YOUR-MODEL-ID",
            "payload": "@{triggerBody()?['data']}"
          }
        }
      },
      "Send_Email": {
        "type": "OpenApiConnection",
        "inputs": {
          "host": { "connectionName": "office365", "operationId": "SendEmail", "apiId": "/providers/Microsoft.PowerApps/apis/shared_office365" },
          "parameters": {
            "To": "you@domain.com",
            "Subject": "AI Model Prediction Result",
            "Body": "Prediction Output: @{outputs('AI_Builder_Prediction')?['result']}"
          }
        }
      }
    },
    "triggers": {
      "manual": { "type": "Request", "kind": "Button", "inputs": {} }
    }
  }
}
