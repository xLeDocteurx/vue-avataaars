# cd github-page

npm run build

# cp -a ./gh-page/. ../docs/

# cd ../

git add .

git commit -m "deploying new github page via shell script"

git push origin master
# Ajouter un tag au push
# git tag [tag number] -a [description]
# git push origin master --tags


# Publier sur npm
# npm run build-bundle
# Incrémenter la version dans le package.json
# npm publish