name: Deploy Power Platform Solution

on:
  workflow_dispatch:

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3

      - name: Install pac CLI
        run: sudo npm install -g pac-cli

      - name: Pack Managed Solution
        run: |
          pac solution pack \
            --folder "./src/${{ secrets.SOLUTION_NAME }}" \
            --zipfile "./build/${{ secrets.SOLUTION_NAME }}_managed.zip" \
            --managed true

      - name: Deploy to TEST
        run: |
          pac auth create \
            --url ${{ secrets.TEST_ENV_URL }} \
            --tenant ${{ secrets.TENANT_ID }} \
            --applicationId ${{ secrets.CLIENT_ID }} \
            --clientSecret ${{ secrets.CLIENT_SECRET }}

          pac solution import \
            --path "./build/${{ secrets.SOLUTION_NAME }}_managed.zip" \
            --overwrite

      - name: Deploy to PROD
        run: |
          pac auth create \
            --url ${{ secrets.PROD_ENV_URL }} \
            --tenant ${{ secrets.TENANT_ID }} \
            --applicationId ${{ secrets.CLIENT_ID }} \
            --clientSecret ${{ secrets.CLIENT_SECRET }}

          pac solution import \
            --path "./build/${{ secrets.SOLUTION_NAME }}_managed.zip" \
            --overwrite
