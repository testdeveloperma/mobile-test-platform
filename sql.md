create table task(
 id int(11) PRIMARY KEY AUTO_INCREMENT,
 task_name VARCHAR(255),
 server_ip VARCHAR(255),
 domain_name VARCHAR(255),
 url VARCHAR(255),
 email VARCHAR(255),
 status int(2),
 user_id int(11)
)


create table scheme(
id int(11) PRIMARY KEY AUTO_INCREMENT,
business_line varchar(63),
page_name	varchar(63),
client_type varchar(31),
scheme_url varchar(255)
)


CREATE TABLE weight_config(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
del INT(11),
change_type INT(11),
change_value INT(11),
empty INT(11),
json_str varchar(255)
)

CREATE TABLE test_task(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
scheme_id INT(11),
weightconfig_id INT(11),
times INT(11),
create_time DATETIME,
state VARCHAR(63) COMMENT 'waiting running end',
FOREIGN KEY (scheme_id) REFERENCES scheme(id),
FOREIGN KEY (weightconfig_id) REFERENCES weight_config(id)
)

create table lock_mark(
id int(11) primary key auto_increment,
worker_name varchar(63),
execute_state int(11) comment ''
)

create table strong_result(
id int(11) primary key auto_increment,
task_id int(11),
picture_path varchar(255) comment '截图存储路径',
crash_path varchar(255) comment '崩溃信息文件路径',
crash_detail varchar(255),
foreign key (task_id) references test_task(id)
)




















































































































































































































































































































picture_path varchar 
)



