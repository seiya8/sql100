# sql100
[データサイエンス100本ノック](https://github.com/The-Japan-DataScientist-Society/100knocks-preprocess)をSQLで解いていく
## 環境
MariaDB 10.4.22
## 準備
データベースの作成、テーブルの作成、CSVからテーブルにインポート
```bash
$ echo 'create database ds_knock;' | mysql -uroot
$ mysql -uroot ds_knock < create.sql
$ mysql -uroot ds_knock < load.sql
```