-- -----------------------------------------------------
-- Table `LibraryInformationSystem`.`publisher`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `LibraryInformationSystem`.`publisher` (
  `publisher_id` INT NOT NULL AUTO_INCREMENT,
  `publisher_nm` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`publisher_id`) )
ENGINE = InnoDB;






SET @name1 = 'TMH' , @name2 = 'hello';
INSERT INTO publisher (`publisher_nm`) VALUES ( @name1 ) , (@name2);