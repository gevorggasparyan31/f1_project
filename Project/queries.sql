create schema f1;
SET search_path TO f1;

create table Constructors(
    id serial primary key unique,
    Titles integer not null,
    Name varchar(50) not null
);
create table Drivers(
    id serial primary key unique,
    image_url varchar,
    name varchar not null,
    nationality varchar(50),
    titles integer not null,
    wins integer,
    podiums integer,
    career_points integer,
    all_teams varchar
);

create table driver_team(
    team_id integer,
    team_name varchar,
    driver_id integer,
    titles varchar
);

select * from drivers;

insert into driver_team values (1,'Ferrari',1,5),(1,'Ferrari',12,2),(1,'Ferrari',3,1),(1,'Ferrari',19,1),(1,'Ferrari',20,1),(1,'Ferrari',21,1),(1,'Ferrari',8,2),(1,'Ferrari',26,1),(1,'Ferrari',33,1),
                               (2,'McLaren',15,1),(2,'McLaren',24,1),(2,'McLaren',8,1),(2,'McLaren',4,3),(2,'McLaren',10,3),(2,'McLaren',2,1),(2,'McLaren',16,2),
                               (3,'Mercedes',2,7),(3,'Mercedes',3,1),(3,'Mercedes',29,1),
                               (4,'Williams',27,1),(4,'Williams',28,1),(4,'Williams',3,1),(4,'Williams',30,1),(4,'Williams',4,1),(4,'Williams',31,1),(4,'Williams',32,1),
                               (5,'Lotus',14,2),(5,'Lotus',13,1),(5,'Lotus',23,1),(5,'Lotus',15,1),(5,'Lotus',25,1),
                               (6,'Red Bull',5,4),(6,'Red Bull',11,2),
                               (7,'Brabham',6,1),(7,'Brabham',22,1),(7,'Brabham',9,2),
                               (8,'Alfa Romeo',18,1),(8,'Alfa Romeo',5,1),
                               (9,'Maserati',5,2),
                               (10,'Cooper',6,2),
                               (11,'Tyrell',7,2),
                               (12,'Benetton',1,2),
                               (13,'Renault',17,2),
                               (14,'BRM',13,1),
                               (15,'Matra',7,1),
                               (16,'Brawn',34,1)
;

insert into
    constructors(titles, name) values (15,'Ferrari'),
                                      (12,'McLaren'),
                                      (9,'Mercedes'),
                                      (7,'Williams'),
                                      (6,'Lotus'),
                                      (6,'Red Bull'),
                                      (4,'Brabham'),
                                      (2,'Alfa Romeo'),
                                      (2,'Maserati'),
                                      (2,'Cooper'),
                                      (2,'Tyrell'),
                                      (2,'Benetton'),
                                      (2,'Renault'),
                                      (1,'BRM'),
                                      (1,'Matra'),
                                      (1,'Brawn');


