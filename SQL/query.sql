CREATE DATABASE test;
USE test;

CREATE TABLE 'greetings' (
    'id' INT NOT NULL AUTO_INCREMENT,
    'greeting' VARCHAR(255) NOT NULL,
    PRIMARY KEY ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO 'greetings' ('greeting') VALUES ('Hello, World!');

SELECT 'greeting' FROM 'greetings';
