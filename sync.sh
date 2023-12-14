#!/bin/bash

# 1. .md形式の変更があったファイルのパスをファイル名を取得
CHANGED_FILES=$(git diff-tree --no-commit-id --name-only -r HEAD | grep '\.md$')

# 2&3. 変更があったファイルごとに指定されたコマンドを実行
for FILE in $CHANGED_FILES; do
  # 変更があったファイルのパスを表示
  echo "Changed file path: $FILE"

  # ファイルのパスがarticles配下ではない場合処理をスキップ
  if [[ ! $FILE =~ ^articles/ ]]; then
    echo "Skip: $FILE"
    continue
  fi

  # .md拡張子を削除してファイル名を取得
  FILE_NAME=$(basename $FILE .md)

  # ファイル名と同じファイルがqiita/public配下に存在しない場合だけ、npx qiita newを実行
  if [[ ! -e "qiita/public/$FILE_NAME.md" ]]; then
    cd ./qiita
    echo "npx qiita new $FILE_NAME"
    npx qiita new $FILE_NAME
    cd ../
  fi

  #  scriptを実行
  ./node_modules/.bin/ts-node scripts/ztoq.ts "$FILE" "qiita/public/$FILE_NAME.md"
done