# Build the project
npm run build

# Create a simple index.html for GitHub Pages
Write-Host "Building for GitHub Pages..."

# Copy the built files to a deployment directory
if (Test-Path "deploy") {
    Remove-Item -Recurse -Force "deploy"
}
New-Item -ItemType Directory -Name "deploy"
Copy-Item -Path "dist\*" -Destination "deploy" -Recurse

# Create a simple index.html that redirects to the main app
$indexContent = @"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MartialZone - Martial Arts E-commerce Website</title>
    <style>
      body { 
        margin: 0; 
        padding: 20px; 
        font-family: Arial, sans-serif; 
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        text-align: center;
      }
      .container {
        max-width: 600px;
        margin: 100px auto;
        padding: 40px;
        background: rgba(255,255,255,0.1);
        border-radius: 20px;
        backdrop-filter: blur(10px);
      }
      h1 { font-size: 2.5em; margin-bottom: 20px; }
      p { font-size: 1.2em; margin-bottom: 30px; }
      .loading { 
        display: inline-block;
        width: 20px;
        height: 20px;
        border: 3px solid rgba(255,255,255,.3);
        border-radius: 50%;
        border-top-color: #fff;
        animation: spin 1s ease-in-out infinite;
      }
      @keyframes spin { to { transform: rotate(360deg); } }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>🥋 MartialZone</h1>
      <p>Loading your martial arts website...</p>
      <div class="loading"></div>
    </div>
    <script>
      // Redirect to the main app
      window.location.href = './index.html';
    </script>
  </body>
</html>
"@

$indexContent | Out-File -FilePath "deploy\index.html" -Encoding UTF8

Write-Host "Deployment files ready in 'deploy' directory!"
Write-Host "Upload the contents of the 'deploy' folder to GitHub Pages"
