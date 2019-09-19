-- Create Database --
CREATE DATABASE `megacorp` /*!40100 DEFAULT CHARACTER SET latin1 */;

-- Set megacorp as default and create the tables--
Use `megacorp`;
CREATE TABLE `employee` (
    `EmplId` INT(11) NOT NULL AUTO_INCREMENT,
    `EmplFname` VARCHAR(25) NOT NULL,
    `EmplLname` VARCHAR(25) NOT NULL,
    `EmplOffice` VARCHAR(5) NOT NULL,
    `EmplPhone` VARCHAR(25) DEFAULT NULL,
    `EmplDept` INT(11) DEFAULT NULL,
    PRIMARY KEY (`EmplId`)
)  ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=LATIN1;

CREATE TABLE `department` (
    `DeptId` INT(11) NOT NULL,
    `DeptName` VARCHAR(25) NOT NULL,
    `DeptOffice` VARCHAR(5) NOT NULL,
    `DeptPhone` VARCHAR(25) DEFAULT NULL,
    `DeptSupervisor` INT(11) DEFAULT NULL,
    PRIMARY KEY (`DeptId`)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;

CREATE TABLE `project` (
    `ProjectId` INT(11) NOT NULL,
    `ProjectClient` VARCHAR(15) NOT NULL,
    `ProjectLead` INT(11) DEFAULT NULL,
    `ProjectContactPhone` VARCHAR(25) DEFAULT NULL,
    PRIMARY KEY (`ProjectId`)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;

-- Insert statements --
INSERT INTO `employee` (`EmplId`,`EmplFname`,`EmplLname`,`EmplOffice`,`EmplPhone`,`EmplDept`) VALUES (1,'Jack','Simpson','B728','(613) 727-4411',1);
INSERT INTO `employee` (`EmplId`,`EmplFname`,`EmplLname`,`EmplOffice`,`EmplPhone`,`EmplDept`) VALUES (2,'Jim','McDonald','B728','(613) 727-4412',2);
INSERT INTO `employee` (`EmplId`,`EmplFname`,`EmplLname`,`EmplOffice`,`EmplPhone`,`EmplDept`) VALUES (3,'William','Frane','B791','(613) 727-4413',3);
INSERT INTO `employee` (`EmplId`,`EmplFname`,`EmplLname`,`EmplOffice`,`EmplPhone`,`EmplDept`) VALUES (4,'Linda','Zeller','B735','(613) 727-4414',2);
INSERT INTO `employee` (`EmplId`,`EmplFname`,`EmplLname`,`EmplOffice`,`EmplPhone`,`EmplDept`) VALUES (5,'JJ','Willson','B112','(613) 727-4415',3);

INSERT INTO `department` (`DeptId`,`DeptName`,`DeptOffice`,`DeptPhone`,`DeptSupervisor`) VALUES (1,'A','123','111-111-1111',1);
INSERT INTO `department` (`DeptId`,`DeptName`,`DeptOffice`,`DeptPhone`,`DeptSupervisor`) VALUES (2,'B','456','222-222-2222',2);
INSERT INTO `department` (`DeptId`,`DeptName`,`DeptOffice`,`DeptPhone`,`DeptSupervisor`) VALUES (3,'C','789','333-333-3333',3);
INSERT INTO `department` (`DeptId`,`DeptName`,`DeptOffice`,`DeptPhone`,`DeptSupervisor`) VALUES (4,'D','012','444-444-4444',4);
INSERT INTO `department` (`DeptId`,`DeptName`,`DeptOffice`,`DeptPhone`,`DeptSupervisor`) VALUES (5,'E','345','555-555-5555',5);

INSERT INTO `project` (`ProjectId`,`ProjectClient`,`ProjectLead`,`ProjectContactPhone`) VALUES (0,'GCJC',4,'321-887-6565');
INSERT INTO `project` (`ProjectId`,`ProjectClient`,`ProjectLead`,`ProjectContactPhone`) VALUES (1,'qwe',1,'132-456-7890');
INSERT INTO `project` (`ProjectId`,`ProjectClient`,`ProjectLead`,`ProjectContactPhone`) VALUES (2,'rty',2,'234-567-8901');
INSERT INTO `project` (`ProjectId`,`ProjectClient`,`ProjectLead`,`ProjectContactPhone`) VALUES (3,'uio',3,'345-678-9012');
