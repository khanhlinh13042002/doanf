create database electronic_components;
use electronic_components;
create table category_product(
id_category int primary key auto_increment,
name_category nvarchar(100) not null
);
create table manufac_product(
id_manufac int primary key auto_increment,
name_manufac nvarchar(100) not null
);
create table product(
id_product int primary key auto_increment,
name_product nvarchar(255) not null,
price_product float not null,
describ nvarchar(8000) null,
amount int not null,
id_manufac int not null,
id_category int not null,
image varchar(100) not null,
constraint FkManufac_IdManufac foreign key(id_manufac) references manufac_product(id_manufac) on delete cascade,
constraint FkCategory_IdCategory foreign key(id_category) references category_product(id_category) on delete cascade on update cascade
);
create table user(
id_user int primary key auto_increment,
name_user nvarchar(100) not null,
password_user varchar(20) not null,
date_of_birth date ,
address nvarchar(100) not null,
phone nvarchar(12) not null
);
create table oder(
id_oder int primary key auto_increment,
id_user int not null ,
date_order date not null,
total_money float not null,
constraint FkUse_idUser foreign key(id_user) references user(id_user)
);
create table detail_order(
id_detail int primary key auto_increment,
id_order int not null,
id_product int not null,
amount int not null, 
price float not null,
total_price float not null,
constraint FkProduct_idProduct foreign key(id_product) references product(id_product),
constraint FkOder_idOrder foreign key(id_order) references Oder(id_oder)
);
create table position_emloyee(
id_position int primary key auto_increment,
name_position nvarchar(255) not null
);
create table employee(
id_employee int primary key auto_increment,
id_position int not null,
name_employee nvarchar(100) not null,
password_employee varchar(20) not null,
address nvarchar(100) not null ,
phone nvarchar(12) not null
);
use electronic_components;
insert into position_emloyee values
(1,"Quản lí"),
(2,"Nhân viên bán hàng"),
(3,"Nhân viên bảo trì"),
(4, "Thu ngân"),
(5, "Bảo vệ");
insert into employee values
(1,1,"Nguyễn Văn An",1111,"12 Nguyễn Chánh",0919787820),
(2,1,"Nguyễn Ngọc Hoa",2222,"112 Nguyễn Lương Bằng",0944356870),
(3,2,"Nguyễn Ngọc Ngạn",3333,"102 Nguyễn Trãi",0922457820),
(4,2,"Trần Văn Hoàng",4444,"12 Bàu Vàng 2",0919678493),
(5,3,"Thái Văn Hưng",5555,"342 Phan Văn Định",0938783594),
(6,3,"Lý Thị Luyến",6666,"15 Phạm Văn Ngôn",0924678945),
(7,4,"Thái Thị Thương",7777,"3 Phan Văn Đạt",0837658904),
(8,4,"Trần Ngọc Lan Khuê",8888,"3 Phan Châu Trinh",0346668947),
(9,5,"Phạm Thái Hưng",9999,"14 Âu Cơ",0938885764),
(10,5,"Giang Văn Đức",1010,"14 Âu Cơ",0938885764);
insert into category_product values
(1,"CPU"),
(2,"Main Board"),
(3,"RAM"),
(4,"VGA"),
(5,"HDD"),
(6,"SSD"),
(7,"PSU"),
(8,"VGA"),
(9,"CASE");
insert into manufac_product values
(1,"Asus"),
(2,"Dell"),
(3,"HP"),
(4,"MSI"),
(5,"Lenovo"),
(6,"Acer"),
(7,"Razer"),
(8,"Samsung"),
(9,"Alienware"),
(10,"Apple"),
(11,"Microsoft"),
(12,"Huawei"),
(13,"Gigabyte"),
(14,"LG"),
(15,"THX");
insert into product values
(1,"i3 10105",7900000,"còn hàng",100,1,1,1),
(2,"i5 1135G7",6900000,"còn hàng",100,1,1,1),
(3,"i5 11300H",7500000,"còn hàng",100,1,1,1),
(4,"i7 1165G7",8600000,"còn hàng",100,1,1,1),
(5,"i5 10400",3950000,"còn hàng",100,2,1,1),
(6,"i5 11400",4399000,"còn hàng",100,2,1,1),
(7,"i5 12400F",4499000,"còn hàng",100,3,1,1),
(8,"i5 11400F",3750000,"còn hàng",100,3,1,1),
(9,"i7 12700F",8499000,"còn hàng",100,4,1,1),
(10,"i3 10105F",2000000,"còn hàng",100,4,1,1),
(11,"i7 1170F",8950000,"còn hàng",100,5,1,1);
insert into user values
(1,"Nguyễn Văn An",1234,"2001-7-4","14 Bàu Vàng 2",0919456740),
(2,"Trần Văn Lâm",2345,"2000-8-5","14 Bàu Vàng 4",0919876740),
(3,"Trần Ngọc Thảo",3456,"1999-9-4","20 Lạc Long Quân",0919807740),
(4,"Lê Vĩnh Thuỵ",5678,"1998-12-6","123 Nguyễn Lương Bằng",0919834640),
(5,"Lương Thuỳ Linh",6789,"2002-6-5","12 Phan Văn Định",0974898765),
(6,"Nguyễn Bình Minh",7891,"2000-8-8","14 Phan Văn Đạt",0917869840),
(7,"Lê Thị Ngọc Huyền",8910,"1996-9-10","34 Bàu Mạc 2",0919986340);
insert into oder values
(1,1,"2022-7-10",7900000),
(2,1,"2022-7-15",4000000),
(3,2,"2022-7-18",8600000),
(4,3,"2022-7-19",13497000),
(5,6,"2022-7-20",8499000),
(6,4,"2022-7-21",13800000),
(7,5,"2022-7-22",8950000),
(8,7,"2022-7-23",7500000),
(9,7,"2022-7-25",4000000),
(10,5,"2022-7-26",4399000);
insert into detail_order values
(1,1,1,1,7900000,7900000),
(2,2,1,2,2000000,4000000),
(3,3,4,1,8600000,8600000),
(4,4,7,3,4499000,13497000),
(5,5,9,1,8499000,8499000),
(6,6,2,2,6900000,13800000),
(7,7,11,1,8950000,8950000),
(8,8,3,1,7500000,7500000),
(9,9,10,3,2000000,4000000),
(10,10,6,1,4399000,4399000);