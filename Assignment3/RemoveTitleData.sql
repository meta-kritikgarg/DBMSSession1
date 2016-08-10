ALTER TABLE books DROP FOREIGN KEY  `fk_books_Title1`;
ALTER TABLE title_auther DROP FOREIGN KEY  `fk_Auther_has_Title_Title1`;

DELETE  FROM titles WHERE pub_id = 1;
