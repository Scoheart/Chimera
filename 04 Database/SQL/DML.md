# DML

Data Manipulation Language 

针对数据库、数据表



## Database

### C

create database <db_name>;

### R

show databases;

### D

drop database <db_name>;

### U usage

use <db_name>;

select databases();



## Tables

### C

```sql
create table <table_name>(
	<field1> <type>,
  <field2> <type>
)
```



### R

```sql
show tables;

desc <table_name>;
```



### U

```sql
alter table <table_name> rename to <table_newname>;

alter table <table_name> add <new_field> <type>;

alter table <table_name> modify <fieldx> <new_type>;

alter table <table_name> change <fieldx> <new_fieldx> <type>;

alter table <table_name> drop <fieldx>;
```



### D

```sql
drop table <table_name>;
```

