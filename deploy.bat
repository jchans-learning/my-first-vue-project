REM Script for Windows PowerShell

REM abort on errors
set -e

REM build
npm run build

REM navigate into the build output directory
cd dist

REM if you are deploying to a custom domain
REM echo 'www.example.com' > CNAME

git init 
git add -A
git commit -m 'deploy'

REM 以上指令在 Windows 下會使 dist 資料夾的 branch 名稱是 master 所以官方文件
REM https://cli.vuejs.org/guide/deployment.htmlREMgithub-pages
REM 提供的指令：
REM 「git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages」
REM 是從 main 推送到 gh-pages ，會沒東西推，把 main 改成 master 就可以順利推上去了
REM 或者加上一行指令：
REM 「git branch -m master main」
REM 把 dist 的 branch 名稱改成 main 也可以

REM 1. 官方文件的 push 指令：
REM if you are deploying to https://<USERNAME>.github.io
REM git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

REM if you are deploying to https://<USERNAME>.github.io/<REPO>
REM git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

REM 2. 修改過的 push 指令：
git push -f https://github.com/jchans-learning/my-first-vue-project.git master:gh-pages

cd ..