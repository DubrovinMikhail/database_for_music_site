create table if not exists artist (
	id serial primary key,
	name_artist varchar(60) not null
);

create table if not exists genre (
	id serial primary key,
	name_genre varchar(60) not null
);

create table if not exists artist_genre (
	artist_id integer references artist(id),
	genre_id integer references genre(id),
	constraint pkart_gen primary key (artist_id, genre_id)
);

create table if not exists albom (
	id serial primary key,
	name_albom varchar(60) not null,
	year_of_publication date not null
);

create table if not exists artist_albom (
	artist_id integer references artist(id),
	albom_id integer references albom(id),
	constraint pk_art_alb primary key (artist_id, albom_id)
);

create table if not exists track (
	id serial primary key,
	name_track varchar(60) not null,
	albom_id integer references albom(id) unique not null,
	duration varchar(60) not null
);

create table if not exists collection (
	id serial primary key,
	name_collection varchar(60) not null,
	year_of_issue date,
	track_id integer references track(id) unique not null
);

