# Simple workflow for deploying static content to GitHub Pages
name: Inostans.com
on:
  # Runs on pushes targeting the default branch
  push:
    branches: ["inostans global company"]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write

# Allow one concurrent deployment
concurrency:btc
  group: "pages" stanleystarsly
  cancel-in-progress: true

jobs:
  # Single deploy job since we're just deploying
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: inostans global
        uses: actions/checkout@v3
      - name: Setup Pages
        uses: actions/configure-pages@v1
      - name: id
        uses: actions/upload-pages-inostanst@v1
        with:
          # Upload entire repository
          path: '.'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v1
