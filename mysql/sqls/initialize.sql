CREATE DATABASE security_hole_db;
use security_hole_db;

CREATE TABLE users (
  id int(11) unsigned not null auto_increment,
  name varchar(255) not null,
  email varchar(255) not null,
  password varchar(255) not null,
  boss_id int(11) not null,
  role_id int(1) not null,
  primary key (id)
);

CREATE TABLE customers (
  id int(11) unsigned not null auto_increment,
  name varchar(255) not null,
  address varchar(255) not null,
  primary key (id)
);

CREATE TABLE user_customers (
  id int(11) unsigned not null auto_increment,
  user_id int(11) not null,
  customer_id int(11) not null,
  primary key (id)
);

INSERT INTO users(name, email, password, boss_id, role_id) values ('山本大輔', 'daisuke_yamamoto@abc.com', 'We49Iduf', 0, 1);
INSERT INTO users(name, email, password, boss_id, role_id) values ('中村恵', 'megumi_nakamura@abc.com', 'Oh8R112Bdc', 1, 2);
INSERT INTO users(name, email, password, boss_id, role_id) values ('加藤拓也', 'takuya_kato@abc.com', 'password', 1, 2);
INSERT INTO customers(name, address) values ('佐藤翔', '東京都世田谷区水星１−１−１');
INSERT INTO customers(name, address) values ('鈴木愛', '神奈川県横浜市金星２−２−２');
INSERT INTO customers(name, address) values ('高橋誠', '千葉県船橋市火星３−３−３');
INSERT INTO customers(name, address) values ('田中さくら', '埼玉県川口市木星４−４−４');
INSERT INTO customers(name, address) values ('伊藤優斗', '群馬県高崎市土星５−５−５');
INSERT INTO customers(name, address) values ('渡辺美咲', '茨城県水戸市天王星６−６−６');
INSERT INTO user_customers(user_id, customer_id) values (1, 1);
INSERT INTO user_customers(user_id, customer_id) values (1, 2);
INSERT INTO user_customers(user_id, customer_id) values (2, 3);
INSERT INTO user_customers(user_id, customer_id) values (2, 4);
INSERT INTO user_customers(user_id, customer_id) values (3, 5);
INSERT INTO user_customers(user_id, customer_id) values (3, 6);