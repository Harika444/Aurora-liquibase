--liquibase formatted sql
--changeset ashwani:01
create table Dev3 ( 
id int primary key,
name varchar(255)
);
--rollback drop table Dev3;
--changeset ashwani:2  
create  table  Dev1  (  
    id  int  primary  key,  
    name  varchar(255)  
);  
--rollback drop table Dev1;  

 

--changeset nvoxland:3  
insert  into  Dev1  (id,  name)  values  (1,  'Harika');  
insert  into  Dev1  (id,  name)  values  (2,  'Yashaswini');
--rollback DELETE FROM Dev1 WHERE id IN (1,2);
--changeset nvoxland:4  
insert  into  Dev1  (id,  name)  values  (3,  'Ashwani');  
insert  into  Dev1  (id,  name)  values  (4,  'Prathamesh');
--rollback DELETE FROM Dev1 WHERE id IN (3,4);
