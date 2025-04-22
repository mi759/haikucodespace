# Avoid accidentally adding embedded repo
git config set advice.addEmbeddedRepo false

# Setup backend
git clone https://github.com/mi759/haikuapi.git

# Setup frontend
git clone https://github.com/mi759/haikufrontend.git
cd haikufrontend
npm install