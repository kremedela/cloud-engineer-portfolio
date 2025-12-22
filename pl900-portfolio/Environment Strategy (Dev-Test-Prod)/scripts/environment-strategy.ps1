environmentStrategy:
  dev:
    name: "PP-DEV"
    type: "Developer"
    allowMakers: true
    versioningExample: "1.0.0.x"
  test:
    name: "PP-TEST"
    type: "Sandbox"
    allowMakers: false
    requireUAT: true
  prod:
    name: "PP-PROD"
    type: "Production"
    lockedDown: true
    deploymentType: "ManagedOnly"
versioning:
  rules:
    major: "Breaking changes"
    minor: "New features"
    patch: "Fixes"
