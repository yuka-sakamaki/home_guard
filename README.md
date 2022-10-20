### 本番環境での確認方法

https://home-guard.herokuapp.com/

- ヘッダーのユーザーメニューより、ユーザー新規登録をしてください

### ローカル環境での確認方法

```
git clone git@github.com:yuka-sakamaki/home_guard.git
```

```
docker-compose build
```

```
docker-compose up -d
```

下記のように表示されたら、http://localhost:3000/
にアクセスしてください

```
Starting home-guard_db_1 ... done
Recreating home-guard_web_1 ... done
```

# HOME GUARD👮🏠

### サービス概要

おうち時間での家事/買い物/仕事の準備/運動...などの'やること'と進捗管理ができるアプリケーションです。

### 登場人物

- 仕事の時間が不規則で、毎日のルーティーンを見失いがちな人
- （ペルソナ）不規則なスケジュールで仕事している夫 🙋‍♂️

### ユーザーが抱える課題

- 仕事に追われすぎて、家でやりたいこと/やらなければいけない作業をどうしても後回しにしてしまう
- 空いた時間にやらなければいけないことの優先順位がつけられない（何から手をつければいいかわからない）

### 解決方法と望む未来

事前に決めておいたおうち時間にやりたいことに対して、やった or やらないの記録をつけることで、達成度を確認することができる　</br>
→ 　「今日は何もできなかった...」という虚無感を軽減する。また自分のできることの限界を知ることができる。


### 主な使い方
1. ユーザーメニューより、ユーザー新規登録をしてください
2. 'やること'を作成してください。タグを選択すると、検索がしやすくなります
3. 一覧で'やること'が確認できます。詳細メニューから他のユーザーの'やること'についてコメントができます
4. 編集で'やること'を完了させることができます


### 現在の実装内容
- ユーザー（利用者）登録/ログイン機能
- ログイン後に'やること'の新規登録と編集、削除機能
- カテゴリ(タグ付け)機能
- カテゴリ（タグ）検索機能
- (ログイン前/ホーム)登録してある'やること'一覧閲覧機能
- (ログイン前/ホーム)登録してある'やること'の対応状況(全体のやることに対しての完了したやることの割合)数値表示

### 今後の実装予定
- 動線を分かりやすくする！一覧画面でステータス変更ができるようにする
- 日毎にステータスをリセットする機能
- 日毎に達成度を記録し、閲覧できる機能

### 使用技術

```
Ruby 2.4.5
Ruby on Rails5
Docker
Bootstrap
Heroku
```
### ER 図

<img width="790" alt="スクリーンショット 2022-10-19 10 38 33" src="https://user-images.githubusercontent.com/69895997/196576938-92ef63d9-1c7b-4a34-b4b4-9f8f9debaca0.png">
