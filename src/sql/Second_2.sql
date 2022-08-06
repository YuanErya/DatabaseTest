drop table if exists  film ;
drop table if exists  category  ;
drop table if exists  film_category  ;
CREATE TABLE IF NOT EXISTS film (
                                    film_id smallint(5)  NOT NULL DEFAULT '0' COMMENT '电影id',
                                    title varchar(255) NOT NULL COMMENT'电影名称',
                                    description text COMMENT'电影描述信息',
                                    PRIMARY KEY (film_id));
CREATE TABLE category  (
                           category_id  tinyint(3)  NOT NULL COMMENT '电影分类id',
                           name  varchar(25) NOT NULL COMMENT'电影分类名称', `last_update` timestamp COMMENT'电影分类最后更新时间',
                           PRIMARY KEY ( category_id ));
CREATE TABLE film_category  (
                                film_id  smallint(5)  NOT NULL COMMENT'电影id',
                                category_id  tinyint(3)  NOT NULL COMMENT'电影分类id', `last_update` timestamp COMMENT'电影id和分类id对应关系的最后更新时间');
INSERT INTO film VALUES(1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies');
INSERT INTO film VALUES(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China');
INSERT INTO film VALUES(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory');

INSERT INTO category VALUES(1,'Action','2006-02-14 20:46:27');
INSERT INTO category VALUES(2,'Animation','2006-02-14 20:46:27');
INSERT INTO category VALUES(3,'Children','2006-02-14 20:46:27');
INSERT INTO category VALUES(4,'Classics','2006-02-14 20:46:27');
INSERT INTO category VALUES(5,'Comedy','2006-02-14 20:46:27');
INSERT INTO category VALUES(6,'Documentary','2006-02-14 20:46:27');
INSERT INTO category VALUES(7,'Drama','2006-02-14 20:46:27');
INSERT INTO category VALUES(8,'Family','2006-02-14 20:46:27');
INSERT INTO category VALUES(9,'Foreign','2006-02-14 20:46:27');
INSERT INTO category VALUES(10,'Games','2006-02-14 20:46:27');
INSERT INTO category VALUES(11,'Horror','2006-02-14 20:46:27');

INSERT INTO film_category VALUES(1,6,'2006-02-14 21:07:09');
INSERT INTO film_category VALUES(2,11,'2006-02-14 21:07:09');

SELECT f.film_id, f.title FROM film f LEFT JOIN film_category fc ON f.film_id = fc.film_id WHERE fc.category_id IS NULL;