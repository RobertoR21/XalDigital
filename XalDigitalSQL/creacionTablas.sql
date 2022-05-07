create table aerolineas(id_aerolinea int not null, nombre_aerolinea varchar (20),primary key (id_aerolinea));
create table aeropuertos(id_aeropuerto int not null, nombre_aeropuerto varchar (25),primary key (id_aeropuerto));
create table movimientos(id_movimiento int not null, descripcion varchar (20),primary key (id_movimiento));
create table vuelos(id_aerolinea int not null,id_aeropuerto int not null,id_movimiento int not null, dia date);


alter table vuelos add foreign key (id_aerolinea) references aerolinea(id_aerolinea);
alter table vuelos add foreign key (id_aeropuerto) references aeropuertos(id_aeropuerto);
alter table vuelos add foreign key (id_movimiento) references movimientos(id_movimiento);

insert into aerolinea values(1,'volaris');
insert into aerolinea values(2,'aeromar');
insert into aerolinea values(3,'interjet');
insert into aerolinea values(4,'aeromexico');

insert into aeropuertos values(1,'Benito juajez');
insert into aeropuertos values(2,'guanajuato');
insert into aeropuertos values(3,'La paz');
insert into aeropuertos values(4,'oaxaca');

insert into movimientos values(1,'salida');
insert into movimientos values(2,'entrada');

insert into vuelos values(1,1,1,'2021-05-02');
insert into vuelos values(2,1,1,'2021-05-02');
insert into vuelos values(3,2,2,'2021-05-02');
insert into vuelos values(4,3,2,'2021-05-02');
insert into vuelos values(1,3,2,'2021-05-02');
insert into vuelos values(2,1,1,'2021-05-02');
insert into vuelos values(2,3,1,'2021-05-04');
insert into vuelos values(3,4,1,'2021-05-04');
insert into vuelos values(3,4,1,'2021-05-04');
