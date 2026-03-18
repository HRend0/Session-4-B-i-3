create schema ss4b3;
create table ss4b3.students (
    id serial primary key,
    full_name varchar(50),
    gender varchar(10),
    birth_year integer,
    major varchar(50),
    gpa numeric(3, 1)
);
insert into ss4b3.students (full_name, gender, birth_year, major, gpa) values
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh Tế', 3.2),
('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Lưu Đức Tài', 'Nam', 2004, 'Cơ Khí', null),
('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

insert into ss4b3.students (full_name, gender, birth_year, major, gpa) values ('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8);
update ss4b3.students set gpa = 3.4 where full_name = 'Lê Quốc Cường';
delete from ss4b3.students where gpa is null;
select * from ss4b3.students where major = 'CNTT' and gpa >= 3.0 limit 3;
select distinct major from ss4b3.students;
select * from ss4b3.students where major = 'CNTT' order by gpa desc, full_name asc;
select * from ss4b3.students where full_name ilike 'Nguyễn%';
select * from ss4b3.students where birth_year between 2001 and 2003;