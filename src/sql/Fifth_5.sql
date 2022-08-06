DROP TABLE IF EXISTS passing_number;

CREATE TABLE IF NOT EXISTS passing_number(
                                             id SMALLINT UNSIGNED,
                                             number SMALLINT UNSIGNED,
                                             PRIMARY KEY (id)
);

INSERT INTO passing_number VALUES (1,4),(2,3),(3,3),(4,2),(5,5),(6,4);

SELECT * FROM passing_number ORDER BY number DESC ,id ASC;