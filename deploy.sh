#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:vasekdev/vasekdev.github.io.git v1

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:vasekdev/foobar2.git main:gh-pages

cd -