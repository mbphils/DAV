/*
Navicat MySQL Data Transfer

Source Server         : DAV
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : mbsql

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-08-18 10:28:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cif
-- ----------------------------
DROP TABLE IF EXISTS `cif`;
CREATE TABLE `cif` (
  `CID` char(5) DEFAULT '',
  `PIN` char(4) DEFAULT NULL,
  `NID` char(1) DEFAULT NULL,
  `LNAME` char(40) DEFAULT '',
  `CIVILSTAT` char(1) DEFAULT NULL,
  `TITLE` int(16) DEFAULT NULL,
  `INLS` char(6) DEFAULT NULL,
  `MNAME` char(40) DEFAULT NULL,
  `FNAME` char(40) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `DOB` int(16) DEFAULT '0',
  `ADDR1` char(30) DEFAULT NULL,
  `ADDR2` char(30) DEFAULT NULL,
  `CITY` char(30) DEFAULT NULL,
  `POSTCODE` char(4) DEFAULT NULL,
  `PHONE` char(15) DEFAULT NULL,
  `CIDSP` char(5) DEFAULT NULL,
  `NIDSP` char(13) DEFAULT NULL,
  `FNAMESP` char(15) DEFAULT NULL,
  `DOREG` int(16) DEFAULT NULL,
  `CIFCODE1` char(3) DEFAULT NULL,
  `CIFCODE2` char(3) DEFAULT NULL,
  `CIFCODE3` char(3) DEFAULT NULL,
  `CIFCODE4` char(3) DEFAULT NULL,
  `CIFCODE5` char(3) DEFAULT NULL,
  `CIFCODE6` char(3) DEFAULT NULL,
  `OCCUPATION` char(30) DEFAULT NULL,
  `EXPNAME` char(24) DEFAULT '',
  `DOSRI` int(16) DEFAULT NULL,
  `TAXCODE` int(16) DEFAULT NULL,
  `GROUP` char(3) DEFAULT NULL,
  `LNHIST` char(6) DEFAULT NULL,
  `LNMAX` int(16) DEFAULT NULL,
  `SECURITY` int(16) DEFAULT NULL,
  `DOLASTCHG` int(16) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `BLACKLISTD` varchar(255) DEFAULT NULL,
  `SYSID` varchar(10) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  KEY `indx` (`SYSID`,`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_main_id
-- ----------------------------
DROP TABLE IF EXISTS `dav_main_id`;
CREATE TABLE `dav_main_id` (
  `Depo_ID` int(11) DEFAULT NULL,
  `CIDNEW` varchar(5) DEFAULT NULL,
  `CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_main_id_test
-- ----------------------------
DROP TABLE IF EXISTS `dav_main_id_test`;
CREATE TABLE `dav_main_id_test` (
  `Depo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Depo_ID`),
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11784 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_report
-- ----------------------------
DROP TABLE IF EXISTS `dav_report`;
CREATE TABLE `dav_report` (
  `Depo_ID` varchar(50) DEFAULT NULL,
  `Depo_Type` varchar(10) DEFAULT NULL,
  `Depo_Name` varchar(100) DEFAULT NULL,
  `Depo_BD` varchar(10) DEFAULT NULL,
  `Add_Prov` varchar(100) DEFAULT NULL,
  `Add_City` varchar(100) DEFAULT NULL,
  `Add_Brgy` varchar(100) DEFAULT NULL,
  `Add_St` varchar(100) DEFAULT NULL,
  `Borr?` varchar(10) DEFAULT NULL,
  `Co_Borr?` varchar(10) DEFAULT NULL,
  `Dep_Ac_No` varchar(50) DEFAULT NULL,
  `Br_NaCo` varchar(50) DEFAULT NULL,
  `Dep_Type` varchar(50) DEFAULT NULL,
  `Dep_Type2` varchar(50) DEFAULT NULL,
  `Dep_Cur` varchar(10) DEFAULT NULL,
  `Int%` varchar(10) DEFAULT NULL,
  `Int_post_date` varchar(10) DEFAULT NULL,
  `Int_cutoff` varchar(10) DEFAULT NULL,
  `Issue Date` varchar(10) DEFAULT NULL,
  `Mat_date` varchar(10) DEFAULT NULL,
  `WTax%` varchar(10) DEFAULT NULL,
  `Wtax_date` varchar(10) DEFAULT NULL,
  `Dorm_ch_date` varchar(10) DEFAULT NULL,
  `Last_trans_date` varchar(10) DEFAULT NULL,
  `Avail_Bal` decimal(16,2) DEFAULT NULL,
  `Restrict?` varchar(10) DEFAULT NULL,
  `Ac_Stat` varchar(10) DEFAULT NULL,
  `DOTRN` varchar(10) DEFAULT NULL,
  `DOPEN` varchar(10) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Date_Created` varchar(10) DEFAULT NULL,
  `APPTYPE` varchar(1) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `ALTCID` varchar(5) DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `Amount` decimal(16,2) DEFAULT NULL,
  `Nature of Deduction` varchar(100) DEFAULT NULL,
  `DOSTATUS` varchar(10) DEFAULT NULL,
  `ROLLOVER` varchar(1) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for glac
-- ----------------------------
DROP TABLE IF EXISTS `glac`;
CREATE TABLE `glac` (
  `SYSID` varchar(3) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  `GLACC` varchar(9) DEFAULT NULL,
  `EXPACC` varchar(13) DEFAULT NULL,
  `STITLE` varchar(13) DEFAULT NULL,
  `TITLE` varchar(36) DEFAULT NULL,
  `ALIAS` varchar(5) DEFAULT NULL,
  `SORTCODE` varchar(7) DEFAULT NULL,
  `LEVEL` double DEFAULT NULL,
  `CALUIE` double DEFAULT NULL,
  `MBNKONLY` bit(1) DEFAULT NULL,
  `DEBITSOB` double DEFAULT NULL,
  `CREDITSOB` double DEFAULT NULL,
  `OBAL` double DEFAULT NULL,
  `DEBITS` double DEFAULT NULL,
  `CREDITS` double DEFAULT NULL,
  `CBAL` double DEFAULT NULL,
  `DOLASTTRN` datetime DEFAULT NULL,
  `LASTTRN` varchar(6) DEFAULT NULL,
  `DEBITSDAY` double DEFAULT NULL,
  `CREDITSDAY` double DEFAULT NULL,
  `DEBITS1` double DEFAULT NULL,
  `CREDITS1` double DEFAULT NULL,
  `DEBITS2` double DEFAULT NULL,
  `CREDITS2` double DEFAULT NULL,
  `DEBITS3` double DEFAULT NULL,
  `CREDITS3` double DEFAULT NULL,
  `DEBITS4` double DEFAULT NULL,
  `CREDITS4` double DEFAULT NULL,
  `DEBITS5` double DEFAULT NULL,
  `CREDITS5` double DEFAULT NULL,
  `DEBITS6` double DEFAULT NULL,
  `CREDITS6` double DEFAULT NULL,
  `DEBITS7` double DEFAULT NULL,
  `CREDITS7` double DEFAULT NULL,
  `DEBITS8` double DEFAULT NULL,
  `CREDITS8` double DEFAULT NULL,
  `DEBITS9` double DEFAULT NULL,
  `CREDITS9` double DEFAULT NULL,
  `DEBITS10` double DEFAULT NULL,
  `CREDITS10` double DEFAULT NULL,
  `DEBITS11` double DEFAULT NULL,
  `CREDITS11` double DEFAULT NULL,
  `DEBITS12` double DEFAULT NULL,
  `CREDITS12` double DEFAULT NULL,
  `DOLASTSTMT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for glco
-- ----------------------------
DROP TABLE IF EXISTS `glco`;
CREATE TABLE `glco` (
  `SYSID` varchar(3) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  `FINYR` varchar(4) DEFAULT NULL,
  `FINYRHDR` varchar(36) DEFAULT NULL,
  `FINYRSTART` datetime DEFAULT NULL,
  `FINYREND` datetime DEFAULT NULL,
  `SUSPACCSOK` int(11) DEFAULT NULL,
  `TRANSITOR` varchar(9) DEFAULT NULL,
  `SUSPENSE` varchar(9) DEFAULT NULL,
  `WHOLDTAX` varchar(9) DEFAULT NULL,
  `WHOLDTAX2` varchar(9) DEFAULT NULL,
  `WHOLDTAX3` varchar(9) DEFAULT NULL,
  `WHOLDTAX6` varchar(9) DEFAULT NULL,
  `ADDEDTAX` varchar(9) DEFAULT NULL,
  `CASH` varchar(9) DEFAULT NULL,
  `CHEQUES` varchar(9) DEFAULT NULL,
  `PAYORDER` varchar(9) DEFAULT NULL,
  `FLOAT` varchar(9) DEFAULT NULL,
  `MBNKACCSOK` bit(1) DEFAULT NULL,
  `TLRPFX` varchar(5) DEFAULT NULL,
  `RUNSTATUS` double DEFAULT NULL,
  `DOLASTACT` datetime DEFAULT NULL,
  `RECOVERY` double DEFAULT NULL,
  `JNL` varchar(3) DEFAULT NULL,
  `POSTFROM` varchar(3) DEFAULT NULL,
  `TRNSERIAL` double DEFAULT NULL,
  `UPDSTART` double DEFAULT NULL,
  `UPDEND` double DEFAULT NULL,
  `TOTALLED` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for glsc
-- ----------------------------
DROP TABLE IF EXISTS `glsc`;
CREATE TABLE `glsc` (
  `SYSID` varchar(3) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  `SORTCODE` varchar(7) DEFAULT NULL,
  `LEVEL` double DEFAULT NULL,
  `DESC` varchar(36) DEFAULT NULL,
  `CALUIE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for glt
-- ----------------------------
DROP TABLE IF EXISTS `glt`;
CREATE TABLE `glt` (
  `SYSID` varchar(3) DEFAULT NULL,
  `TRN` varchar(6) DEFAULT NULL,
  `JNL` varchar(3) DEFAULT NULL,
  `LINE` varchar(3) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `GLACC` varchar(9) DEFAULT NULL,
  `EXPACC` varchar(13) DEFAULT NULL,
  `POSTDATEN` double DEFAULT NULL,
  `DOCDATE` datetime DEFAULT NULL,
  `REF` varchar(8) DEFAULT NULL,
  `AMT` double DEFAULT NULL,
  `LARGE` int(11) DEFAULT NULL,
  `DESC` varchar(24) DEFAULT NULL,
  `TRACE` varchar(5) DEFAULT NULL,
  `BAL` double DEFAULT NULL,
  `DOPREVTRN` datetime DEFAULT NULL,
  `RECONCILED` int(11) DEFAULT NULL,
  `PARTS1` varchar(76) DEFAULT NULL,
  `PARTS2` varchar(76) DEFAULT NULL,
  `PARTS3` varchar(76) DEFAULT NULL,
  `PARTS4` varchar(76) DEFAULT NULL,
  `PARTS5` varchar(76) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lnacc
-- ----------------------------
DROP TABLE IF EXISTS `lnacc`;
CREATE TABLE `lnacc` (
  `ACC` char(7) NOT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `CID` char(5) DEFAULT NULL,
  `GLCODE` char(2) DEFAULT NULL,
  `GLORIG` char(2) DEFAULT NULL,
  `LOANID` char(5) DEFAULT NULL,
  `LOANCODE` char(2) DEFAULT NULL,
  `LNCODE1` char(3) DEFAULT NULL,
  `LNCODE2` char(3) DEFAULT NULL,
  `LNCODE3` char(3) DEFAULT NULL,
  `LNCODE4` char(3) DEFAULT NULL,
  `LNCODE5` char(3) DEFAULT NULL,
  `GROUP` char(3) DEFAULT NULL,
  `DOSRI` char(1) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `DOSTATUS` int(16) DEFAULT NULL,
  `DOPEN` int(16) DEFAULT NULL,
  `DOFIRSTI` int(16) DEFAULT NULL,
  `DOLASTTRN` int(16) DEFAULT NULL,
  `BAL` int(16) DEFAULT NULL,
  `INTRATE` int(16) DEFAULT NULL,
  `PENRATE` int(16) DEFAULT NULL,
  `SCRATE` int(16) DEFAULT NULL,
  `FIXEDAMT` int(16) DEFAULT NULL,
  `ACRINT` int(16) DEFAULT NULL,
  `CUMINTPD` int(16) DEFAULT NULL,
  `CUMNORINT` int(16) DEFAULT NULL,
  `DOINTEFF` int(16) DEFAULT NULL,
  `MATDATE` int(16) DEFAULT NULL,
  `GRANTED` int(16) DEFAULT NULL,
  `PRINCIPAL` int(16) DEFAULT NULL,
  `CUMPRIPD` int(16) DEFAULT NULL,
  `ODUEPRI` int(16) DEFAULT NULL,
  `ACRPEN` int(16) DEFAULT NULL,
  `UNEXINST` int(16) DEFAULT NULL,
  `NUMINST` int(16) DEFAULT NULL,
  `FREQ` int(16) DEFAULT NULL,
  `CUMPENPD` int(16) DEFAULT NULL,
  `SEQ` int(16) DEFAULT NULL,
  `DISBDATE` int(16) DEFAULT NULL,
  `DISBAMT` int(16) DEFAULT NULL,
  `DISBFLAG` int(16) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `LEDGER` int(16) DEFAULT NULL,
  `LASTTRN` char(5) DEFAULT NULL,
  `ACRCHG` int(16) DEFAULT NULL,
  `CUMCHGPD` int(16) DEFAULT NULL,
  `TRACC` char(7) DEFAULT NULL,
  `TRCHD` char(1) DEFAULT NULL,
  `NUMLEADI` int(16) DEFAULT NULL,
  `PRIFREQ` int(16) DEFAULT NULL,
  `BASIS` int(16) DEFAULT NULL,
  `ACRIODP` int(16) DEFAULT NULL,
  `ODUEINT` int(16) DEFAULT NULL,
  `INTBAL` int(16) DEFAULT NULL,
  `PENBAL` int(16) DEFAULT NULL,
  `EOFYINT` int(16) DEFAULT NULL,
  `EOFYTAX` int(16) DEFAULT NULL,
  `TLR` char(3) DEFAULT NULL,
  `PDC` char(1) DEFAULT NULL,
  `GRACC` char(7) DEFAULT NULL,
  `GRCHD` char(1) DEFAULT NULL,
  `MFCODE` char(3) DEFAULT NULL,
  `LASTLNACC` char(7) DEFAULT NULL,
  `LASTLNCHD` char(1) DEFAULT NULL,
  `LATEINST` int(16) DEFAULT NULL,
  `MAXLATE` int(16) DEFAULT NULL,
  `SVCOMP` int(16) DEFAULT NULL,
  `CUMISEDEP` int(16) DEFAULT NULL,
  `CYCLE` int(16) DEFAULT NULL,
  `NUMISEDEP` int(16) DEFAULT NULL,
  `AMT1` int(16) DEFAULT NULL,
  `AMT2` int(16) DEFAULT NULL,
  `AMT3` int(16) DEFAULT NULL,
  `TOTNORINT` int(16) DEFAULT NULL,
  `ORIGIRR2` varchar(255) DEFAULT NULL,
  `ORIGIRR` double(16,2) DEFAULT NULL,
  `ORIGEIR` varchar(255) DEFAULT NULL,
  `DISCAMT` int(16) DEFAULT NULL,
  `DISCDATE` int(16) DEFAULT NULL,
  `DOPASTDUE` varchar(255) DEFAULT NULL,
  `PDBSP` char(4) DEFAULT NULL,
  `PDDATE` int(16) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`ACC`),
  KEY `indx` (`SYSID`,`CID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lncmaker
-- ----------------------------
DROP TABLE IF EXISTS `lncmaker`;
CREATE TABLE `lncmaker` (
  `LNAPPID` char(10) NOT NULL,
  `CID` char(5) DEFAULT NULL,
  `LNACC` char(7) DEFAULT NULL,
  `LNCHD` char(1) DEFAULT NULL,
  `COMAKER1` char(5) DEFAULT NULL,
  `COMAKER2` char(5) DEFAULT NULL,
  `COMAKER3` char(5) DEFAULT NULL,
  `COMAKER4` char(5) DEFAULT NULL,
  `COMAKER5` char(5) DEFAULT NULL,
  `COMAKER6` char(5) DEFAULT NULL,
  `COMAKER7` char(5) DEFAULT NULL,
  `DOUPDATE` int(16) DEFAULT NULL,
  `TLR` char(3) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`LNAPPID`),
  KEY `indx` (`SYSID`,`COMAKER1`,`COMAKER2`,`COMAKER3`,`COMAKER4`,`COMAKER5`,`COMAKER6`,`COMAKER7`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lninst
-- ----------------------------
DROP TABLE IF EXISTS `lninst`;
CREATE TABLE `lninst` (
  `ACC` char(7) DEFAULT NULL,
  `CHD` char(1) DEFAULT NULL,
  `DUEDATE` int(16) DEFAULT NULL,
  `INSTFLAG` int(16) DEFAULT NULL,
  `INSTAMT` int(16) DEFAULT NULL,
  `INST` int(16) DEFAULT NULL,
  `NORINT` int(16) DEFAULT NULL,
  `ORIGAMT` int(16) DEFAULT NULL,
  `BFBAL` int(16) DEFAULT NULL,
  `CHARGES` int(16) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `SYSID` varchar(10) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for prparms
-- ----------------------------
DROP TABLE IF EXISTS `prparms`;
CREATE TABLE `prparms` (
  `APPTYPE` char(1) DEFAULT NULL,
  `TYPE` char(2) NOT NULL,
  `DESC` char(28) DEFAULT NULL,
  `RULES` char(20) DEFAULT NULL,
  `INTCALC` char(1) DEFAULT NULL,
  `INTRATE` int(16) DEFAULT NULL,
  `MAXINTRATE` int(16) DEFAULT NULL,
  `MININTRATE` int(16) DEFAULT NULL,
  `INTRATE1` char(40) DEFAULT NULL,
  `INTRATE2` char(40) DEFAULT NULL,
  `INTRATE3` char(40) DEFAULT NULL,
  `INTRATE4` char(40) DEFAULT NULL,
  `INTRATE5` char(40) DEFAULT NULL,
  `PENRATE` int(16) DEFAULT NULL,
  `PRERATE` int(16) DEFAULT NULL,
  `BRKRATE` int(16) DEFAULT NULL,
  `PSTRATE` int(16) DEFAULT NULL,
  `HOLDBAL` int(16) DEFAULT NULL,
  `MININTBAL` int(16) DEFAULT NULL,
  `MINBAL` int(16) DEFAULT NULL,
  `GRDBAL1` int(16) DEFAULT NULL,
  `GRDBAL2` int(16) DEFAULT NULL,
  `GRDBAL3` int(16) DEFAULT NULL,
  `GRDBAL4` int(16) DEFAULT NULL,
  `GRDBAL5` int(16) DEFAULT NULL,
  `MAXBAL` int(16) DEFAULT NULL,
  `LIMIT` int(16) DEFAULT NULL,
  `GLCODES` char(150) DEFAULT NULL,
  `VALID1` char(27) DEFAULT NULL,
  `VALID2` char(27) DEFAULT NULL,
  `VALID3` char(27) DEFAULT NULL,
  `VALID4` char(27) DEFAULT NULL,
  `VALID5` char(27) DEFAULT NULL,
  `FREQ` char(15) DEFAULT NULL,
  `ALLOC` char(10) DEFAULT NULL,
  `PASTDUEGL` char(27) DEFAULT NULL,
  `LOANBLMODE` int(16) DEFAULT NULL,
  `MINTERM` int(16) DEFAULT NULL,
  `MAXTERM` int(16) DEFAULT NULL,
  `TERMTYPE` char(1) DEFAULT NULL,
  `TERM` char(40) DEFAULT NULL,
  `FREEWDLS` int(16) DEFAULT NULL,
  `FREETRNS` int(16) DEFAULT NULL,
  `NOCHGBAL` int(16) DEFAULT NULL,
  `DORMPERIOD` int(16) DEFAULT NULL,
  `DORMCHG` int(16) DEFAULT NULL,
  `EOPCHG` int(16) DEFAULT NULL,
  `WDLCHG` int(16) DEFAULT NULL,
  `MINMADB` int(16) DEFAULT NULL,
  `ADBCHG` int(16) DEFAULT NULL,
  `ADBPERIOD` int(16) DEFAULT NULL,
  `SERIAL` int(16) DEFAULT NULL,
  `CAPFREQ` char(3) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`TYPE`),
  KEY `indx` (`SYSID`,`APPTYPE`,`TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for svacc
-- ----------------------------
DROP TABLE IF EXISTS `svacc`;
CREATE TABLE `svacc` (
  `ACC` char(7) NOT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `GLCODE` char(2) DEFAULT NULL,
  `GLORIG` char(2) DEFAULT NULL,
  `TERM` int(16) DEFAULT NULL,
  `CID` char(5) DEFAULT NULL,
  `ACCNAME` char(15) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `DOSTATUS` int(16) DEFAULT NULL,
  `DOPEN` int(16) DEFAULT NULL,
  `DOBMINOR` int(16) DEFAULT NULL,
  `DOLASTTRN` int(16) DEFAULT NULL,
  `DOCUSTTRN` int(16) DEFAULT NULL,
  `DOEOPCHG` int(16) DEFAULT NULL,
  `BAL` int(16) DEFAULT NULL,
  `INTRATE` int(16) DEFAULT NULL,
  `ACRINT` int(16) DEFAULT NULL,
  `CUMUPINT` int(16) DEFAULT NULL,
  `DOINTEFF` int(16) DEFAULT NULL,
  `INTBAL` int(16) DEFAULT NULL,
  `MATDATE` int(16) DEFAULT NULL,
  `TAXCODE` int(16) DEFAULT NULL,
  `CUMUPTAX` int(16) DEFAULT NULL,
  `ACRBINT` int(16) DEFAULT NULL,
  `PBBAL` int(16) DEFAULT NULL,
  `SEQ` int(16) DEFAULT NULL,
  `OWNER` int(16) DEFAULT NULL,
  `ALTCID` char(5) DEFAULT NULL,
  `CUMINTPD` int(16) DEFAULT NULL,
  `CUMTAXW` int(16) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `LEDGER` int(16) DEFAULT NULL,
  `CONTRACT` int(16) DEFAULT NULL,
  `PBNUMBER` char(6) DEFAULT NULL,
  `LASTTRN` char(5) DEFAULT NULL,
  `MODINTPAY` int(16) DEFAULT NULL,
  `TRACC` char(7) DEFAULT NULL,
  `TRCHD` char(1) DEFAULT NULL,
  `ROLLOVER` int(16) DEFAULT NULL,
  `DONEXTACT` int(16) DEFAULT NULL,
  `ACTCODE` varchar(255) DEFAULT NULL,
  `MINPERBAL` int(16) DEFAULT NULL,
  `TRNCOUNT` int(16) DEFAULT NULL,
  `STMTPAGE` varchar(255) DEFAULT NULL,
  `STMTFREQ` varchar(255) DEFAULT NULL,
  `DOLASTSTMT` varchar(255) DEFAULT NULL,
  `DOLASTCAP` int(16) DEFAULT NULL,
  `CUMUPCHG` int(16) DEFAULT NULL,
  `DEBIT` varchar(255) DEFAULT NULL,
  `AVBAL` varchar(255) DEFAULT NULL,
  `EOFYINT` varchar(255) DEFAULT NULL,
  `EOTYINT` varchar(255) DEFAULT NULL,
  `EOTYTAX` varchar(255) DEFAULT NULL,
  `MFCODE` char(3) DEFAULT NULL,
  `OPENBAL` varchar(255) DEFAULT NULL,
  `CUMDEPS` varchar(255) DEFAULT NULL,
  `WDLCOUNT` varchar(255) DEFAULT NULL,
  `SEEDTYPE` char(1) DEFAULT NULL,
  `SEEDBOX` varchar(255) DEFAULT NULL,
  `SEEDGOAL` char(17) DEFAULT NULL,
  `MADB` int(16) DEFAULT NULL,
  `ADBCTR` int(16) DEFAULT NULL,
  `SEEDPT` varchar(255) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`ACC`),
  KEY `indx` (`APPTYPE`,`GLCODE`) USING BTREE,
  KEY `indx1` (`SYSID`,`ACC`,`APPTYPE`) USING BTREE,
  KEY `indx2` (`SYSID`,`CID`) USING BTREE,
  KEY `indx3` (`SYSID`,`ACC`,`CHD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for svcorp
-- ----------------------------
DROP TABLE IF EXISTS `svcorp`;
CREATE TABLE `svcorp` (
  `ACC` char(7) NOT NULL,
  `CHD` char(1) NOT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `CID` char(5) DEFAULT NULL,
  `CID1` char(5) DEFAULT NULL,
  `REM1` char(30) DEFAULT NULL,
  `CID2` char(5) DEFAULT NULL,
  `REM2` char(30) DEFAULT NULL,
  `CID3` char(5) DEFAULT NULL,
  `REM3` char(30) DEFAULT NULL,
  `CID4` char(5) DEFAULT NULL,
  `REM4` char(30) DEFAULT NULL,
  `CID5` char(5) DEFAULT NULL,
  `REM5` char(30) DEFAULT NULL,
  `CID6` char(5) DEFAULT NULL,
  `REM6` char(30) DEFAULT NULL,
  `DOCREATE` varchar(255) DEFAULT NULL,
  `DOUPDATE` varchar(255) DEFAULT NULL,
  `CREATETLR` char(3) DEFAULT NULL,
  `UPDATETLR` char(3) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`ACC`,`CHD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sysparms
-- ----------------------------
DROP TABLE IF EXISTS `sysparms`;
CREATE TABLE `sysparms` (
  `SYSTEMID` char(3) DEFAULT NULL,
  `ORGNAME` char(37) DEFAULT NULL,
  `BANK` char(4) DEFAULT NULL,
  `BRSTR` char(6) DEFAULT NULL,
  `BRNAME` char(27) DEFAULT NULL,
  `BR` char(6) DEFAULT NULL,
  `INSTCODE` char(11) DEFAULT NULL,
  `ACTKEY` char(16) DEFAULT NULL,
  `RUNSTATUS` int(16) DEFAULT NULL,
  `RECOVERY` int(16) DEFAULT NULL,
  `DOLASTACT` int(16) DEFAULT NULL,
  `DOLASTDLY` int(16) DEFAULT NULL,
  `DOLASTMLY` int(16) DEFAULT NULL,
  `DOLASTQLY` int(16) DEFAULT NULL,
  `DOLASTANL` int(16) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `FINYR` char(4) DEFAULT NULL,
  `LASTDOW` int(16) DEFAULT NULL,
  `LASTTOTTRN` char(5) DEFAULT NULL,
  `LASTRECOV` char(5) DEFAULT NULL,
  `SVSERIAL` int(16) DEFAULT NULL,
  `LNSERIAL` int(16) DEFAULT NULL,
  `TDSERIAL` int(16) DEFAULT NULL,
  `CUSERIAL` int(16) DEFAULT NULL,
  `CIFSERIAL` int(16) DEFAULT NULL,
  `TRNSERIAL` char(5) DEFAULT NULL,
  `CUTOFF` int(16) DEFAULT NULL,
  `LOCCUTOFF` int(16) DEFAULT NULL,
  `ELOCAL` int(16) DEFAULT NULL,
  `DOLOCAL` int(16) DEFAULT NULL,
  `DOSHORT` int(16) DEFAULT NULL,
  `DOLONG` int(16) DEFAULT NULL,
  `PREVWDAY` int(16) DEFAULT NULL,
  `NEXTWDAY` int(16) DEFAULT NULL,
  `SYSSVBALS` int(16) DEFAULT NULL,
  `SYSTDBALS` int(16) DEFAULT NULL,
  `SYSLNBALS` int(16) DEFAULT NULL,
  `SYSCUBALS` int(16) DEFAULT NULL,
  `SYSSHBALS` int(16) DEFAULT NULL,
  `DTRN` char(13) DEFAULT NULL,
  `LAST` char(13) DEFAULT NULL,
  `MANAGER` char(30) DEFAULT NULL,
  `SYSTEM` char(2) DEFAULT NULL,
  `TINNUMBER` char(15) DEFAULT NULL,
  `ADDRESS` char(40) DEFAULT NULL,
  `SLIP` char(1) DEFAULT NULL,
  `VALIDATE` char(2) DEFAULT NULL,
  `GLDIR` char(13) DEFAULT NULL,
  `CCY` char(2) DEFAULT NULL,
  `PBCALIGN` int(16) DEFAULT NULL,
  `PBFCALIGN` int(16) DEFAULT NULL,
  `SLCALIGN` int(16) DEFAULT NULL,
  `VCCALIGN` int(16) DEFAULT NULL,
  `CLDATE001` int(16) DEFAULT NULL,
  `CLDATE002` int(16) DEFAULT NULL,
  `CLDATE003` int(16) DEFAULT NULL,
  `CLDATE004` int(16) DEFAULT NULL,
  `CLDATE005` int(16) DEFAULT NULL,
  `CLDATE006` int(16) DEFAULT NULL,
  `CLDATE007` int(16) DEFAULT NULL,
  `CLDATE008` int(16) DEFAULT NULL,
  `CLDATE009` int(16) DEFAULT NULL,
  `CLDATE010` int(16) DEFAULT NULL,
  `CLDATE011` int(16) DEFAULT NULL,
  `CIFSER0` int(16) DEFAULT NULL,
  `CIFSER1` int(16) DEFAULT NULL,
  `CIFSER2` int(16) DEFAULT NULL,
  `CIFSER3` int(16) DEFAULT NULL,
  `CIFSER4` int(16) DEFAULT NULL,
  `CIFSER5` int(16) DEFAULT NULL,
  `CIFSER6` int(16) DEFAULT NULL,
  `CIFSER7` int(16) DEFAULT NULL,
  `CIFSER8` int(16) DEFAULT NULL,
  `CIFSER9` int(16) DEFAULT NULL,
  `EOACCPER` int(16) DEFAULT NULL,
  `LENACCPER` int(16) DEFAULT NULL,
  `VERSION` char(1) DEFAULT NULL,
  `SUBPHASE` int(16) DEFAULT NULL,
  `CLUSTER` char(2) DEFAULT NULL,
  `SYSONLY` int(16) DEFAULT NULL,
  `CUSTOMVD` int(16) DEFAULT NULL,
  `CUSTOMPB` int(16) DEFAULT NULL,
  `CUSTOMPBCA` int(16) DEFAULT NULL,
  `CUSTOM` char(4) DEFAULT NULL,
  `NEWPWD` int(16) DEFAULT NULL,
  `MINPWDLEN` int(16) DEFAULT NULL,
  `PWDDAYS` int(16) DEFAULT NULL,
  `LNAPSERIAL` char(10) DEFAULT NULL,
  `CHQCUTOFF` char(5) DEFAULT NULL,
  `SSDPRODUCT` char(15) DEFAULT NULL,
  `C3MIPADD` char(15) DEFAULT NULL,
  `C3MSODPORT` int(16) DEFAULT NULL,
  `C3MEODPORT` int(16) DEFAULT NULL,
  `DOCLCUTOFF` int(16) DEFAULT NULL,
  `LOANABLECN` char(2) DEFAULT NULL,
  `DSTMULTIPL` char(10) DEFAULT NULL,
  `RECLASMODE` varchar(255) DEFAULT NULL,
  `RECLASFREQ` varchar(255) DEFAULT NULL,
  `EOMSSDWTAX` char(20) DEFAULT NULL,
  `ADJUSTEIRW` varchar(255) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  `UPLOADTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `indx` (`SYSTEMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tables
-- ----------------------------
DROP TABLE IF EXISTS `tables`;
CREATE TABLE `tables` (
  `TABLENO` char(2) NOT NULL,
  `CODE` char(3) NOT NULL,
  `DESC` char(5) DEFAULT NULL,
  `ALIAS` char(8) DEFAULT NULL,
  `FULLDESC` char(24) DEFAULT NULL,
  `GLACC` char(9) DEFAULT NULL,
  `GLACCINT` char(9) DEFAULT NULL,
  `GLACCPEN` char(9) DEFAULT NULL,
  `GLACCCHG` char(9) DEFAULT NULL,
  `GLACCDRINT` char(9) DEFAULT NULL,
  `GLACCALT` char(9) DEFAULT NULL,
  `GLACCSCINC` char(9) DEFAULT NULL,
  `GLLIST` char(10) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `NEXTGLCODE` char(2) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double NOT NULL,
  PRIMARY KEY (`SYSID`,`DOTRN`,`TABLENO`,`CODE`),
  KEY `indx` (`SYSID`,`TABLENO`,`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trnm
-- ----------------------------
DROP TABLE IF EXISTS `trnm`;
CREATE TABLE `trnm` (
  `TRN` char(5) NOT NULL,
  `ACC` char(7) DEFAULT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TRNTYPE` char(2) DEFAULT NULL,
  `TLR` char(3) DEFAULT NULL,
  `LEVEL` int(16) DEFAULT NULL,
  `TID` char(1) DEFAULT NULL,
  `TRNDATE` int(16) NOT NULL,
  `TRNAMT` int(16) DEFAULT NULL,
  `TRNNONC` int(16) DEFAULT NULL,
  `BAL` int(16) DEFAULT NULL,
  `DOPREVTRN` int(16) DEFAULT NULL,
  `PREVTRN` char(5) DEFAULT NULL,
  `SEQ` int(16) DEFAULT NULL,
  `TRNINT` int(16) DEFAULT NULL,
  `TRNTAXPEN` int(16) DEFAULT NULL,
  `TRNDESC` char(24) DEFAULT NULL,
  `TRNMODE` int(16) DEFAULT NULL,
  `INTBAL` int(16) DEFAULT NULL,
  `PENBAL` int(16) DEFAULT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `GLCODE` char(2) DEFAULT NULL,
  `TRNCHG` int(16) DEFAULT NULL,
  `CHGCODE` char(2) DEFAULT NULL,
  `BATCH` char(3) DEFAULT NULL,
  `HASH` char(2) DEFAULT NULL,
  `TRNFRXAMT` int(16) DEFAULT NULL,
  `TRNCCY` char(1) DEFAULT NULL,
  `TRNVALUE` int(16) DEFAULT NULL,
  `TRNREF` char(8) DEFAULT NULL,
  `CID` char(5) DEFAULT NULL,
  `SEEDVAL` char(2) DEFAULT NULL,
  `TIMESTAMP` char(25) DEFAULT NULL,
  `IBTRNKEY` char(25) DEFAULT NULL,
  `SYSID` varchar(10) NOT NULL,
  `DOTRN` double DEFAULT NULL,
  PRIMARY KEY (`SYSID`,`TRN`,`TRNDATE`),
  KEY `indx` (`SYSID`,`ACC`,`CHD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Procedure structure for sp_AddColumnUnlessExists
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_AddColumnUnlessExists`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddColumnUnlessExists`(
	IN dbName tinytext,
	IN tableName tinytext,
	IN fieldName tinytext,
	IN fieldDef text)
begin
	IF NOT EXISTS (
		SELECT * FROM information_schema.COLUMNS
		WHERE column_name=fieldName
		and table_name=tableName
		and table_schema=dbName
		)
	THEN
		set @ddl=CONCAT('ALTER TABLE ',dbName,'.',tableName,
			' ADD COLUMN ',fieldName,' ',fieldDef);
		prepare stmt from @ddl;
		execute stmt;
	END IF;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Individual
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Individual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Individual`(IN Date_ VARCHAR(10))
BEGIN
#select distinct C.ORGNAME,case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',B.Depo_ID)
select distinct case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',B.Depo_ID)
else A.Depo_ID end as Depo_ID,A.Depo_Type,
case when A.Depo_Type = 'J' then concat(A.Depo_Name,' AND/OR ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME,' ',B.MNAME),'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_Name,' ITF ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME,' ',B.MNAME),'')))
else A.Depo_Name end as Depo_Name,
-- case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- else A.Depo_MN end as Depo_MN,
case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',fn_DAV_NewDate_Converter(B.DOB))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',fn_DAV_NewDate_Converter(B.DOB))
else A.Depo_BD end as Depo_BD,A.Add_Prov,
A.Add_City,A.Add_Brgy,A.Add_St,A.`Borr?`,A.`Co_Borr?`,A.Dep_Ac_No,A.Br_NaCo,
A.Dep_Type,A.Dep_Type2,A.Dep_Cur,A.`Int%`,A.Int_post_date,
A.Int_cutoff,A.`Issue Date`,A.Mat_date,A.`WTax%`,A.Wtax_date,A.Dorm_ch_date,A.Last_trans_date,A.Avail_Bal,
A.`Restrict?`,A.Ac_Stat from dav_report A
left join (select * from dav_main_id)B on A.ALTCID = B.CID and A.SYSID = B.SYSID
LEFT JOIN (SELECT DISTINCT ORGNAME,DOTRN from sysparms) C ON A.DOTRN = fn_DAV_Date_Converter(C.DOTRN)
where A.DOTRN = Date_
group by A.Br_NaCo,Dep_Ac_No
order by A.Depo_Name;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Individual_A
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Individual_A`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Individual_A`(IN Date_ VARCHAR(10))
BEGIN
select Br_NaCo,Dep_Type,Dep_Type2,Dep_Ac_No,Amount,`Nature of Deduction` from dav_report A
where A.DOTRN = Date_
group by Dep_Ac_No
ORDER BY A.Br_NaCo,A.Dep_Ac_No;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Search
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Search`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Search`(IN Date_ VARCHAR(10),IN Client_ VARCHAR(100))
BEGIN
	select distinct A.Depo_Name as `Client Name`,fn_DAV_Date_Converter(B.DOB) as "Date of Birth",A.Br_NaCo,A.Depo_ID,
	CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
	LEFT JOIN dav_main_id B on A.Depo_ID = B.Depo_ID
	where A.dotrn = Date_
	and A.Depo_Name like concat('%',Client_,'%')
	group by B.LNAME,B.FNAME,B.MNAME,b.DOB
	order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Search_Individual
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Search_Individual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Search_Individual`(IN Date_ VARCHAR(10),IN Client_ID VARCHAR(20))
BEGIN

	select DISTINCT case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',B.Depo_ID)
else A.Depo_ID end as Depo_ID,Depo_Type,case when A.Depo_Type = 'J' then concat(A.Depo_Name,' AND/OR ',UPPER(IFNULL(CONCAT(B.LNAME,' ',B.FNAME,' ',B.MNAME),'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_Name,' ITF ',UPPER(IFNULL(CONCAT(B.LNAME,' ',B.FNAME,' ',B.MNAME),'')))
else A.Depo_Name end as Depo_Name,
-- case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- else A.Depo_MN end as Depo_MN,
-- case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%Y%m%m'))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%Y%m%m'))
else A.Depo_BD end as Depo_BD,Add_Prov,Add_City,Add_Brgy,Add_St,
	`Borr?`,`Co_Borr?`,Dep_Ac_No,Br_NaCo,Dep_Type,Dep_Type2,Dep_Cur,`Int%`,Int_post_date,Int_cutoff,
	`Issue Date`,Mat_date,`WTax%`,Wtax_date,Dorm_ch_date,Last_trans_date,Avail_Bal,`Restrict?`,Ac_Stat 
	from dav_report A left join (select * from dav_main_id)B on A.ALTCID = B.CID and B.sysid = A.sysid where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Search_Individual_A
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Search_Individual_A`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Search_Individual_A`(IN Date_ VARCHAR(10),IN Client_ID VARCHAR(20))
BEGIN

select Br_NaCo,Dep_Type,Dep_Type2,Dep_Ac_No,Amount,`Nature of Deduction` from dav_report A
where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Summary
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Summary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Summary`(IN Date_ VARCHAR(10),IN Client_ID VARCHAR(20))
BEGIN
	select DISTINCT B.SYSTEMID,A.Dep_Ac_No,A.Depo_ID,A.Br_NaCo,A.Avail_Bal,A.DOPEN as `Date Opened`,
	A.Last_trans_date as `Last Transaction` from dav_report A
	LEFT JOIN sysparms B on A.Br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN)
	where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Client_Summary_Crystal
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Client_Summary_Crystal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Client_Summary_Crystal`(IN Date_ VARCHAR(10))
BEGIN

-- select distinct concat(A.Depo_ID,' - ',A.Depo_Name,' ',A.Depo_MN) as CID,
select distinct B.ORGNAME,concat(A.Depo_ID,' - ',A.Depo_Name) as CID,
concat(UPPER(A.Br_NaCo),' - ',UPPER(B.SYSTEMID))as "Branch Name",
case when A.Depo_Type = 'J' then concat('AND/OR ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME,' ',C.FNAME,' ',C.MNAME),'')))
when A.Depo_Type = 'ITF/By' then concat('ITF ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME,' ',C.FNAME,' ',C.MNAME),'')))
else '' end as Joint,A.Dep_Ac_No as "Account No.",
A.Avail_Bal,A.DOPEN as "Date Opened",A.Last_trans_date as "Last Transaction" from dav_report A
LEFT JOIN sysparms B on A.br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN) 
left join (select * from dav_main_id)C on A.ALTCID = C.CID and C.sysid = A.sysid
where A.DOTRN = Date_
order by A.Depo_Name,Dep_Ac_No;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Date_Summary
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Date_Summary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Date_Summary`(IN Date_ VARCHAR(10))
BEGIN
   select distinct B.ORGNAME,UPPER(B.SYSTEMID) as SYSID,UPPER(A.Br_NaCo) as "Branch Name",
   count(A.Dep_Ac_No)as "No. of Accts",
   sum(a.Avail_Bal)as Avail_Bal from dav_Report A
   LEFT JOIN(select SYSTEMID,ORGNAME,BRNAME,DOTRN
   from SYSPARMS)B on A.Br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN)
   where A.DOTRN = Date_
   group by A.Br_NaCo,B.BRNAME order by A.Br_NaCo;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Delete_by_DATE
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Delete_by_DATE`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Delete_by_DATE`(IN Date_ CHAR(10),IN SYSID_ VARCHAR(10))
BEGIN
  
	DELETE FROM CIF WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM LNACC WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM LNCMAKER WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM PRPARMS WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM SVACC WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM SVCORP WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM SYSPARMS WHERE SYSTEMID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM `tables` WHERE SYSID = SYSID_ AND (DOTRN = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01') or DOTRN = 0);
	DELETE FROM dav_report WHERE SYSID = SYSID_ AND DATEDIFF(STR_TO_DATE(DOTRN,'%m/%d/%Y'),'1900-01-01') = DATEDIFF(STR_TO_DATE(Date_,'%m/%d/%Y'),'1900-01-01');
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Deposit_Type_Summary
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Deposit_Type_Summary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Deposit_Type_Summary`(IN Date_ VARCHAR(10))
BEGIN
   SELECT distinct (select ORGNAME from sysparms where fn_DAV_Date_Converter(DOTRN) = '12/31/2014' limit 1),CASE WHEN A.Depo_Type = 'I' THEN '( I ) - Individual' WHEN A.Depo_Type = 'J' THEN '(J) - Joint (AND/OR)' 
	 WHEN A.Depo_Type = 'ITF/BY' THEN '(ITF/BY) - Held-in-Trust-For or By account' else '(C) - Corporate' 
	 END as Depo_Type,A.Br_NaCo,A.Dep_Ac_No,A.Depo_ID,A.Depo_Name,
	 CASE WHEN A.Depo_Type = 'J' THEN B.Depo_ID WHEN A.Depo_Type = 'ITF/BY' THEN B.Depo_ID
	 else '' end as 'ID',CASE WHEN A.Depo_Type = 'J' THEN 
	 CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,'')) WHEN A.Depo_Type = 'ITF/BY' THEN 
	 CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,''))
	 else '' end as 'Name',A.Avail_Bal FROM dav_report A
	 LEFT JOIN (SELECT * FROM dav_main_id)B ON A.ALTCID = B.CID AND B.sysid = A.sysid
-- 	 LEFT JOIN (SELECT DISTINCT ORGNAME,DOTRN from sysparms)C ON A.DOTRN = fn_DAV_Date_Converter(C.DOTRN)
	 where A.DOTRN = Date_ and A.Depo_Type <> 'I'
	 order by A.Depo_Type,A.Br_NaCo,A.Depo_Name,A.Dep_Ac_No;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Dep_Master_WO_Dep_Name
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Dep_Master_WO_Dep_Name`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Dep_Master_WO_Dep_Name`(IN Date_ VARCHAR(10))
BEGIN
   select DISTINCT B.ORGNAME,A.DOTRN,A.Dep_Ac_No,A.Avail_Bal,A.`Int%`,
-- 	ifnull(A.`Issue Date`,'')as `Issue Date`,
-- 	ifnull(A.Mat_date,'')as Mat_date,
-- 	DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.`Issue Date`,'%Y%m%d'))as Term,
-- 	'' as DOLAST_IntPay,'' as `Accr_Int(If any)`,'' as Orig_Amount,
	if(A.ROLLOVER in (2,3),ifnull(A.DOSTATUS,''),ifnull(A.`Issue Date`,''))as `Issue Date`,
	ifnull(A.Mat_date,'')as Mat_date,
	if(A.ROLLOVER in (2,3),DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.DOSTATUS,'%Y%m%d')),
	DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.`Issue Date`,'%Y%m%d')))as Term,
	if(a.Int_post_date = '19010101','',
if((A.APPTYPE in (select apptype from prparms
WHERE prparms.APPTYPE = A.APPTYPE AND fn_DAV_Date_Converter(prparms.DOTRN) = A.DOTRN
AND prparms.SYSID = A.SYSID and prparms.TYPE = A.TYPE
AND prparms.RULES NOT LIKE '%$%') and A.TYPE in (select type from prparms
WHERE prparms.APPTYPE = A.APPTYPE AND fn_DAV_Date_Converter(prparms.DOTRN) = A.DOTRN
AND prparms.SYSID = A.SYSID and prparms.TYPE = A.TYPE
AND prparms.RULES NOT LIKE '%$%')),'',a.Int_post_date))as DOLAST_IntPay,'' as `Accr_Int(If any)`,'' as Orig_Amount,
	'' as Unamortized_Bal from dav_report A
	LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,DOTRN from sysparms)B 
	on A.Br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN)
	where A.DOTRN = Date_
	order by Depo_ID;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Load_Client
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Load_Client`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Load_Client`(IN Date_ VARCHAR(10))
BEGIN
DECLARE Date_Count INTEGER;
	
	CREATE TABLE IF NOT EXISTS `dav_main_id_test` (
  `Depo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Depo_ID`),
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

   insert into dav_main_id_test(CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
   select CID,ifnull(UPPER(lname),''),ifnull(UPPER(fname),''),ifnull(UPPER(mname),''),dob,SYSID,SEX,ADDR1,ADDR2,CITY from cif
   where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id_test)
   group by lname,fname,mname,dob
   order by lname,fname,mname;

	CREATE TABLE IF NOT EXISTS `dav_main_id` (
  `Depo_ID` int(11) DEFAULT NULL,
  `CIDNEW` varchar(5) DEFAULT NULL,
	`CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

	insert into dav_main_id(Depo_ID,CIDNEW,CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
	select B.depo_Id,A.CIDNEW,A.CID,A.lname,A.fname,A.mname,
	A.dob,A.SYSID,A.SEX,A.ADDR1,A.ADDR2,A.CITY from (
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) >= 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	union all
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) < 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	order by lname,fname,mname,dob)A
	inner join (select depo_Id,cid,SYSID,lname,fname,mname,dob from dav_main_id_test)B on A.lname = B.lname
	and A.fname = B.fname and A.mname = B.mname and A.DOB = B.DOB
	where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id);


CREATE TABLE IF NOT EXISTS `dav_report` (
  `Depo_ID` varchar(50) DEFAULT NULL,
  `Depo_Type` varchar(10) DEFAULT NULL,
  `Depo_Name` varchar(100) DEFAULT NULL,
  `Depo_BD` varchar(10) DEFAULT NULL,
  `Add_Prov` varchar(100) DEFAULT NULL,
  `Add_City` varchar(100) DEFAULT NULL,
  `Add_Brgy` varchar(100) DEFAULT NULL,
  `Add_St` varchar(100) DEFAULT NULL,
  `Borr?` varchar(10) DEFAULT NULL,
  `Co_Borr?` varchar(10) DEFAULT NULL,
  `Dep_Ac_No` varchar(50) DEFAULT NULL,
  `Br_NaCo` varchar(50) DEFAULT NULL,
  `Dep_Type` varchar(50) DEFAULT NULL,
  `Dep_Type2` varchar(50) DEFAULT NULL,
  `Dep_Cur` varchar(10) DEFAULT NULL,
  `Int%` varchar(10) DEFAULT NULL,
  `Int_post_date` varchar(10) DEFAULT NULL,
  `Int_cutoff` varchar(10) DEFAULT NULL,
  `Issue Date` varchar(10) DEFAULT NULL,
  `Mat_date` varchar(10) DEFAULT NULL,
  `WTax%` varchar(10) DEFAULT NULL,
  `Wtax_date` varchar(10) DEFAULT NULL,
  `Dorm_ch_date` varchar(10) DEFAULT NULL,
  `Last_trans_date` varchar(10) DEFAULT NULL,
  `Avail_Bal` DECIMAL(16,2) DEFAULT NULL,
  `Restrict?` varchar(10) DEFAULT NULL,
  `Ac_Stat` varchar(10) DEFAULT NULL,
  `DOTRN` varchar(10) DEFAULT NULL,
  `DOPEN` varchar(10) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Date_Created` varchar(10) DEFAULT NULL,
  `APPTYPE` varchar(1) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
	`ALTCID` varchar(5) DEFAULT NULL,
	`SYSID` varchar(3) DEFAULT NULL,
	`Amount` DECIMAL(16,2) DEFAULT NULL,
	`Nature of Deduction` varchar(100) DEFAULT NULL,
	`DOSTATUS` varchar(10) DEFAULT NULL,
	`ROLLOVER` varchar(1) DEFAULT NULL,
	`STATUS` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`,`DOSTATUS`,`ROLLOVER`,`STATUS`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3))) THEN "ITF/BY"
		WHEN (SELECT 1 FROM svcorp WHERE acc=svacc.ACC and DOTRN=svacc.DOTRN and SYSID=svacc.SYSID LIMIT 1) = 1 THEN "C" ELSE "J"
		END Depo_Type,
    concat(cif.LNAME," ",cif.FNAME," ",cif.MNAME) Depo_Name,
--  	cif.MNAME Depo_MN,
		fn_dav_NewDate_Converter(cif.DOB) Depo_BD,
		cif.CITY Add_Prov,
    cif.ADDR2 Add_City,
    cif.ADDR1 Add_Brgy,
		"" Add_St,
		IF((SELECT COUNT(CID) FROM lnacc WHERE  svacc.CID=lnacc.CID AND svacc.SYSID=lnacc.SYSID) > 0,"Y","N") "Borr?",
    IF(
		(SELECT 1 BG FROM (
		 SELECT CONCAT(fn_DAV_Null(COMAKER1)," ",fn_DAV_Null(COMAKER2)," ",fn_DAV_Null(COMAKER3)," ",fn_DAV_Null(COMAKER4)," ",fn_DAV_Null(COMAKER5),
			" ",fn_DAV_Null(COMAKER6)," ",fn_DAV_Null(COMAKER7)) bg FROM lncmaker) A  WHERE bg like concat("%",svacc.CID,"%")limit 1)=1,"C","N") "Co_Borr?",
    concat(LEFT(svacc.ACC,2),'-',SUBSTRING(svacc.ACC,3,5),'-', svacc.CHD) Dep_Ac_No,
		(SELECT BRNAME FROM sysparms WHERE SYSTEMID=svacc.SYSID and DOTRN=svacc.DOTRN) Br_NaCo,
     fn_Dep_Type(APPTYPE) Dep_Type,
		 fn_Dep_Type2(APPTYPE,svacc.SYSID,GLCODE,svacc.DOTRN) Dep_Type2,
		 'PHP' as Dep_Cur,
-- 		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 concat(cast(fn_Dep_IntRate(svacc.INTRATE,svacc.BAL,svacc.APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.TYPE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.type) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.type) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,TYPE,DOPEN,svacc.SYSID,svacc.DOTRN) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,TYPE,MATDATE,svacc.SYSID,svacc.DOTRN) Mat_date,
		 fn_Dep_Wtax(APPTYPE,TYPE,svacc.SYSID,svacc.CID,svacc.DOTRN) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOTRN,svacc.DOLASTCAP,svacc.DOLASTTRN,DOPEN,svacc.type) Wtax_date,
		 fn_Dep_Dorm_ch_Date(APPTYPE,`STATUS`,DOEOPCHG) Dorm_ch_date,
		 fn_dav_NewDate_Converter(svacc.DOLASTTRN)  Last_trans_date,
		 fn_DAV_Normal_Amt(BAL) Avail_Bal,
		 'N' AS "Restrict?",
		 IFNULL(CASE WHEN (`STATUS` > '00' AND `STATUS` <= '90') THEN 'A' 
								 WHEN `STATUS` = '98' THEN 'D' END,'') Ac_Stat,
		 fn_DAV_Date_Converter(svacc.DOTRN) DOTRN,
		 fn_dav_NewDate_Converter(DOPEN) DOPEN,'' Username,
		 DATE_FORMAT(CURDATE(),'%m/%d/%Y') Date_Created,
		 APPTYPE,
		 TYPE,
		 ALTCID,
		 svacc.SYSID,
		 fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID) Amount,
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`,
		 fn_dav_NewDate_Converter(svacc.`DOSTATUS`),svacc.ROLLOVER,svacc.`STATUS`  
	   FROM svacc LEFT JOIN cif on svacc.cid=cif.cid and svacc.SYSID=cif.SYSID and svacc.DOTRN=cif.dotrn
		 LEFT JOIN dav_main_id ON cif.lname=dav_main_id.LNAME and cif.FNAME=dav_main_id.FNAME
	   and cif.MNAME=dav_main_id.MNAME and cif.DOB = dav_main_id.DOB
		 WHERE svacc.`STATUS` <> 99 AND svacc.BAL > 0 and fn_DAV_Date_Converter(svacc.DOTRN) = Date_;

	ELSE
		DELETE from DAV_Report where DOTRN = Date_;

		insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`,`DOSTATUS`,`ROLLOVER`,`STATUS`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3))) THEN "ITF/BY"
		WHEN (SELECT 1 FROM svcorp WHERE acc=svacc.ACC and DOTRN=svacc.DOTRN and SYSID=svacc.SYSID LIMIT 1) = 1 THEN "C" ELSE "J"
		END Depo_Type,
    concat(cif.LNAME," ",cif.FNAME," ",cif.MNAME) Depo_Name,
--  	cif.MNAME Depo_MN,
		fn_dav_NewDate_Converter(cif.DOB) Depo_BD,
		cif.CITY Add_Prov,
    cif.ADDR2 Add_City,
    cif.ADDR1 Add_Brgy,
		"" Add_St,
		IF((SELECT COUNT(CID) FROM lnacc WHERE  svacc.CID=lnacc.CID AND svacc.SYSID=lnacc.SYSID) > 0,"Y","N") "Borr?",
    IF(
		(SELECT 1 BG FROM (
		 SELECT CONCAT(fn_DAV_Null(COMAKER1)," ",fn_DAV_Null(COMAKER2)," ",fn_DAV_Null(COMAKER3)," ",fn_DAV_Null(COMAKER4)," ",fn_DAV_Null(COMAKER5),
			" ",fn_DAV_Null(COMAKER6)," ",fn_DAV_Null(COMAKER7)) bg FROM lncmaker) A  WHERE bg like concat("%",svacc.CID,"%")limit 1)=1,"C","N") "Co_Borr?",
    concat(LEFT(svacc.ACC,2),'-',SUBSTRING(svacc.ACC,3,5),'-', svacc.CHD) Dep_Ac_No,
		(SELECT BRNAME FROM sysparms WHERE SYSTEMID=svacc.SYSID and DOTRN=svacc.DOTRN) Br_NaCo,
     fn_Dep_Type(APPTYPE) Dep_Type,
		 fn_Dep_Type2(APPTYPE,svacc.SYSID,GLCODE,svacc.DOTRN) Dep_Type2,
		 'PHP' as Dep_Cur,
-- 		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 concat(cast(fn_Dep_IntRate(svacc.INTRATE,svacc.BAL,svacc.APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.TYPE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.type) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.type) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,TYPE,DOPEN,svacc.SYSID,svacc.DOTRN) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,TYPE,MATDATE,svacc.SYSID,svacc.DOTRN) Mat_date,
		 fn_Dep_Wtax(APPTYPE,TYPE,svacc.SYSID,svacc.CID,svacc.DOTRN) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOTRN,svacc.DOLASTCAP,svacc.DOLASTTRN,DOPEN,svacc.type) Wtax_date,
		 fn_Dep_Dorm_ch_Date(APPTYPE,`STATUS`,DOEOPCHG) Dorm_ch_date,
		 fn_dav_NewDate_Converter(svacc.DOLASTTRN)  Last_trans_date,
		 fn_DAV_Normal_Amt(BAL) Avail_Bal,
		 'N' AS "Restrict?",
		 IFNULL(CASE WHEN (`STATUS` > '00' AND `STATUS` <= '90') THEN 'A' 
								 WHEN `STATUS` = '98' THEN 'D' END,'') Ac_Stat,
		 fn_DAV_Date_Converter(svacc.DOTRN) DOTRN,
		 fn_dav_NewDate_Converter(DOPEN) DOPEN,'' Username,
		 DATE_FORMAT(CURDATE(),'%m/%d/%Y') Date_Created,
		 APPTYPE,
		 TYPE,
		 ALTCID,
		 svacc.SYSID,
		 fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID) Amount,
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`,
		 fn_dav_NewDate_Converter(svacc.`DOSTATUS`),svacc.ROLLOVER,svacc.`STATUS`  
	   FROM svacc LEFT JOIN cif on svacc.cid=cif.cid and svacc.SYSID=cif.SYSID and svacc.DOTRN=cif.dotrn
		 LEFT JOIN dav_main_id ON cif.lname=dav_main_id.LNAME and cif.FNAME=dav_main_id.FNAME
	   and cif.MNAME=dav_main_id.MNAME and cif.DOB = dav_main_id.DOB
		 WHERE svacc.`STATUS` <> 99 AND svacc.BAL > 0 and fn_DAV_Date_Converter(svacc.DOTRN) = Date_;
  END IF;

	 select distinct A.Depo_Name as `Client Name`,fn_DAV_Date_Converter(B.DOB) as "Date of Birth",A.Br_NaCo,A.Depo_ID,
CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
LEFT JOIN dav_main_id B on A.Depo_ID = B.Depo_ID
where A.dotrn = Date_
group by B.LNAME,B.FNAME,B.MNAME,b.DOB
order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Load_Client_OLD
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Load_Client_OLD`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Load_Client_OLD`(IN Date_ VARCHAR(10))
BEGIN
DECLARE Date_Count INTEGER;
	
	CREATE TABLE IF NOT EXISTS `dav_main_id_test` (
  `Depo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Depo_ID`),
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

   insert into dav_main_id_test(CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
   select CID,ifnull(UPPER(lname),''),ifnull(UPPER(fname),''),ifnull(UPPER(mname),''),dob,SYSID,SEX,ADDR1,ADDR2,CITY from cif
   where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id_test)
   group by lname,fname,mname,dob
   order by lname,fname,mname;

	CREATE TABLE IF NOT EXISTS `dav_main_id` (
  `Depo_ID` int(11) DEFAULT NULL,
  `CIDNEW` varchar(5) DEFAULT NULL,
	`CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

	insert into dav_main_id(Depo_ID,CIDNEW,CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
	select B.depo_Id,A.CIDNEW,A.CID,A.lname,A.fname,A.mname,
	A.dob,A.SYSID,A.SEX,A.ADDR1,A.ADDR2,A.CITY from (
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) >= 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	union all
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) < 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	order by lname,fname,mname,dob)A
	inner join (select depo_Id,cid,SYSID,lname,fname,mname,dob from dav_main_id_test)B on A.lname = B.lname
	and A.fname = B.fname and A.mname = B.mname and A.DOB = B.DOB
	where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id);


CREATE TABLE IF NOT EXISTS `dav_report` (
  `Depo_ID` varchar(50) DEFAULT NULL,
  `Depo_Type` varchar(10) DEFAULT NULL,
  `Depo_Name` varchar(100) DEFAULT NULL,
  `Depo_MN` varchar(100) DEFAULT NULL,
  `Depo_BD` varchar(10) DEFAULT NULL,
  `Add_Prov` varchar(100) DEFAULT NULL,
  `Add_City` varchar(100) DEFAULT NULL,
  `Add_Brgy` varchar(100) DEFAULT NULL,
  `Add_St` varchar(100) DEFAULT NULL,
  `Borr?` varchar(10) DEFAULT NULL,
  `Co_Borr?` varchar(10) DEFAULT NULL,
  `Dep_Ac_No` varchar(50) DEFAULT NULL,
  `Br_NaCo` varchar(50) DEFAULT NULL,
  `Dep_Type` varchar(50) DEFAULT NULL,
  `Dep_Type2` varchar(50) DEFAULT NULL,
  `Dep_Cur` varchar(10) DEFAULT NULL,
  `Int%` varchar(10) DEFAULT NULL,
  `Int_post_date` varchar(10) DEFAULT NULL,
  `Int_cutoff` varchar(10) DEFAULT NULL,
  `Issue Date` varchar(10) DEFAULT NULL,
  `Mat_date` varchar(10) DEFAULT NULL,
  `WTax%` varchar(10) DEFAULT NULL,
  `Wtax_date` varchar(10) DEFAULT NULL,
  `Dorm_ch_date` varchar(10) DEFAULT NULL,
  `Last_trans_date` varchar(10) DEFAULT NULL,
  `Avail_Bal` DECIMAL(16,2) DEFAULT NULL,
  `Restrict?` varchar(10) DEFAULT NULL,
  `Ac_Stat` varchar(10) DEFAULT NULL,
  `DOTRN` varchar(10) DEFAULT NULL,
  `DOPEN` varchar(10) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Date_Created` varchar(10) DEFAULT NULL,
  `APPTYPE` varchar(1) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
	`ALTCID` varchar(5) DEFAULT NULL,
	`SYSID` varchar(3) DEFAULT NULL,
	`Amount` DECIMAL(16,2) DEFAULT NULL,
	`Nat_Deduct` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_MN`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3))) THEN "ITF/BY"
		WHEN (SELECT 1 FROM svcorp WHERE CID=svacc.CID and DOTRN=svacc.DOTRN and SYSID=svacc.SYSID LIMIT 1) = 1 THEN "C" ELSE "J"
		END Depo_Type,
    concat(cif.LNAME," ",cif.FNAME," ",cif.MNAME) Depo_Name,
		cif.MNAME Depo_MN,
		fn_DAV_Date_Converter(cif.DOB) Depo_BD,
		cif.CITY Add_Prov,
    cif.ADDR2 Add_City,
    cif.ADDR1 Add_Brgy,
		"" Add_St,
		IF((SELECT COUNT(CID) FROM lnacc WHERE  svacc.CID=lnacc.CID AND svacc.SYSID=lnacc.SYSID) > 0,"Y","N") "Borr?",
    IF(
		(SELECT 1 BG FROM (
		 SELECT CONCAT(fn_DAV_Null(COMAKER1)," ",fn_DAV_Null(COMAKER2)," ",fn_DAV_Null(COMAKER3)," ",fn_DAV_Null(COMAKER4)," ",fn_DAV_Null(COMAKER5),
			" ",fn_DAV_Null(COMAKER6)," ",fn_DAV_Null(COMAKER7)) bg FROM lncmaker) A  WHERE bg like concat("%",svacc.CID,"%")limit 1)=1,"C","N") "Co_Borr?",
    concat(LEFT(svacc.ACC,2),'-',SUBSTRING(svacc.ACC,3,5),'-', svacc.CHD) Dep_Ac_No,
		(SELECT BRNAME FROM sysparms WHERE SYSTEMID=svacc.SYSID and DOTRN=svacc.DOTRN) Br_NaCo,
     fn_Dep_Type(APPTYPE) Dep_Type,
		 fn_Dep_Type2(APPTYPE,svacc.SYSID,GLCODE,svacc.DOTRN) Dep_Type2,
		'PHP' as Dep_Cur,
		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(TYPE,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_post_date,
		 
		 fn_Dep_Intpostdate(TYPE,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,TYPE,DOPEN,svacc.SYSID,svacc.DOTRN) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,TYPE,MATDATE,svacc.SYSID,svacc.DOTRN) Mat_date,
		 fn_Dep_Wtax(svacc.SYSID,svacc.CID,svacc.DOTRN) "WTax%",
		 fn_Dep_WTax_Date(svacc.SYSID,svacc.CID,svacc.DOTRN,svacc.DOINTEFF) Wtax_date,
		 fn_Dep_Dorm_ch_Date(APPTYPE,`STATUS`,DOEOPCHG) Dorm_ch_date,
		 fn_DAV_Date_Converter(DOLASTTRN)  Last_trans_date,
		 fn_DAV_Normal_Amt(BAL) Avail_Bal,
		 'N' AS "Restrict?",
		 IFNULL(CASE WHEN (`STATUS` > '00' AND `STATUS` <= '90') THEN 'A' 
								 WHEN `STATUS` = '98' THEN 'D' END,'') Ac_Stat,
		 fn_DAV_Date_Converter(svacc.DOTRN) DOTRN,
		 fn_DAV_Date_Converter(DOPEN) DOPEN,'' Username,
		 DATE_FORMAT(CURDATE(),'%m/%d/%Y') Date_Created,
		 APPTYPE,
		 TYPE,
		 ALTCID,
		 svacc.SYSID,
		 fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID) Amount,
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','ServiceFee\\Dormancy Charge','' ) `Nature of Deduction`
	   FROM svacc LEFT JOIN cif on svacc.cid=cif.cid and svacc.SYSID=cif.SYSID and svacc.DOTRN=cif.dotrn
		 LEFT JOIN dav_main_id ON cif.lname=dav_main_id.LNAME and cif.FNAME=dav_main_id.FNAME
	   and cif.MNAME=dav_main_id.MNAME and cif.DOB = dav_main_id.DOB
		 WHERE svacc.`STATUS` <> 99 AND svacc.BAL > 0 and fn_DAV_Date_Converter(svacc.DOTRN) = Date_;
  END IF;

	 select distinct A.Depo_Name as `Client Name`,A.Depo_BD as "Date of Birth",A.Br_NaCo,A.Depo_ID,
CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
LEFT JOIN dav_main_id B on A.Depo_ID = B.Depo_ID
where A.dotrn = Date_
group by B.LNAME,B.FNAME,B.MNAME,b.DOB
order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Load_Client_OLD_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Load_Client_OLD_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Load_Client_OLD_copy`(IN Date_ VARCHAR(10))
BEGIN
DECLARE Date_Count INTEGER;
	
	CREATE TABLE IF NOT EXISTS `dav_main_id_test` (
  `Depo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Depo_ID`),
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

   insert into dav_main_id_test(CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
   select CID,ifnull(UPPER(lname),''),ifnull(UPPER(fname),''),ifnull(UPPER(mname),''),dob,SYSID,SEX,ADDR1,ADDR2,CITY from cif
   where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id_test)
   group by lname,fname,mname,dob
   order by lname,fname,mname;

	CREATE TABLE IF NOT EXISTS `dav_main_id` (
  `Depo_ID` int(11) DEFAULT NULL,
  `CIDNEW` varchar(5) DEFAULT NULL,
	`CID` varchar(5) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(3) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
);

	insert into dav_main_id(Depo_ID,CIDNEW,CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
	select B.depo_Id,A.CIDNEW,A.CID,A.lname,A.fname,A.mname,
	A.dob,A.SYSID,A.SEX,A.ADDR1,A.ADDR2,A.CITY from (
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) >= 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	union all
	SELECT  B.CID as CIDNEW,A.CID as CID,ifnull(UPPER(a.lname),'')as lname,
	ifnull(UPPER(a.fname),'')fname,ifnull(UPPER(a.mname),'')mname,a.dob,SYSID,
	SEX,ADDR1,ADDR2,CITY FROM cif a
	INNER JOIN(SELECT  CID,ifnull(UPPER(lname),'')as lname,
	ifnull(UPPER(fname),'')as fname,ifnull(UPPER(mname),'')as mname,
	dob,COUNT(*) totalCount FROM cif GROUP   BY lname,fname,mname,dob
	HAVING  COUNT(*) < 2 ) b ON a.lname = b.lname and A.fname = b.fname 
	and a.mname = B.mname and a.dob = B.dob
	order by lname,fname,mname,dob)A
	inner join (select depo_Id,cid,SYSID,lname,fname,mname,dob from dav_main_id_test)B on A.lname = B.lname
	and A.fname = B.fname and A.mname = B.mname and A.DOB = B.DOB
	where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from dav_main_id);


CREATE TABLE IF NOT EXISTS `dav_report` (
  `Depo_ID` varchar(50) DEFAULT NULL,
  `Depo_Type` varchar(10) DEFAULT NULL,
  `Depo_Name` varchar(100) DEFAULT NULL,
  `Depo_MN` varchar(100) DEFAULT NULL,
  `Depo_BD` varchar(10) DEFAULT NULL,
  `Add_Prov` varchar(100) DEFAULT NULL,
  `Add_City` varchar(100) DEFAULT NULL,
  `Add_Brgy` varchar(100) DEFAULT NULL,
  `Add_St` varchar(100) DEFAULT NULL,
  `Borr?` varchar(10) DEFAULT NULL,
  `Co_Borr?` varchar(10) DEFAULT NULL,
  `Dep_Ac_No` varchar(50) DEFAULT NULL,
  `Br_NaCo` varchar(50) DEFAULT NULL,
  `Dep_Type` varchar(50) DEFAULT NULL,
  `Dep_Type2` varchar(50) DEFAULT NULL,
  `Dep_Cur` varchar(10) DEFAULT NULL,
  `Int%` varchar(10) DEFAULT NULL,
  `Int_post_date` varchar(10) DEFAULT NULL,
  `Int_cutoff` varchar(10) DEFAULT NULL,
  `Issue Date` varchar(10) DEFAULT NULL,
  `Mat_date` varchar(10) DEFAULT NULL,
  `WTax%` varchar(10) DEFAULT NULL,
  `Wtax_date` varchar(10) DEFAULT NULL,
  `Dorm_ch_date` varchar(10) DEFAULT NULL,
  `Last_trans_date` varchar(10) DEFAULT NULL,
  `Avail_Bal` DECIMAL(16,2) DEFAULT NULL,
  `Restrict?` varchar(10) DEFAULT NULL,
  `Ac_Stat` varchar(10) DEFAULT NULL,
  `DOTRN` varchar(10) DEFAULT NULL,
  `DOPEN` varchar(10) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Date_Created` varchar(10) DEFAULT NULL,
  `APPTYPE` varchar(1) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
	`ALTCID` varchar(5) DEFAULT NULL,
	`SYSID` varchar(3) DEFAULT NULL,
	`Amount` DECIMAL(16,2) DEFAULT NULL,
	`Nat_Deduct` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_MN`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`)

  select DISTINCT cast(Z.Depo_ID as char) as Depo_ID,
case when A.ALTCID is null then 'I' when A.ALTCID is not null and (A.OWNER = 6 or A.OWNER =3) then 'ITF/By' 
when A.ALTCID is not null and A.OWNER is not null then 'J' when A.CID in (select distinct CID from svcorp) then 'C' end as Depo_Type,
UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')) as Depo_Name,UPPER(IFNULL(B.MNAME,'')) as Depo_MN,
DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y') as Depo_BD,UPPER(IFNULL(B.CITY,'')) as Add_Prov,
UPPER(IFNULL(B.ADDR2,'')) as Add_City,UPPER(IFNULL(B.ADDR1,'')) as Add_Brgy,UPPER('') as Add_St,
case when H.CID is not null then 'Y' else 'N' end as "Borr?",
case when I.COMAKER1 Is not null or I.COMAKER2 Is not null or I.COMAKER3 Is not null
or I.COMAKER4 Is not null or I.COMAKER5 Is not null or I.COMAKER6 Is not null or
I.COMAKER7 Is not null then 'C' else 'N' end as "Co_Borr?",
concat(LEFT(A.ACC,2),'-',SUBSTRING(A.ACC,3,5),'-', A.CHD) as Dep_Ac_No,
UPPER(CA.BRNAME) as Br_NaCo,case when A.APPTYPE = '1' then 'SA' when A.APPTYPE = '3' then 'TD' 
when A.APPTYPE = '2' THEN 'DD' end as Dep_Type,CASE when A.APPTYPE = '1' THEN 
(SELECT `FULLDESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '10' and A.SYSID = SYSID
and DOTRN = A.DOTRN)
WHEN A.APPTYPE = '2' THEN 
(SELECT `FULLDESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '20' and A.SYSID = SYSID
and DOTRN = A.DOTRN)
ELSE (SELECT `FULLDESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '30' and A.SYSID = SYSID
and DOTRN = A.DOTRN)
END AS Dep_Type2,'PHP' as Dep_Cur,concat(cast(cast(A.INTRATE/100 as decimal(12,2)) as char(6)),'%') as `Int%`,
fn_DAV_Date_Converter(A.DOINTEFF) as Int_post_date,fn_DAV_Date_Converter(A.DOINTEFF)as Int_cutoff,
CASE when A.APPTYPE = '3' THEN ifnull(fn_DAV_Date_Converter(A.DOPEN),'') 
when (A.APPTYPE in  (CB.APPTYPE) and A.TYPE in (CB.TYPE)) then ifnull(fn_DAV_Date_Converter(A.DOPEN),'') END as Issue_Date,
CASE when A.APPTYPE = '3' THEN ifnull(fn_DAV_Date_Converter(A.MATDATE),'')
when (A.APPTYPE in  (CB.APPTYPE) and A.TYPE in (CB.TYPE)) then ifnull(fn_DAV_Date_Converter(A.MATDATE),'') END as Mat_date,
case when B.TAXCODE != 1 then '0' else concat(cast(cast( (select glaccint/100 from TABLES
where tableno = '91' and code = '001' and A.SYSID = SYSID and DOTRN = A.DOTRN)as decimal(12,2)) as char(6)),'%')end as "WTax%",
case when B.TAXCODE = 0 then '' else fn_DAV_Date_Converter(A.DOINTEFF) end as "Wtax_date",
case when A.APPTYPE = '3' then '' when A.status = '98' then 
(case when A.DOEOPCHG = 0 then '' else fn_DAV_Date_Converter(A.DOEOPCHG) end)



else '' end 

as "Dorm_ch_date",fn_DAV_Date_Converter(A.DOLASTTRN) as "Last_trans_date",
A.BAL/100 as "Avail_Bal",'N' as "Restrict?",ifnull(case when (A.STATUS > '00'and A.STATUS <= '90') 
then 'A' when A.STATUS = '98' then 'D' end ,'') as Ac_Stat,fn_DAV_Date_Converter(A.DOTRN)as DOTRN,
fn_DAV_Date_Converter(A.DOPEN)as DOPEN,'' as Username,DATE_FORMAT(CURDATE(),'%m/%d/%Y') as Date_Created,
A.APPTYPE,A.TYPE,A.ALTCID,A.SYSID,ifnull(X.TRNCHG,0) as Amount,
case when X.TRNCHG is not null then 'Service fee\\Dormancy Charge' else '' end `Nature of Deduction` from svacc A
LEFT JOIN cif B on A.SYSID = B.SYSID and A.CID = B.CID and B.DOTRN = A.DOTRN
LEFT JOIN prparms AS C ON A.SYSID = C.SYSID AND A.APPTYPE = C.APPTYPE AND A.TYPE = C.TYPE and C.DOTRN = A.DOTRN
LEFT JOIN sysparms AS CA ON C.SYSID = CA.SYSTEMID and C.DOTRN = CA.DOTRN
LEFT JOIN prparms AS CB ON A.SYSID = CB.SYSID AND A.APPTYPE = CB.APPTYPE AND A.TYPE = CB.TYPE and CB.DOTRN = A.DOTRN and CB.RULES like '%$%'
LEFT JOIN lnacc H ON A.SYSID = H.SYSID AND A.CID = H.CID and H.DOTRN = A.DOTRN 
LEFT JOIN (select distinct SYSID,COMAKER1,COMAKER2,COMAKER3,COMAKER4,COMAKER5,COMAKER6,COMAKER7,DOTRN from lncmaker
where COMAKER1 is not null )I on A.SYSID = I.SYSID and A.CID = I.COMAKER1 OR A.CID = I.COMAKER2 OR A.CID = I.COMAKER3
OR A.CID = I.COMAKER4 OR A.CID = I.COMAKER5 OR A.CID = I.COMAKER6 OR A.CID = I.COMAKER7 and I.DOTRN = A.DOTRN
LEFT JOIN dav_main_id Z ON B.lname = Z.lname and B.fname = Z.fname and B.mname = Z.mname  and B.dob = Z.dob
LEFT JOIN trnm X ON A.SYSID = X.SYSID and A.ACC = X.ACC and A.CHD = X.CHD and A.DOTRN = X.TRNDATE
where A.`STATUS` != '99' and fn_DAV_Date_Converter(A.DOTRN) = Date_ and A.BAL > 0
order by B.LNAME,B.FNAME,A.ACC;
  END IF;

	 select distinct A.Depo_Name as `Client Name`,A.Depo_BD as "Date of Birth",A.Br_NaCo,A.Depo_ID,
CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
LEFT JOIN dav_main_id B on A.Depo_ID = B.Depo_ID
where A.dotrn = Date_
group by B.LNAME,B.FNAME,B.MNAME,b.DOB
order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Sched_Dep_Size_Est_Ins_Dep
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Sched_Dep_Size_Est_Ins_Dep`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Sched_Dep_Size_Est_Ins_Dep`(IN Date_ VARCHAR(10))
BEGIN
   select distinct B.ORGNAME,A.DOTRN,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0) as CA50K,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0) as CA50K_A,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0) as CA500K,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0) as CA500K_A,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as CA500KA,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as CA500KA_A,

ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as  CA500KAI_A,

ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type),0) as CATotal,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type),0) as CATotal_A,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)) as CATotalI_A,

(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type),0)-
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))) as CATotalUI_A,
((case when ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type),0) = 0 then '-' ELSE
(((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))/
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type),0))) end )*100) as `CATotalI%`,

ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA50K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA50K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KA,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KA_A,
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KAI_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SATotal,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SATotal_A,

(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))as SATotalI_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0)-(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)))as SATotalUI_A,
((case when ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) = 0 then '-' ELSE 
((ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))/ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0))end)*100) as `SATotalI%`,


ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA50K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA50K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KA,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KA_A,
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KAI_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SPATotal,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SPATotal_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))as SPATotalI_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) - (ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)))as SPATotalUI_A,

((case when ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) = 0 then '-' ELSE 
((ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))/ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0))end)*100) as `SPATotalI%`,

ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0) as TD50K,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0) as TD50K_A,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0) as TD500K,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0) as TD500K_A,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as TD500KA,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as TD500KA_A,
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0) as TD500KAI_A,
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type),0) as TDTotal,
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type),0) as TDTotal_A,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))as TDTotalI_A,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type),0)-
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))as TDTotalUI_A,
((case when (ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type),0))  = 0 then '-' ELSE
((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))/
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type),0))end)*100) as `TDTotalI%`,

(ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL50K,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL50K_A,

(ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL500K,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL500K_A,

(ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL500KA,
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))as TOTAL500KA_A,

(ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)) as TOTAL500KAI_A,

((ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))as GRANDTOTAL,
((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))as GRANDTOTAL_A,

((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))) as GRANDTOTALI_A,

(((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))-
((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))) as GRANDTOTALUI_A,

((case when ((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))) = 0 then '-' ELSE

(((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' 
and fn_DAV_Date_Converter(DOTRN) = Date_ and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID and A.DOTRN = C.DOTRN
where fn_DAV_Date_Converter(A.DOTRN) = Date_ )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)))/((ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type),0))+
(ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0)+
ifnull((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type),0))))end)*100) as `GRANDTOTALI%`,

'' as Accom_By_NameSignature,'' as Accom_By_Designation,'' as Accom_By_Date,
'' as Cert_Correct_By_NameSignature,'' as Cert_Correct_By_Designation,' 'as Cert_Correct_By_Date,
'' as Validated_By_NameSignature_Exam,'' as Validated_By_Designation,'' as Validated_By_Date

from dav_report A
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,DOTRN from sysparms)B 
on A.Br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN)
where A.DOTRN = Date_
order by Depo_ID;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Top_Depositor
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Top_Depositor`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Top_Depositor`(IN Date_ VARCHAR(10))
BEGIN

	select DISTINCT B.ORGNAME,A.DOTRN,A.Depo_ID,Dep_Ac_No,a.Depo_Type,A.`Int%`,
-- 	ifnull(A.`Issue Date`,'')as `Issue Date`,	
	if(A.ROLLOVER in (2,3),ifnull(A.DOSTATUS,''),ifnull(A.`Issue Date`,''))as `Issue Date`,
	ifnull(A.Mat_date,'')as Mat_date,
-- 	ifnull(DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),
-- 	STR_TO_DATE(A.`Issue Date`,'%Y%m%d')),'')as Term,
	ifnull(if(A.ROLLOVER in (2,3),DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.DOSTATUS,'%Y%m%d')),
	DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.`Issue Date`,'%Y%m%d'))),'') as Term,
	A.Avail_Bal from dav_report A
	LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,DOTRN from sysparms)B 
	on A.Br_NaCo = B.BRNAME and A.DOTRN = fn_DAV_Date_Converter(B.DOTRN)
	where A.DOTRN = Date_
	order by A.Avail_Bal DESC;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Truncate
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Truncate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Truncate`()
BEGIN
  TRUNCATE TABLE CIF;
	TRUNCATE TABLE LNACC;
	TRUNCATE TABLE LNCMAKER;
	TRUNCATE TABLE PRPARMS;
	TRUNCATE TABLE SVACC;
	TRUNCATE TABLE SVCORP;
	TRUNCATE TABLE SYSPARMS;
	TRUNCATE TABLE `tables`;
	TRUNCATE TABLE TRNM;
	TRUNCATE TABLE lninst;

	TRUNCATE TABLE glac;
	TRUNCATE TABLE glco;
	TRUNCATE TABLE glsc;
	TRUNCATE TABLE glt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_Truncate_DAV
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Truncate_DAV`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Truncate_DAV`()
BEGIN
  TRUNCATE TABLE dav_main_id_test;
	TRUNCATE TABLE dav_main_id;
	TRUNCATE TABLE dav_report;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_DAV_Date_Converter
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_DAV_Date_Converter`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_DAV_Date_Converter`(Date_to_Convert int) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
    RETURN DATE_FORMAT(date_add('1900-01-01' , interval Date_to_Convert DAY),'%m/%d/%Y');
		#RETURN DATE_FORMAT(date_add('1900-01-01' , interval Date_to_Convert DAY),'%Y/%m/%d');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_DAV_NewDate_Converter
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_DAV_NewDate_Converter`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_DAV_NewDate_Converter`(Date_to_Convert int) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
    RETURN DATE_FORMAT(date_add('1900-01-01' , interval Date_to_Convert DAY),'%Y%m%d');
		#RETURN DATE_FORMAT(date_add('1900-01-01' , interval Date_to_Convert DAY),'%Y/%m/%d');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_DAV_Normal_Amt
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_DAV_Normal_Amt`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_DAV_Normal_Amt`(NUMBER_AMT int) RETURNS decimal(16,2)
BEGIN
	# v8 Amount notation does not include decimal point
	RETURN NUMBER_AMT/100;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_DAV_Null
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_DAV_Null`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_DAV_Null`(String VARCHAR(50)) RETURNS varchar(50) CHARSET latin1
BEGIN
    RETURN IFNULL(String,'');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Dorm_ch_Date
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Dorm_ch_Date`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Dorm_ch_Date`(`APPTYPE` CHAR(10),`STATUS` CHAR(10),`DOEOPCHG` INT) RETURNS char(20) CHARSET latin1
BEGIN
	
	DECLARE RETVAL CHAR(20);
	
	SET RETVAL = CASE WHEN APPTYPE = '3' THEN ''
										WHEN `STATUS` = '98' THEN
										(CASE WHEN DOEOPCHG = 0 THEN '' ELSE fn_dav_NewDate_Converter(DOEOPCHG) END)
										ELSE ''
							  END;
	RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Intpostdate
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Intpostdate`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `fn_Dep_Intpostdate`(`DOLASTCAP` INT,`DOPEN` INT,`DOLASTTRN` INT,`APPTYPE` CHAR(10), `DOTRN` INT,`SYSID` CHAR(10),`TYPE` CHAR(10)) RETURNS char(10) CHARSET latin1
BEGIN
	

DECLARE RETVAL INT;
SET RETVAL = DOLASTCAP;

# DECLARE CAPF CHAR(10);
# DECLARE DOLASTM INT;
# DECLARE DOLASTQ INT;
# DECLARE DOLASTC INT;

# SELECT DOLASTQLY INTO DOLASTQ FROM sysparms WHERE sysparms.SYSTEMID = SYSID AND sysparms.DOTRN = DOTRN;
# SELECT DOLASTMLY INTO DOLASTM FROM sysparms WHERE sysparms.SYSTEMID = SYSID AND sysparms.DOTRN = DOTRN;
# SELECT CAPFREQ INTO CAPF FROM prparms WHERE 
#						prparms.SYSID = SYSID AND 
#						prparms.APPTYPE = APPTYPE AND 
#						prparms.TYPE = TYPE and 
#						prparms.DOTRN = DOTRN and 
#						RULES NOT LIKE '%$%';

##################################################
# Date of Bank Last Payment or Posting of Interest on Deposit
# Source : Prparms -> apptype, dotrn, sysid where rules do not have $
# Return : svacc -> DOLASTCAP
# SSD : Special Savings Deposit
##################################################

IF (
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
AND prparms.SYSID = SYSID and prparms.TYPE = TYPE
AND prparms.RULES LIKE '%$%'
LIMIT 1 ) = 1 THEN
	SET RETVAL = IF(DOPEN = DOLASTTRN,365,DOLASTTRN);
	#SET RETVAL = fn_dav_NewDate_Converter(DOLASTCAP);
END IF;

IF (APPTYPE = 3) THEN
	SET RETVAL = IF(DOPEN = DOLASTTRN,365,DOLASTTRN);
END IF;



#SET RETVAL = CASE WHEN CAPF = 'Q' THEN fn_dav_NewDate_Converter(DOLASTQ)
#				WHEN CAPF = 'M' THEN fn_dav_NewDate_Converter(DOLASTM)
#				ELSE ''
#END;
RETURN fn_dav_NewDate_Converter(RETVAL);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_IntRate
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_IntRate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_IntRate`(`INTRATE` decimal(16,2),`BALAMT` INT,`APPTYPE` CHAR(10), `DOTRN` INT,`SYSID` CHAR(10),`TYPE` CHAR(10)) RETURNS char(10) CHARSET latin1
BEGIN
	
DECLARE RETVAL decimal(16,2);
SET RETVAL = fn_DAV_Normal_Amt(INTRATE);

IF (
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
AND prparms.SYSID = SYSID and prparms.TYPE = TYPE
AND prparms.RULES LIKE '%G%'
LIMIT 1 ) = 1 THEN
	SET RETVAL = IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL1) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE1) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL2) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE2) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL3) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE3) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL4) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE4) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL5) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE5) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
              (SELECT fn_DAV_Normal_Amt(INTRATE5) FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ))))));
	
END IF;

RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_IssueDate
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_IssueDate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_IssueDate`(`APPTYPE` CHAR(5),`TYPE` CHAR(5),`DOPEN` CHAR(10),`SYSID` CHAR(10),`DOTRN` CHAR(10)) RETURNS char(20) CHARSET latin1
BEGIN

  DECLARE RETVAL CHAR(10);

	SET RETVAL = CASE WHEN APPTYPE = '3' THEN
								IFNULL(fn_dav_NewDate_Converter(DOPEN),'')
								WHEN APPTYPE IN (SELECT APPTYPE FROM prparms WHERE 
								prparms.SYSID = SYSID AND prparms.APPTYPE = APPTYPE AND prparms.TYPE = TYPE and prparms.DOTRN = DOTRN and RULES like '%$%')
								AND TYPE IN (SELECT TYPE FROM prparms WHERE 
								prparms.SYSID = SYSID AND prparms.APPTYPE = APPTYPE AND prparms.TYPE = TYPE and prparms.DOTRN = DOTRN and RULES like '%$%') 
								THEN
								IFNULL(fn_dav_NewDate_Converter(DOPEN),'')
							 END;

	RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Name
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Name`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `fn_Dep_Name`(`CID` CHAR(5),`SYSID` CHAR(5)) RETURNS char(100) CHARSET latin1
BEGIN
	RETURN (SELECT concat(LNAME," ",FNAME," ",MNAME)  FROM dav_main_id WHERE dav_main_id.cid = CID LIMIT 1);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Trnm_chg
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Trnm_chg`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Trnm_chg`(`ACC` CHAR(10),`DOTRN` INT,`SYSID` CHAR(10)) RETURNS decimal(16,2)
BEGIN
		DECLARE RETVAL DECIMAL(16,2);
		SELECT
			SUBSTRING_INDEX(MAX(CONCAT(TRN,'[',TRNCHG)),'[',-1)/100 INTO RETVAL
		FROM
			TRNM WHERE TRNCHG > 0 AND TRNDATE = DOTRN AND trnm.SYSID=SYSID AND trnm.ACC=ACC;
		RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Type
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Type`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Type`(`APPTYPE` char(2)) RETURNS char(5) CHARSET latin1
BEGIN
	
  DECLARE retval CHAR(5);
	
	IF apptype = '1' THEN
		  SET retval = 'SA';
  END IF;

  IF apptype = '2' THEN
		  SET retval = 'DD';
  END IF;

  IF apptype = '3' THEN
	 	  SET retval = 'TD';
  END IF;

	RETURN (retval);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Type2
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Type2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Type2`(`APPTYPE` char(2),`SYSID` char(10),`GLCODE` char(20),`DOTRN` int) RETURNS char(100) CHARSET latin1
BEGIN
	
  DECLARE RETVAL CHAR(100);

  SET RETVAL = CASE WHEN APPTYPE = '1' THEN 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '10' and A.SYSID = SYSID
								AND A.DOTRN = DOTRN)
							 WHEN APPTYPE = '2' THEN 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '20' and A.SYSID = SYSID
							 AND A.DOTRN = DOTRN)
							 ELSE 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '30' and A.SYSID = SYSID
						   AND A.DOTRN = DOTRN)
							 END;

	RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_Wtax
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_Wtax`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Wtax`(`APPTYPE` CHAR(10),`TYPE` CHAR(10),`SYSID` char(10),`CID` char(10),`DOTRN` char(10)) RETURNS char(10) CHARSET latin1
BEGIN
	



	DECLARE RETVAL CHAR(10);
	DECLARE TAXDEC INT;

  SELECT TAXCODE INTO TAXDEC FROM cif WHERE cif.SYSID=SYSID AND cif.CID=CID AND cif.DOTRN=DOTRN;
	
  # 1st check for tax exempt, TAXDEC = 0 = NON TAX
	SET RETVAL = CASE WHEN (TAXDEC != 1) THEN '0'
							 ELSE
									CONCAT(CAST(CAST( (SELECT GLACCINT/100 FROM `TABLES` WHERE tableno = '91' AND code = '001' AND
								  `TABLES`.SYSID = SYSID AND `TABLES`.DOTRN = DOTRN) AS DECIMAL(12,2)) AS CHAR(6)), '%')
							 END ;

  # 2nd Check for tax exempt X = NON TAX
  IF (RETVAL != 0) THEN
			IF (
				SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
				AND prparms.SYSID = SYSID
				AND prparms.TYPE = TYPE
				AND prparms.RULES LIKE '%X%'
				LIMIT 1 ) = 1 THEN
					SET RETVAL = '0';
			END IF;
  END IF;
									
						
								

	RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Dep_WTax_Date
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Dep_WTax_Date`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_WTax_Date`(`APPTYPE`  char(10), `SYSID` char(10),`CID` char(10),`DOTRN` char(10), `DOLASTCAP` INT,`DOLASTTRN` INT, `DOPEN` INT,`TYPE`  char(10)) RETURNS char(20) CHARSET latin1
BEGIN
	
	
	DECLARE TAXDEC INT;
	DECLARE RETVAL INT;


	SELECT TAXCODE INTO TAXDEC FROM cif WHERE cif.SYSID=SYSID AND cif.CID=CID AND cif.DOTRN=DOTRN;

	SET RETVAL = CASE WHEN TAXDEC = 0 THEN ''
							 ELSE	DOLASTCAP
							 END;

  
IF (
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE AND prparms.DOTRN = DOTRN
AND prparms.SYSID = SYSID and prparms.TYPE = TYPE
AND prparms.RULES LIKE '%$%'
LIMIT 1 ) = 1 THEN
	SET RETVAL = IF(DOPEN = DOLASTTRN,365,DOLASTTRN);
	#SET RETVAL = fn_dav_NewDate_Converter(DOLASTCAP);
END IF;

IF (APPTYPE = 3) THEN
	SET RETVAL = IF(DOPEN = DOLASTTRN,365,DOLASTTRN);
END IF;
	
	

	RETURN fn_dav_NewDate_Converter(RETVAL);
END
;;
DELIMITER ;
