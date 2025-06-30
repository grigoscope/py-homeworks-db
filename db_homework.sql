--- Genres
create table if not exists Genres(
	genre_id 		serial 			primary key,
	name			varchar(60)		not null
);

--- Artists
create table if not exists Artists(
	artist_id 		serial 			primary key,
	name			varchar(60)		not null
);

--- Genres and Artists link (many-to-many)
create table if not exists Genres_Artists(
	genre_id		int				not null references Genres(genre_id),
	artist_id		int				not null references Artists(artist_id),
	primary key(genre_id, artist_id)
);

--- Albums
create table if not exists Albums(
	album_id		serial			primary key,
	name 			varchar(60)		not null,
	year			smallint		not null
);

--- Artists and Albums link (many-to-many)
create table if not exists Artists_Albums(
	artist_id		int				not null references Artists(artist_id),
	album_id		int				not null references Albums(album_id),
	primary key(artist_id, album_id)
);

--- Tracks
create table if not exists Tracks(
	track_id 		serial 			primary key,
	name			varchar(80)		not null,
	duration		interval 		not null,
	album_id 		int 			not null references Albums(album_id)
);

--- Playlists
create table if not exists Compilations (
	compilation_id  serial			primary key,
	name			varchar(120)	not null,
	year			smallint		not null
);

--- Tracks and albums link (many-to-many)
create table if not exists Compilations_Tracks(
	compilation_id	int				references Compilations(compilation_id),
	track_id		int				references Tracks(track_id),
	primary key (compilation_id, track_id)
);