insert into
    drivers(image_url,name, nationality, titles,wins,podiums,career_points,all_teams) VALUES ('https://upload.wikimedia.org/wikipedia/commons/c/c6/Michael_Schumacher_2005_United_States_GP_%2819872855%29_%28cropped%29.jpg','Michael Schumacher','Germany',7,91,155,1566,'Jordan, Benetton, Ferrari, Mercedes'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/1/18/Lewis_Hamilton_2016_Malaysia_2.jpg','Lewis Hamilton','United Kingdom',7,103,189,4363,'McLaren, Mercedes'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/8/8c/Fangio.png','Juan Manuel Fangio','Argentina',5,24,35,245,'Alfa Romeo, Maserati, Mercedes-Benz, Ferrari'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/9/95/Festival_automobile_international_2012_-_Photocall_-_Alain_Prost_-_013.jpg','Alain Prost','France',4,51,106,768,'McLaren, Renault, Ferrari, Williams'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/4/44/Sebastian_Vettel_2015_Malaysia_podium_1.jpg','Sebastian Vettel','Germany',4,53,122,3099,'BMW, Toro Rosso, Red Bull, Ferrari, Aston Martin'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/e/e7/BrabhamJack1966B.jpg','Jack Brabham','Australia',3,14,31,261,'Cooper, Rob Walker Racing Team, Brabham'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/4/4b/Jackie_Stewart_at_the_2014_WEC_Silverstone_round.jpg','Jackie Stewart','United Kingdom',3,27,43,360,'BRM, Matra, March, Tyrrell'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/2/2d/Lauda_at_1982_Dutch_Grand_Prix.jpg','Niki Lauda','Austria',3,25,54,420,'March, BRM, Ferrari, Brabham, McLaren'),
                                              ('https://i.pinimg.com/474x/63/fd/8e/63fd8e074d5b9a6d844f8103592d89e2--nelson-piquet-motor-sport.jpg','Nelson Piquet','Brazil',3,23,60,481,'Ensign, Brabham, Williams, Lotus, Benetton'),
                                              ('https://miro.medium.com/max/1100/1*Kpr0O8zdShxaSnZMC2S01A.jpeg','Ayrton Senna','Brazil',3,41,80,614,'Toleman, Lotus, McLaren, Williams'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/7/75/Max_Verstappen_2017_Malaysia_3.jpg','Max Verstappen','Netherlands',2,33,75,1949,'Red Bull Racing'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Ascari_last_photo_in_car.jpg/220px-Ascari_last_photo_in_car.jpg','Alberto Ascari','Italy',2,13,17,140,'Ferrari, Maserati, Lancia'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/f/fc/Graham_Hill_Bestanddeelnr_924-6564.jpg','Graham Hill','United Kingdom',2,14,36,289,'Lotus, BRM, Brabham, Hill'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/0/02/Jim_Clark_1965.jpg','Jim Clark','United Kingdom',2,25,32,274,'Lotus'),
                                              ('https://www.laureus.com/getmedia/960f4eed-0f6b-406a-aeba-2d8d8480bec5/Emerson-Fittipaldi-2.jpg?width=640','Emerson Fittipaldi','Brazil',2,14,35,281,'Lotus, McLaren, Fittipaldi Automotive'),
                                              ('https://i.pinimg.com/474x/40/36/5f/40365f2cbce119218abd052a3b188ba4--racing-f-icons.jpg','Mika Hakkinen','Finland',2,20,51,420,'Lotus, McLaren'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/2/2b/Alonso_2016.jpg','Fernando Alonso','Spain',2,32,98,2045,'Minardi, Renault, McLaren, Ferrari, Alpine'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Giuseppe_Farina_-_El_Gr%C3%A1fico_1750.jpg/800px-Giuseppe_Farina_-_El_Gr%C3%A1fico_1750.jpg','Giuseppe Farina','Italy',1,5,20,127,'Alfa Romeo, Ferrari, Lancia'),
                                              ('https://www.internationalclassic.com/app/uploads/2019/04/Hawthorn.jpg','Mike Hawthorn','United Kingdom',1,3,18,127,'Ferrari,Vanwall,BRM'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/8/84/Phil_Hill_1991_USA_%28cropped%29.jpg','Phil Hill','USA',1,3,16,98,'Maserati, Ferrari, Cooper, Porsche, Automobili Turismo e Sport, Lotus, McLaren, Eagle'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/c/c3/John_Surtees.JPG','John Surtees','United Kingdom',1,6,24,180,'Lotus, Cooper (Inc non-works), Lola, Ferrari, Honda, BRM, Surtees'),
                                              ('https://i.pinimg.com/originals/1d/3d/01/1d3d01ac0e81f3008da740509d59b427.jpg','Denny Hulme','Australia',1,8,33,248,'Brabham, McLaren'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/c/cb/Rindt_at_1970_Dutch_Grand_Prix_%282C%29.jpg','Jochen Rindt','Austria',1,6,13,109,'Cooper, Brabham, Lotus'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/1/12/J._Hunt_in_1977_%28cropped%29.jpg','James Hunt','United Kingdom',1,10,23,179,'Hesketh, McLaren, Wolf'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/c/c3/Mario_Andretti_Goodwood_Festival_of_Speed_2021_%28cropped%29.jpg','Mario Andretti','USA',1,12,19,180,'Lotus, March, Ferrari, Parnelli, Alfa Romeo, Williams'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/d/dc/Jody_Scheckter_during_the_1979_Monaco_Grand_Prix.jpg','Jody Sheckter','South Africa',1,10,33,255,'McLaren, Tyrrell, Wolf, Ferrari'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/7/78/Alan_Jones_1980.jpg','Alan Jones','Austria',1,12,24,206,'Hill, Surtees, Shadow, Williams, Arrows, Haas Lola'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/3/3c/Anefo_932-2378_Keke_Rosberg%2C_Zandvoort%2C_03-07-1982_-_Restoration.jpg','Keke Rosberg','Finland',1,5,17,160,'Theodore, ATS, Wolf, Fittipaldi, Williams, McLaren'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/3/31/Nico_Rosberg_2016.jpg','Nico Rosberg','Germany',1,23,57,1594,'Williams, Mercedes'),
                                              ('https://cdn.crash.net/styles/article/s3/90552.jpg?itok=o313yKoX','Nigel Mansell','United Kingdom',1,31,59,482,'Lotus, Williams, Ferrari, McLaren'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/f/ff/Damon_Hill_May_2012_Cropped.jpg','Damon Hill','United Kingdom',1,22,42,360,'Brabham, Williams, Arrows, Jordan'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/6/63/Jacques_Villeneuve_at_Mont-Tremblant_2010_01.jpg','Jacques Villeneuve','Canada',1,11,23,235,'Williams, BAR, Renault, Sauber, BMW Sauber'),
                                              ('https://live.staticflickr.com/3546/3865979124_a8beff6cd2_b.jpg','Kimi Raikkonen','Finland',1,21,103,1873,'Sauber, McLaren, Ferrari, Lotus, Alfa Romeo'),
                                              ('https://upload.wikimedia.org/wikipedia/commons/0/06/Jenson_Button_Bahrain_2012_%28crop%29.jpg','Jenson Button','United Kingdom',1,15,50,1235,'Williams, Benetton, Renault, BAR, Honda, Brawn, McLaren');


