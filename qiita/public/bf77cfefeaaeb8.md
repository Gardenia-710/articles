---
title: Cursorってどうなんだろう？
tags:
  - エディタ
  - cursor
private: false
updated_at: '2024-02-28T21:54:32+09:00'
id: 0c4bd25e08f823d96c51
organization_url_name: null
slide: false
ignorePublish: false
---

この記事は以下のスクラップをまとめた記事です。

https://zenn.dev/gardenia_710/scraps/704e77324af94b

## はじめに

今回は、Cursorエディタについて調べてみました。

簡単にいうとCopilotを内蔵しているエディタです。

百聞は一見にしかず、ということで、実際に使ってみたいと思います。

## 使ってみる

### インストール

まずは、インストールからです。

公式ページからダンロードを進めます。

https://cursor.sh/pricing

画面の通りインストールを進めていきます。

![](https://storage.googleapis.com/zenn-user-upload/6ee3a90ea7e3-20240225.png)

どうやらVSCodeから設定や拡張機能をインポートできる機能もあるようです。

![](https://storage.googleapis.com/zenn-user-upload/8502aa5d80c7-20240225.png)

### いざ起動

最初はWindowsにインストールして使おうと思ってたのですが、WSL2環境を開けなかったので今回はmacで使ってみることにします。

```bash
$ npx create-next-app@latest
Need to install the following packages:
create-next-app@14.1.0
Ok to proceed? (y) y
✔ What is your project named? … cursor-test
✔ Would you like to use TypeScript? … No / Yes
✔ Would you like to use ESLint? … No / Yes
✔ Would you like to use Tailwind CSS? … No / Yes
✔ Would you like to use `src/` directory? … No / Yes
✔ Would you like to use App Router? (recommended) … No / Yes
✔ Would you like to customize the default import alias (@/*)? … No / Yes
Creating a new Next.js app in /Users/syotaro2122/dev/cursor-test.

Using npm.

Initializing project with template: app-tw


Installing dependencies:
- react
- react-dom
- next

Installing devDependencies:
- typescript
- @types/node
- @types/react
- @types/react-dom
- autoprefixer
- postcss
- tailwindcss
- eslint
- eslint-config-next


added 365 packages, and audited 366 packages in 20s

131 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
Initialized a git repository.

Success! Created cursor-test at /Users/name/syotaro2122/cursor-test
```

なんとなくNext.jsのプロジェクトを作ってみて、コードを書いてみます。

### チャット機能

![](https://storage.googleapis.com/zenn-user-upload/f075d96e5fc6-20240226.png)

まずはCopilot Chat的な機能のChatを試してみました。

この辺の使い勝手はCopilot Chatとそんなに変わらない気がします。

![](https://storage.googleapis.com/zenn-user-upload/862f95c9f15b-20240226.png)

Copilotでも使えるインラインチャットも同じように使えます。

### Docs

これが一番気になって多機能ですが、外部のライブラリのドキュメントを学習してそこから情報を引っ張ってきてくれるというものです。

実際にNext.jsのドキュメントを学習させて聞いてみました。

![](https://storage.googleapis.com/zenn-user-upload/33165571aecc-20240226.png)

どのページを元に情報を取ってきたのかも明示されているのでわかりやすくてとてもいいですね。

### その他

特定のファイルを開いていなくても、プロジェクトフォルダ全体から必要なものを見に行ってChatの返信をしてくれるらしく、適当に聞いても返してくれるのはいいなと思いました。

![](https://storage.googleapis.com/zenn-user-upload/683157cf7684-20240226.png)

## まとめ

正直他にも機能が沢山あるので使いこなせてはいないですが、現状自分が使っているようなライトな使い方ではCursorへ乗り換えるメリットはあまり感じられませんでした。

Cursor独自の機能はもちろんありますが、Copilotの方もアップデートで対応してくるかもしれないので、今後の動向に注目していきたいと思います。

また、Copilot自体も完全に使いこなせているわけではないので、これを使いこなす方法ももう少し検証したいと思います。

## 参考

https://zenn.dev/umi_mori/books/ai-code-editor-cursor

https://cursor.sh/
