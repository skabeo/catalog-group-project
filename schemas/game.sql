CREATE TABLE Game(
  id             INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  genre_id       INTEGER,
  author_id      INTEGER,
  source_id      INTEGER,
  label_id      INTEGER,
  publish_date   DATE,
  archived       BOOLEAN,
  multiplayer    VARCHAR(3)
  last_played_at DATE,

  FOREIGN KEY (genre_id) REFERENCES Genre(id)
  FOREIGN KEY (author_id) REFERENCES Author(id)
  FOREIGN KEY (source_id) REFERENCES Source(id)
  FOREIGN KEY (label_id) REFERENCES Label(id)
);