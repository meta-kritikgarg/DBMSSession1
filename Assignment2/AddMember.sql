-- -----------------------------------------------------
-- Table `LibraryInformationSystem`.`members`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `LibraryInformationSystem`.`members` (
  `members_id` INT NOT NULL ,
  `member_nm` VARCHAR(75) NOT NULL ,
  `addressline1` VARCHAR(100) NULL ,
  `addressline2` VARCHAR(100) NULL ,
  `category` VARCHAR(45) NULL ,
  PRIMARY KEY (`members_id`) )
ENGINE = InnoDB;

ALTER TABLE book_return
ADD `member_id` INT NOT NULL ; 

ALTER TABLE book_issue
ADD `member_id` INT NOT NULL ;

alter table book_return drop primary key, add primary key(return_dt, accession_no,member_id);
alter table book_issue drop primary key, add primary key(issue_dt, accession_no,member_id);

ALTER TABLE book_return
ADD CONSTRAINT `fk_book_return_member1`
FOREIGN KEY (`member_id` )
REFERENCES `LibraryInformationSystem`.`members` (`members_id` );


ALTER TABLE book_issue
ADD CONSTRAINT `fk_book_issue_member1`
FOREIGN KEY (`member_id` )
REFERENCES `LibraryInformationSystem`.`members` (`members_id` );