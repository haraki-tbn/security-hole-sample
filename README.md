# security-hole-sample
セキュリティホールのサンプルアプリです。  
Dockerで管理しているのでDocker、DockerComposeはインストールされていることが前提です。

## コンテナのビルド/起動/停止方法
```
ビルド
$ docker-compose build

起動
$ docker-compose up -d

停止
$ docker-compose stop
```  
DBは起動されるが、Webアプリは起動しないように設定しています。  
Webアプリの起動はNode.JSのコンテナに入って直接起動してください。   
Webアプリ起動方法は以下。 
```
$ docker exec -it node /bin/bash
$ node app.js
```

## アプリURL
Webアプリを起動したら以下からアクセス可能  
http://localhost:8080/app/login

## 脆弱性
1. takuya_kato@abc.comのパスワードが「password」なので推測されやすい
2. /menu画面のuseridパラメータに上司IDである1を指定すると全ての顧客情報がみれてしまう。
3. localhost:8080/にアクセスでディレクトリの中がみれてしまう。


## その他
### ホストからMySQL接続
```
$ mysql -h 127.0.0.1 -P 3306 -u root -p security_hole_db
```
PWはbs2g

### 課題
* idはauto_incrementにしているので推測しやすぎるかも。ランダムな文字列のほうがいいかな。