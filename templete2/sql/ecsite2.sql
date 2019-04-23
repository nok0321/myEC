set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite2_nagashima;

create database if not exists ecsite2_nagashima;
use ecsite2_nagashima;

drop table if exists login_user_transaction;

create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	login_pass varchar(16),
	user_name varchar(50),
	insert_date datetime,
	updated_date datetime,
	admin_flg varchar(1)
);

drop table if exists item_info_transaction;

create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	update_date datetime
);

drop table if exists purchas_item_transaction;

create table purchas_item_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	total_price int,
	total_count int
);

INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES("NOTE BOOK", 100, 50);
INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES("pencil", 80, 150);
INSERT INTO login_user_transaction(login_id, login_pass, user_name, admin_flg) VALUES("admin", "admin", "admin", "1");
INSERT INTO login_user_transaction(login_id, login_pass, user_name) VALUES("internous", "internous01", "test");