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

insert into product values('P1234', '�����ó�Ʈ20��Ʈ��', 1450000, '6.9-inch, Infinity O Display, ���� �����巡�� 865+ SM8250 Platform, �ĸ� ī�޶� 1�� 800�� ȭ��', 'Smart Phone', 'Samsung', 1000, 'New', 'P1234.png');
insert into product values('P1235', '�ƺϿ���13��', 1100000, '13��ġ, CPU : �ھ�i5, SSD : 256GB, �� : 8GB', 'notebook', 'Apple', 1000, 'Refurbished', 'P1235.png');
insert into product values('P1236', '��������S3', 500000, '212.8*125.6*6.6mm, Super AMOLED display, Octa-core processor', 'Tablet', 'Samsung', 1000, 'Old', 'P1236.png');

select * from product;