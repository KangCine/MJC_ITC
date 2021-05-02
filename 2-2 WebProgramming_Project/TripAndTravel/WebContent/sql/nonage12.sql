use tt;
create table qna (
  qseq        int(5)    not null auto_increment primary key,  -- �۹�ȣ 
  subject     varchar(300),            -- ����
  content     varchar(1000),          -- ���ǳ���
  reply       varchar(1000),           -- �亯����
  id          varchar(20),                 -- �ۼ���(FK : member.id) 
  rep         char(1)  default  '1',        -- 1:�亯 ��  2:�亯 ��  
  indate  DATETIME DEFAULT CURRENT_TIMESTAMP     -- �ۼ���
); 

insert into worker values('admin', 'admin', 'ȫ����', '010-777-7777');
insert into worker values('pinksung', 'pinksung', '����', '010-999-9696');

insert into member(id, pwd, name, zip_num, address, phone) values
('one', '1111', '�質��', '133-110', '����ü�����������1�� 1����21ȣ', '017-777-7777');
insert into member(id, pwd, name, zip_num, address, phone) values
('two', '2222', '�̹���', '130-120', '����ü��ı����2�� ������ ����Ʈ 201�� 505ȣ', '011-123-4567');

insert into product(name, kind, price1, price2, price3, content, image) values(
 'ũ�α״��Ϻ���', '2', '40000', '50000', '10000', '�����϶� ũ�α״��Ϻ��� �Դϴ�.', 'w2.jpg');
insert into product(name, kind, price1, price2, price3, content, image, bestyn) values(
'�պ���', '2', 40000, 50000, 10000,'������ �պ��� �Դϴ�.', 'w-28.jpg', 'n');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values( 
'��', '1', '10000', '12000', '2000', '���������� ��', 'w-26.jpg', 'n');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
'������', '4', '5000', '5500', '500', '����� �������Դϴ�.', 'w-25.jpg', 'y');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
'ȸ����', '1', '10000', '12000', '2000', '���������� ��', 'w9.jpg', 'n');
insert into product( name, kind, price1, price2, price3, content, image) values(
'��������', '2', '12000', '18000', '6000', '������ ����', 'w4.jpg');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
 '��ũ����', '3', '5000', '5500', '500', '������� �����Դϴ�.', 'w-10.jpg', 'y');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
'������', '3', '5000', '5500', '500', '����� �������Դϴ�.', 'w11.jpg', 'y');
insert into product( name, kind, price1, price2, price3, content, image) values(
 '����Ŀ��', '4', '15000', '20000', '5000', 'Ȱ������ ���� ����Ŀ���Դϴ�.', 'w1.jpg');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
 '����', '3', '5000', '5500', '500', '������� �����Դϴ�.', 'w-09.jpg','n');
insert into product( name, kind, price1, price2, price3, content, image, bestyn) values(
 '����Ŀ��', '5', '15000', '20000', '5000', 'Ȱ������ ���� ����Ŀ���Դϴ�.', 'w-05.jpg','n');

