# Avoid accidentally adding embedded repo
git config set advice.addEmbeddedRepo false

# Setup backend
gh repo clone mi759/haikuapi

# Setup frontend
gh repo clone mi759/haikufrontend
cd haikufrontend
npm install