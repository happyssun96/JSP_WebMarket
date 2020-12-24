create table if not exists product(
p_id varchar(10) not null,
p_name varchar(10),
p_unitPrice INTEGER,
p_description TEXT,
p_category varchar(20),
p_manufacturer varchar(20),
p_unitsInStock LONG,
p_condition varchar(20),
p_fileName varchar(20),
PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;

insert into product values('P1234', '갤럭시노트20울트라', 1450000, '6.9-inch, Infinity O Display, 퀄컴 스냅드래곤 865+ SM8250 Platform, 후면 카메라 1억 800만 화소', 'Smart Phone', 'Samsung', 1000, 'New', 'P1234.png');
insert into product values('P1235', '맥북에어13형', 1100000, '13인치, CPU : 코어i5, SSD : 256GB, 램 : 8GB', 'notebook', 'Apple', 1000, 'Refurbished', 'P1235.png');
insert into product values('P1236', '갤럭시탭S3', 500000, '212.8*125.6*6.6mm, Super AMOLED display, Octa-core processor', 'Tablet', 'Samsung', 1000, 'Old', 'P1236.png');

select * from product;