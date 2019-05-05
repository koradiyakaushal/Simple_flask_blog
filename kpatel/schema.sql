DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS likestats;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE post(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER NOT NULL,
    created TIMESTAMP NOT NUll DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    -- like_status BOOLEAN DEFAULT 0,

    FOREIGN KEY (author_id) REFERENCES user (id)  
);

-- CREATE TABLE likestats (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     a_id INTEGER NOT NULL,
--     post_id INTEGER NOT NULL,
--     ,

--     FOREIGN KEY (post_id) REFERENCES post (id) 
--     FOREIGN KEY (a_id) REFERENCES post (author_id) 

-- );
