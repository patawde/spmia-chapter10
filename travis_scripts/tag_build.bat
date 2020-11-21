@echo off
set GITHUB_TOKEN=2eb2cc1b1353d9b30e2772c9777f808885664329
set BUILD_NAME=BuildPipeLineDemo_001
set TARGET_URL=https://api.github.com/repos/patawde/spmia-chapter10/releases?access_token=%GITHUB_TOKEN%

set body={"tag_name": "%BUILD_NAME%","target_commitish": "master","name": "%BUILD_NAME%","body": "Release of version %BUILD_NAME%","draft": true,"prerelease": true}

echo %body%

curl -k -X POST -H "Content-Type:application/json"  %TARGET_URL%

