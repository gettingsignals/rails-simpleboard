# SimpleBoard app

## 1.Dockerビルド&起動
```
docker-compose build
docker-compose up
```

## 2.DB作成
```
docker-compose run web /bin/sh
# rake db:create
# rake db:migrate
# yarn add jquery@3.4.1 bootstrap@3.4.1
```

## 3.jQuery&bootstrapインストール
```
# yarn add jquery@3.4.1 bootstrap@3.4.1
```

## 4.再度起動
```
docker-compose stop
docker-compose up --build
```



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
