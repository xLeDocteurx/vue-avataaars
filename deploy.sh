cd github-page

npm run build

cp -a ./dist/. ../docs/

cd ../

git add .

git commit -m "deploying new github page via shell script"