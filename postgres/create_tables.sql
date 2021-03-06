-- drop table if exists users, cores, readings;

create table if not exists users (
	email text primary key,
	full_name text,
	family_name text,
	given_name text,
	gender text,
	locale text,
	secret text
);

create table if not exists readings (
    useremail text references users(email),
    posted timestamp,
    coreid text,
    temperature real,
    humidity real,
    moisture real,
    light real,
    battery real,
    primary key (useremail, coreid, posted)
);

insert into users (email, full_name, family_name, given_name, gender, locale, secret) values
('noone@nothing.com', 'demo user', 'user', 'demo', 'androgenous', 'en', '');
