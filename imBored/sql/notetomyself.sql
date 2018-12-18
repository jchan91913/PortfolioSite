CREATE TABLE IF NOT EXISTS User (
	user_id   INT          NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(40)  NOT NULL,
	user_pass VARCHAR(255) NOT NULL,
	activated BOOLEAN      NOT NULL,
	locked    BOOLEAN      NOT NULL,
	notes     TEXT,
	tbd       TEXT,  
	PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS Hyperlink (
	link_id INT            NOT NULL AUTO_INCREMENT,
	user_id INT            NOT NULL,
	link_text VARCHAR(255) NOT NULL,
	PRIMARY KEY (link_id),
	FOREIGN KEY (user_id) REFERENCES User (user_id)
);

CREATE TABLE IF NOT EXISTS Image (
	image_id INT           NOT NULL AUTO_INCREMENT,
	user_id INT            NOT NULL,
	file_path VARCHAR(255) NOT NULL,
	PRIMARY KEY (image_id),
	FOREIGN KEY (user_id) REFERENCES User (user_id)
);

