# Script for Windows PowerShell

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

# 以上指令在 Windows 下會使 dist 資料夾的 branch 名稱是 master 所以官方文件
# https://cli.vuejs.org/guide/deployment.html#github-pages
# 提供的指令：
# 「git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages」
# 是從 main 推送到 gh-pages ，會沒東西推，把 main 改成 master 就可以順利推上去了
# 或者加上一行指令：
# 「git branch -m master main」
# 把 dist 的 branch 名稱改成 main 也可以

# 1. 官方文件的 push 指令：
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

# 2. 修改過的 push 指令：
git push -f https://github.com/jchans-learning/my-first-vue-project.git master:gh-pages

cd ..