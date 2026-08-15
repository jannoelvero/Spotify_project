use spotify_db;
CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    artist_popularity DECIMAL(5,2),
    artist_followers BIGINT
);

CREATE TABLE albums (
    album_id VARCHAR(50) PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    album_release_date VARCHAR(10),
    release_year INT,
    album_total_tracks INT,
    album_type VARCHAR(50),
    artist_id INT,
    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
);

CREATE TABLE tracks (
    track_id VARCHAR(50) PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    track_number INT,
    track_popularity INT,
    explicit BOOLEAN,
    track_duration_min DECIMAL(6,2),
    album_id VARCHAR(50),
    artist_id INT,

    FOREIGN KEY (album_id)
        REFERENCES albums(album_id),

    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
);

CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE track_genres (
    track_id VARCHAR(50),
    genre_id INT,

    PRIMARY KEY (track_id, genre_id),

    FOREIGN KEY (track_id)
        REFERENCES tracks(track_id),

    FOREIGN KEY (genre_id)
        REFERENCES genres(genre_id)
);








