ALTER TABLE book_return DROP primary KEY, add primary KEY(return_dt, accession_no);
ALTER TABLE book_return DROP FOREIGN KEY fk_book_return_member1;

ALTER TABLE book_issue DROP primary key, add primary KEY(issue_dt, accession_no);
ALTER TABLE book_issue DROP FOREIGN KEY fk_book_issue_member1;

ALTER TABLE book_return
DROP COLUMN member_id ;

ALTER TABLE book_issue
DROP COLUMN member_id ;

DROP TABLE members;