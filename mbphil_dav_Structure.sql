/*
Navicat MySQL Data Transfer

Source Server         : DAV
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : mbphil_dav

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-02-25 09:07:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Create Database for Deposit Account View
-- ----------------------------

CREATE DATABASE IF NOT EXISTS mbphil_dav;
use mbphil_dav;

-- ----------------------------
-- Table structure for cif
-- ----------------------------
DROP TABLE IF EXISTS `cif`;
CREATE TABLE `cif` (
  `CID` char(5) NOT NULL DEFAULT '',
  `PIN` char(4) DEFAULT NULL,
  `NID` char(1) DEFAULT NULL,
  `LNAME` char(40) NOT NULL DEFAULT '',
  `CIVILSTAT` char(1) DEFAULT NULL,
  `TITLE` int(16) DEFAULT NULL,
  `INLS` char(6) DEFAULT NULL,
  `MNAME` char(40) DEFAULT NULL,
  `FNAME` char(40) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `DOB` int(16) NOT NULL DEFAULT '0',
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
  `EXPNAME` char(24) DEFAULT NULL,
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
  PRIMARY KEY (`CID`,`LNAME`,`DOB`),
  KEY `indx` (`SYSID`,`CID`),
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_report
-- ----------------------------
DROP TABLE IF EXISTS `dav_report`;
CREATE TABLE `dav_report` (
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
  `Avail_Bal` float DEFAULT NULL,
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
  KEY `indx` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lnacc
-- ----------------------------
DROP TABLE IF EXISTS `lnacc`;
CREATE TABLE `lnacc` (
  `ACC` char(7) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  KEY `indx` (`SYSID`,`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lncmaker
-- ----------------------------
DROP TABLE IF EXISTS `lncmaker`;
CREATE TABLE `lncmaker` (
  `LNAPPID` char(10) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  KEY `indx` (`SYSID`,`COMAKER1`,`COMAKER2`,`COMAKER3`,`COMAKER4`,`COMAKER5`,`COMAKER6`,`COMAKER7`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for main_id
-- ----------------------------
DROP TABLE IF EXISTS `main_id`;
CREATE TABLE `main_id` (
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
-- Table structure for main_id_test
-- ----------------------------
DROP TABLE IF EXISTS `main_id_test`;
CREATE TABLE `main_id_test` (
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for prparms
-- ----------------------------
DROP TABLE IF EXISTS `prparms`;
CREATE TABLE `prparms` (
  `APPTYPE` char(1) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  KEY `indx` (`SYSID`,`APPTYPE`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for svacc
-- ----------------------------
DROP TABLE IF EXISTS `svacc`;
CREATE TABLE `svacc` (
  `ACC` char(7) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  `DOTRN` double DEFAULT NULL,
  KEY `indx` (`APPTYPE`,`GLCODE`),
  KEY `indx1` (`SYSID`,`ACC`,`APPTYPE`),
  KEY `indx2` (`SYSID`,`CID`),
  KEY `indx3` (`SYSID`,`ACC`,`CHD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for svcorp
-- ----------------------------
DROP TABLE IF EXISTS `svcorp`;
CREATE TABLE `svcorp` (
  `ACC` char(7) DEFAULT NULL,
  `CHD` char(1) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL
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
  KEY `indx` (`SYSTEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tables
-- ----------------------------
DROP TABLE IF EXISTS `tables`;
CREATE TABLE `tables` (
  `TABLENO` char(2) DEFAULT NULL,
  `CODE` char(3) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  KEY `indx` (`SYSID`,`TABLENO`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trnm
-- ----------------------------
DROP TABLE IF EXISTS `trnm`;
CREATE TABLE `trnm` (
  `TRN` char(5) DEFAULT NULL,
  `ACC` char(7) DEFAULT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TRNTYPE` char(2) DEFAULT NULL,
  `TLR` char(3) DEFAULT NULL,
  `LEVEL` int(16) DEFAULT NULL,
  `TID` char(1) DEFAULT NULL,
  `TRNDATE` int(16) DEFAULT NULL,
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
  `SYSID` varchar(10) DEFAULT NULL,
  KEY `indx` (`SYSID`,`ACC`,`CHD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Procedure structure for Client_Individual
-- ----------------------------
DROP PROCEDURE IF EXISTS `Client_Individual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Client_Individual`(IN Date_ VARCHAR(10))
BEGIN
--  select distinct A.Depo_ID,A.Depo_Type,A.Depo_Name,A.Depo_MN,A.Depo_BD,A.Add_Prov,
--  A.Add_City,A.Add_Brgy,A.Add_St,A.`Borr?`,A.`Co_Borr?`,A.Dep_Ac_No,A.Br_NaCo,
--  A.Dep_Type,A.Dep_Type2,A.Dep_Cur,A.`Int%`,A.Int_post_date,
--  A.Int_cutoff,A.`Issue Date`,A.Mat_date,A.`WTax%`,A.Wtax_date,A.Dorm_ch_date,A.Last_trans_date,A.Avail_Bal,
--  A.`Restrict?`,A.Ac_Stat from dav_report A
--  where A.DOTRN = Date_
--  order by A.Depo_Name;
select distinct case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',B.Depo_ID)
else A.Depo_ID end as Depo_ID,A.Depo_Type,
case when A.Depo_Type = 'J' then concat(A.Depo_Name,' AND/OR ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_Name,' ITF ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')))
else A.Depo_Name end as Depo_Name,
case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
else A.Depo_MN end as Depo_MN,
case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
else A.Depo_BD end as Depo_BD,A.Add_Prov,
A.Add_City,A.Add_Brgy,A.Add_St,A.`Borr?`,A.`Co_Borr?`,A.Dep_Ac_No,A.Br_NaCo,
A.Dep_Type,A.Dep_Type2,A.Dep_Cur,A.`Int%`,A.Int_post_date,
A.Int_cutoff,A.`Issue Date`,A.Mat_date,A.`WTax%`,A.Wtax_date,A.Dorm_ch_date,A.Last_trans_date,A.Avail_Bal,
A.`Restrict?`,A.Ac_Stat from dav_report A
left join (select * from main_id)B on A.ALTCID = B.CID and A.SYSID = B.SYSID
where A.DOTRN = Date_
order by A.Depo_Name;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Client_Search
-- ----------------------------
DROP PROCEDURE IF EXISTS `Client_Search`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Client_Search`(IN Date_ VARCHAR(10),IN Client_ VARCHAR(100))
BEGIN
--  select distinct A.SYSID,A.CID,case when B.Sex is not null then
--  concat(substring(UPPER(B.Lname),1,1),substring(LOWER(B.Lname),2,50),' ',
--  substring(UPPER(B.Fname),1,1),substring(LOWER(B.Fname),2,50),' ',
--  ifnull(concat(substring(UPPER(Mname),1,1),substring(LOWER(Mname),2,50)),'')) else
--  (concat(trim(LNAME),  ' ', trim(FNAME) , ' ', ifnull(TRIM(MNAME),'')))
--  End as "Client Name",ifnull(date_Converter(B.DOB),'') as "Date of Birth",
--  case when ADDR1 > '' and ADDR2 > '' and CITY > '' then
--  (concat(trim(ADDR1) , ' ' , trim(ADDR2) , ' '  , trim(CITY)))
--  when ADDR1 > '' and ADDR2 > '' then (concat(trim(ADDR1) , ' ', trim(ADDR2)))
--  else ADDR1 End as Address,DOSRI,B.DOB,B.Sex, trim(B.LNAME) as LastName from svacc A
--  left join cif B on A.SYSID = B.SYSID
--  and A.CID = B.CID where A.`STATUS` != '99'
--  and Date_Converter(A.dotrn) = Date_
--  and concat(B.lname,B.Fname,ifnull(B.Mname,'')) like concat('%',Client_,'%')
--  order by B.Lname limit 50;

	select distinct A.Depo_Name as `Client Name`,A.Depo_BD as "Date of Birth",A.Br_NaCo,A.Depo_ID,
	CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
	LEFT JOIN main_id B on A.Depo_ID = B.Depo_ID
	where A.dotrn = Date_
	and A.Depo_Name like concat('%',Client_,'%')
	group by B.LNAME,B.FNAME,B.MNAME,b.DOB
	order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Client_Search_Individual
-- ----------------------------
DROP PROCEDURE IF EXISTS `Client_Search_Individual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Client_Search_Individual`(IN Date_ VARCHAR(10),IN Client_ID VARCHAR(20))
BEGIN

	select DISTINCT case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',B.Depo_ID)
else A.Depo_ID end as Depo_ID,Depo_Type,case when A.Depo_Type = 'J' then concat(A.Depo_Name,' AND/OR ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_Name,' ITF ',UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')))
else A.Depo_Name end as Depo_Name,case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
else A.Depo_MN end as Depo_MN,case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
else A.Depo_BD end as Depo_BD,Add_Prov,Add_City,Add_Brgy,Add_St,
	`Borr?`,`Co_Borr?`,Dep_Ac_No,Br_NaCo,Dep_Type,Dep_Type2,Dep_Cur,`Int%`,Int_post_date,Int_cutoff,
	`Issue Date`,Mat_date,`WTax%`,Wtax_date,Dorm_ch_date,Last_trans_date,Avail_Bal,`Restrict?`,Ac_Stat 
	from dav_report A left join (select * from main_id)B on A.ALTCID = B.CID and B.sysid = A.sysid where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Client_Summary
-- ----------------------------
DROP PROCEDURE IF EXISTS `Client_Summary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Client_Summary`(IN Date_ VARCHAR(10),IN Client_ID VARCHAR(20))
BEGIN
	select DISTINCT B.SYSTEMID,A.Dep_Ac_No,A.Depo_ID,A.Br_NaCo,A.Avail_Bal,A.DOPEN as `Date Opened`,
	A.Last_trans_date as `Last Transaction` from dav_report A
	LEFT JOIN sysparms B on A.Br_NaCo = B.BRNAME
	where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Client_Summary_Crystal
-- ----------------------------
DROP PROCEDURE IF EXISTS `Client_Summary_Crystal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Client_Summary_Crystal`(IN Date_ VARCHAR(10))
BEGIN
--   select distinct concat(A.Depo_ID,' - ',A.Depo_Name,' ',A.Depo_MN) as CID,
--   concat(A.Br_NaCo,' - ',B.SYSTEMID)as "Branch Name",A.Dep_Ac_No as "Account No.",
--   A.Avail_Bal,A.DOPEN as "Date Opened",A.Last_trans_date as "Last Transaction" from dav_report A
--   LEFT JOIN sysparms B on A.br_NaCo = B.BRNAME
--   where A.DOTRN = Date_
--   order by A.Depo_Name;

-- select distinct concat(case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',C.Depo_ID)
-- else A.Depo_ID end ,' - ',case when A.Depo_Type = 'J' then concat(A.Depo_Name,' AND/OR ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_Name,' ITF ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))
-- else A.Depo_Name end,' ',case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(C.MNAME,'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(C.MNAME,'')))
-- else A.Depo_MN end) as CID,
-- concat(A.Br_NaCo,' - ',B.SYSTEMID)as "Branch Name",A.Dep_Ac_No as "Account No.",
-- A.Avail_Bal,A.DOPEN as "Date Opened",A.Last_trans_date as "Last Transaction" from dav_report A
-- LEFT JOIN sysparms B on A.br_NaCo = B.BRNAME
-- left join (select * from main_id)C on A.ALTCID = c.CID
-- where A.DOTRN = Date_
-- order by A.Depo_Name;

select distinct concat(A.Depo_ID,' - ',A.Depo_Name,' ',A.Depo_MN) as CID,
concat(A.Br_NaCo,' - ',B.SYSTEMID)as "Branch Name",
case when A.Depo_Type = 'J' then concat('AND/OR ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))
when A.Depo_Type = 'ITF/By' then concat('ITF ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))
else '' end as Joint,A.Dep_Ac_No as "Account No.",
A.Avail_Bal,A.DOPEN as "Date Opened",A.Last_trans_date as "Last Transaction" from dav_report A
LEFT JOIN sysparms B on A.br_NaCo = B.BRNAME left join (select * from main_id)C on A.ALTCID = C.CID and C.sysid = A.sysid
where A.DOTRN = Date_
order by A.Depo_Name,Dep_Ac_No;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Date_Summary
-- ----------------------------
DROP PROCEDURE IF EXISTS `Date_Summary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Date_Summary`(IN Date_ VARCHAR(10))
BEGIN
   select B.SYSTEMID as SYSID,A.Br_NaCo as "Branch Name",
   count(A.Dep_Ac_No)as "No. of Accts",
   sum(a.Avail_Bal/100)as Avail_Bal from dav_Report A
   LEFT JOIN(select SYSTEMID,BRNAME,DOTRN
   from SYSPARMS)B on A.Br_NaCo = B.BRNAME
   where A.DOTRN = Date_
   group by A.Br_NaCo,B.BRNAME order by A.Br_NaCo;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Load_Client
-- ----------------------------
DROP PROCEDURE IF EXISTS `Load_Client`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Load_Client`(IN Date_ VARCHAR(10))
BEGIN
DECLARE Date_Count INTEGER;
	
	CREATE TABLE IF NOT EXISTS `Main_ID_Test` (
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

   insert into Main_ID_Test(CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
   select CID,ifnull(UPPER(lname),''),ifnull(UPPER(fname),''),ifnull(UPPER(mname),''),dob,SYSID,SEX,ADDR1,ADDR2,CITY from cif
   where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from Main_ID_Test)
   group by lname,fname,mname,dob
   order by lname,fname,mname;

	CREATE TABLE IF NOT EXISTS `Main_ID` (
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

	insert into Main_ID(Depo_ID,CIDNEW,CID,lname,fname,mname,dob,SYSID,SEX,ADDR1,ADDR2,CITY)
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
	inner join (select depo_Id,cid,SYSID,lname,fname,mname,dob from Main_ID_Test)B on A.lname = B.lname
	and A.fname = B.fname and A.mname = B.mname and A.DOB = B.DOB
	where not EXISTS (select CONCAT(LNAME,FNAME,MNAME,DOB) from Main_ID);


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
  `Avail_Bal` float DEFAULT NULL,
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
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_MN`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`)

  select DISTINCT cast(Z.Depo_ID as char) as Depo_ID,
case when A.ALTCID is null then 'I' when A.ALTCID is not null and (A.OWNER = 6 or A.OWNER =3) then 'ITF/By' 
when A.ALTCID is not null and A.OWNER is not null then 'J' when A.CID in (select distinct CID from svcorp) then 'C' end as Depo_Type,
UPPER(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),'')) as Depo_Name,UPPER(IFNULL(B.MNAME,'')) as Depo_MN,
DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y') as Depo_BD,UPPER('?') as Add_Prov,
UPPER(IFNULL(B.CITY,'')) as Add_City,UPPER(IFNULL(B.ADDR2,'')) as Add_Brgy,UPPER(IFNULL(B.ADDR1,'')) as Add_St,
case when H.CID is not null then 'Y' else 'N' end as "Borr?",
case when I.COMAKER1 Is not null or I.COMAKER2 Is not null or I.COMAKER3 Is not null
or I.COMAKER4 Is not null or I.COMAKER5 Is not null or I.COMAKER6 Is not null or
I.COMAKER7 Is not null then 'C' else 'N' end as "Co_Borr?",
concat(LEFT(A.ACC,2),'-',SUBSTRING(A.ACC,3,5),'-', A.CHD) as Dep_Ac_No,
UPPER(CA.BRNAME) as Br_NaCo,case when A.APPTYPE = '1' then 'SA' when A.APPTYPE = '3' then 'TD' 
when A.APPTYPE = '2' THEN 'DD' end as Dep_Type,CASE when A.APPTYPE = '1' THEN 
(SELECT `DESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '10' and A.SYSID = SYSID)
WHEN A.APPTYPE = '2' THEN 
(SELECT `DESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '20' and A.SYSID = SYSID)
ELSE (SELECT `DESC` from `tables` WHERE RIGHT(CONCAT('000',A.GLCODE),3) = CODE AND TABLENO = '30' and A.SYSID = SYSID)
END AS Dep_Type2,'PHP' as Dep_Cur,concat(cast(cast(A.INTRATE/100 as decimal) as char(6)),'%') as `Int%`,
Date_Converter(A.DOINTEFF) as Int_post_date,Date_Converter(A.DOINTEFF)as Int_cutoff,
CASE when A.APPTYPE = '3' THEN ifnull(Date_Converter(A.DOPEN),'') END as Issue_Date,
CASE when A.APPTYPE = '3' THEN ifnull(Date_Converter(A.MATDATE),'') END as Mat_date,
case when B.TAXCODE != 1 then '0' else concat(cast(cast('12' as decimal) as char(6)),'%')end as "WTax%",
case when B.TAXCODE = 0 then '' else Date_Converter(A.DOINTEFF) end as "Wtax_date",
case when A.APPTYPE = '3' then '' else IFNULL(case when X.TRNCHG = 0 then ''
when X.TRNCHG > 0 then Date_Converter(X.TRNDATE) end,'') end as "Dorm_ch_date",Date_Converter(A.DOLASTTRN) as "Last_trans_date",
A.BAL/100 as "Avail_Bal",'?' as "Restrict?",ifnull(case when (A.STATUS > '00'and A.STATUS <= '90') 
then 'A' when A.STATUS = '98' then 'D' end ,'') as Ac_Stat,Date_Converter(A.DOTRN)as DOTRN,
Date_Converter(A.DOPEN)as DOPEN,'' as Username,DATE_FORMAT(CURDATE(),'%m/%d/%Y') as Date_Created,
A.APPTYPE,A.TYPE,A.ALTCID,A.SYSID from svacc A
LEFT JOIN cif B on A.SYSID = B.SYSID and A.CID = B.CID
LEFT JOIN prparms AS C ON A.SYSID = C.SYSID AND A.APPTYPE = C.APPTYPE AND A.TYPE = C.TYPE
LEFT JOIN sysparms AS CA ON C.SYSID = CA.SYSTEMID
LEFT JOIN lnacc H ON A.SYSID = H.SYSID AND A.CID = H.CID
LEFT JOIN (select distinct SYSID,COMAKER1,COMAKER2,COMAKER3,COMAKER4,COMAKER5,COMAKER6,COMAKER7 from lncmaker
where COMAKER1 is not null )I on A.SYSID = I.SYSID and A.CID = I.COMAKER1 OR A.CID = I.COMAKER2 OR A.CID = I.COMAKER3
OR A.CID = I.COMAKER4 OR A.CID = I.COMAKER5 OR A.CID = I.COMAKER6 OR A.CID = I.COMAKER7
LEFT JOIN Main_ID Z ON B.lname = Z.lname and B.fname = Z.fname and B.mname = Z.mname  and B.dob = Z.dob
LEFT JOIN trnm X ON A.SYSID = X.SYSID and A.ACC = X.ACC and A.CHD = X.CHD
where A.`STATUS` != '99' and Date_Converter(A.DOTRN) = Date_ and A.BAL > 0
order by B.LNAME,B.FNAME,A.ACC;
  END IF;

	 select distinct A.Depo_Name as `Client Name`,A.Depo_BD as "Date of Birth",A.Br_NaCo,A.Depo_ID,
CONCAT(ifnull(B.ADDR1,''),' ',ifnull(B.ADDR2,''),' ',ifnull(B.CITY,''))as Address,B.SEX from dav_report A
LEFT JOIN main_id B on A.Depo_ID = B.Depo_ID
where A.dotrn = Date_
group by B.LNAME,B.FNAME,B.MNAME,b.DOB
order by A.Depo_Name limit 50;

   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_Dep_Master_W/O_Dep_Name
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_Dep_Master_W/O_Dep_Name`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Dep_Master_W/O_Dep_Name`(IN Date_ VARCHAR(10))
BEGIN
   select DISTINCT B.ORGNAME,A.DOTRN,A.Dep_Ac_No,A.Avail_Bal,A.`Int%`,
	ifnull(A.`Issue Date`,'')as `Issue Date`,ifnull(A.Mat_date,'')as Mat_date,
	DATEDIFF(STR_TO_DATE(A.Mat_date,'%m/%d/%YY'),STR_TO_DATE(A.`Issue Date`,'%m/%d/%YY'))as Term,
	'' as DOLAST_IntPay,'' as `Accr_Int(If any)`,'' as Orig_Amount,
	'' as Unamortized_Bal from dav_report A
	LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY from sysparms)B 
	on A.Br_NaCo = B.BRNAME
	where A.DOTRN = Date_
	order by Depo_ID;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_Sched_Dep_Size_Est_Ins_Dep
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_Sched_Dep_Size_Est_Ins_Dep`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Sched_Dep_Size_Est_Ins_Dep`(IN Date_ VARCHAR(10))
BEGIN
   select distinct B.ORGNAME,A.DOTRN,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type) as CA50K,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type) as CA50K_A,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type) as CA500K,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type) as CA500K_A,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as CA500KA,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as CA500KA_A,

(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as  CA500KAI_A,

(select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type) as CATotal,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type) as CATotal_A,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)) as CATotalI_A,

((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type)-
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))) as CATotalUI_A,
round((case when (select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type) = 0 then '-' ELSE
((((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))/
(select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and DOTRN = Date_ GROUP BY Dep_Type))) end )*100,2) as `CATotalI%`,

(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA50K,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA50K_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA500K,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA500K_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA500KA,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SA500KA_A,
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)as SA500KAI_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) as SATotal,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) as SATotal_A,

((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type))as SATotalI_A,
((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)-((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)))as SATotalUI_A,
round((case when (select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) = 0 then '-' ELSE 
(((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type))/(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type))end)*100,2) as `SATotalI%`,

-----------
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA50K,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA50K_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA500K,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA500K_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA500KA,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type) as SPA500KA_A,
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)as SPA500KAI_A,
(select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) as SPATotal,
(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) as SPATotal_A,
((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type))as SPATotalI_A,
((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type)- ((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)))as SPATotalUI_A,

round((case when (select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type) = 0 then '-' ELSE 
(((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type))/(select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type))end)*100,2) as `SPATotalI%`,

(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type) as TD50K,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type) as TD50K_A,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type) as TD500K,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type) as TD500K_A,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as TD500KA,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as TD500KA_A,
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type) as TD500KAI_A,
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type) as TDTotal,
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type) as TDTotal_A,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))as TDTotalI_A,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type)-
((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))as TDTotalUI_A,
round((case when (select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type)  = 0 then '-' ELSE
(((select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))/
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and DOTRN = Date_ GROUP BY Dep_Type))end)*100,2) as `TDTotalI%`,

((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL50K,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL50K_A,

((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL500K,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL500K_A,

((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL500KA,
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))as TOTAL500KA_A,

((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)) as TOTAL500KAI_A,

(((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select count(Dep_Ac_No) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select count(Dep_Ac_No) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))as GRANDTOTAL,
(((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))as GRANDTOTAL_A,

(((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))) as GRANDTOTALI_A,

((((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))-
(((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))) as GRANDTOTALUI_A,

round((case when (((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))) = 0 then '-' ELSE

((((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID )B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_ and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+(select (count(Dep_Ac_No)*500000) from dav_report where Dep_Type = 'TD' 
and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)))/(((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal <= 50000 and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and DOTRN = Date_ GROUP BY Dep_Type))+
((select sum(Avail_Bal) from dav_report where Dep_Type = 'DD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'SA' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type)+
(select sum(Avail_Bal) from dav_report where Dep_Type = 'TD' and Avail_Bal > 500000 and DOTRN = Date_ GROUP BY Dep_Type))))end)*100,2) as `GRANDTOTALI%`,

'' as Accom_By_NameSignature,'' as Accom_By_Designation,'' as Accom_By_Date,
'' as Cert_Correct_By_NameSignature,'' as Cert_Correct_By_Designation,' 'as Cert_Correct_By_Date,
'' as Validated_By_NameSignature_Exam,'' as Validated_By_Designation,'' as Validated_By_Date

from dav_report A
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY from sysparms)B 
on A.Br_NaCo = B.BRNAME
where A.DOTRN = Date_
order by Depo_ID;
   END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for Date_Converter
-- ----------------------------
DROP FUNCTION IF EXISTS `Date_Converter`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Date_Converter`(Date_to_Convert int) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
    RETURN DATE_FORMAT(date_add('1900-01-01' , interval Date_to_Convert DAY),'%m/%d/%Y');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Null
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Null`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Null`(String VARCHAR(50)) RETURNS varchar(50) CHARSET latin1
BEGIN
    RETURN IFNULL(String,'');
END
;;
DELIMITER ;
