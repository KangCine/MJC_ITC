use tt;
insert into cart(id, quantity) values('one', 1);  -- 오류**********

insert into orders( id) values('one');
insert into orders( id) values('one');
insert into orders( id) values('two');

insert into order_detail(oseq, pseq, quantity) 
values(1, 1, 1);
insert into order_detail(oseq, pseq, quantity) 
values(1, 2, 5);
insert into order_detail(oseq, pseq, quantity) 
values(2,  4, 3);
insert into order_detail(oseq, pseq, quantity) 
values(3, 3, 1);
insert into order_detail(oseq, pseq, quantity) 
values(3, 2, 1);
insert into order_detail(oseq, pseq, quantity) 
values(3, 6, 2);
insert into order_detail(oseq, pseq, quantity) 
values(3, 1, 2);

insert into qna (subject, content, id)
values('테스트', '질문내용1', 'one');
update qna SET reply='답변내용', rep='2';

insert into qna (subject, content, id)
values('테스트2', '질문내용2', 'one');

create or replace view cart_view
as
select o.cseq, o.id, m.name mname, p.name pname, 
o.quantity, o.indate, p.price2, o.result 
from cart o, member m, product p 
where o.id = m.id and o.pseq = p.pseq
and result='1';

create or replace view order_view
as
select d.odseq, o.oseq, o.id, o.indate, d.pseq,d.quantity, m.name mname,
m.zip_num, m.address, m.phone, p.name pname, p.price2, d.result   
from orders o, order_detail d, member m, product p 
where o.oseq=d.oseq and o.id = m.id and d.pseq = p.pseq;
           
