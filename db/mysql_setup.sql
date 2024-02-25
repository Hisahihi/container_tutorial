CREATE DATABASE IF NOT EXISTS tutorial_develop CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER IF NOT EXISTS 'devuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'devuser'@'%';
CREATE TABLE IF NOT EXISTS tutorial_develop.authentication (user_id integer, valid_date date, login_user varchar(255) not null, password varchar(255), primary key (login_user)) engine=InnoDB;
CREATE TABLE IF NOT EXISTS tutorial_develop.user (age integer, id integer not null auto_increment, name varchar(20) not null, email varchar(50), gender enum ('男性','女性'), primary key (id)) engine=InnoDB;