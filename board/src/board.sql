/*ALTER TABLE board convert to charset utf8; 한글 깨짐 해결*/
USE board;

DELIMITER $$

CREATE PROCEDURE testDataInsert()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 120 DO
        INSERT INTO board(title, content)
          VALUES(concat('제목',i), concat('내용',i));
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$

call testDataInsert;