create database lms_subquery;

create type Genre as enum(
    'DETECTIVE',
    'DRAMA',
    'HISTORY',
    'ROMANS',
    'BIOGRAPHY',
    'FANTASY'
);

create type Gender as enum(
    'Male',
    'Female'
    );

create table Publisher
(
    id   serial primary key unique,
    name varchar
);

create table Author(
                       id serial primary key unique,
                       first_name varchar,
                       last_name varchar,
                       email varchar,
                       date_of_birth date,
                       country varchar,
                       gender Gender
);

create table Book(
                     id serial primary key unique,
                     name varchar,
                     country varchar,
                     published_year date,
                     price numeric,
                     genre Genre
);

create table Language (
                          id serial primary key unique,
                          language varchar
);

alter table Book add language_id int references Language(id);
alter table Book add author_id int references Author(id);
alter table Book add publisher_id int references Publisher(id);


insert into Publisher(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into Author(first_name, last_name, email, date_of_birth, country, gender)
values
    ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'Female'),
    ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
    ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'Male'),
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'Male'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'Male'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'Female'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-8', 'Germany', 'Male'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'Female'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'Male'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'Female'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'Male'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');


insert into Language(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into Book(name, country, published_year, price, genre, language_id,  author_id, publisher_id)
values
    ('Taina', 'Russia', '2021-11-12', '568', 'DETECTIVE', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANS', '5', '13', '11'),
    ('Homo Faber', 'Germany', '2022-04-10', '772', 'FANTASY', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'DETECTIVE', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'FANTASY', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'DRAMA', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'HISTORY', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'HISTORY', '4', '4', '2'),

    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'DETECTIVE', '3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'FANTASY', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANS', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'FANTASY', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANS', '2', '6', '9'),
    ('“The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'DRAMA', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANS', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIVE', '3', '7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'DETECTIVE', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANS', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'FANTASY', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'DRAMA', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'FANTASY', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANS', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANS', '1', '9', '4'),
    ('Die R uber', 'Germany', '2020-06-25', '300', 'ROMANS', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'HISTORY', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'DRAMA', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'DETECTIVE', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'DRAMA', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'FANTASY', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY', '1', '2', '15');



-- Запросы:

-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select b.name, b.published_year, b.genre from Book b;

-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct Author.country from Author;

-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from Book where published_year between '2020.01.01' and '2023.01.01';

-- 4.Детектив китептер жана алардын аттары чыксын.
select  * from Book where genre = 'DETECTIVE';

-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select a.first_name ||' '|| a.last_name as ФИО from Author a;

-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select a.first_name, a.last_name, a.country from Author a where a.country in ('France' , 'Germany');

-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select b.name, b.country, b.published_year, b.price, b.genre from Book b where price <= '500';

-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from Author a where gender = 'Female' limit 3;

-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from Author a where gender = 'Female' and length(a.first_name) = 4 and email like '%.com';

-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select a.country, count(*) as кол_во from  Author a group by a.country;

-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select a.country, count(*) as кол_во from  Author a group by a.country having count(*) >= 3;

-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select b.genre, sum(b.price) as price from Book b group by b.genre;

-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select * from Book b where b.genre in ('DETECTIVE', 'ROMANS') order by b.price desc limit 2;

-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select b.genre, count(*) as кол_во from Book b where b.genre in ('HISTORY', 'BIOGRAPHY') group by b.genre;

-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.name, p.name, b.country, l.language from Book b inner join Publisher p on b.id = p.id inner join Language l on b.id =l.id;

-- 16Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select * from Author a left join Book b on a.id = b.author_id left join publisher p on b.publisher_id = p.id;

-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select * from Author a left join Book  b on a.id = b.author_id;

-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select id, l.language, (select count(b.id) from Book b where b.language_id = l.id )as кол_во from Language l order by кол_во desc ;

-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.name ,(select round(avg(b.price)) from Book b where b.publisher_id = p.id) as avq_pub from Publisher p ;

-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select * from Book b inner join  Author a on b.author_id = a.id where b.published_year between '2010.01.01' and '2015.01.01';

-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select a.first_name, a.last_name, sum(b.price) as sum from Author a inner join Book b on b.author_id = a.id where  b.published_year between '2010.01.01' and '2015.01.01' group by a.first_name, a.last_name;

create database task;

