create table artist(
    artist_id int primary key,
    artist_name varchar(255) not null,
    country varchar(255) not null,
    debut_year int not null
);

create table album(
    album_id int primary key,
    album_name varchar(255) not null,
    release_date date not null,
    artist_id int not null,
    foreign key (artist_id) references artist(artist_id)
);

create table song(
    song_id int primary key,
    song_name varchar(255) not null,
    duration_seconds int not null,
    album_id int not null,
    foreign key (album_id) references album(album_id)
);

create table genre(
    genre_id int primary key,
    genre_name varchar(255) not null,
    description text
);

create table song_genre(
    song_id int not null,
    genre_id int not null,
    primary key (song_id, genre_id),
    foreign key (song_id) references song(song_id),
    foreign key (genre_id) references genre(genre_id)
);