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

ローカル環境でのテスト実行コマンド
```
docker-compose exec web bundle exec rspec -f d ./spec/models
docker-compose exec web bundle exec rspec -f d ./spec/controllers/
```

# HOME GUARD👮🏠

### サービス概要

おうち時間での家事/買い物/仕事の準備/運動...などの'やること'と進捗管理ができるアプリケーションです。<br>

### 登場人物

- 仕事の時間が不規則で、毎日のルーティーンを見失いがちな人
- （ペルソナ）不規則なスケジュールで仕事している夫 🙋‍♂️

### ユーザーが抱える課題

- 仕事に追われすぎて、家でやりたいこと/やらなければいけない作業をどうしても後回しにしてしまう
- 空いた時間にやらなければいけないことの優先順位がつけられない（何から手をつければいいかわからない）

### 解決方法と望む未来

事前に決めておいたおうち時間にやりたいことに対して、やった or やらないの記録をつけることで、達成度を確認することができる　</br>
→ 　「今日は何もできなかった...」という虚無感を軽減する。また自分のできることの限界を知ることができる。</br>

他のユーザーのおうち時間でのやることを閲覧できる </br>
→ 　他のユーザーのやることに対してコメントを残して励ましたり、励まされることができる。人と一緒に頑張ることができる✊

### 使用技術

```
Ruby 2.4.5
Ruby on Rails5
Docker
Bootstrap
Heroku
```

### ER 図（※作成中）

<img width="840" alt="スクリーンショット 2022-10-15 8 42 09" src="https://user-images.githubusercontent.com/69895997/195958456-89c89f7c-602a-46a4-9322-accbb9b0b929.png">
