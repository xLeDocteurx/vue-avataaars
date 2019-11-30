# cd github-page

npm run build

cp -a ./dist/. ../docs/

# cd ../

git add .

git commit -m "deploying new github page via shell script"

# Ajouter un tag au push
git push origin master

# npm run build-bundle

# Incrémenter la version dans le package.json
# npm publish