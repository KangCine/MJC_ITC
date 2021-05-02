create database tt default character set utf8;
create user 'ttuser'@'localhost' identified by 'ttpw';
GRANT ALL PRIVILEGES ON tt.* TO 'ttuser'@'localhost';

use tt;

create table worker(          
    id          varchar(20)  primary key,
    pwd         varchar(20),
    name        varchar(40),
    phone       varchar(20)
);

create table member(   
    id         varchar(20)  primary key,
    pwd        varchar(20),     
    name       varchar(40),
    email      varchar(40),
    zip_num    varchar(7),
    address    varchar(100),
    phone      varchar(20),
    useyn      char(1)       default 'y',
    indate     DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table product(
    pseq       int(5)    not null auto_increment  primary key,
    name       varchar(100),
    kind       char(1),   
    price1     int(7)     default '0',
    price2     int(7)     default '0',
    price3     int(7)     default '0',
    content    varchar(1000),
    image      varchar(50)  default 'default.jpg',
    useyn      char(1)       default 'y',
    bestyn     char(1)       default 'n',
    indate    DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table cart (
  cseq         int(10)    not null auto_increment  primary key,  -- ��ٱ��Ϲ�ȣ
  id           varchar(16)   references member(id),  -- �ֹ��� ���̵�(FK :��member.id) 
  pseq         int(5)     references product(pseq), -- �ֹ� ��ǰ��ȣ(FK :product.pseq) 
  quantity     int(5)     default 1,        -- �ֹ� ����
  result       char(1)       default '1',      -- 1:��ó�� 2:ó��
  indate        DATETIME DEFAULT CURRENT_TIMESTAMP   -- �ֹ���
);

create table orders(
  oseq        int(10)   not null auto_increment  primary key,           -- �ֹ���ȣ  
  id          varchar(16)   references member(id), -- �ֹ��� ���̵�
  indate       DATETIME DEFAULT CURRENT_TIMESTAMP       -- �ֹ���
);

create table order_detail(
  odseq       int(10)   not null auto_increment primary key,        -- �ֹ��󼼹�ȣ
  oseq        int(10)   references orders(oseq),   -- �ֹ���ȣ  
  pseq        int(5)    references product(pseq),  -- ��ǰ��ȣ
  quantity    int(5)    default 1,                 -- �ֹ�����
  result      char(1)      default '1'                -- 1: ��ó�� 2: ó��     
);
