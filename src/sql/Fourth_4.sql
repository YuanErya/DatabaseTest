
DROP TABLE IF EXISTS actor ;

CREATE TABLE actor  (
                        actor_id  smallint(5)  NOT NULL PRIMARY KEY,
                        first_name  varchar(45) NOT NULL,
                        last_name  varchar(45) NOT NULL,
                        last_update  datetime NOT NULL);


CREATE UNIQUE INDEX uniq_idx_firstname ON actor(first_name);
CREATE INDEX idx_lastname ON actor(last_name);