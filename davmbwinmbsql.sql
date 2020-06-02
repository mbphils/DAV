/*
Navicat MySQL Data Transfer

Source Server         : DAV
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : mbsql

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-08-18 10:30:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cif
-- ----------------------------
DROP TABLE IF EXISTS `cif`;
CREATE TABLE `cif` (
  `CID` char(10) DEFAULT '',
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
  `CIFCODE1` char(10) DEFAULT NULL,
  `CIFCODE2` char(10) DEFAULT NULL,
  `CIFCODE3` char(10) DEFAULT NULL,
  `CIFCODE4` char(10) DEFAULT NULL,
  `CIFCODE5` char(10) DEFAULT NULL,
  `CIFCODE6` char(10) DEFAULT NULL,
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
  `Type` varchar(255) DEFAULT NULL,
  KEY `indx` (`SYSID`,`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_main_id
-- ----------------------------
DROP TABLE IF EXISTS `dav_main_id`;
CREATE TABLE `dav_main_id` (
  `Depo_ID` int(20) DEFAULT NULL,
  `CIDNEW` varchar(10) DEFAULT NULL,
  `CID` varchar(10) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(10) DEFAULT NULL,
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
  `Depo_ID` int(20) NOT NULL AUTO_INCREMENT,
  `CID` varchar(10) DEFAULT NULL,
  `LNAME` varchar(40) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `MNAME` varchar(40) DEFAULT NULL,
  `DOB` double DEFAULT NULL,
  `SYSID` varchar(10) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `ADDR1` varchar(30) DEFAULT NULL,
  `ADDR2` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Depo_ID`),
  KEY `indx` (`CID`) USING BTREE,
  KEY `indx1` (`LNAME`,`FNAME`,`MNAME`,`DOB`) USING BTREE,
  KEY `indx2` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dav_report
-- ----------------------------
DROP TABLE IF EXISTS `dav_report`;
CREATE TABLE `dav_report` (
  `Depo_ID` varchar(255) DEFAULT NULL,
  `Depo_Type` varchar(10) DEFAULT NULL,
  `Depo_Name` varchar(255) DEFAULT NULL,
  `Depo_BD` varchar(255) DEFAULT NULL,
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
  `ALTCID` varchar(100) DEFAULT NULL,
  `SYSID` varchar(10) DEFAULT NULL,
  `Amount` decimal(16,2) DEFAULT NULL,
  `Nature of Deduction` varchar(255) DEFAULT NULL,
  `DOSTATUS` varchar(10) DEFAULT NULL,
  `ROLLOVER` varchar(1) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dotrnhold
-- ----------------------------
DROP TABLE IF EXISTS `dotrnhold`;
CREATE TABLE `dotrnhold` (
  `RowNum` int(11) NOT NULL,
  `TrnDate` varchar(255) NOT NULL,
  PRIMARY KEY (`RowNum`,`TrnDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lnacc
-- ----------------------------
DROP TABLE IF EXISTS `lnacc`;
CREATE TABLE `lnacc` (
  `ACC` char(11) NOT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `CID` char(10) DEFAULT NULL,
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
  `CID` char(6) DEFAULT NULL,
  `LNACC` char(7) DEFAULT NULL,
  `LNCHD` char(1) DEFAULT NULL,
  `COMAKER1` char(6) DEFAULT NULL,
  `COMAKER2` char(6) DEFAULT NULL,
  `COMAKER3` char(6) DEFAULT NULL,
  `COMAKER4` char(6) DEFAULT NULL,
  `COMAKER5` char(6) DEFAULT NULL,
  `COMAKER6` char(6) DEFAULT NULL,
  `COMAKER7` char(6) DEFAULT NULL,
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
-- Table structure for lookup
-- ----------------------------
DROP TABLE IF EXISTS `lookup`;
CREATE TABLE `lookup` (
  `LookUpId` varchar(3) NOT NULL,
  `LookUpCode` varchar(3) NOT NULL,
  `LangType` varchar(3) NOT NULL,
  `ShortDesc` varchar(8) DEFAULT NULL,
  `FullDesc` varchar(24) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LookUpId`,`LookUpCode`,`LangType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for orgparms
-- ----------------------------
DROP TABLE IF EXISTS `orgparms`;
CREATE TABLE `orgparms` (
  `OrgName` varchar(36) DEFAULT NULL,
  `AccFill` varchar(1) DEFAULT NULL,
  `AccLengthNo` smallint(5) DEFAULT NULL,
  `AutoClearTF` varchar(1) DEFAULT NULL,
  `AutoOpenTF` varchar(1) DEFAULT NULL,
  `AcrIncomeTF` varchar(1) DEFAULT NULL,
  `CIDByAgcyTF` varchar(1) DEFAULT NULL,
  `CIFByCodeTF` varchar(1) DEFAULT NULL,
  `ClearTodayTF` varchar(1) DEFAULT NULL,
  `ColorSetType` varchar(1) DEFAULT NULL,
  `CUDormMonthNo` smallint(5) DEFAULT NULL,
  `CuPer91No` smallint(5) DEFAULT NULL,
  `CuPer92No` smallint(5) DEFAULT NULL,
  `CuPer93No` smallint(5) DEFAULT NULL,
  `CuPer94No` smallint(5) DEFAULT NULL,
  `CuPer95No` smallint(5) DEFAULT NULL,
  `DateMask` varchar(10) DEFAULT NULL,
  `DefCIFTaxCode` varchar(3) DEFAULT NULL,
  `AddedTaxTF` varchar(1) DEFAULT NULL,
  `AftaTF` varchar(1) DEFAULT NULL,
  `AgencyTF` varchar(1) DEFAULT NULL,
  `AtmTF` varchar(1) DEFAULT NULL,
  `BrTF` varchar(1) DEFAULT NULL,
  `DosriTF` varchar(1) DEFAULT NULL,
  `FloatTF` varchar(1) DEFAULT NULL,
  `MccyTF` varchar(1) DEFAULT NULL,
  `EncashTF` varchar(1) DEFAULT NULL,
  `EodRepsNo` smallint(5) DEFAULT NULL,
  `EomRepsNo` smallint(5) DEFAULT NULL,
  `OnUsTF` varchar(1) DEFAULT NULL,
  `EosRepsNo` smallint(5) DEFAULT NULL,
  `PinCodeTF` varchar(1) DEFAULT NULL,
  `CcySaleTF` varchar(1) DEFAULT NULL,
  `DisbSchedTF` varchar(1) DEFAULT NULL,
  `StOrderTF` varchar(1) DEFAULT NULL,
  `WholdTaxTF` varchar(1) DEFAULT NULL,
  `CIDMask` varchar(6) DEFAULT NULL,
  `CuAccMask` varchar(15) DEFAULT NULL,
  `LnAccMask` varchar(15) DEFAULT NULL,
  `SvAccMask` varchar(15) DEFAULT NULL,
  `TDAccMask` varchar(15) DEFAULT NULL,
  `ShAccMask` varchar(15) DEFAULT NULL,
  `ForceGLTF` varchar(1) DEFAULT NULL,
  `CIFDispNameType` varchar(3) DEFAULT NULL,
  `CIFNamesNo` smallint(5) DEFAULT NULL,
  `ChqMask` varchar(10) DEFAULT NULL,
  `DuesFirstTF` varchar(1) DEFAULT NULL,
  `GetDesc1TF` varchar(1) DEFAULT NULL,
  `GetDesc2TF` varchar(1) DEFAULT NULL,
  `GetDesc3TF` varchar(1) DEFAULT NULL,
  `GetDesc4TF` varchar(1) DEFAULT NULL,
  `GetDesc7TF` varchar(1) DEFAULT NULL,
  `GLAccMask` varchar(13) DEFAULT NULL,
  `GLFill` varchar(1) DEFAULT NULL,
  `GLSCByAccTF` varchar(1) DEFAULT NULL,
  `GLSCMask` varchar(13) DEFAULT NULL,
  `InclEom` smallint(5) DEFAULT NULL,
  `QuickAccessTF` varchar(1) DEFAULT NULL,
  `LNPer91` smallint(5) DEFAULT NULL,
  `LNPer92` smallint(5) DEFAULT NULL,
  `LNPer93` smallint(5) DEFAULT NULL,
  `LNPer94` smallint(5) DEFAULT NULL,
  `LNPer95` smallint(5) DEFAULT NULL,
  `MinBalOptType` varchar(3) DEFAULT NULL,
  `MinorAge` smallint(5) DEFAULT NULL,
  `NoNewSVTF` varchar(1) DEFAULT NULL,
  `NoNewTDTF` varchar(1) DEFAULT NULL,
  `CifCodesNo` smallint(5) DEFAULT NULL,
  `CuCodesNo` smallint(5) DEFAULT NULL,
  `LnCodesNo` smallint(5) DEFAULT NULL,
  `SvCodesNo` smallint(5) DEFAULT NULL,
  `TDCodesNo` smallint(5) DEFAULT NULL,
  `ShCodesNo` smallint(5) DEFAULT NULL,
  `OdueInDaysTF` varchar(1) DEFAULT NULL,
  `OnlyCashTF` varchar(1) DEFAULT NULL,
  `PayCashTF` varchar(1) DEFAULT NULL,
  `AmtMask` varchar(21) DEFAULT NULL,
  `PostSurpTF` varchar(1) DEFAULT NULL,
  `PrintSet` smallint(5) DEFAULT NULL,
  `SORetries` smallint(5) DEFAULT NULL,
  `SeniorAge` smallint(5) DEFAULT NULL,
  `YouthMinAge` smallint(5) DEFAULT NULL,
  `YouthMaxAge` smallint(5) DEFAULT NULL,
  `SvSlipPrintNo` smallint(5) DEFAULT NULL,
  `CuSlipPrintNo` smallint(5) DEFAULT NULL,
  `TdSlipPrintNo` smallint(5) DEFAULT NULL,
  `LnSlipPrintNo` smallint(5) DEFAULT NULL,
  `OcSlipPrintNo` smallint(5) DEFAULT NULL,
  `ShSlipPrintNo` smallint(5) DEFAULT NULL,
  `VcSlipPrintNo` smallint(5) DEFAULT NULL,
  `StmtMsg1` varchar(1) DEFAULT NULL,
  `StmtMsg2` varchar(1) DEFAULT NULL,
  `StopCuInt` varchar(1) DEFAULT NULL,
  `SuprCustFDTF` varchar(1) DEFAULT NULL,
  `SvDormNo` smallint(5) DEFAULT NULL,
  `BackDateTrnTF` varchar(1) DEFAULT NULL,
  `CuChqBookNo` smallint(5) DEFAULT NULL,
  `CuChqPerBookNo` smallint(5) DEFAULT NULL,
  `SvChqBookNo` smallint(5) DEFAULT NULL,
  `SvChqPerBookNo` smallint(5) DEFAULT NULL,
  `ShChqBookNo` smallint(5) DEFAULT NULL,
  `ShChqPerBookNo` smallint(5) DEFAULT NULL,
  `SvCapFreq` varchar(3) DEFAULT NULL,
  `ShCapFreq` varchar(3) DEFAULT NULL,
  `CuCapFreq` varchar(3) DEFAULT NULL,
  `TDDorm` smallint(5) DEFAULT NULL,
  `TotLnLimitAmt` decimal(18,0) DEFAULT NULL,
  `UserCustTF` varchar(1) DEFAULT NULL,
  `UserGLRepsTF` varchar(1) DEFAULT NULL,
  `UserReps` varchar(1) DEFAULT NULL,
  `UserSysM` varchar(1) DEFAULT NULL,
  `SvValidPrintNo` smallint(5) DEFAULT NULL,
  `CuValidPrintNo` smallint(5) DEFAULT NULL,
  `TDValidPrintNo` smallint(5) DEFAULT NULL,
  `LnValidPrintNo` smallint(5) DEFAULT NULL,
  `OCValidPrintNo` smallint(5) DEFAULT NULL,
  `ShValidPrintNo` smallint(5) DEFAULT NULL,
  `VcValidPrintNo` smallint(5) DEFAULT NULL,
  `ValRightTF` varchar(1) DEFAULT NULL,
  `WeekEndDays` varchar(6) DEFAULT NULL,
  `LastWeekDay` varchar(1) DEFAULT NULL,
  `SvUserAppID` varchar(6) DEFAULT NULL,
  `CuUserAppID` varchar(4) DEFAULT NULL,
  `TDUserAppID` varchar(4) DEFAULT NULL,
  `LnUserAppID` varchar(6) DEFAULT NULL,
  `ShUserAppID` varchar(4) DEFAULT NULL,
  `RateMask` varchar(8) DEFAULT NULL,
  `DualCalTF` varchar(1) DEFAULT NULL,
  `DupChqNumberTF` varchar(1) DEFAULT NULL,
  `AutoClassTF` varchar(1) DEFAULT NULL,
  `PartnersTF` varchar(1) DEFAULT NULL,
  `EodtranTF` varchar(1) DEFAULT NULL,
  `MonitorChangesTF` varchar(1) DEFAULT NULL,
  `License` varchar(7) DEFAULT NULL,
  `ShDormNo` smallint(5) DEFAULT NULL,
  `EOTaxYrMonth` smallint(5) DEFAULT NULL,
  `EOFinYrMonth` smallint(5) DEFAULT NULL,
  `FixedSOChargesNo` smallint(5) DEFAULT NULL,
  `GroupsTF` varchar(1) DEFAULT NULL,
  `GrIndAccTF` varchar(1) DEFAULT NULL,
  `GrSharedAccTF` varchar(1) DEFAULT NULL,
  `GrMemListTF` varchar(1) DEFAULT NULL,
  `GrCifExtTF` varchar(1) DEFAULT NULL,
  `PostSurpTrAccTF` varchar(1) DEFAULT NULL,
  `PostSurpCsaTF` varchar(1) DEFAULT NULL,
  `SODRepsNo` smallint(5) DEFAULT NULL,
  `ExtCifAlphaNo` smallint(5) DEFAULT NULL,
  `ExtCifNumericNo` smallint(5) DEFAULT NULL,
  `ExtCifDateNo` smallint(5) DEFAULT NULL,
  `ExtCifCode3No` smallint(5) DEFAULT NULL,
  `ExtCifCode10No` smallint(5) DEFAULT NULL,
  `CIFSortKey` varchar(24) DEFAULT NULL,
  `ShowHideTF` varchar(1) DEFAULT NULL,
  `QuarterMode` smallint(5) DEFAULT NULL,
  `ChqFacilityTF` varchar(50) DEFAULT NULL,
  `ModFixedAmtPerc` decimal(7,3) DEFAULT NULL,
  `ModIntRatePerc` decimal(7,3) DEFAULT NULL,
  `ModPenRatePerc` decimal(7,3) DEFAULT NULL,
  `LnApproveFlagTF` varchar(1) DEFAULT NULL,
  `OpenCifTemplateTF` varchar(1) DEFAULT NULL,
  `StaffTF` varchar(1) DEFAULT NULL,
  `CompanyTF` varchar(1) DEFAULT NULL,
  `AutoBatchNo` smallint(5) DEFAULT NULL,
  `SubGroupLevelsNo` smallint(5) DEFAULT NULL,
  `SixColTBEodTF` varchar(1) DEFAULT NULL,
  `SixColFTBEodTF` varchar(1) DEFAULT NULL,
  `SixColTBEOMTF` varchar(1) DEFAULT NULL,
  `SixColFTBEOMTF` varchar(1) DEFAULT NULL,
  `SixColTBRecalcTF` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `UpgradePath` varchar(250) DEFAULT NULL,
  `UpgradeInProc` bit(1) DEFAULT NULL,
  `UpgradeDate` datetime DEFAULT NULL,
  `HeadOfficeBr` varchar(6) DEFAULT NULL,
  `LsUserAppID` varchar(4) DEFAULT NULL,
  `LsAccMask` varchar(15) DEFAULT NULL,
  `LsCodesNo` smallint(5) DEFAULT NULL,
  `LSSlipPrintNo` smallint(5) DEFAULT NULL,
  `LSValidPrintNo` smallint(5) DEFAULT NULL
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
  `INTRATE` decimal(16,2) DEFAULT NULL,
  `MAXINTRATE` decimal(16,2) DEFAULT NULL,
  `MININTRATE` decimal(16,2) DEFAULT NULL,
  `INTRATE1` char(40) DEFAULT NULL,
  `INTRATE2` char(40) DEFAULT NULL,
  `INTRATE3` char(40) DEFAULT NULL,
  `INTRATE4` char(40) DEFAULT NULL,
  `INTRATE5` char(40) DEFAULT NULL,
  `PENRATE` decimal(16,2) DEFAULT NULL,
  `PRERATE` decimal(16,2) DEFAULT NULL,
  `BRKRATE` decimal(16,2) DEFAULT NULL,
  `PSTRATE` decimal(16,2) DEFAULT NULL,
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
  `ACC` char(11) NOT NULL,
  `CHD` char(1) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `GLCODE` char(2) DEFAULT NULL,
  `GLORIG` char(2) DEFAULT NULL,
  `TERM` int(16) DEFAULT NULL,
  `CID` char(10) DEFAULT NULL,
  `ACCNAME` char(15) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `DOSTATUS` int(16) DEFAULT NULL,
  `DOPEN` int(16) DEFAULT NULL,
  `DOBMINOR` int(16) DEFAULT NULL,
  `DOLASTTRN` int(16) DEFAULT NULL,
  `DOCUSTTRN` int(16) DEFAULT NULL,
  `DOEOPCHG` int(16) DEFAULT NULL,
  `BAL` int(16) DEFAULT NULL,
  `INTRATE` decimal(16,2) DEFAULT NULL,
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
  `ALTCID` char(255) DEFAULT NULL,
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
  `ACC` char(10) NOT NULL,
  `CHD` char(1) NOT NULL,
  `APPTYPE` char(1) DEFAULT NULL,
  `CID` char(6) DEFAULT NULL,
  `CID1` char(6) DEFAULT NULL,
  `REM1` char(30) DEFAULT NULL,
  `CID2` char(6) DEFAULT NULL,
  `REM2` char(30) DEFAULT NULL,
  `CID3` char(6) DEFAULT NULL,
  `REM3` char(30) DEFAULT NULL,
  `CID4` char(6) DEFAULT NULL,
  `REM4` char(30) DEFAULT NULL,
  `CID5` char(6) DEFAULT NULL,
  `REM5` char(30) DEFAULT NULL,
  `CID6` char(6) DEFAULT NULL,
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
  `SYSTEMID` char(10) DEFAULT NULL,
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
-- Table structure for tabletx
-- ----------------------------
DROP TABLE IF EXISTS `tabletx`;
CREATE TABLE `tabletx` (
  `Code` varchar(3) DEFAULT NULL,
  `TaxRate` decimal(7,3) DEFAULT NULL,
  `MinTaxableAmt` decimal(18,0) DEFAULT NULL,
  `MinTaxAmt` decimal(18,0) DEFAULT NULL,
  `TaxAppType` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trnm
-- ----------------------------
DROP TABLE IF EXISTS `trnm`;
CREATE TABLE `trnm` (
  `TRN` char(10) NOT NULL,
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
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `Cid` varchar(6) NOT NULL,
  `AddressType` varchar(3) NOT NULL,
  `Line1` varchar(24) NOT NULL,
  `Line2` varchar(24) DEFAULT NULL,
  `Line3` varchar(24) DEFAULT NULL,
  `Line4` varchar(24) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Phone1` varchar(15) DEFAULT NULL,
  `Phone2` varchar(15) DEFAULT NULL,
  `Phone3` varchar(15) DEFAULT NULL,
  `Fax1` varchar(15) DEFAULT NULL,
  `Fax2` varchar(15) DEFAULT NULL,
  `PrimaryTF` varchar(1) DEFAULT NULL,
  `MailingTF` varchar(1) DEFAULT NULL,
  `TempMailTF` varchar(1) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `MailCode` varchar(10) DEFAULT NULL,
  `HASH` varchar(10) NOT NULL,
  `BR` varchar(6) NOT NULL,
  KEY `indx` (`Cid`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_brparms
-- ----------------------------
DROP TABLE IF EXISTS `t_brparms`;
CREATE TABLE `t_brparms` (
  `BrStr` varchar(6) DEFAULT NULL,
  `BrName` varchar(27) DEFAULT NULL,
  `Br` varchar(6) NOT NULL,
  `RunStatus` smallint(5) NOT NULL,
  `RecoveryStatus` smallint(5) NOT NULL,
  `PrevRunDate` datetime NOT NULL,
  `CurrRunDate` datetime NOT NULL,
  `LastMlyDate` datetime NOT NULL,
  `LastQlyDate` datetime NOT NULL,
  `LastAnlDate` datetime NOT NULL,
  `FinYear` varchar(4) NOT NULL,
  `LastDOWDate` datetime NOT NULL,
  `ShortClearDate` datetime DEFAULT NULL,
  `PreWorkDate` datetime DEFAULT NULL,
  `SvBalsAmt` decimal(18,0) DEFAULT NULL,
  `TDBalsAmt` decimal(18,0) DEFAULT NULL,
  `LnBalsAmt` decimal(18,0) DEFAULT NULL,
  `CuBalsAmt` decimal(18,0) DEFAULT NULL,
  `ShBalsAmt` decimal(18,0) DEFAULT NULL,
  `DTrnDir` varchar(50) DEFAULT NULL,
  `LastDir` varchar(50) DEFAULT NULL,
  `ManagerName` varchar(30) DEFAULT NULL,
  `SystemCode` varchar(3) DEFAULT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `GLDir` varchar(15) DEFAULT NULL,
  `CcyType` varchar(3) NOT NULL,
  `PbColAlign` varchar(50) DEFAULT NULL,
  `SlColAlign` varchar(50) DEFAULT NULL,
  `VcColAlign` varchar(50) DEFAULT NULL,
  `ClDate001` datetime DEFAULT NULL,
  `ClDate002` datetime DEFAULT NULL,
  `ClDate003` datetime DEFAULT NULL,
  `ClDate004` datetime DEFAULT NULL,
  `ClDate005` datetime DEFAULT NULL,
  `ClDate006` datetime DEFAULT NULL,
  `ClDate007` datetime DEFAULT NULL,
  `ClDate008` datetime DEFAULT NULL,
  `ClDate009` datetime DEFAULT NULL,
  `ClDate010` datetime DEFAULT NULL,
  `ClDate011` datetime DEFAULT NULL,
  `CIFSer1` varchar(50) DEFAULT NULL,
  `CIFSer2` varchar(50) DEFAULT NULL,
  `CIFSer3` varchar(50) DEFAULT NULL,
  `CIFSer4` varchar(50) DEFAULT NULL,
  `CIFSer5` varchar(50) DEFAULT NULL,
  `CIFSer6` varchar(50) DEFAULT NULL,
  `CIFSer7` varchar(50) DEFAULT NULL,
  `CIFSer8` varchar(50) DEFAULT NULL,
  `CIFSer9` varchar(50) DEFAULT NULL,
  `EOAccPerDate` datetime DEFAULT NULL,
  `LenAccPerNo` varchar(4) DEFAULT NULL,
  `Version` varchar(1) DEFAULT NULL,
  `SubPhase` smallint(5) DEFAULT NULL,
  `Cluster` varchar(2) DEFAULT NULL,
  `SysOnlyTF` varchar(1) DEFAULT NULL,
  `LangType` varchar(3) NOT NULL,
  `NextWorkDate` datetime NOT NULL,
  `CurrentTF` varchar(1) NOT NULL,
  `TimeDepsTF` varchar(1) NOT NULL,
  `SharesTF` varchar(1) NOT NULL,
  `SavingsTF` varchar(1) NOT NULL,
  `LoansTF` varchar(1) NOT NULL,
  `CIFKey` varchar(16) DEFAULT NULL,
  `GLKey` varchar(16) DEFAULT NULL,
  `SvKey` varchar(16) DEFAULT NULL,
  `CuKey` varchar(16) DEFAULT NULL,
  `TdKey` varchar(16) DEFAULT NULL,
  `LnKey` varchar(16) DEFAULT NULL,
  `ShKey` varchar(16) DEFAULT NULL,
  `FirstRunDate` datetime DEFAULT NULL,
  `ConfiguredTF` varchar(1) DEFAULT NULL,
  `ConfiguredDate` datetime DEFAULT NULL,
  `DevCFGRTF` varchar(1) DEFAULT NULL,
  `BackupPath` varchar(250) DEFAULT NULL,
  `HASH` varchar(10) NOT NULL,
  `MultiCurrTF` varchar(1) DEFAULT NULL,
  `MCKey` varchar(16) DEFAULT NULL,
  `FPrintTF` varchar(1) DEFAULT NULL,
  `FPrintKey` varchar(10) DEFAULT NULL,
  `ATMKey` varchar(10) DEFAULT NULL,
  `ATMTF` varchar(1) DEFAULT NULL,
  `LockForPerOpTF` varchar(1) DEFAULT NULL,
  `AllowSeparatePerOpTF` varchar(1) DEFAULT NULL,
  `LeaseTF` varchar(1) DEFAULT NULL,
  `LSKey` varchar(10) DEFAULT NULL,
  `PeriodicRepInProc` varchar(3) DEFAULT NULL,
  `FXTF` varchar(1) DEFAULT NULL,
  `FXKey` varchar(10) DEFAULT NULL,
  `ATMRunStatus` varchar(1) NOT NULL,
  PRIMARY KEY (`Br`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_cif
-- ----------------------------
DROP TABLE IF EXISTS `t_cif`;
CREATE TABLE `t_cif` (
  `CID` varchar(6) NOT NULL,
  `AccSerial` varchar(10) DEFAULT NULL,
  `Type` varchar(3) NOT NULL,
  `Nid` varchar(24) DEFAULT NULL,
  `Name1` varchar(24) NOT NULL,
  `Name2` varchar(24) DEFAULT NULL,
  `Name3` varchar(24) DEFAULT NULL,
  `Name4` varchar(24) DEFAULT NULL,
  `TitleCode` varchar(3) DEFAULT NULL,
  `Initials` varchar(6) DEFAULT NULL,
  `GenderType` varchar(3) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `RegNumber` varchar(24) DEFAULT NULL,
  `ContactPerson` varchar(24) DEFAULT NULL,
  `Mobile1` varchar(15) DEFAULT NULL,
  `Mobile2` varchar(15) DEFAULT NULL,
  `Email1` varchar(40) DEFAULT NULL,
  `Email2` varchar(40) DEFAULT NULL,
  `RegisterDate` datetime DEFAULT NULL,
  `CIFCode1` varchar(10) DEFAULT NULL,
  `CIFCode2` varchar(10) DEFAULT NULL,
  `CIFCode3` varchar(10) DEFAULT NULL,
  `CIFCode4` varchar(10) DEFAULT NULL,
  `CIFCode5` varchar(10) DEFAULT NULL,
  `CIFCode6` varchar(10) DEFAULT NULL,
  `CIFCode7` varchar(10) DEFAULT NULL,
  `CIFCode8` varchar(10) DEFAULT NULL,
  `CIFCode9` varchar(10) DEFAULT NULL,
  `TaxCode` varchar(3) DEFAULT NULL,
  `LnHist` decimal(18,0) DEFAULT NULL,
  `LnMaxAmt` decimal(18,0) DEFAULT NULL,
  `LastChangeDate` datetime DEFAULT NULL,
  `CivilStatusCode` varchar(3) DEFAULT NULL,
  `DosriTF` varchar(1) DEFAULT NULL,
  `DisplayName` varchar(24) NOT NULL,
  `LangType` varchar(3) DEFAULT NULL,
  `StatusType` varchar(3) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `LocationCode` varchar(10) DEFAULT NULL,
  `NextCmDate` datetime DEFAULT NULL,
  `cmFreqType` varchar(3) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  PRIMARY KEY (`CID`,`BR`),
  KEY `indx` (`CID`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_cuacc
-- ----------------------------
DROP TABLE IF EXISTS `t_cuacc`;
CREATE TABLE `t_cuacc` (
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `AppType` varchar(1) NOT NULL,
  `AccName` varchar(24) DEFAULT NULL,
  `GLCode` varchar(2) NOT NULL,
  `GLCodeOrig` varchar(2) NOT NULL,
  `CuCode1` varchar(3) DEFAULT NULL,
  `CuCode2` varchar(3) DEFAULT NULL,
  `CuCode3` varchar(3) DEFAULT NULL,
  `CuCode4` varchar(3) DEFAULT NULL,
  `CuCode5` varchar(3) DEFAULT NULL,
  `AccStatus` varchar(2) NOT NULL,
  `AccStatusDate` datetime NOT NULL,
  `OpenDate` datetime NOT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `LastTrnDate` datetime DEFAULT NULL,
  `CustTrnDate` datetime DEFAULT NULL,
  `BalAmt` decimal(18,0) NOT NULL,
  `PbBalAmt` decimal(18,0) NOT NULL,
  `IntRate` decimal(7,3) DEFAULT NULL,
  `IntEffDate` datetime DEFAULT NULL,
  `AcrDrIntAmt` decimal(18,0) DEFAULT NULL,
  `AcrIntAmt` decimal(18,0) DEFAULT NULL,
  `AcrChgAmt` decimal(18,0) DEFAULT NULL,
  `CumDrIntPdAmt` decimal(18,0) DEFAULT NULL,
  `CumIntPdAmt` decimal(18,0) DEFAULT NULL,
  `CumTaxWAmt` decimal(18,0) DEFAULT NULL,
  `CumPenPdAmt` decimal(18,0) DEFAULT NULL,
  `CumChgPdAmt` decimal(18,0) DEFAULT NULL,
  `DrIntBalAmt` decimal(18,0) DEFAULT NULL,
  `IntBalAmt` decimal(18,0) DEFAULT NULL,
  `PenBalAmt` decimal(18,0) DEFAULT NULL,
  `TrnSeq` int(10) NOT NULL,
  `PbNumber` varchar(6) DEFAULT NULL,
  `MinPerBalAmt` decimal(18,0) DEFAULT NULL,
  `TrnWithDrawalNo` smallint(5) DEFAULT NULL,
  `StmtPageSeq` smallint(5) DEFAULT NULL,
  `StmtFreqType` varchar(3) DEFAULT NULL,
  `LastStmtDate` datetime DEFAULT NULL,
  `LastCapDate` datetime DEFAULT NULL,
  `AverageBalAmt` decimal(18,0) DEFAULT NULL,
  `EOFYIntAmt` decimal(18,0) DEFAULT NULL,
  `EOTYIntAmt` decimal(18,0) DEFAULT NULL,
  `EOFYTaxAmt` decimal(18,0) DEFAULT NULL,
  `EOTYTaxAmt` decimal(18,0) DEFAULT NULL,
  `MailTF` varchar(1) DEFAULT NULL,
  `Ledger` varchar(3) DEFAULT NULL,
  `CcyType` varchar(3) NOT NULL,
  `AcrPenAmt` decimal(15,0) DEFAULT NULL,
  `PrevDayODBalTF` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Acc`,`BR`),
  KEY `t_idx` (`Acc`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_glac
-- ----------------------------
DROP TABLE IF EXISTS `t_glac`;
CREATE TABLE `t_glac` (
  `FinYear` varchar(4) DEFAULT NULL,
  `GlAcc` varchar(9) DEFAULT NULL,
  `ExpGlAcc` varchar(13) DEFAULT NULL,
  `ShortTitle` varchar(24) DEFAULT NULL,
  `FullTitle` varchar(50) DEFAULT NULL,
  `AccessName` varchar(5) DEFAULT NULL,
  `SortAcc` varchar(7) DEFAULT NULL,
  `LevelNumber` int(5) DEFAULT NULL,
  `CaluieType` varchar(3) DEFAULT NULL,
  `MbnkOnlyTF` varchar(1) DEFAULT NULL,
  `DebitsOBAmt` decimal(18,0) DEFAULT NULL,
  `CreditsOBAmt` decimal(18,0) DEFAULT NULL,
  `OBalAmt` decimal(18,0) DEFAULT NULL,
  `DebitsAmt` decimal(18,0) DEFAULT NULL,
  `CreditsAmt` decimal(18,0) DEFAULT NULL,
  `CBalAmt` decimal(18,0) DEFAULT NULL,
  `LastTrnDate` datetime DEFAULT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `DebitsDayAmt` decimal(18,0) DEFAULT NULL,
  `CreditsDayAmt` decimal(18,0) DEFAULT NULL,
  `DebitsAmt1` decimal(18,0) DEFAULT NULL,
  `CreditsAmt1` decimal(18,0) DEFAULT NULL,
  `DebitsAmt2` decimal(18,0) DEFAULT NULL,
  `CreditsAmt2` decimal(18,0) DEFAULT NULL,
  `DebitsAmt3` decimal(18,0) DEFAULT NULL,
  `CreditsAmt3` decimal(18,0) DEFAULT NULL,
  `DebitsAmt4` decimal(18,0) DEFAULT NULL,
  `CreditsAmt4` decimal(18,0) DEFAULT NULL,
  `DebitsAmt5` decimal(18,0) DEFAULT NULL,
  `CreditsAmt5` decimal(18,0) DEFAULT NULL,
  `DebitsAmt6` decimal(18,0) DEFAULT NULL,
  `CreditsAmt6` decimal(18,0) DEFAULT NULL,
  `DebitsAmt7` decimal(18,0) DEFAULT NULL,
  `CreditsAmt7` decimal(18,0) DEFAULT NULL,
  `DebitsAmt8` decimal(18,0) DEFAULT NULL,
  `CreditsAmt8` decimal(18,0) DEFAULT NULL,
  `DebitsAmt9` decimal(18,0) DEFAULT NULL,
  `CreditsAmt9` decimal(18,0) DEFAULT NULL,
  `DebitsAmt10` decimal(18,0) DEFAULT NULL,
  `CreditsAmt10` decimal(18,0) DEFAULT NULL,
  `DebitsAmt11` decimal(18,0) DEFAULT NULL,
  `CreditsAmt11` decimal(18,0) DEFAULT NULL,
  `DebitsAmt12` decimal(18,0) DEFAULT NULL,
  `CreditsAmt12` decimal(18,0) DEFAULT NULL,
  `LastStmtDate` datetime DEFAULT NULL,
  `CcyType` varchar(3) DEFAULT NULL,
  `UserRef` varchar(12) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_glachist
-- ----------------------------
DROP TABLE IF EXISTS `t_glachist`;
CREATE TABLE `t_glachist` (
  `FinYear` varchar(4) DEFAULT NULL,
  `GlAcc` varchar(9) DEFAULT NULL,
  `ExpGlAcc` varchar(13) DEFAULT NULL,
  `ShortTitle` varchar(24) DEFAULT NULL,
  `FullTitle` varchar(50) DEFAULT NULL,
  `AccessName` varchar(5) DEFAULT NULL,
  `SortAcc` varchar(7) DEFAULT NULL,
  `LevelNumber` int(5) DEFAULT NULL,
  `CaluieType` varchar(3) DEFAULT NULL,
  `MbnkOnlyTF` varchar(1) DEFAULT NULL,
  `DebitsOBAmt` decimal(18,0) DEFAULT NULL,
  `CreditsOBAmt` decimal(18,0) DEFAULT NULL,
  `OBalAmt` decimal(18,0) DEFAULT NULL,
  `DebitsAmt` decimal(18,0) DEFAULT NULL,
  `CreditsAmt` decimal(18,0) DEFAULT NULL,
  `CBalAmt` decimal(18,0) DEFAULT NULL,
  `LastTrnDate` datetime DEFAULT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `DebitsDayAmt` decimal(18,0) DEFAULT NULL,
  `CreditsDayAmt` decimal(18,0) DEFAULT NULL,
  `DebitsAmt1` decimal(18,0) DEFAULT NULL,
  `CreditsAmt1` decimal(18,0) DEFAULT NULL,
  `DebitsAmt2` decimal(18,0) DEFAULT NULL,
  `CreditsAmt2` decimal(18,0) DEFAULT NULL,
  `DebitsAmt3` decimal(18,0) DEFAULT NULL,
  `CreditsAmt3` decimal(18,0) DEFAULT NULL,
  `DebitsAmt4` decimal(18,0) DEFAULT NULL,
  `CreditsAmt4` decimal(18,0) DEFAULT NULL,
  `DebitsAmt5` decimal(18,0) DEFAULT NULL,
  `CreditsAmt5` decimal(18,0) DEFAULT NULL,
  `DebitsAmt6` decimal(18,0) DEFAULT NULL,
  `CreditsAmt6` decimal(18,0) DEFAULT NULL,
  `DebitsAmt7` decimal(18,0) DEFAULT NULL,
  `CreditsAmt7` decimal(18,0) DEFAULT NULL,
  `DebitsAmt8` decimal(18,0) DEFAULT NULL,
  `CreditsAmt8` decimal(18,0) DEFAULT NULL,
  `DebitsAmt9` decimal(18,0) DEFAULT NULL,
  `CreditsAmt9` decimal(18,0) DEFAULT NULL,
  `DebitsAmt10` decimal(18,0) DEFAULT NULL,
  `CreditsAmt10` decimal(18,0) DEFAULT NULL,
  `DebitsAmt11` decimal(18,0) DEFAULT NULL,
  `CreditsAmt11` decimal(18,0) DEFAULT NULL,
  `DebitsAmt12` decimal(18,0) DEFAULT NULL,
  `CreditsAmt12` decimal(18,0) DEFAULT NULL,
  `LastStmtDate` datetime DEFAULT NULL,
  `CcyType` varchar(3) DEFAULT NULL,
  `UserRef` varchar(12) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_glcontrol
-- ----------------------------
DROP TABLE IF EXISTS `t_glcontrol`;
CREATE TABLE `t_glcontrol` (
  `FinYear` varchar(4) DEFAULT NULL,
  `FinYrDesc` varchar(36) DEFAULT NULL,
  `FinYrStartDate` datetime DEFAULT NULL,
  `FinYrEndDate` datetime DEFAULT NULL,
  `SuspAccsOkTF` varchar(1) DEFAULT NULL,
  `TransitoryAcc` varchar(9) DEFAULT NULL,
  `SuspenseAcc` varchar(9) DEFAULT NULL,
  `WholdTaxAcc` varchar(9) DEFAULT NULL,
  `AddedTaxAcc` varchar(9) DEFAULT NULL,
  `CashAcc` varchar(9) DEFAULT NULL,
  `ChequesAcc` varchar(9) DEFAULT NULL,
  `PayOrderAcc` varchar(9) DEFAULT NULL,
  `FloatAcc` varchar(9) DEFAULT NULL,
  `ReturnedChqAcc` varchar(9) DEFAULT NULL,
  `MbnkAccsOkTF` varchar(1) DEFAULT NULL,
  `RunStatus` int(5) DEFAULT NULL,
  `LastActDate` datetime DEFAULT NULL,
  `RecoveryStatus` int(5) DEFAULT NULL,
  `PostFrom` varchar(4) DEFAULT NULL,
  `TrnSerialSeq` decimal(18,0) DEFAULT NULL,
  `UpdStartTrn` varchar(6) DEFAULT NULL,
  `UpdEndTrn` varchar(6) DEFAULT NULL,
  `TotalledTF` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `TransactYearTF` varchar(1) DEFAULT NULL,
  `AccumulatedProvAcc` varchar(9) DEFAULT NULL,
  `ProvExpenseAcc` varchar(9) DEFAULT NULL,
  `EOYProfitLossAcc` varchar(9) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_gllink
-- ----------------------------
DROP TABLE IF EXISTS `t_gllink`;
CREATE TABLE `t_gllink` (
  `TableID` varchar(2) NOT NULL,
  `Code` varchar(2) NOT NULL,
  `ShortDesc` varchar(8) DEFAULT NULL,
  `FullDesc` varchar(24) DEFAULT NULL,
  `GLAcc` varchar(9) DEFAULT NULL,
  `GLIntAcc` varchar(9) DEFAULT NULL,
  `GLPenAcc` varchar(9) DEFAULT NULL,
  `GLChgAcc` varchar(9) DEFAULT NULL,
  `GLDrIntAcc` varchar(9) DEFAULT NULL,
  `GlAltAcc` varchar(9) DEFAULT NULL,
  `GlScIncAcc` varchar(9) DEFAULT NULL,
  `GlODAcc` varchar(9) DEFAULT NULL,
  `GlODIntAcc` varchar(9) DEFAULT NULL,
  `GlODPenAcc` varchar(9) DEFAULT NULL,
  `GLList` varchar(14) DEFAULT NULL,
  `Status` varchar(2) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  PRIMARY KEY (`TableID`,`Code`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_glsc
-- ----------------------------
DROP TABLE IF EXISTS `t_glsc`;
CREATE TABLE `t_glsc` (
  `SortCode` varchar(7) DEFAULT NULL,
  `LevelNumber` int(5) DEFAULT NULL,
  `FullDesc` varchar(50) DEFAULT NULL,
  `CaluieType` varchar(3) DEFAULT NULL,
  `FinYear` varchar(4) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `NonMonTF` varchar(1) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_glschist
-- ----------------------------
DROP TABLE IF EXISTS `t_glschist`;
CREATE TABLE `t_glschist` (
  `SortCode` varchar(7) DEFAULT NULL,
  `LevelNumber` int(5) DEFAULT NULL,
  `FullDesc` varchar(50) DEFAULT NULL,
  `CaluieType` varchar(3) DEFAULT NULL,
  `FinYear` varchar(4) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `NonMonTF` varchar(1) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_gltrndaily
-- ----------------------------
DROP TABLE IF EXISTS `t_gltrndaily`;
CREATE TABLE `t_gltrndaily` (
  `Recid` int(10) DEFAULT NULL,
  `Trn` varchar(6) DEFAULT NULL,
  `JnlNumber` varchar(4) DEFAULT NULL,
  `LineNumber` varchar(5) DEFAULT NULL,
  `Type` varchar(3) DEFAULT NULL,
  `GLAcc` varchar(9) DEFAULT NULL,
  `ExpAcc` varchar(13) DEFAULT NULL,
  `PostDate` datetime DEFAULT NULL,
  `ValueDate` datetime DEFAULT NULL,
  `Ref` varchar(10) DEFAULT NULL,
  `TrnAmt` decimal(18,0) DEFAULT NULL,
  `LargeTF` varchar(1) DEFAULT NULL,
  `FullDesc` varchar(24) DEFAULT NULL,
  `TraceCode` varchar(5) DEFAULT NULL,
  `BalAmt` decimal(18,0) DEFAULT NULL,
  `PrevTrnDate` datetime DEFAULT NULL,
  `ReconciledTF` varchar(1) DEFAULT NULL,
  `GlYear` int(10) DEFAULT NULL,
  `Tlr` varchar(3) DEFAULT NULL,
  `CCyType` varchar(3) DEFAULT NULL,
  `UserTrnType` varchar(3) DEFAULT NULL,
  `ReconKey` varchar(10) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_gltrnhist
-- ----------------------------
DROP TABLE IF EXISTS `t_gltrnhist`;
CREATE TABLE `t_gltrnhist` (
  `Recid` int(10) DEFAULT NULL,
  `Trn` varchar(6) DEFAULT NULL,
  `JnlNumber` varchar(4) DEFAULT NULL,
  `LineNumber` varchar(5) DEFAULT NULL,
  `Type` varchar(3) DEFAULT NULL,
  `GLAcc` varchar(9) DEFAULT NULL,
  `ExpAcc` varchar(13) DEFAULT NULL,
  `PostDate` datetime DEFAULT NULL,
  `ValueDate` datetime DEFAULT NULL,
  `Ref` varchar(10) DEFAULT NULL,
  `TrnAmt` decimal(18,0) DEFAULT NULL,
  `LargeTF` varchar(1) DEFAULT NULL,
  `FullDesc` varchar(24) DEFAULT NULL,
  `TraceCode` varchar(5) DEFAULT NULL,
  `BalAmt` decimal(18,0) DEFAULT NULL,
  `PrevTrnDate` datetime DEFAULT NULL,
  `ReconciledTF` varchar(1) DEFAULT NULL,
  `GlYear` int(10) DEFAULT NULL,
  `Tlr` varchar(3) DEFAULT NULL,
  `CCyType` varchar(3) DEFAULT NULL,
  `UserTrnType` varchar(3) DEFAULT NULL,
  `ReconKey` varchar(10) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_lnacc
-- ----------------------------
DROP TABLE IF EXISTS `t_lnacc`;
CREATE TABLE `t_lnacc` (
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `AppType` varchar(1) NOT NULL,
  `OpenDate` datetime NOT NULL,
  `FirstInstDueDate` datetime DEFAULT NULL,
  `FirstPriDueDate` datetime DEFAULT NULL,
  `PenRate` decimal(7,3) DEFAULT NULL,
  `AccStatus` varchar(2) DEFAULT NULL,
  `AccStatusDate` datetime DEFAULT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `LastTrnDate` datetime DEFAULT NULL,
  `GrantedAmtOrig` decimal(18,0) DEFAULT NULL,
  `GrantedAmt` decimal(18,0) DEFAULT NULL,
  `PrincipalAmt` decimal(18,0) DEFAULT NULL,
  `BalAmt` decimal(18,0) DEFAULT NULL,
  `IntRate` decimal(7,3) DEFAULT NULL,
  `FixAmt` decimal(18,0) DEFAULT NULL,
  `MatDate` datetime DEFAULT NULL,
  `AcrIntAmt` decimal(18,0) DEFAULT NULL,
  `CumIntPdAmt` decimal(18,0) DEFAULT NULL,
  `CumNorIntAmt` decimal(18,0) DEFAULT NULL,
  `CumTaxPdAmt` decimal(18,0) DEFAULT NULL,
  `AcrPenAmt` decimal(18,0) DEFAULT NULL,
  `CumPenPdAmt` decimal(18,0) DEFAULT NULL,
  `IntEffDate` datetime DEFAULT NULL,
  `CumPriPdAmt` decimal(18,0) DEFAULT NULL,
  `OduePriAmt` decimal(18,0) DEFAULT NULL,
  `GLCodeOrig` varchar(2) DEFAULT NULL,
  `GLCode` varchar(2) NOT NULL,
  `LNCode1` varchar(3) DEFAULT NULL,
  `LNCode2` varchar(3) DEFAULT NULL,
  `LNCode3` varchar(3) DEFAULT NULL,
  `LNCode4` varchar(3) DEFAULT NULL,
  `LNCode5` varchar(3) DEFAULT NULL,
  `InstNo` smallint(5) DEFAULT NULL,
  `UnExInstNo` smallint(5) DEFAULT NULL,
  `FreqType` varchar(3) DEFAULT NULL,
  `TrnSeq` smallint(5) DEFAULT NULL,
  `NextDisbAmt` decimal(18,0) DEFAULT NULL,
  `NextDisbDate` datetime DEFAULT NULL,
  `NextDisbStatus` varchar(1) DEFAULT NULL,
  `NextDisbCode` varchar(3) DEFAULT NULL,
  `AcrChgAmt` decimal(18,0) DEFAULT NULL,
  `CumChgPdAmt` decimal(18,0) DEFAULT NULL,
  `TrAcc` varchar(11) DEFAULT NULL,
  `TrChd` varchar(1) DEFAULT NULL,
  `CrAcc` varchar(11) DEFAULT NULL,
  `CrChd` varchar(11) DEFAULT NULL,
  `LeadIntNo` smallint(5) DEFAULT NULL,
  `LNDiffRate` decimal(7,3) DEFAULT NULL,
  `InstBasisNo` smallint(5) DEFAULT NULL,
  `AcrIntODuePriAmt` decimal(18,0) DEFAULT NULL,
  `OdueIntAmt` decimal(18,0) DEFAULT NULL,
  `IntBalAmt` decimal(18,0) DEFAULT NULL,
  `PenBalAmt` decimal(18,0) DEFAULT NULL,
  `LateDaysNo` smallint(5) DEFAULT NULL,
  `EOFYIntAmt` decimal(18,0) DEFAULT NULL,
  `EOTYIntAmt` decimal(18,0) DEFAULT NULL,
  `Ledger` varchar(3) DEFAULT NULL,
  `CcyType` varchar(3) DEFAULT NULL,
  `StmtFreqType` varchar(3) DEFAULT NULL,
  `StopIntTF` varchar(1) DEFAULT NULL,
  `ReschedSeq` smallint(5) DEFAULT NULL,
  `UserStatus1` varchar(3) DEFAULT NULL,
  `UserStatus2` varchar(3) DEFAULT NULL,
  `UserStatus3` varchar(3) DEFAULT NULL,
  `PriInterval` smallint(5) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `SusAcrInt` decimal(18,0) DEFAULT NULL,
  `Provision` decimal(18,0) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `StopAcrIntTF` varchar(1) DEFAULT NULL,
  `LNCode6` varchar(3) DEFAULT NULL,
  `LNCode7` varchar(3) DEFAULT NULL,
  `LNCode8` varchar(3) DEFAULT NULL,
  `AgreemNo` varchar(15) DEFAULT NULL,
  `AgreemDate` datetime DEFAULT NULL,
  `PBNumber` varchar(6) DEFAULT NULL,
  `PBBalamt` decimal(18,3) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Acc`,`BR`),
  KEY `t_idx` (`LastTrn`),
  KEY `t_idx2` (`Acc`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_lninst
-- ----------------------------
DROP TABLE IF EXISTS `t_lninst`;
CREATE TABLE `t_lninst` (
  `Acc` varchar(11) DEFAULT NULL,
  `Chd` varchar(1) DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `PaidDate` datetime DEFAULT NULL,
  `PriAmt` decimal(18,0) DEFAULT NULL,
  `IntAmt` decimal(18,0) DEFAULT NULL,
  `InstSeq` decimal(18,0) DEFAULT NULL,
  `OrigPriAmt` decimal(18,0) DEFAULT NULL,
  `NorIntAmt` decimal(18,0) DEFAULT NULL,
  `BFBalAmt` decimal(18,0) DEFAULT NULL,
  `ChargesAmt` decimal(18,0) DEFAULT NULL,
  `LnAcrIntAmt` decimal(18,0) DEFAULT NULL,
  `LnAcrPenAmt` decimal(18,0) DEFAULT NULL,
  `LnOduePriAmt` decimal(18,0) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `OrigDueDate` datetime DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_prparms
-- ----------------------------
DROP TABLE IF EXISTS `t_prparms`;
CREATE TABLE `t_prparms` (
  `AppType` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `FullDesc` varchar(24) DEFAULT NULL,
  `Rules` varchar(24) NOT NULL,
  `IntCalcType` varchar(1) DEFAULT NULL,
  `PreRate` decimal(7,3) DEFAULT NULL,
  `BreakRate` decimal(7,3) DEFAULT NULL,
  `PostMatRate` decimal(7,3) DEFAULT NULL,
  `HoldBalAmt` decimal(18,0) DEFAULT NULL,
  `MinIntBalAmt` decimal(18,0) DEFAULT NULL,
  `MinOpenDepAmt` decimal(18,0) DEFAULT NULL,
  `MaxBalAmt` decimal(18,0) DEFAULT NULL,
  `PrLimitAmt` decimal(18,0) DEFAULT NULL,
  `GLCodes` varchar(27) DEFAULT NULL,
  `ValidCodes1` varchar(27) DEFAULT NULL,
  `ValidCodes2` varchar(27) DEFAULT NULL,
  `ValidCodes3` varchar(27) DEFAULT NULL,
  `ValidCodes4` varchar(27) DEFAULT NULL,
  `ValidCodes5` varchar(27) DEFAULT NULL,
  `FreqCodes` varchar(27) DEFAULT NULL,
  `AllocCodes` varchar(27) DEFAULT NULL,
  `MinTerm` smallint(5) DEFAULT NULL,
  `MaxTerm` smallint(5) DEFAULT NULL,
  `TermType` varchar(1) DEFAULT NULL,
  `ValidTerm` varchar(40) DEFAULT NULL,
  `FreeWdlsNo` smallint(5) DEFAULT NULL,
  `FreeTrnsNo` smallint(5) DEFAULT NULL,
  `NoChgBalAmt` decimal(18,0) DEFAULT NULL,
  `CapFreqType` varchar(3) DEFAULT NULL,
  `CcyType` varchar(3) DEFAULT NULL,
  `DrCapFreqType` varchar(3) DEFAULT NULL,
  `MinIntRate` decimal(7,3) DEFAULT NULL,
  `MaxIntRate` decimal(7,3) DEFAULT NULL,
  `DaysGraceNo` smallint(5) DEFAULT NULL,
  `InCollectionSheetTF` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `PrintReminderLtrTF` varchar(1) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `AllBranches` bit(1) NOT NULL,
  `MinPercNorIntAmt` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`AppType`,`PrType`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_rates
-- ----------------------------
DROP TABLE IF EXISTS `t_rates`;
CREATE TABLE `t_rates` (
  `AppType` varchar(1) DEFAULT NULL,
  `PrType` varchar(2) DEFAULT NULL,
  `IntRate` decimal(7,3) DEFAULT NULL,
  `PenRate` decimal(7,3) DEFAULT NULL,
  `FromAmt` decimal(18,0) NOT NULL,
  `ToAmt` decimal(18,0) NOT NULL,
  `FromTerm` decimal(18,0) DEFAULT NULL,
  `ToTerm` decimal(18,0) DEFAULT NULL,
  `FromDate` datetime NOT NULL,
  `ToDate` datetime DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `RecID` int(10) NOT NULL,
  `BR` varchar(6) NOT NULL,
  `AllBranches` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_relacc
-- ----------------------------
DROP TABLE IF EXISTS `t_relacc`;
CREATE TABLE `t_relacc` (
  `CID` varchar(6) NOT NULL,
  `ACC` varchar(11) NOT NULL,
  `Chd` varchar(1) NOT NULL,
  `AppType` varchar(1) NOT NULL,
  `Type` varchar(3) NOT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `SID` int(10) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  PRIMARY KEY (`CID`,`ACC`,`Type`,`BR`),
  KEY `t_idx` (`ACC`,`BR`),
  KEY `t_idx2` (`ACC`,`AppType`,`Type`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_savings_altcid
-- ----------------------------
DROP TABLE IF EXISTS `t_savings_altcid`;
CREATE TABLE `t_savings_altcid` (
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) DEFAULT NULL,
  `AppType` varchar(1) DEFAULT NULL,
  `Type` varchar(3) DEFAULT NULL,
  `ALTCID` varchar(255) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  PRIMARY KEY (`Acc`,`BR`),
  KEY `t_idx` (`Acc`,`Chd`,`AppType`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_serials
-- ----------------------------
DROP TABLE IF EXISTS `t_serials`;
CREATE TABLE `t_serials` (
  `AppType` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `SerialSeq` int(10) DEFAULT NULL,
  `MaxSerialNumber` int(10) DEFAULT NULL,
  `RLockTF` varchar(1) DEFAULT NULL,
  `HASH` varchar(10) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `Time_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AppType`,`PrType`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_svacc
-- ----------------------------
DROP TABLE IF EXISTS `t_svacc`;
CREATE TABLE `t_svacc` (
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `AppType` varchar(1) NOT NULL,
  `GLCode` varchar(2) NOT NULL,
  `GLCodeOrig` varchar(2) DEFAULT NULL,
  `SvCode1` varchar(3) DEFAULT NULL,
  `SvCode2` varchar(3) DEFAULT NULL,
  `SvCode3` varchar(3) DEFAULT NULL,
  `SvCode4` varchar(3) DEFAULT NULL,
  `SvCode5` varchar(3) DEFAULT NULL,
  `AccName` varchar(24) DEFAULT NULL,
  `AliasName` varchar(24) DEFAULT NULL,
  `AccStatus` varchar(2) NOT NULL,
  `AccStatusDate` datetime NOT NULL,
  `OpenDate` datetime NOT NULL,
  `MatDate` datetime DEFAULT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `LastTrnDate` datetime DEFAULT NULL,
  `CustTrnDate` datetime DEFAULT NULL,
  `BalAmt` decimal(18,0) NOT NULL,
  `PBBalAmt` decimal(18,0) DEFAULT NULL,
  `ContractAmt` decimal(18,0) NOT NULL,
  `IntRate` decimal(7,3) NOT NULL,
  `IntEffDate` datetime DEFAULT NULL,
  `AcrBIntAmt` decimal(18,0) NOT NULL,
  `CumIntPdAmt` decimal(18,0) NOT NULL,
  `CumTaxWAmt` decimal(18,0) NOT NULL,
  `IntBalAmt` decimal(18,0) NOT NULL,
  `TrnSeq` smallint(5) DEFAULT NULL,
  `PBNumber` varchar(6) DEFAULT NULL,
  `ActCodeType` smallint(5) DEFAULT NULL,
  `MinPerBalAmt` decimal(18,0) NOT NULL,
  `TrnWithDrawalNo` smallint(5) DEFAULT NULL,
  `StmtPageSeq` smallint(5) DEFAULT NULL,
  `StmtFreqType` varchar(3) DEFAULT NULL,
  `LastStmtDate` datetime DEFAULT NULL,
  `LastCapDate` datetime DEFAULT NULL,
  `AverageBalAmt` decimal(18,0) NOT NULL,
  `EOFYIntAmt` decimal(18,0) NOT NULL,
  `EOTYIntAmt` decimal(18,0) NOT NULL,
  `EOFYTaxAmt` decimal(18,0) NOT NULL,
  `EOTYTaxAmt` decimal(18,0) NOT NULL,
  `MailTF` varchar(1) DEFAULT NULL,
  `Ledger` varchar(3) DEFAULT NULL,
  `CcyType` varchar(3) NOT NULL,
  `AcrIntAmt` decimal(18,0) NOT NULL,
  `AcrChgAmt` decimal(18,0) NOT NULL,
  `FreqType` varchar(3) DEFAULT NULL,
  `NextActDate` datetime DEFAULT NULL,
  `HASH` varchar(10) NOT NULL,
  `StopAcrIntTF` varchar(1) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Acc`,`BR`),
  KEY `t_idx2` (`Acc`,`BR`),
  KEY `t_idx` (`LastTrn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_tdacc
-- ----------------------------
DROP TABLE IF EXISTS `t_tdacc`;
CREATE TABLE `t_tdacc` (
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) NOT NULL,
  `PrType` varchar(2) NOT NULL,
  `AppType` varchar(1) NOT NULL,
  `GLCode` varchar(2) NOT NULL,
  `GLCodeOrig` varchar(2) NOT NULL,
  `TdCode1` varchar(3) DEFAULT NULL,
  `TdCode2` varchar(3) DEFAULT NULL,
  `TdCode3` varchar(3) DEFAULT NULL,
  `TdCode4` varchar(3) DEFAULT NULL,
  `TdCode5` varchar(3) DEFAULT NULL,
  `CTDNumber` varchar(10) DEFAULT NULL,
  `AccName` varchar(24) DEFAULT NULL,
  `AccStatus` varchar(2) NOT NULL,
  `AccStatusDate` datetime NOT NULL,
  `OpenDate` datetime NOT NULL,
  `MatDate` datetime NOT NULL,
  `Term` smallint(5) NOT NULL,
  `LastTrn` varchar(6) DEFAULT NULL,
  `LastTrnDate` datetime NOT NULL,
  `CustTrnDate` datetime DEFAULT NULL,
  `BalAmt` decimal(18,0) NOT NULL,
  `IntRate` decimal(7,3) NOT NULL,
  `IntEffDate` datetime DEFAULT NULL,
  `CumTaxWAmt` decimal(18,0) DEFAULT NULL,
  `TrnSeq` int(10) DEFAULT NULL,
  `ModIntPayType` varchar(3) NOT NULL,
  `TrAcc` varchar(11) DEFAULT NULL,
  `TrChd` varchar(1) DEFAULT NULL,
  `RollOverType` varchar(3) DEFAULT NULL,
  `NextActDate` datetime DEFAULT NULL,
  `ActCodeType` smallint(5) DEFAULT NULL,
  `MinPerBalAmt` decimal(18,0) NOT NULL,
  `TrnWithDrawalNo` smallint(5) DEFAULT NULL,
  `LastCapDate` datetime DEFAULT NULL,
  `EOFYIntAmt` decimal(18,0) DEFAULT NULL,
  `EOTYIntAmt` decimal(18,0) DEFAULT NULL,
  `EOFYTaxAmt` decimal(18,0) DEFAULT NULL,
  `EOTYTaxAmt` decimal(18,0) DEFAULT NULL,
  `MailTF` varchar(1) DEFAULT NULL,
  `Ledger` varchar(3) DEFAULT NULL,
  `CcyType` varchar(3) NOT NULL,
  `PbBalAmt` decimal(18,0) NOT NULL,
  `AcrIntAmt` decimal(18,0) NOT NULL,
  `CumIntPdAmt` decimal(18,0) NOT NULL,
  `IntBalAmt` decimal(18,0) NOT NULL,
  `PbNumber` varchar(6) DEFAULT NULL,
  `StmtFreqType` varchar(3) DEFAULT NULL,
  `RolloverUntilDate` datetime DEFAULT NULL,
  `HASH` varchar(10) NOT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Acc`,`BR`),
  KEY `t_idx` (`Acc`,`BR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_trnhist
-- ----------------------------
DROP TABLE IF EXISTS `t_trnhist`;
CREATE TABLE `t_trnhist` (
  `Recid` int(10) NOT NULL,
  `Acc` varchar(11) NOT NULL,
  `Chd` varchar(1) DEFAULT NULL,
  `AppType` varchar(1) DEFAULT NULL,
  `Trn` varchar(6) NOT NULL,
  `PostedByTrn` varchar(6) DEFAULT NULL,
  `TrnType` varchar(3) NOT NULL,
  `Tlr` varchar(3) DEFAULT NULL,
  `TID` varchar(2) DEFAULT NULL,
  `TrnMode` varchar(3) NOT NULL,
  `TrnDate` datetime NOT NULL,
  `TrnAmt` decimal(18,0) DEFAULT NULL,
  `BalAmt` decimal(18,0) DEFAULT NULL,
  `TrnFrxAmt` decimal(18,0) DEFAULT NULL,
  `TrnPriAmt` decimal(18,0) DEFAULT NULL,
  `TrnIntAmt` decimal(18,0) DEFAULT NULL,
  `TrnTaxAmt` decimal(18,0) DEFAULT NULL,
  `TrnPenAmt` decimal(18,0) DEFAULT NULL,
  `TrnChgAmt` decimal(18,0) DEFAULT NULL,
  `TrnChqAmt` decimal(18,0) DEFAULT NULL,
  `TrnOdueIntAmt` decimal(18,0) DEFAULT NULL,
  `TrnDrIntAmt` decimal(18,0) DEFAULT NULL,
  `TrnAddedTaxAmt` decimal(18,0) DEFAULT NULL,
  `TrnAcrIntOduePriAmt` decimal(18,0) DEFAULT NULL,
  `PrevTrnDate` datetime DEFAULT NULL,
  `PrevTrn` varchar(6) DEFAULT NULL,
  `Seq` int(10) DEFAULT NULL,
  `TrnDesc` varchar(24) NOT NULL,
  `LongDescMemo` text,
  `PrevOduePriAmt` decimal(18,0) DEFAULT NULL,
  `AcrIntAmt` decimal(18,0) DEFAULT NULL,
  `AcrDrIntAmt` decimal(18,0) DEFAULT NULL,
  `AcrPenAmt` decimal(18,0) DEFAULT NULL,
  `AcrChgAmt` decimal(18,0) DEFAULT NULL,
  `IntBalAmt` decimal(18,0) DEFAULT NULL,
  `PenBalAmt` decimal(18,0) DEFAULT NULL,
  `GLCode` varchar(2) DEFAULT NULL,
  `ChgCode` varchar(2) DEFAULT NULL,
  `GLContraCode` varchar(2) DEFAULT NULL,
  `ValueDate` datetime DEFAULT NULL,
  `CcyType` varchar(3) DEFAULT NULL,
  `TrnRef` varchar(10) DEFAULT NULL,
  `CID` varchar(6) DEFAULT NULL,
  `BatchNumber` varchar(4) DEFAULT NULL,
  `ComputerDate` datetime DEFAULT NULL,
  `CancelledByTrn` varchar(6) DEFAULT NULL,
  `AccStatus` varchar(2) DEFAULT NULL,
  `PrevAccStatus` varchar(2) DEFAULT NULL,
  `PrevCustTrnDate` datetime DEFAULT NULL,
  `DrIntBalAmt` decimal(18,0) DEFAULT NULL,
  `UserTrnType` varchar(3) DEFAULT NULL,
  `ReconKey` varchar(10) DEFAULT NULL,
  `HASH` varchar(10) NOT NULL,
  `TrnDebitTaxAmt` decimal(18,0) DEFAULT NULL,
  `BR` varchar(6) NOT NULL,
  `ROW_VERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Recid`,`BR`),
  KEY `t_idx` (`Trn`),
  KEY `t_idx2` (`Trn`,`BR`),
  KEY `t_idx3` (`BR`),
  KEY `t_idx4` (`Acc`,`BR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for utility_loghistory
-- ----------------------------
DROP TABLE IF EXISTS `utility_loghistory`;
CREATE TABLE `utility_loghistory` (
  `TrnDate` char(10) NOT NULL,
  `SysID` char(10) NOT NULL,
  `Uploaded` int(1) NOT NULL DEFAULT '0',
  `UploadDate` char(10) DEFAULT NULL,
  `BranchName` char(100) DEFAULT NULL,
  `DOTRN` int(11) DEFAULT NULL,
  `RecordCnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`TrnDate`,`SysID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for utility_tablelink
-- ----------------------------
DROP TABLE IF EXISTS `utility_tablelink`;
CREATE TABLE `utility_tablelink` (
  `table_name` char(100) DEFAULT NULL,
  `table_insert` int(1) DEFAULT '1',
  `table_priority` int(1) DEFAULT '1' COMMENT 'execution priority, 1 execute, 2 execute with date and br code, ',
  `table_tag` int(1) NOT NULL DEFAULT '1',
  `table_fields` text
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
#select distinct C.ORGNAME,case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',IFNULL(B.Depo_ID,cast(D.Depo_ID as CHAR)))
select distinct case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',IFNULL(B.Depo_ID,cast(D.Depo_ID as CHAR)))
else A.Depo_ID end as Depo_ID,A.Depo_Type,
case when A.Depo_Type = 'J' then concat(fn_Proper_Name(A.Depo_Name),' AND/OR ',fn_Proper_Name(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),fn_Proper_Name(D.`Name`))))
when A.Depo_Type = 'ITF/By' then concat(fn_Proper_Name(A.Depo_Name),' ITF ',fn_Proper_Name(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),fn_Proper_Name(D.`Name`))))
else fn_Proper_Name(A.Depo_Name) end as Depo_Name,
-- case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- else A.Depo_MN end as Depo_MN,
case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',IFNULL(fn_DAV_NewDate_Converter(B.DOB),D.DOB))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',IFNULL(fn_DAV_NewDate_Converter(B.DOB),D.DOB))
else A.Depo_BD end as Depo_BD,A.Add_Prov,
A.Add_City,A.Add_Brgy,A.Add_St,A.`Borr?`,A.`Co_Borr?`,A.Dep_Ac_No,A.Br_NaCo,
A.Dep_Type,A.Dep_Type2,A.Dep_Cur,A.`Int%`,A.Int_post_date,
A.Int_cutoff,A.`Issue Date`,A.Mat_date,A.`WTax%`,A.Wtax_date,A.Dorm_ch_date,A.Last_trans_date,A.Avail_Bal,
A.`Restrict?`,A.Ac_Stat from dav_report A
left join (select * from dav_main_id)B on A.ALTCID = B.CID and A.SYSID = B.SYSID
LEFT JOIN (SELECT DISTINCT SYSTEMID,ORGNAME,DOTRN from sysparms) C ON A.SYSID = C.SYSTEMID
LEFT JOIN(
select A.Dep_Ac_No,A.Depo_ID as Main_ID,A.Depo_Type,
CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(B.Depo_ID SEPARATOR '@') END Depo_ID,
CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' AND/OR ') 
ELSE GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' ITF ') END `Name`,
GROUP_CONCAT(fn_DAV_NewDate_Converter(B.DOB) SEPARATOR '@') DOB,A.SYSID,A.DOTRN from (
SELECT A.Dep_Ac_No,A.Depo_ID,A.Depo_Type,SUBSTRING_INDEX(SUBSTRING_INDEX(A.ALTCID, ',', numbers.n), ',', -1) as ALTCID,A.SYSID,A.DOTRN
FROM(SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) numbers 
INNER JOIN dav_report A ON CHAR_LENGTH(A.ALTCID)-CHAR_LENGTH(REPLACE(A.ALTCID, ',', ''))>=numbers.n-1
where LENGTH(A.ALTCID)>6 and A.Depo_Type not in ('C','I'))A
LEFT JOIN dav_main_id B on A.ALTCID = B.CID and A.SYSID = B.SYSID
group by A.Dep_Ac_No ) D on A.SYSID = D.SYSID and A.DOTRN = D.DOTRN and A.Dep_Ac_No = D.Dep_Ac_No
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

	select DISTINCT case when A.Depo_Type = 'J' then concat(A.Depo_ID,'@',IFNULL(B.Depo_ID,cast(C.Depo_ID as CHAR)))
else A.Depo_ID end as Depo_ID,A.Depo_Type,case when A.Depo_Type = 'J' then concat(fn_Proper_Name(A.Depo_Name),' AND/OR ',fn_Proper_Name(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),fn_Proper_Name(C.`Name`))))
when A.Depo_Type = 'ITF/By' then concat(fn_Proper_Name(A.Depo_Name),' ITF ',fn_Proper_Name(IFNULL(CONCAT(B.LNAME ,' ',B.FNAME),fn_Proper_Name(C.`Name`))))
else fn_Proper_Name(A.Depo_Name) end as Depo_Name,
-- case when A.Depo_Type = 'J' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_MN,'@',UPPER(IFNULL(B.MNAME,'')))
-- else A.Depo_MN end as Depo_MN,
-- case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
-- when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',DATE_FORMAT(date_add('1900-01-01' , interval B.DOB DAY),'%m/%d/%y'))
case when A.Depo_Type = 'J' then concat(A.Depo_BD,'@',IFNULL(fn_DAV_NewDate_Converter(B.DOB),C.DOB))
when A.Depo_Type = 'ITF/By' then concat(A.Depo_BD,'@',IFNULL(fn_DAV_NewDate_Converter(B.DOB),C.DOB))
else A.Depo_BD end as Depo_BD,Add_Prov,Add_City,Add_Brgy,Add_St,
	`Borr?`,`Co_Borr?`,A.Dep_Ac_No,Br_NaCo,Dep_Type,Dep_Type2,Dep_Cur,`Int%`,Int_post_date,Int_cutoff,
	`Issue Date`,Mat_date,`WTax%`,Wtax_date,Dorm_ch_date,Last_trans_date,Avail_Bal,`Restrict?`,Ac_Stat 
	from dav_report A left join (select * from dav_main_id)B on A.ALTCID = B.CID and B.sysid = A.sysid
LEFT JOIN(
select A.Dep_Ac_No,A.Depo_ID as Main_ID,A.Depo_Type,
CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(B.Depo_ID SEPARATOR '@') END Depo_ID,
CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' AND/OR ') 
ELSE GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' ITF ') END `Name`,
GROUP_CONCAT(fn_DAV_NewDate_Converter(B.DOB) SEPARATOR '@') DOB,A.SYSID,A.DOTRN from (
SELECT A.Dep_Ac_No,A.Depo_ID,A.Depo_Type,SUBSTRING_INDEX(SUBSTRING_INDEX(A.ALTCID, ',', numbers.n), ',', -1) as ALTCID,A.SYSID,A.DOTRN
FROM(SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) numbers 
INNER JOIN dav_report A ON CHAR_LENGTH(A.ALTCID)-CHAR_LENGTH(REPLACE(A.ALTCID, ',', ''))>=numbers.n-1
where LENGTH(A.ALTCID)>6 and A.Depo_Type not in ('C','I'))A
LEFT JOIN dav_main_id B on A.ALTCID = B.CID and A.SYSID = B.SYSID
group by A.Dep_Ac_No ) C on A.SYSID = C.SYSID and A.DOTRN = C.DOTRN and A.Dep_Ac_No = C.Dep_Ac_No
 where A.DOTRN = Date_ and A.Depo_ID = Client_ID ORDER BY A.Br_NaCo,A.Dep_Ac_No;

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
	LEFT JOIN sysparms B on A.Br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID
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
case when A.Depo_Type = 'J' then 
CASE WHEN (
concat('AND/OR ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))) IS NULL THEN
CONCAT('AND/OR ',D.Depo_ID) ELSE concat('AND/OR ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),''))) END
when A.Depo_Type = 'ITF/By' then 
CASE WHEN (
concat('ITF ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),'')))) IS NULL THEN
CONCAT('ITF ',D.Depo_ID) ELSE concat('ITF ',C.Depo_ID,' - ',UPPER(IFNULL(CONCAT(C.LNAME ,' ',C.FNAME),''))) END
else '' end as Joint,A.Dep_Ac_No as "Account No.",
A.Avail_Bal,A.DOPEN as "Date Opened",A.Last_trans_date as "Last Transaction" from dav_report A
LEFT JOIN sysparms B on A.br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID 
left join (select * from dav_main_id)C on A.ALTCID = C.CID and C.sysid = A.sysid
LEFT JOIN(
	 select A.Dep_Ac_No,A.Depo_ID as Main_ID,A.Depo_Type,
	 CASE WHEN A.Depo_Type = 'J' THEN
	 GROUP_CONCAT(CONCAT(B.Depo_ID,' - ',cast(UPPER(CONCAT_WS(' ',ifnull(B.lname,''),
	 ifnull(B.fname,''),ifnull(B.mname,'')))AS CHAR)) SEPARATOR ' AND/OR ')
	 ELSE GROUP_CONCAT(CONCAT(B.Depo_ID,' - ',cast(UPPER(CONCAT_WS(' ',ifnull(B.lname,''),
	 ifnull(B.fname,''),ifnull(B.mname,'')))AS CHAR)) SEPARATOR ' ITF ') end as Depo_ID,A.SYSID,A.DOTRN from (
	 SELECT A.Dep_Ac_No,A.Depo_ID,A.Depo_Type,SUBSTRING_INDEX(SUBSTRING_INDEX(A.ALTCID, ',', numbers.n), ',', -1) as ALTCID,A.SYSID,A.DOTRN
	 FROM(SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
	 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) numbers 
	 INNER JOIN dav_report A ON CHAR_LENGTH(A.ALTCID)-CHAR_LENGTH(REPLACE(A.ALTCID, ',', ''))>=numbers.n-1
	 where LENGTH(A.ALTCID)>6 and A.Depo_Type not in ('C','I'))A
	 LEFT JOIN dav_main_id B on A.ALTCID = B.CID and A.SYSID = B.SYSID
	 group by A.Dep_Ac_No 
	 ) D on A.SYSID = D.SYSID and A.DOTRN = D.DOTRN and A.Dep_Ac_No = D.Dep_Ac_No
where A.DOTRN = Date_
order by A.Depo_Name,A.Dep_Ac_No;

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
   from SYSPARMS)B on A.Br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID
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
   SELECT C.ORGNAME,CASE WHEN A.Depo_Type = 'I' THEN '( I ) - Individual' WHEN A.Depo_Type = 'J' THEN '(J) - Joint (AND/OR)' 
	 WHEN A.Depo_Type = 'ITF/BY' THEN '(ITF/BY) - Held-in-Trust-For or By account' else '(C) - Corporate' 
	 END as Depo_Type,A.Br_NaCo,A.Dep_Ac_No,A.Depo_ID,UPPER(A.Depo_Name)Depo_Name,
	 #CASE WHEN A.Depo_Type = 'J' THEN B.Depo_ID WHEN A.Depo_Type = 'ITF/BY' THEN B.Depo_ID
	 #else '' end as 'ID',CASE WHEN A.Depo_Type = 'J' THEN 
	 #CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,'')) WHEN A.Depo_Type = 'ITF/BY' THEN 
	 #CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,''))
	 #else '' end as 'Name',
	 IFNULL(B.Depo_ID,D.Depo_ID) as 'ID',
	 CASE WHEN (CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,''))) = '' THEN UPPER(D.`Name`) 
	 ELSE UPPER(CONCAT(IFNULL(B.LNAME,''),' ',IFNULL(B.FNAME,''),' ',IFNULL(B.MNAME,''))) END as 'Name',
A.Avail_Bal FROM dav_report A
	 LEFT JOIN (SELECT * FROM dav_main_id)B ON A.ALTCID = B.CID AND B.sysid = A.sysid
	 LEFT JOIN (SELECT DISTINCT SYSTEMID,ORGNAME,DOTRN from sysparms)C ON A.SYSID = C.SYSTEMID
	 LEFT JOIN(
	 select A.Dep_Ac_No,A.Depo_ID as Main_ID,A.Depo_Type,
	 CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(B.Depo_ID SEPARATOR '@') END Depo_ID,
	 CASE WHEN A.Depo_Type = 'J' THEN GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' AND/OR ') 
	 ELSE GROUP_CONCAT(CONCAT_WS(' ',ifnull(B.lname,''),ifnull(B.fname,''),ifnull(B.mname,'')) SEPARATOR ' ITF ') END `Name`,
	 GROUP_CONCAT(fn_DAV_NewDate_Converter(B.DOB) SEPARATOR '@') DOB,A.SYSID,A.DOTRN from (
	 SELECT A.Dep_Ac_No,A.Depo_ID,A.Depo_Type,SUBSTRING_INDEX(SUBSTRING_INDEX(A.ALTCID, ',', numbers.n), ',', -1) as ALTCID,A.SYSID,A.DOTRN
	 FROM(SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
	 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) numbers 
	 INNER JOIN dav_report A ON CHAR_LENGTH(A.ALTCID)-CHAR_LENGTH(REPLACE(A.ALTCID, ',', ''))>=numbers.n-1
	 where LENGTH(A.ALTCID)>6 and A.Depo_Type not in ('C','I'))A
	 LEFT JOIN dav_main_id B on A.ALTCID = B.CID and A.SYSID = B.SYSID
	 group by A.Dep_Ac_No 
	 ) D on A.SYSID = D.SYSID and A.DOTRN = D.DOTRN and A.Dep_Ac_No = D.Dep_Ac_No
	 where A.DOTRN = Date_ and A.Depo_Type <> 'I' and LENGTH(A.ALTCID)>0
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
	ifnull(A.`Issue Date`,'')as `Issue Date`,ifnull(A.Mat_date,'')as Mat_date,
	DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),STR_TO_DATE(A.`Issue Date`,'%Y%m%d'))as Term,
	'' as DOLAST_IntPay,'' as `Accr_Int(If any)`,'' as Orig_Amount,
	'' as Unamortized_Bal from dav_report A
	LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,DOTRN from sysparms)B 
	on A.Br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID
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
		#WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((SVACC.ALTCID IS NULL) and ((SELECT 1 FROM svcorp WHERE acc=svacc.ACC and SYSID=svacc.SYSID LIMIT 1) IS NULL) and (cif.Type <> '002')) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3)) and (cif.Type <> '002')) THEN "ITF/BY"
		WHEN ((SELECT 1 FROM svcorp WHERE acc=svacc.ACC and SYSID=svacc.SYSID LIMIT 1) = 1 or (cif.Type = '002')) THEN "C" ELSE "J"
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
		(SELECT BRNAME FROM sysparms WHERE SYSTEMID=svacc.SYSID) Br_NaCo,
     fn_Dep_Type(APPTYPE) Dep_Type,
		 fn_Dep_Type2(APPTYPE,svacc.SYSID,GLCODE) Dep_Type2,
		 'PHP' as Dep_Cur,
-- 		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
-- 	 concat(cast(fn_Dep_IntRate(svacc.INTRATE,svacc.BAL,svacc.APPTYPE,svacc.DOTRN,svacc.SYSID,svacc.TYPE) as char(6)),'%') as `Int%`,
     concat(cast(fn_Dep_IntRate(svacc.INTRATE,svacc.BAL,svacc.APPTYPE,svacc.SYSID,svacc.TYPE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.SYSID,svacc.type) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.SYSID,svacc.type) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,svacc.TYPE,DOPEN,svacc.SYSID) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,svacc.TYPE,MATDATE,svacc.SYSID) Mat_date,
		 fn_Dep_Wtax(APPTYPE,svacc.TYPE,svacc.SYSID,svacc.CID) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOLASTCAP,svacc.DOLASTTRN,DOPEN,svacc.type) Wtax_date,
		 fn_Dep_Dorm_ch_Date(APPTYPE,`STATUS`,DOEOPCHG) Dorm_ch_date,
		 fn_dav_NewDate_Converter(svacc.DOLASTTRN)  Last_trans_date,
		 fn_DAV_Normal_Amt(BAL) Avail_Bal,
#		 BAL Avail_Bal,
		 'N' AS "Restrict?",
		 IFNULL(CASE WHEN (`STATUS` > '00' AND `STATUS` <= '90') THEN 'A' 
								 WHEN `STATUS` = '98' THEN 'D' END,'') Ac_Stat,
		 fn_DAV_Date_Converter(svacc.DOTRN) DOTRN,
		 fn_dav_NewDate_Converter(DOPEN) DOPEN,'' Username,
		 DATE_FORMAT(CURDATE(),'%m/%d/%Y') Date_Created,
		 APPTYPE,
		 svacc.TYPE,
		 ALTCID,
		 svacc.SYSID,
		 fn_Dep_Trnm_chg(svacc.ACC,svacc.SYSID) Amount,
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`,
		 fn_dav_NewDate_Converter(svacc.`DOSTATUS`),svacc.ROLLOVER,svacc.`STATUS`  
	   FROM svacc LEFT JOIN cif on svacc.cid=cif.cid and svacc.SYSID=cif.SYSID
		 LEFT JOIN dav_main_id ON cif.lname=dav_main_id.LNAME and cif.FNAME=dav_main_id.FNAME and cif.SYSID = dav_main_id.SYSID
	   and cif.MNAME=dav_main_id.MNAME and cif.DOB = dav_main_id.DOB
		 WHERE svacc.`STATUS` <> 99 AND svacc.BAL > 0 and fn_DAV_Date_Converter(svacc.DOTRN) = Date_;

	ELSE
		DELETE from DAV_Report where DOTRN = Date_;

		insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`,`DOSTATUS`,`ROLLOVER`,`STATUS`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		#WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((SVACC.ALTCID IS NULL) and ((SELECT 1 FROM svcorp WHERE acc=svacc.ACC and SYSID=svacc.SYSID LIMIT 1) IS NULL) and (cif.Type <> '002')) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3)) and (cif.Type <> '002')) THEN "ITF/BY"
		WHEN ((SELECT 1 FROM svcorp WHERE acc=svacc.ACC and SYSID=svacc.SYSID LIMIT 1) = 1 or (cif.Type = '002')) THEN "C" ELSE "J"
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
		(SELECT BRNAME FROM sysparms WHERE SYSTEMID=svacc.SYSID) Br_NaCo,
     fn_Dep_Type(APPTYPE) Dep_Type,
		 fn_Dep_Type2(APPTYPE,svacc.SYSID,GLCODE) Dep_Type2,
		 'PHP' as Dep_Cur,
-- 		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 concat(cast(fn_Dep_IntRate(svacc.INTRATE,svacc.BAL,svacc.APPTYPE,svacc.SYSID,svacc.TYPE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.SYSID,svacc.type) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.SYSID,svacc.type) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,svacc.TYPE,DOPEN,svacc.SYSID) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,svacc.TYPE,MATDATE,svacc.SYSID) Mat_date,
		 fn_Dep_Wtax(APPTYPE,svacc.TYPE,svacc.SYSID,svacc.CID) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOLASTCAP,svacc.DOLASTTRN,DOPEN,svacc.type) Wtax_date,
		 fn_Dep_Dorm_ch_Date(APPTYPE,`STATUS`,DOEOPCHG) Dorm_ch_date,
		 fn_dav_NewDate_Converter(svacc.DOLASTTRN)  Last_trans_date,
		 fn_DAV_Normal_Amt(BAL) Avail_Bal,
#		 BAL Avail_Bal,
		 'N' AS "Restrict?",
		 IFNULL(CASE WHEN (`STATUS` > '00' AND `STATUS` <= '90') THEN 'A' 
								 WHEN `STATUS` = '98' THEN 'D' END,'') Ac_Stat,
		 fn_DAV_Date_Converter(svacc.DOTRN) DOTRN,
		 fn_dav_NewDate_Converter(DOPEN) DOPEN,'' Username,
		 DATE_FORMAT(CURDATE(),'%m/%d/%Y') Date_Created,
		 APPTYPE,
		 svacc.TYPE,
		 ALTCID,
		 svacc.SYSID,
		 fn_Dep_Trnm_chg(svacc.ACC,svacc.SYSID) Amount,
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`,
		 fn_dav_NewDate_Converter(svacc.`DOSTATUS`),svacc.ROLLOVER,svacc.`STATUS`  
	   FROM svacc LEFT JOIN cif on svacc.cid=cif.cid and svacc.SYSID=cif.SYSID
		 LEFT JOIN dav_main_id ON cif.lname=dav_main_id.LNAME and cif.FNAME=dav_main_id.FNAME and cif.SYSID = dav_main_id.SYSID
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
-- Procedure structure for sp_DAV_Load_Client111
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Load_Client111`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Load_Client111`(IN Date_ VARCHAR(10))
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
	`Nature of Deduction` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3))) THEN "ITF/BY"
		WHEN (SELECT 1 FROM svcorp WHERE CID=svacc.CID and DOTRN=svacc.DOTRN and SYSID=svacc.SYSID LIMIT 1) = 1 THEN "C" ELSE "J"
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
		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,TYPE,DOPEN,svacc.SYSID,svacc.DOTRN) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,TYPE,MATDATE,svacc.SYSID,svacc.DOTRN) Mat_date,
		 fn_Dep_Wtax(APPTYPE,TYPE,svacc.SYSID,svacc.CID,svacc.DOTRN) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOTRN,DOINTEFF,svacc.DOLASTTRN,DOPEN) Wtax_date,
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
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`
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
-- Procedure structure for sp_DAV_Load_Client111_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Load_Client111_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Load_Client111_copy`(IN Date_ VARCHAR(10))
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
	`Nature of Deduction` varchar(2) DEFAULT NULL,
  KEY `indx` (`Depo_ID`) USING BTREE
);

	select count(DOTRN) into Date_Count from DAV_Report where DOTRN = Date_;

  IF (Date_Count = 0) then
  insert into DAV_Report(`Depo_ID`,`Depo_Type`,`Depo_Name`,`Depo_BD`,`Add_Prov`,`Add_City`,`Add_Brgy`,`Add_St`,`Borr?`,`Co_Borr?`,`Dep_Ac_No`,`Br_NaCo`,`Dep_Type`,`Dep_Type2`,`Dep_Cur`,`Int%`,`Int_post_date`,`Int_cutoff`,`Issue Date`,`Mat_date`,`WTax%`,`Wtax_date`,`Dorm_ch_date`,`Last_trans_date`,`Avail_Bal`,`Restrict?`,`Ac_Stat`,`DOTRN`,`DOPEN`,`Username`,`Date_Created`,`APPTYPE`,`TYPE`,`ALTCID`,`SYSID`,`Amount`,`Nature of Deduction`)

  select 
		DISTINCT(dav_main_id.Depo_ID),
		CASE 
		WHEN (SVACC.ALTCID IS NULL) THEN "I"
		WHEN ((svacc.ALTCID IS NOT NULL) AND (svacc.`OWNER` IN (6,3))) THEN "ITF/BY"
		WHEN (SELECT 1 FROM svcorp WHERE CID=svacc.CID and DOTRN=svacc.DOTRN and SYSID=svacc.SYSID LIMIT 1) = 1 THEN "C" ELSE "J"
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
		 concat(cast(fn_DAV_Normal_Amt(INTRATE) as char(6)),'%') as `Int%`,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_post_date,
		 
		 fn_Dep_Intpostdate(svacc.DOLASTCAP,DOPEN,svacc.DOLASTTRN,APPTYPE,svacc.DOTRN,svacc.SYSID) Int_cutoff,
		 fn_Dep_IssueDate(APPTYPE,TYPE,DOPEN,svacc.SYSID,svacc.DOTRN) Issue_Date,
		 fn_Dep_IssueDate(APPTYPE,TYPE,MATDATE,svacc.SYSID,svacc.DOTRN) Mat_date,
		 fn_Dep_Wtax(APPTYPE,TYPE,svacc.SYSID,svacc.CID,svacc.DOTRN) "WTax%",		 
		 fn_Dep_WTax_Date(APPTYPE,svacc.SYSID,svacc.CID,svacc.DOTRN,DOINTEFF,svacc.DOLASTTRN,DOPEN) Wtax_date,
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
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`
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
		 IF ( IFNULL(fn_Dep_Trnm_chg(svacc.ACC,svacc.DOTRN,svacc.SYSID),'')	!= '','SERVICE CHARGES (below ADB \\ Dormancy Charge)','' ) `Nature of Deduction`
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
-- Procedure structure for sp_DAV_MBWIN_CALL_CIF
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_CIF`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_CIF`()
BEGIN
    INSERT INTO cif 
select A.CID,'' as PIN,A.Nid,A.Name2 as LNAME,A.CivilStatusCode,A.TitleCode,'' as INLS,
A.Name3 as MNAME,A.Name1 as FNAME,A.GenderType as SEX,
CASE WHEN fn_DAV_Date_to_Int(A.BirthDate) is null then 0 else fn_DAV_Date_to_Int(A.BirthDate) END as DOB,
#B.Line1 as ADDR1,B.Line2 as ADDR2,B.Line3 as CITY,B.PostalCode as POSTCODE,B.Phone1 as PHONE,
(select Line1 from t_address where CID = A.CID and BR = A.BR and addressType = '001' LIMIT 1)ADDR1,
(select Line2 from t_address where CID = A.CID and BR = A.BR and addressType = '001' LIMIT 1)ADDR2,
(select Line3 from t_address where CID = A.CID and BR = A.BR and addressType = '001' LIMIT 1)CITY,
(select PostalCode from t_address where CID = A.CID and BR = A.BR LIMIT 1)PostalCode,
(select Phone1 from t_address where CID = A.CID and BR = A.BR LIMIT 1)PHONE,
'' as CIDSP,'' as NIDSP,'' as FNAMESP,fn_DAV_Date_to_Int(A.RegisterDate) as DOREG,A.CIFCode1,A.CIFCode2,A.CIFCode3,
A.CIFCode4,A.CIFCode5,A.CIFCode6,'' as OCCUPATION,A.DisplayName as EXPNAME,if(A.DosriTF = 'F',0,1) as DOSRI,
case when cast(A.TaxCode as UNSIGNED) = 1 THEN 1 else 0 end TaxCode,'' as `GROUP`,A.LnHist,A.LnMaxAmt as LNMAX,
'' as `SECURITY`,fn_DAV_Date_to_Int(A.LastChangeDate) as DOLASTCHG,
A.`HASH`,'' as BLACKLISTD,A.BR as SYSID,'' as DOTRN,A.Type from t_cif A;
#LEFT JOIN t_address B ON A.cid = B.cid and A.BR = B.BR;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_INSERT_TABLE
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_INSERT_TABLE`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_INSERT_TABLE`()
BEGIN

#IF (select count(*) from svacc) = 0 THEN 
#CALL sp_DAV_MBWIN_CALL_SVACC;
CALL sp_DAV_MBWIN_CALL_SVACC_New_Test;
#END IF;
IF (select count(*) from sysparms) = 0 THEN
CALL sp_DAV_MBWIN_CALL_SYSPARMS;
END IF;
IF (select count(*) from cif) = 0 THEN
CALL sp_DAV_MBWIN_CALL_CIF;
END IF;
IF (select count(*) from lnacc) = 0 THEN
CALL sp_DAV_MBWIN_CALL_LNACC;
END IF;
IF (select count(*) from prparms) = 0 THEN
CALL sp_DAV_MBWIN_CALL_PRPARMS;
END IF;
IF (select count(*) from `tables`) = 0 THEN
CALL sp_DAV_MBWIN_CALL_TABLES;
END IF;
IF (select count(*) from svcorp) = 0 THEN
CALL sp_DAV_MBWIN_CALL_SVCORP;
END IF;
IF (select count(*) from lncmaker) = 0 THEN
CALL sp_DAV_MBWIN_CALL_LNCMAKER;
END IF;

CALL sp_DAV_MBWIN_CALL_TRNM;
#CALL sp_DAV_MBWIN_CALL_INSERT_TABLE_SECOND;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_INSERT_TABLE_SECOND
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_INSERT_TABLE_SECOND`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_INSERT_TABLE_SECOND`()
BEGIN
CALL sp_DAV_MBWIN_CALL_SVCORP;
CALL sp_DAV_MBWIN_CALL_LNCMAKER;
CALL sp_DAV_MBWIN_CALL_TRNM;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_LNACC
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_LNACC`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_LNACC`()
BEGIN
    INSERT INTO LNACC 
SELECT 
A.Acc,
A.Chd,
PrType as Type,
A.AppType,
(SELECT CID FROM t_relacc use index (t_idx2) WHERE ACC=A.Acc AND concat(AppType,type)='4010' AND br=A.BR) cid,
A.GLCode,
GLCodeOrig as GLOrig,
'mb' LoanID,
'mb' LoanCode,
LNCode1,
LNCode2,
LNCode3,
LNCode4,
LNCode5,
'mb' `Group`,
'mb' DOSRI,
A.AccStatus `Status`,
fn_DAV_Date_to_Int(A.AccStatusDate) DOSTATUS,
DATEDIFF(Cast(openDate as date),'1900-01-01') DOPEN,
DATEDIFF(Cast(FirstInstDueDate as date),'1900-01-01') DOFIRSTI,
DATEDIFF(Cast(LastTrnDate as date),'1900-01-01') DOLASTTRN,
A.BalAmt Bal,
IntRate,
0 as PenRate,
0 Scrate,
A.FixAmt as FixedAmt,
A.AcrIntAmt AcrInt,
CumIntPdAmt CUMINTPD,
CumNorIntAmt CUMNORINT,
fn_DAV_Date_to_Int(IntEffDate) DOINTEFF,
fn_DAV_Date_to_Int(matdate)  MatDate,
GrantedAmt Granted,
PrincipalAmt Principal,
CumPriPdAmt CUMPRIPD,
OduePriAmt ODUEPRI,
A.AcrPenAmt ACRPEN,
UnExInstNo UNEXINST,
InstNo NUMINST,
FreqType FREQ,
cast(CumPenPdAmt as UNSIGNED)CUMPENPD,
TrnSeq SEQ,
fn_DAV_Date_to_Int(NextDisbDate) disbDate,
NextDisbAmt disbAmt,
NextDisbStatus DisbFlag,
A.`HASH`,
cast(Ledger as UNSIGNED)Ledger,
LastTrn,
A.AcrChgAmt ACRCHG,
CumChgPdAmt CUMCHGPD,
TrAcc,
TrChd,
LeadIntNo NumLeadI,
PriInterval PRIFREQ,
InstBasisNo Basis,
AcrIntODuePriAmt ACRIODP,
OdueIntAmt ODUEINT,
A.INTBALAMT INTBAL,
A.PENBALAMT PENBAL,
EOFYINTAMT EOFYINT,
EOTYINTAMT EOFYTAX,
t_trnhist.Tlr as tlr,
'mb' PDC,
'mb' GRACC,
'mb' GRCHD,
'mb' MFCODE,
'mb' LASTLNACC,
'mb' LASTLNCHD,
-- 'mb' LATEINST,
A.LateDaysNo LATEINST,
0 MAXLATE,
0 SVCOMP,
0 CUMISEDEP,
0 CYCLE,
0 NUMISEDEP,
0 AMT1,
0 AMT2,
0 AMT3,
0 TOTNORINT,
'mb' ORIGIRR2,
0 ORIGIRR,
'mb' ORIGEIR,
0 DISCAMT,
0 DISCDATE,
'mb' DOPASTDUE,
'mb' PDBSP,
0 PDDATE,
A.BR SYSID,
fn_DAV_Date_to_int(IFNULL(t_trnhist.TrnDate,A.LastTrnDate)) as DOTRN
-- IFNULL(
-- DATEDIFF(Cast(t_trnhist.TrnDate as date),'1900-01-01')  ,
-- DATEDIFF(Cast(LastTrnDate as date),'1900-01-01')
-- ) DOTRN
FROM t_lnacc A 
left join t_trnhist force index (t_idx2) on A.LastTrn=t_trnhist.Trn and A.BR=t_trnhist.BR;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_LNCMAKER
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_LNCMAKER`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_LNCMAKER`()
BEGIN
DECLARE Count_ INT;
DECLARE Account varchar(255);
DECLARE AccountChd varchar(255);
DECLARE SYSID varchar(255);
select COUNT(Acc) into Count_ from t_lnacc where AccStatus <> '99';

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT ENGINE=MEMORY AS (SELECT @Row := @Row+1 as RowNum,Acc,Chd,BR from t_lnacc where AccStatus <> '99');
TRUNCATE table lncmaker;
SET @Counter = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT WHERE RowNum = @Counter;
select Chd INTO AccountChd from HOLDACCOUNT WHERE RowNum = @Counter;
select BR INTO SYSID from HOLDACCOUNT WHERE RowNum = @Counter;
CALL sp_DAV_MBWIN_LNCMAKER(Account,AccountChd,SYSID);
SET @Counter = @Counter + 1;

UNTIL @Counter >= Count_
END REPEAT;
DROP TABLE HOLDACCOUNT;
-- SELECT * FROM HOLDACCOUNT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_PRPARMS
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_PRPARMS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_PRPARMS`()
BEGIN
    INSERT INTO prparms 
select A.AppType,
A.PrType as TYPE,
A.FullDesc as `DESC`,
A.Rules,
A.IntCalcType as INTCALC,
(select IntRate from t_rates
where apptype = A.apptype and prtype = A.prtype and br = A.br
order by recid desc limit 1
)Intrate,
#B.Intrate,
A.MaxIntRate,
A.MinIntRate,
'mb' as INTRATE1,
'mb' as INTRATE2,
'mb' as INTRATE3,
'mb' as INTRATE4,
'mb' as INTRATE5,
(select PenRate from t_rates
where apptype = A.apptype and prtype = A.prtype and br = A.br
order by recid desc limit 1
)PenRate,
#B.PenRate,
A.PreRate,
A.BreakRate,
A.PostMatRate,
A.HoldBalAmt as HOLDBAL,
A.MinIntBalAmt as MININTBAL,
A.MinOpenDepAmt as MINBAL,
0 as GRDBAL1,
0 as GRDBAL2,
0 as GRDBAL3,
0 as GRDBAL4,
0 as GRDBAL5,
A.MaxBalAmt as MAXBAL,
A.PrLimitAmt as `LIMIT`,
A.GLCodes,
A.ValidCodes1 as VALID1,
A.ValidCodes2 as VALID2,
A.ValidCodes3 as VALID3,
A.ValidCodes4 as VALID4,
A.ValidCodes5 as VALID5,
A.FreqCodes as FREQ,
A.AllocCodes as ALLOC,
'mb' as PASTDUEGL,
0 as LOANBLMODE,
A.MinTerm,
A.MaxTerm,
A.TermType,
A.ValidTerm as TERM,
A.FreeWdlsNo as FREEWDLS,
A.FreeTrnsNo as FREETRNS,
A.NoChgBalAmt as NOCHGBAL,
0 as DORMPERIOD,
0 as DORMCHG,
0 as EOPCHG,
0 as WDLCHG,
0 as MINMADB,
0 as ADBCHG,
0 as ADBPERIOD,
C.SerialSeq as SERIAL,
A.CapFreqType as CAPFREQ,
A.`HASH`,
A.BR,
'mb' as DOTRN
 from t_prparms A
#LEFT JOIN t_rates B on A.apptype = B.apptype and A.Prtype = B.prtype and A.br = B.BR order by recid desc limit 1
LEFT JOIN t_serials C on A.AppType = C.Apptype and A.PrType = C.Prtype and A.BR = C.BR;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVACC
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVACC`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVACC`()
BEGIN
call sp_DAV_MBWIN_CALL_SVACC_ALTCID();
   INSERT INTO svacc 
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
(select CID from t_relacc where Acc = A.Acc and BR = A.BR and Type = '010')CID,
-- B.CID,
A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_int(A.MatDate)as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrBIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,A.ContractAmt as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,0 as ROLLOVER,A.NextActDate as DONEXTACT,
A.ActCodeType as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_int(IFNULL(D.TrnDate,A.LastTrnDate)) as DOTRN
-- (select TrnDate from t_trnhist where trn = A.LastTrn and BR = A.BR)
-- if(fn_DAV_Date_to_int(C.TrnDate) is null,
-- fn_DAV_Date_to_int(A.LastTrnDate),fn_DAV_Date_to_int(C.TrnDate)) as DOTRN 
from t_svacc A FORCE INDEX (t_idx)
LEFT JOIN t_trnhist D FORCE INDEX (t_idx) on D.trn =  A.LastTrn and A.BR = D.BR
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
#LEFT JOIN t_relacc C on A.Acc = C.Acc and A.Chd = C.Chd and A.AppType = C.AppType and A.BR = C.BR and C.Type not in ('010','020','030')
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 

union all
-- t_cuacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,0 as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrDrIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,'mb' as TRACC,'mb' as TRCHD,
0 as ROLLOVER,0 as DONEXTACT,'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_int(IFNULL(D.TrnDate,A.LastTrnDate)) as DOTRN
-- if(fn_DAV_Date_to_int(C.TrnDate) is null,
-- fn_DAV_Date_to_int(A.LastTrnDate),fn_DAV_Date_to_int(C.TrnDate)) as DOTRN 
from t_cuacc A 
LEFT JOIN t_trnhist D FORCE INDEX (t_idx) on D.trn =  A.LastTrn and A.BR = D.BR
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.BR = B.BR and B.Type = '010'
#LEFT JOIN t_relacc C on A.Acc = C.Acc and A.Chd = C.Chd and A.AppType = C.AppType and A.BR = C.BR and C.Type not in ('010','020','030')
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 

union all
-- t_tdacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_Int(A.MatDate) as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
'mb' as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,cast(RollOverType as UNSIGNED) as ROLLOVER,fn_DAV_Date_to_Int(A.NextActDate) as DONEXTACT,
'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
'mb' as STMTPAGE,A.StmtFreqType as STMTFREQ,'mb' as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,0 as CUMUPCHG,'mb' as DEBIT,
'mb' as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_int(IFNULL(D.TrnDate,A.LastTrnDate)) as DOTRN
-- if(fn_DAV_Date_to_int(C.TrnDate) is null,
-- fn_DAV_Date_to_int(A.LastTrnDate),fn_DAV_Date_to_int(C.TrnDate)) as DOTRN 
from t_tdacc A
LEFT JOIN t_trnhist D FORCE INDEX (t_idx) on D.trn =  A.LastTrn and A.BR = D.BR
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.BR = B.BR and B.Type = '010'
#LEFT JOIN t_relacc C on A.Acc = C.Acc and A.Chd = C.Chd and A.AppType = C.AppType and A.BR = C.BR and C.Type not in ('010','020','030');
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVACC_ALTCID
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVACC_ALTCID`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVACC_ALTCID`()
BEGIN
   DECLARE Count_t_svacc INT;
DECLARE Count_t_cuacc INT;
DECLARE Count_t_tdacc INT;
DECLARE Account varchar(255);
DECLARE AccountChd varchar(255);
DECLARE SYSID varchar(255);
DECLARE APP varchar(255);
#select COUNT(Acc) into Count_t_svacc from t_svacc where AccStatus <> '99';
#select COUNT(Acc) into Count_t_cuacc from t_cuacc where AccStatus <> '99';
#select COUNT(Acc) into Count_t_tdacc from t_tdacc where AccStatus <> '99';
select COUNT(A.ACC) into Count_t_svacc from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_svacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99'
)A;
select COUNT(A.ACC) into Count_t_cuacc from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_cuacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99'
)A;
select COUNT(A.ACC) into Count_t_tdacc from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_tdacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99'
)A;

TRUNCATE TABLE t_savings_altcid;

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;
#CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_svacc ENGINE=MEMORY AS (SELECT @Row := @Row+1 as RowNum,Acc,Chd,BR,AppType from t_svacc where AccStatus <> '99');
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_svacc ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.ACC,A.CHD,A.BR,A.apptype from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_svacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99')A);
-- TRUNCATE table lncmaker;
SET @Counter = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter;
select Chd INTO AccountChd from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter;
select BR INTO SYSID from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter;
select AppType INTO APP from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter;
CALL sp_DAV_MBWIN_SVACC(Account,AccountChd,SYSID,APP);
SET @Counter = @Counter + 1;

UNTIL @Counter > Count_t_svacc
END REPEAT;
-- DROP TABLE HOLDACCOUNT_t_svacc;

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;
#CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_cuacc ENGINE=MEMORY AS (SELECT @Row := @Row+1 as RowNum,Acc,Chd,BR,AppType from t_cuacc where AccStatus <> '99');
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_cuacc ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.ACC,A.CHD,A.BR,A.apptype from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_cuacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99')A);
-- TRUNCATE table lncmaker;
SET @Counter = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter;
select Chd INTO AccountChd from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter;
select BR INTO SYSID from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter;
select AppType INTO APP from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter;
CALL sp_DAV_MBWIN_SVACC(Account,AccountChd,SYSID,APP);
SET @Counter = @Counter + 1;

UNTIL @Counter > Count_t_cuacc
END REPEAT;
-- DROP TABLE HOLDACCOUNT_t_cuacc;

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;
#CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_tdacc ENGINE=MEMORY AS (SELECT @Row := @Row+1 as RowNum,Acc,Chd,BR,AppType from t_tdacc where AccStatus <> '99');
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_tdacc ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.ACC,A.CHD,A.BR,A.apptype from (
select DISTINCT B.acc,B.chd,B.br,B.apptype from t_tdacc A
left join t_relacc B on A.ACC = B.ACC and A.chd = B.CHD
and A.br = B.BR and B.type not in ('010','020','030') 
where B.ACC is not null and A.AccStatus <> '99')A);
-- TRUNCATE table lncmaker;
SET @Counter = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter;
select Chd INTO AccountChd from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter;
select BR INTO SYSID from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter;
select AppType INTO APP from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter;
CALL sp_DAV_MBWIN_SVACC(Account,AccountChd,SYSID,APP);
SET @Counter = @Counter + 1;

UNTIL @Counter > Count_t_tdacc
END REPEAT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVACC_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVACC_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVACC_copy`()
BEGIN
call sp_DAV_MBWIN_CALL_SVACC_ALTCID();
   INSERT INTO svacc 
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
(select CID from t_relacc where Acc = A.Acc and BR = A.BR and Type = '010')CID,
-- B.CID,
A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_int(A.MatDate)as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrBIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,A.ContractAmt as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,0 as ROLLOVER,A.NextActDate as DONEXTACT,
A.ActCodeType as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int('2012-06-01' ) as DOTRN
from t_svacc A FORCE INDEX (t_idx)
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = '2012-06-01' 
and apptype = '1' group by acc) D 
on A.BR = D.BR and A.ACC = D.Acc
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= '2012-06-01'
and A.AccStatus <> '99'

union all
-- t_cuacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,0 as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrDrIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,'mb' as TRACC,'mb' as TRCHD,
0 as ROLLOVER,0 as DONEXTACT,'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int('2012-06-01' ) as DOTRN
from t_cuacc A 
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = '2012-06-01' 
and apptype = '2' group by acc) D 
on A.BR = D.BR and A.ACC = D.Acc
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= '2012-06-01'
and A.AccStatus <> '99'

union all
-- t_tdacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,A.BalAmt) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_Int(A.MatDate) as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
'mb' as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,cast(RollOverType as UNSIGNED) as ROLLOVER,fn_DAV_Date_to_Int(A.NextActDate) as DONEXTACT,
'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
'mb' as STMTPAGE,A.StmtFreqType as STMTFREQ,'mb' as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,0 as CUMUPCHG,'mb' as DEBIT,
'mb' as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int('2012-06-01' ) as DOTRN
from t_tdacc A
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = '2012-06-01' 
and apptype = '3' group by acc) D 
on A.BR = D.BR and A.ACC = D.Acc
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= '2012-06-01'
and A.AccStatus <> '99';
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVACC_New_Test
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVACC_New_Test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVACC_New_Test`()
BEGIN
DECLARE DOTRN_ varchar(255);
DECLARE Count_DOTRN_ INT;

SET Count_DOTRN_ = 0;
#select count(DISTINCT TrnDate) into Count_DOTRN_ from t_trnhist;

#select COUNT(DISTINCT A.TrnDate) into Count_DOTRN_ from t_trnhist A
#left JOIN(select DISTINCT DATE_FORMAT(date_add('1900-01-01', 
#interval DOTRN DAY),'%Y-%m-%d') TrnDate from svacc)B on A.TrnDate = B.TrnDate
#where B.TrnDate is null;

select COUNT(DISTINCT A.TrnDate) into Count_DOTRN_ from utility_loghistory A
left JOIN(select DISTINCT cast(DATE_FORMAT(date_add('1900-01-01', 
interval DOTRN DAY),'%Y-%m-%d')as char(10)) TrnDate from svacc)B on A.TrnDate = B.TrnDate
where B.TrnDate is null and A.Uploaded = 1;

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;

#TRUNCATE TABLE DOTRNHOLD;
#INSERT INTO DOTRNHOLD
#SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.TrnDate from (
#select DISTINCT DATE_FORMAT(trndate,'%Y-%m-%d') TrnDate from t_trnhist order by TrnDate)A;

#CREATE TEMPORARY TABLE IF NOT EXISTS HOLDCount_DOTRN_ ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.TrnDate from (
##select DISTINCT DATE_FORMAT(trndate,'%Y-%m-%d') TrnDate from t_trnhist order by TrnDate
#select DISTINCT DATE_FORMAT(A.trndate,'%Y-%m-%d') TrnDate from t_trnhist A
#left JOIN(select DISTINCT DATE_FORMAT(date_add('1900-01-01', 
#interval DOTRN DAY),'%Y-%m-%d') TrnDate from svacc)B on A.TrnDate = B.TrnDate
#where B.TrnDate is null
#order by A.TrnDate
#)A);

CREATE TEMPORARY TABLE IF NOT EXISTS HOLDCount_DOTRN_ ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.TrnDate from (
#select DISTINCT DATE_FORMAT(trndate,'%Y-%m-%d') TrnDate from t_trnhist order by TrnDate
select DISTINCT A.TrnDate from utility_loghistory A
left JOIN(select DISTINCT cast(DATE_FORMAT(date_add('1900-01-01', 
interval DOTRN DAY),'%Y-%m-%d')as char(10)) TrnDate from svacc)B on A.TrnDate = B.TrnDate
where B.TrnDate is null and A.Uploaded = 1
order by A.TrnDate
)A);


call sp_DAV_MBWIN_CALL_SVACC_ALTCID();

SET @Counter = 1;
REPEAT

#SET DOTRN_ = '';
select TrnDate INTO DOTRN_ from HOLDCount_DOTRN_ WHERE RowNum = @Counter;
#REPLACE INTO svacc 
 INSERT IGNORE svacc 
select * from (
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
(select CID from t_relacc where Acc = A.Acc and BR = A.BR and Type = '010')CID,
-- B.CID,
A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_int(A.MatDate)as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrBIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,A.ContractAmt as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,0 as ROLLOVER,A.NextActDate as DONEXTACT,
A.ActCodeType as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_ ) as DOTRN
from t_svacc A FORCE INDEX (t_idx)
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '1' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR  
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '1'
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_
and A.BR in (select distinct Sysid from utility_loghistory where TrnDate = DOTRN_)
#and A.AccStatus <> '99'

union all
-- t_cuacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,0 as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrDrIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,'mb' as TRACC,'mb' as TRCHD,
0 as ROLLOVER,0 as DONEXTACT,'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_) as DOTRN
from t_cuacc A 
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '2' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR 
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '2' 
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_ 
and A.BR in (select distinct Sysid from utility_loghistory where TrnDate = DOTRN_)
#and A.AccStatus <> '99'

union all
-- t_tdacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_Int(A.MatDate) as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
'mb' as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,cast(RollOverType as UNSIGNED) as ROLLOVER,fn_DAV_Date_to_Int(A.NextActDate) as DONEXTACT,
'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
'mb' as STMTPAGE,A.StmtFreqType as STMTFREQ,'mb' as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,0 as CUMUPCHG,'mb' as DEBIT,
'mb' as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_) as DOTRN
from t_tdacc A
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '3' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR 
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '3' 
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_
and A.BR in (select distinct Sysid from utility_loghistory where TrnDate = DOTRN_))A;
#and A.AccStatus <> '99';

#insert IGNORE Counting
#select @Counter,RowNum,TrnDate,Count_DOTRN_ from HOLDCount_DOTRN_ WHERE RowNum = @Counter;
#insert IGNORE tempt
#select '',TrnDate from DOTRNHOLD WHERE RowNum = @Counter;


SET @Counter = @Counter + 1;

UNTIL @Counter > Count_DOTRN_
END REPEAT;

DROP TEMPORARY TABLE HOLDCount_DOTRN_;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVACC_New_Test_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVACC_New_Test_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVACC_New_Test_copy`()
BEGIN
DECLARE DOTRN_ varchar(255);
DECLARE Count_DOTRN_ INT;

#TRUNCATE TABLE SVACC;
SET Count_DOTRN_ = 0;
#select COUNT(A.TrnDate) into Count_DOTRN_ from (
select count(DISTINCT TrnDate) into Count_DOTRN_ from t_trnhist;
#where TrnDate not in 
#(select DISTINCT DATE_FORMAT(date_add('1900-01-01', 
#interval DOTRN DAY),'%Y-%m-%d') from svacc);
#)A;

SET @Row_ = 'set @Row =0;';
PREPARE stm FROM @Row_;
EXECUTE stm;
#CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_svacc ENGINE=MEMORY AS (SELECT @Row := @Row+1 as RowNum,Acc,Chd,BR,AppType from t_svacc where AccStatus <> '99');
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDCount_DOTRN_ ENGINE=MEMORY AS (SELECT DISTINCT @Row_ := @Row_+1 as RowNum,A.TrnDate from (
select DISTINCT DATE_FORMAT(trndate,'%Y-%m-%d') TrnDate from t_trnhist order by TrnDate
#where TrnDate not in 
#(select DISTINCT DATE_FORMAT(date_add('1900-01-01', 
#interval DOTRN DAY),'%Y-%m-%d') from svacc)
)A);


call sp_DAV_MBWIN_CALL_SVACC_ALTCID();

SET @Counter = 1;
REPEAT

#SET DOTRN_ = '';
select TrnDate INTO DOTRN_ from HOLDCount_DOTRN_ WHERE RowNum = @Counter;

#REPLACE INTO svacc 
INSERT INTO svacc 
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
(select CID from t_relacc where Acc = A.Acc and BR = A.BR and Type = '010')CID,
-- B.CID,
A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_int(A.MatDate)as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrBIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,A.ContractAmt as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,0 as ROLLOVER,A.NextActDate as DONEXTACT,
A.ActCodeType as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_ ) as DOTRN
from t_svacc A FORCE INDEX (t_idx)
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '1' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR  
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '1'
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_
#and A.AccStatus <> '99'

union all
-- t_cuacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,0 as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
A.AcrDrIntAmt as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,'mb' as TRACC,'mb' as TRCHD,
0 as ROLLOVER,0 as DONEXTACT,'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
A.StmtPageSeq as STMTPAGE,A.StmtFreqType as STMTFREQ,fn_DAV_Date_to_int(A.LastStmtDate) as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,A.AcrChgAmt as CUMUPCHG,'mb' as DEBIT,
A.AverageBalAmt as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_) as DOTRN
from t_cuacc A 
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '2' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR 
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '2' 
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_
#and A.AccStatus <> '99'

union all
-- t_tdacc
-- insert into svacc
select A.Acc,A.Chd,A.PrType,A.AppType,A.GLCode,A.GLCodeOrig,0 as TERM,
B.CID,A.AccName,A.AccStatus as `STATUS`,fn_DAV_Date_to_int(A.AccStatusDate) as DOSTATUS,
fn_DAV_Date_to_int(A.OpenDate) as DOPEN,0 as DOBMINOR,fn_DAV_Date_to_int(A.LastTrnDate) as DOLASTTRN,
fn_DAV_Date_to_int(A.CustTrnDate) as DOCUSTTRN,0 as DOEOPCHG,IFNULL(D.BalAmt,IFNULL(E.balamt,A.BalAmt)) as BAL,
A.IntRate,A.AcrIntAmt as ACRINT,0 as CUMUPINT,fn_DAV_Date_to_int(A.IntEffDate) as DOINTEFF,
A.IntBalAmt as INTBAL,fn_DAV_Date_to_Int(A.MatDate) as MATDATE,0 as TAXCODE,0 as CUMUPTAX,
'mb' as ACRBINT,A.PBBalAmt as PBBAL,A.TrnSeq as SEQ,
case WHEN C.type = '011' THEN 4 WHEN C.Type = '012' THEN 2 WHEN C.Type = '013' THEN 1
WHEN C.Type = '014' THEN 2 WHEN C.Type = '015' THEN 3 end as `OWNER`,
C.ALTCID as ALTCID,A.CumIntPdAmt as CUMINTPD,A.CumTaxWAmt as CUMTAXW,A.`HASH`,
A.Ledger,0 as CONTRACT,A.PBNumber,A.LastTrn,0 as MODINTPAY,
'mb' as TRACC,'mb' as TRCHD,cast(RollOverType as UNSIGNED) as ROLLOVER,fn_DAV_Date_to_Int(A.NextActDate) as DONEXTACT,
'mb' as ACTCODE,A.MinPerBalAmt as MINPERBAL,A.TrnWithdrawalNo as TRNCOUNT,
'mb' as STMTPAGE,A.StmtFreqType as STMTFREQ,'mb' as DOLASTSTMT,
fn_DAV_Date_to_int(A.LastCapDate) as DOLASTCAP,0 as CUMUPCHG,'mb' as DEBIT,
'mb' as AVBAL,A.EOFYIntAmt as EOFYINT,A.EOTYIntAmt as EOTYINT,
A.EOTYTaxAmt as EOTYTAX,'mb' as MFCODE,'mb' as OPENBAL,'mb' as CUMDEPS,
A.TrnWithDrawalNo as WTNCOUNT,'mb' as SEEDTYPE,'mb' as SEEDBOX,'mb' AS SEEDGOAL,0 as MADB,
0 as  ADBCTR,'mb' as SEEDPT,A.BR as SYSID,fn_DAV_Date_to_Int(DOTRN_) as DOTRN
from t_tdacc A
LEFT JOIN (select acc,chd,max(trn)trn,trndate,balamt,BR from t_trnhist 
where DATE_FORMAT(TrnDate,'%Y-%m-%d') = DOTRN_ 
and apptype = '3' and TrnMode <> '000' group by acc) D 
on A.ACC = D.Acc and A.BR = D.BR 
LEFT JOIN t_relacc B on A.Acc = B.Acc and A.Chd = B.Chd and A.AppType = B.AppType and A.BR = B.BR and B.Type = '010'
LEFT JOIN t_Savings_ALTCID C on A.Acc = C.Acc and A.Chd = C.Chd AND A.Apptype = C.Apptype and A.BR = C.BR 
LEFT JOIN (select apptype,acc,chd,min(trn)trn,trndate,balamt,BR from t_trnhist where apptype = '3' 
and trndate > DOTRN_ and TrnMode <> '000' group by acc)E
on A.ACC = E.Acc and A.BR = E.BR 
where DATE_FORMAT(OpenDate,'%Y-%m-%d') <= DOTRN_;
#and A.AccStatus <> '99';

SET @Counter = @Counter + 1;

UNTIL @Counter > Count_DOTRN_
END REPEAT;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SVCORP
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SVCORP`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SVCORP`()
BEGIN
DECLARE Count_t_svacc INT;
DECLARE Count_t_cuacc INT;
DECLARE Count_t_tdacc INT;
DECLARE Account varchar(255);
DECLARE AccountChd varchar(255);
DECLARE SYSID varchar(255);
select COUNT(Acc) into Count_t_svacc from t_svacc where AccStatus <> '99';
select COUNT(Acc) into Count_t_cuacc from t_cuacc where AccStatus <> '99';
select COUNT(Acc) into Count_t_tdacc from t_tdacc where AccStatus <> '99';

SET @Row1 = 'set @Row =0;';
PREPARE stm FROM @Row1;
EXECUTE stm;
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_svacc ENGINE=MEMORY AS (SELECT @Row1 := @Row1+1 as RowNum,Acc,Chd,BR from t_svacc where AccStatus <> '99');
-- TRUNCATE table lncmaker;
SET @Counter_ = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter_;
select Chd INTO AccountChd from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter_;
select BR INTO SYSID from HOLDACCOUNT_t_svacc WHERE RowNum = @Counter_;
CALL sp_DAV_MBWIN_SVCORP(Account,AccountChd,SYSID);
SET @Counter_ = @Counter_ + 1;

UNTIL @Counter_ >= Count_t_svacc
END REPEAT;
-- DROP TABLE HOLDACCOUNT_t_svacc;

SET @Row1 = 'set @Row =0;';
PREPARE stm FROM @Row1;
EXECUTE stm;
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_cuacc ENGINE=MEMORY AS (SELECT @Row1 := @Row1+1 as RowNum,Acc,Chd,BR from t_cuacc where AccStatus <> '99');
-- TRUNCATE table lncmaker;
SET @Counter_ = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter_;
select Chd INTO AccountChd from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter_;
select BR INTO SYSID from HOLDACCOUNT_t_cuacc WHERE RowNum = @Counter_;
CALL sp_DAV_MBWIN_SVCORP(Account,AccountChd,SYSID);
SET @Counter_ = @Counter_ + 1;

UNTIL @Counter_ >= Count_t_cuacc
END REPEAT;
-- DROP TABLE HOLDACCOUNT_t_cuacc;

SET @Row1 = 'set @Row =0;';
PREPARE stm FROM @Row1;
EXECUTE stm;
CREATE TEMPORARY TABLE IF NOT EXISTS HOLDACCOUNT_t_tdacc ENGINE=MEMORY AS (SELECT @Row1 := @Row1+1 as RowNum,Acc,Chd,BR from t_tdacc where AccStatus <> '99');
-- TRUNCATE table lncmaker;
SET @Counter_ = 1;
REPEAT

select Acc INTO Account from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter_;
select Chd INTO AccountChd from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter_;
select BR INTO SYSID from HOLDACCOUNT_t_tdacc WHERE RowNum = @Counter_;
CALL sp_DAV_MBWIN_SVCORP(Account,AccountChd,SYSID);
SET @Counter_ = @Counter_ + 1;

UNTIL @Counter_ >= Count_t_tdacc
END REPEAT;
-- DROP TABLE HOLDACCOUNT_t_tdacc;
#SELECT * FROM HOLDACCOUNT_t_svacc;
#SELECT * FROM HOLDACCOUNT_t_cuacc;
#SELECT * FROM HOLDACCOUNT_t_tdacc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_SYSPARMS
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_SYSPARMS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_SYSPARMS`()
BEGIN
   INSERT INTO sysparms 
SELECT DISTINCT A.BrStr as SYSTEMID,
B.OrgName as ORGNAME,
'mb' as BANK,
A.BrStr,
A.BrName,
A.Br,
'mb' as INSTCODE,
'mb' as ACTKEY,
A.RunStatus,
A.RecoveryStatus as RECOVERY,
fn_DAV_Date_to_Int(A.PrevRunDate) as DOLASTACT,
fn_DAV_Date_to_Int(A.CurrRunDate) as DOLASTDLY,
fn_DAV_Date_to_Int(A.LastMlyDate) as DOLASTMLY,
fn_DAV_Date_to_Int(A.LastQlyDate) as DOLASTQLY,
fn_DAV_Date_to_Int(A.LastAnlDate) as DOLASTANL,
A.`Hash`,
A.FinYear as FINYR,
fn_DAV_Date_to_Int(A.LastDOWDate) as LASTDOW,
'mb' as LASTTOTRN,
'mb' as LASTRECOV,
0 as SVSERIAL,
0 as LNSERIAL,
0 as TDSERIAL,
0 as CUSERIAL,
0 as CIFSERIAL,
'mb' as TRNSERIAL,
0 as CUTOFF,
0 as LOCCUTOFF,
0 as ELOCAL,
0 as DLOCAL,
fn_DAV_Date_to_Int(A.ShortClearDate) as DOSHORT,
0 as DOLONG,
fn_DAV_Date_to_Int(A.PreWorkDate) as PREVWDAY,
fn_DAV_Date_to_Int(A.NextWorkDate) as NEXTWDAY,
A.SvBalsAmt as SYSSVBALS,
A.TDBalsAmt as SYSTDBALS,
A.LnBalsAmt as SYSLNBALS,
A.CuBalsAmt as SYSCUBALS,
A.ShBalsAmt as SYSSHBALS,
A.DTrnDir as DTRN,
A.LastDir as LAST,
A.ManagerName as MANAGER,
A.SystemCode as SYSTEM,
'mb' as TINNUMBER,
A.Address as ADDRESS,
'mb' as SLIP,
'mb' as VALIDATE,
A.GLDir,
A.CcyType as CCY,
A.PbColAlign as PBCALIGN,
0 as PBFCALIGN,
A.SlColAlign as SLCALIGN,
A.VcColAlign as VCCALIGN,
fn_DAV_Date_to_Int(A.ClDate001) as CLDDATE001,
fn_DAV_Date_to_Int(A.ClDate002) as CLDDATE002,
fn_DAV_Date_to_Int(A.ClDate003) as CLDDATE003,
fn_DAV_Date_to_Int(A.ClDate004) as CLDDATE004,
fn_DAV_Date_to_Int(A.ClDate005) as CLDDATE005,
fn_DAV_Date_to_Int(A.ClDate006) as CLDDATE006,
fn_DAV_Date_to_Int(A.ClDate007) as CLDDATE007,
fn_DAV_Date_to_Int(A.ClDate008) as CLDDATE008,
fn_DAV_Date_to_Int(A.ClDate009) as CLDDATE009,
fn_DAV_Date_to_Int(A.ClDate010) as CLDDATE010,
fn_DAV_Date_to_Int(A.ClDate011) as CLDDATE011,
0 as CIFSER0,
A.CIFSer1,
A.CIFSer2,
A.CIFSer3,
A.CIFSer4,
A.CIFSer5,
A.CIFSer6,
A.CIFSer7,
A.CIFSer8,
A.CIFSer9,
fn_DAV_Date_to_Int(A.EOAccPerDate) as EOACCPER,
A.LenAccPerNo as LENACCPER,
A.Version,
A.SubPhase,
A.Cluster,
case when A.SysOnlyTF = 'F' then 0 else 1 end as SYSONLY,
0 as CUSTOMVD,
0 as CUSTOMPB,
0 as CUSTOMPBCA,
'mb' as CUSTOM,
0 as NEWPWD,
0 as MINPWDLEN,
0 as PWDDAYS,
'mb' as LNAPSERIAL,
'mb' as CHQCUTOFF,
'mb' as SSDPRODUCT,
'mb' as C3MIPADD,
0 as C3MSODPORT,
0 as C3MEODPORT,
0 as DOCLCUTOFF,
'mb' as LOANABLECN,
'mb' as DSTMULTIPL,
'mb' as RECLASMODE,
'mb' as RECLASFREQ,
'mb' as EOMSSDWTAX,
'mb' as ADJUSTEIRW,
'mb' as DOTRN,
#fn_DAV_Date_Converter(fn_DAV_Date_to_int(C.TrnDate)) as DOTRN,
NOW() as UPLOADTIME
from t_brparms A
LEFT JOIN orgparms B on B.OrgName is not null;
#LEFT JOIN t_trnhist C FORCE INDEX (t_idx3) on A.BR = C.BR;
#LEFT JOIN t_orgparms B on A.BrStr = B.HeadOfficeBr
#where BrName like '%head%';
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_TABLES
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_TABLES`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_TABLES`()
BEGIN
   INSERT INTO `tables` 
select 
A.TableID as TABLENO,
#A.Code,
right(CONCAT('000',A.Code),3)CODE,
A.ShortDesc as `DESC`,
'mb' as ALIAS,
A.FullDesc,
A.GLAcc,
A.GLIntAcc as GLACCINT,
A.GLPenAcc as GLACCPEN,
A.GLChgAcc as GLACCCHG,
A.GLDrIntACC as GLACCDRINT,
A.GlAltAcc as GLACCALT,
A.GlScIncAcc as GLACCSCINC,A.GLList as GLLIST,
A.`Status`,
'mb' as NEXTGLCODE,
A.BR as SYSID,
'mb' as DOTRN
from t_gllink A;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_CALL_TRNM
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_CALL_TRNM`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_CALL_TRNM`()
BEGIN
   INSERT INTO trnm 
select 
A.trn,
A.Acc,
A.Chd,
A.TrnType,
A.Tlr,
'mb' as `LEVEL`,
A.TID as TID,
fn_DAV_Date_to_Int(A.TrnDate)TRNDATE,
A.TrnAmt,
'mb' as TRNNONC,
A.BalAmt as BAL,
fn_DAV_Date_to_Int(A.PrevTrnDate) as DOPREVTRN,
A.PrevTrn as PREVTRN,
A.Seq as SEQ,
A.TrnIntAmt as TRNINT,
A.TrnTaxAmt as TRNTAXPEN,
A.TrnDesc as TRNDESC,
A.TrnMode as TRNMODE,
A.IntBalAmt as INTBAL,
A.PenBalAmt as PENBAL,
A.AppType as APPTYPE,
A.GLCode as GLCODE,
A.TrnChgAmt as TRNCHG,
A.GLContraCode as CHGCODE,
A.BatchNumber as BATCH,
A.`HASH` as `HASH`,
A.TrnFrxAmt as TRNFRXAMT,
A.CcyType as TRNCCY,
fn_DAV_Date_to_Int(A.ValueDate) as TRNVALUE,
A.TrnRef as TRNREF,
A.CID as CID,
'mb' as SEEDVAL,
'mb' as `TIMESTAMP`,
'mb' as IBTRNKEY,
A.BR as SYSID,
'mb' as DOTRN
from t_trnhist A where A.Chd is not null and fn_DAV_Date_to_Int(A.TrnDate) not in (select DISTINCT TRNDATE from trnm);# limit 10000;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_LNCMAKER
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_LNCMAKER`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_LNCMAKER`(Account char(11),AccountChd char(1),SYSID char(10))
BEGIN
DECLARE CIDMAIN varchar(255);
DECLARE COMAKER1 varchar(255);
DECLARE COMAKER2 varchar(255);
DECLARE COMAKER3 varchar(255);
DECLARE COMAKER4 varchar(255);
DECLARE COMAKER5 varchar(255);
DECLARE COMAKER6 varchar(255);
DECLARE COMAKER7 varchar(255);
#DECLARE COMAKER8 varchar(255);
#DECLARE COMAKER9 varchar(255);
#DECLARE COMAKER10 varchar(255);
#DECLARE COMAKER11 varchar(255);
#DECLARE COMAKER12 varchar(255);
#DECLARE COMAKER13 varchar(255);
#DECLARE COMAKER14 varchar(255);
DECLARE done INT DEFAULT 0;
DECLARE i varchar(255);
DECLARE ROW_ INT(11);
DECLARE curs1 CURSOR FOR SELECT `CID` FROM t_relacc where acc = Account and chd = AccountChd and apptype = '4' and type = '030' and br = SYSID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET COMAKER1 = '';
SET COMAKER2 = '';
SET COMAKER3 = '';
SET COMAKER4 = '';
SET COMAKER5 = '';
SET COMAKER6 = '';
SET COMAKER7 = '';
#SET COMAKER8 = '';
#SET COMAKER9 = '';
#SET COMAKER10 = '';
#SET COMAKER11 = '';
#SET COMAKER12 = '';
#SET COMAKER13 = '';
#SET COMAKER14 = '';

#SET @Row_ = 'set @Row = select max(LNAPPID) into from LNCMAKER;';
#		PREPARE stm FROM @Row_;
#    EXECUTE stm;

select IFNULL(MAX(cast(LNAPPID as UNSIGNED))+1,1) into ROW_  from lncmaker;
select CID into CIDMAIN from t_relacc where acc = Account and chd = AccountChd and apptype = '4' and type = '010' and br = SYSID;

OPEN curs1;
REPEAT
FETCH curs1 into i;
IF not done THEN
	IF COMAKER1 = '' THEN
    SET COMAKER1 = i;
  ELSEIF COMAKER2 = '' THEN
		SET COMAKER2 = i;
	ELSEIF COMAKER3 = '' THEN
		SET COMAKER3 = i;
	ELSEIF COMAKER4 = '' THEN
		SET COMAKER4 = i;
	ELSEIF COMAKER5 = '' THEN
		SET COMAKER5 = i;
	ELSEIF COMAKER6 = '' THEN
		SET COMAKER6 = i;
	ELSEIF COMAKER7 = '' THEN
		SET COMAKER7 = i;
	ELSEIF COMAKER7 = '' THEN
		SET COMAKER7 = i;
#	ELSEIF COMAKER8 = '' THEN
#			SET COMAKER8 = i;
#	ELSEIF COMAKER9 = '' THEN
#			SET COMAKER9 = i;
#	ELSEIF COMAKER10 = '' THEN
#			SET COMAKER10 = i;
#	ELSEIF COMAKER11 = '' THEN
#			SET COMAKER11 = i;
#	ELSEIF COMAKER12 = '' THEN
#			SET COMAKER12 = i;
#	ELSEIF COMAKER13 = '' THEN
#			SET COMAKER13 = i;
#	ELSEIF COMAKER14 = '' THEN
#			SET COMAKER14 = i;
  END IF;
END IF;
UNTIL done
end REPEAT;

CLOSE curs1;
 
IF (LENGTH(COMAKER1) > 0) then
insert IGNORE into lncmaker
	SELECT LPAD(ROW_,10,'0'),CIDMAIN,Account,AccountChd,COMAKER1,COMAKER2,COMAKER3,COMAKER4,COMAKER5,COMAKER6,COMAKER7,'','',SYSID,'';
END IF;
#IF (LENGTH(COMAKER8) > 0) then
#insert IGNORE into lncmaker
#	SELECT LPAD(ROW_+1,10,'0'),CIDMAIN,Account,AccountChd,COMAKER8,COMAKER9,COMAKER10,COMAKER11,COMAKER12,COMAKER13,COMAKER14,'','',SYSID,'';
#END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_LNCMAKER_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_LNCMAKER_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_LNCMAKER_copy`(Account char(11),AccountChd char(1),Apptype_ char(1), type_ char(3),SYSID char(10))
BEGIN
DECLARE CIDMAIN varchar(255);
DECLARE SYSTEMID varchar(255);
DECLARE COMAKER1 varchar(255);
DECLARE COMAKER2 varchar(255);
DECLARE COMAKER3 varchar(255);
DECLARE COMAKER4 varchar(255);
DECLARE COMAKER5 varchar(255);
DECLARE COMAKER6 varchar(255);
DECLARE COMAKER7 varchar(255);
DECLARE done INT DEFAULT 0;
DECLARE i varchar(255);
DECLARE curs1 CURSOR FOR SELECT `CID` FROM t_relacc where acc = Account and chd = AccountChd and apptype = Apptype_ and type = type_ and br = SYSID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET COMAKER1 = '';
SET COMAKER2 = '';
SET COMAKER3 = '';
SET COMAKER4 = '';
SET COMAKER5 = '';
SET COMAKER6 = '';
SET COMAKER7 = '';
SET @Row_ = 'set @Row =0;';
		PREPARE stm FROM @Row_;
    EXECUTE stm;
select CID into CIDMAIN from t_relacc where acc = Account and chd = AccountChd and apptype = Apptype_ and type = '010' and br = SYSID;

OPEN curs1;
REPEAT
FETCH curs1 into i;
IF not done THEN
	IF COMAKER1 = '' THEN
      SET COMAKER1 = i;
    ELSEIF COMAKER2 = '' THEN
			SET COMAKER2 = i;
		ELSEIF COMAKER3 = '' THEN
			SET COMAKER3 = i;
		ELSEIF COMAKER4 = '' THEN
			SET COMAKER4 = i;
		ELSEIF COMAKER5 = '' THEN
			SET COMAKER5 = i;
		ELSEIF COMAKER6 = '' THEN
			SET COMAKER6 = i;
		ELSEIF COMAKER7 = '' THEN
			SET COMAKER7 = i;
  END IF;
END IF;
UNTIL done
end REPEAT;

CLOSE curs1;
SELECT @Row := @Row+1 as RowNum,CIDMAIN,Account,AccountChd,COMAKER1,COMAKER2,COMAKER3,COMAKER4,COMAKER5,COMAKER6,COMAKER7,'','',SYSID;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_SVACC
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_SVACC`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_SVACC`(Account char(11),AccountChd char(1),SYSID char(10),App char(1))
BEGIN
DECLARE CIDMAIN varchar(255);
DECLARE CID1 varchar(255);
DECLARE CID2 varchar(255);
DECLARE CID3 varchar(255);
DECLARE CID4 varchar(255);
DECLARE CID5 varchar(255);
DECLARE CID6 varchar(255);
DECLARE CID7 varchar(255);
DECLARE CID8 varchar(255);
DECLARE CID9 varchar(255);
DECLARE CID10 varchar(255);
DECLARE AppType_ varchar(255);
DECLARE Type_ varchar(255);
#DECLARE COMAKER11 varchar(255);
#DECLARE COMAKER12 varchar(255);
#DECLARE COMAKER13 varchar(255);
#DECLARE COMAKER14 varchar(255);
DECLARE done INT DEFAULT 0;
DECLARE i varchar(255);
DECLARE j varchar(255);
DECLARE k varchar(255);
DECLARE ROW_ INT(11);
DECLARE curs1 CURSOR FOR SELECT `CID`,AppType,Type FROM t_relacc where acc = Account and chd = AccountChd and apptype = App and type not in ('010','020','030') and br = SYSID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET CID1 = '';
SET CID2 = '';
SET CID3 = '';
SET CID4 = '';
SET CID5 = '';
SET CID6 = '';
SET CID7 = '';
SET CID8 = '';
SET CID9 = '';
SET CID10 = '';
SET AppType_ = '';
SET Type_ = '';
#SET COMAKER11 = '';
#SET COMAKER12 = '';
#SET COMAKER13 = '';
#SET COMAKER14 = '';

#SET @Row_ = 'set @Row = select max(LNAPPID) into from LNCMAKER;';
#		PREPARE stm FROM @Row_;
#    EXECUTE stm;

#select IFNULL(MAX(cast(LNAPPID as UNSIGNED))+1,1) into ROW_  from lncmaker;
#select CID into CIDMAIN from t_relacc where acc = Account and chd = AccountChd and apptype = '4' and type = '010' and br = SYSID;

OPEN curs1;
REPEAT
FETCH curs1 into i,j,k;
IF not done THEN
	IF CID1 = '' THEN
    SET CID1 = i;
  ELSEIF CID2 = '' THEN
		SET CID2 = i;
	ELSEIF CID3 = '' THEN
		SET CID3 = i;
	ELSEIF CID4 = '' THEN
		SET CID4 = i;
	ELSEIF CID5 = '' THEN
		SET CID5 = i;
	ELSEIF CID6 = '' THEN
		SET CID6 = i;
	ELSEIF CID7 = '' THEN
		SET CID7 = i;
	ELSEIF CID8 = '' THEN
		SET CID8 = i;
	ELSEIF CID9 = '' THEN
			SET CID9 = i;
	ELSEIF CID10 = '' THEN
			SET CID10 = i;
#	ELSEIF COMAKER10 = '' THEN
#			SET COMAKER10 = i;
#	ELSEIF COMAKER11 = '' THEN
#			SET COMAKER11 = i;
#	ELSEIF COMAKER12 = '' THEN
#			SET COMAKER12 = i;
#	ELSEIF COMAKER13 = '' THEN
#			SET COMAKER13 = i;
#	ELSEIF COMAKER14 = '' THEN
#			SET COMAKER14 = i;
  END IF;
SET AppType_ = j;
SET Type_ = k;
END IF;
UNTIL done
end REPEAT;

CLOSE curs1;
 
#IF (LENGTH(COMAKER1) > 0) then
insert IGNORE into t_Savings_ALTCID
#	SELECT LPAD(ROW_,10,'0'),CIDMAIN,Account,AccountChd,COMAKER1,COMAKER2,COMAKER3,COMAKER4,COMAKER5,COMAKER6,COMAKER7,'','',SYSID,'';
	 	SELECT DISTINCT Account,AccountChd,App,Type_,

if(CID1 = '', ' ',
if(CID2 = '',CID1,
if(CID3 = '',CONCAT_WS(',',CID1,CID2),
if(CID4 = '',CONCAT_WS(',',CID1,CID2,CID3),
if(CID5 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4),
if(CID6 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5),
if(CID7 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5,CID6),
if(CID8 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5,CID6,CID7),
if(CID9 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5,CID6,CID7,CID8),
if(CID10 = '',CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5,CID6,CID7,CID8,CID9),CONCAT_WS(',',CID1,CID2,CID3,CID4,CID5,CID6,CID7,CID8,CID9,CID10))))))))))),
SYSID;
#END IF;
#IF (LENGTH(COMAKER8) > 0) then
#insert IGNORE into lncmaker
#	SELECT LPAD(ROW_+1,10,'0'),CIDMAIN,Account,AccountChd,COMAKER8,COMAKER9,COMAKER10,COMAKER11,COMAKER12,COMAKER13,COMAKER14,'','',SYSID,'';
#END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_SVCORP
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_SVCORP`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_SVCORP`(Account char(11),AccountChd char(1),SYSID char(10))
BEGIN
DECLARE CIDMAIN varchar(255);
DECLARE CID1 varchar(255);
DECLARE CID2 varchar(255);
DECLARE CID3 varchar(255);
DECLARE CID4 varchar(255);
DECLARE CID5 varchar(255);
DECLARE CID6 varchar(255);
DECLARE APP_TYPE varchar(255);
DECLARE done INT DEFAULT 0;
DECLARE i varchar(255);
DECLARE ROW_ INT(11);
DECLARE curs1 CURSOR FOR SELECT `CID` FROM t_relacc where acc = Account and chd = AccountChd and type = '020' and br = SYSID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET CID1 = '';
SET CID2 = '';
SET CID3 = '';
SET CID4 = '';
SET CID5 = '';
SET CID6 = '';

#SET @Row_ = 'set @Row = select max(LNAPPID) into from LNCMAKER;';
#		PREPARE stm FROM @Row_;
#    EXECUTE stm;

#select IFNULL(MAX(cast(LNAPPID as UNSIGNED))+1,1) into ROW_  from lncmaker;
select CID into CIDMAIN from t_relacc where acc = Account and chd = AccountChd and type = '010' and br = SYSID;
select AppType into APP_TYPE from t_relacc where acc = Account and chd = AccountChd and type = '010' and br = SYSID;

OPEN curs1;
REPEAT
FETCH curs1 into i;
IF not done THEN
	IF CID1 = '' THEN
    SET CID1 = i;
  ELSEIF CID2 = '' THEN
		SET CID2 = i;
	ELSEIF CID3 = '' THEN
		SET CID3 = i;
	ELSEIF CID4 = '' THEN
		SET CID4 = i;
	ELSEIF CID5 = '' THEN
		SET CID5 = i;
	ELSEIF CID6 = '' THEN
		SET CID6 = i;
	END IF;
END IF;
UNTIL done
end REPEAT;

CLOSE curs1;
 
IF(select 1 from t_cif where Type = '002' and CID = CIDMAIN and BR = SYSID) = 1 THEN
	#IF (LENGTH(CID1) > 0) THEN
		INSERT IGNORE INTO svcorp
		SELECT Account,AccountChd,APP_TYPE,CIDMAIN,CID1,'',CID2,'',CID3,'',CID4,'',CID5,'',CID6,'','','','','','',SYSID,'';
	#END IF;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_DAV_MBWIN_Truncate
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_MBWIN_Truncate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_MBWIN_Truncate`()
BEGIN

  TRUNCATE TABLE lookup;
	TRUNCATE TABLE t_address;
	TRUNCATE TABLE t_brparms;
	TRUNCATE TABLE t_cif;
	TRUNCATE TABLE t_cuacc;
	TRUNCATE TABLE t_gllink;
	TRUNCATE TABLE t_lnacc;
	TRUNCATE TABLE t_lninst;
	TRUNCATE TABLE orgparms;
	TRUNCATE TABLE t_prparms;
	TRUNCATE TABLE t_rates;
	TRUNCATE TABLE t_relacc;
	TRUNCATE TABLE t_savings_altcid;
	TRUNCATE TABLE t_serials;
	TRUNCATE TABLE t_svacc;
	TRUNCATE TABLE t_tdacc;
	TRUNCATE TABLE t_trnhist;
	TRUNCATE TABLE tabletx;
	TRUNCATE TABLE t_glac;
	TRUNCATE TABLE t_glachist;
	TRUNCATE TABLE t_glcontrol;
	TRUNCATE TABLE t_glsc;
	TRUNCATE TABLE t_glschist;
	TRUNCATE TABLE t_gltrndaily;
	TRUNCATE TABLE t_gltrnhist;

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
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA50K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA50K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KA,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KA_A,
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SA500KAI_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SATotal,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SATotal_A,

(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))as SATotalI_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0)-(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)))as SATotalUI_A,
((case when ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) = 0 then '-' ELSE 
((ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))/ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0))end)*100) as `SATotalI%`,


ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA50K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA50K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500K,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500K_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KA,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KA_A,
ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0) as SPA500KAI_A,
ifnull((select count(Dep_Ac_No) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SPATotal,
ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) as SPATotal_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))as SPATotalI_A,
(ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) - (ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)))as SPATotalUI_A,

((case when ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) and A.DOTRN = Date_
GROUP BY Dep_Type),0) = 0 then '-' ELSE 
((ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal <= 50000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and (Avail_Bal > 50000 and Avail_Bal <= 500000) and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0))/ifnull((select sum(Avail_Bal) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
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
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
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
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
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
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
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
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES not like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
where Dep_Type = 'SA' and Avail_Bal > 500000 and A.DOTRN = Date_
and A.APPTYPE in (select B.APPTYPE) and A.TYPE in (select B.TYPE) 
GROUP BY Dep_Type),0)+ifnull((select (count(Dep_Ac_No)*500000) from dav_report A 
LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,C.APPTYPE,C.TYPE,C.DOTRN from sysparms A 
LEFT JOIN (select SYSID,APPTYPE,TYPE,RULES,DOTRN from prparms where APPTYPE = '1' and RULES like '%$%' )C
on A.SYSTEMID = C.SYSID)B on A.Br_NaCo = B.BRNAME and A.APPTYPE = B.APPTYPE and A.TYPe = B.TYPE
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
on A.Br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID
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
	ifnull(A.`Issue Date`,'')as `Issue Date`,ifnull(A.Mat_date,'')as Mat_date,
	ifnull(DATEDIFF(STR_TO_DATE(A.Mat_date,'%Y%m%d'),
	STR_TO_DATE(A.`Issue Date`,'%Y%m%d')),'')as Term,A.Avail_Bal from dav_report A
	LEFT JOIN (select SYSTEMID,BRNAME,ORGNAME,DOLASTMLY,DOLASTQLY,DOTRN from sysparms)B 
	on A.Br_NaCo = B.BRNAME and A.SYSID = B.SYSTEMID
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
-- Procedure structure for sp_DAV_Truncate_SVACC
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_DAV_Truncate_SVACC`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DAV_Truncate_SVACC`()
BEGIN
	TRUNCATE TABLE SVACC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(Account char(11),AccountChd char(1),Apptype_ char(1), type_ char(3),SYSID char(10))
BEGIN
DECLARE CIDMAIN varchar(255);
DECLARE CID1 varchar(255);
DECLARE CID2 varchar(255);
DECLARE CID3 varchar(255);
DECLARE CID4 varchar(255);
DECLARE CID5 varchar(255);
DECLARE CID6 varchar(255);
DECLARE CID7 varchar(255);
DECLARE done INT DEFAULT 0;
DECLARE i varchar(255);
DECLARE curs1 CURSOR FOR SELECT `CID` FROM t_relacc where acc = Account and chd = AccountChd and apptype = Apptype_ and type = type_ and br = SYSID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET CID1 = '';
SET CID2 = '';
SET CID3 = '';
SET CID4 = '';
SET CID5 = '';
SET CID6 = '';
SET CID7 = '';
select CID into CIDMAIN from t_relacc where acc = Account and chd = AccountChd and apptype = Apptype_ and type = '010' and br = SYSID;

OPEN curs1;
REPEAT
FETCH curs1 into i;
IF not done THEN
	IF CID1 = '' THEN
      SET CID1 = i;
    ELSEIF CID2 = '' THEN
			SET CID2 = i;
		ELSEIF CID3 = '' THEN
			SET CID3 = i;
		ELSEIF CID4 = '' THEN
			SET CID4 = i;
		ELSEIF CID5 = '' THEN
			SET CID5 = i;
		ELSEIF CID6 = '' THEN
			SET CID6 = i;
		ELSEIF CID7 = '' THEN
			SET CID7 = i;
  END IF;
END IF;
UNTIL done
end REPEAT;

CLOSE curs1;
SELECT CIDMAIN,CID1,CID2,CID3,CID4,CID5,CID6,CID7;
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
-- Function structure for fn_DAV_Date_to_Int
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_DAV_Date_to_Int`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_DAV_Date_to_Int`(`Date_` datetime) RETURNS int(11)
BEGIN
	#Routine body goes here...
	#RETURN DATEDIFF(cast(Date_ as date),'1900-01-01');
  RETURN DATEDIFF(if(year(cast(Date_ as date)) < 1900,'1900-01-01',cast(Date_ as date)),'1900-01-01');
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
CREATE DEFINER=`root`@`%` FUNCTION `fn_Dep_Intpostdate`(`DOLASTCAP` INT,`DOPEN` INT,`DOLASTTRN` INT,`APPTYPE` CHAR(10),`SYSID` CHAR(10),`TYPE` CHAR(10)) RETURNS char(10) CHARSET latin1
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
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE 
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_IntRate`(`INTRATE` decimal(16,2),`BALAMT` INT,`APPTYPE` CHAR(10),`SYSID` CHAR(10),`TYPE` CHAR(10)) RETURNS char(10) CHARSET latin1
BEGIN
	
DECLARE RETVAL DECIMAL(16,2);
#SET RETVAL = fn_DAV_Normal_Amt(INTRATE);
SET RETVAL = INTRATE;

IF (
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE
AND prparms.SYSID = SYSID and prparms.TYPE = TYPE
AND prparms.RULES LIKE '%G%'
LIMIT 1 ) = 1 THEN
	SET RETVAL = IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL1) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE1) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL2) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE2) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL3) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE3) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL4) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE4) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
               IF(fn_DAV_Normal_Amt(BALAMT) <= (SELECT fn_DAV_Normal_Amt(GRDBAL5) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
                 (SELECT fn_DAV_Normal_Amt(INTRATE5) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
                 AND prparms.SYSID = SYSID and prparms.TYPE = TYPE AND prparms.RULES LIKE '%G%' LIMIT 1 ),
              (SELECT fn_DAV_Normal_Amt(INTRATE5) FROM prparms WHERE prparms.APPTYPE = APPTYPE 
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_IssueDate`(`APPTYPE` CHAR(5),`TYPE` CHAR(5),`DOPEN` CHAR(10),`SYSID` CHAR(10)) RETURNS char(20) CHARSET latin1
BEGIN

  DECLARE RETVAL CHAR(10);

	SET RETVAL = CASE WHEN APPTYPE = '3' THEN
								IFNULL(fn_dav_NewDate_Converter(DOPEN),'')
								WHEN APPTYPE IN (SELECT APPTYPE FROM prparms WHERE 
								prparms.SYSID = SYSID AND prparms.APPTYPE = APPTYPE AND prparms.TYPE = TYPE and RULES like '%$%')
								AND TYPE IN (SELECT TYPE FROM prparms WHERE 
								prparms.SYSID = SYSID AND prparms.APPTYPE = APPTYPE AND prparms.TYPE = TYPE and RULES like '%$%') 
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Trnm_chg`(`ACC` CHAR(10),`SYSID` CHAR(10)) RETURNS decimal(16,2)
BEGIN
		DECLARE RETVAL DECIMAL(16,2);
		SELECT
			SUBSTRING_INDEX(MAX(CONCAT(TRN,'[',TRNCHG)),'[',-1)/100 INTO RETVAL
		FROM
			TRNM WHERE TRNCHG > 0 AND trnm.SYSID=SYSID AND trnm.ACC=ACC;
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Type2`(`APPTYPE` char(2),`SYSID` char(10),`GLCODE` char(20)) RETURNS char(100) CHARSET latin1
BEGIN
	
  DECLARE RETVAL CHAR(100);

  SET RETVAL = CASE WHEN APPTYPE = '1' THEN 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '10' and A.SYSID = SYSID)
							 WHEN APPTYPE = '2' THEN 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '20' and A.SYSID = SYSID)
							 ELSE 
							(SELECT `FULLDESC` from `tables` A WHERE RIGHT(CONCAT('000',GLCODE),3) = CODE AND TABLENO = '30' and A.SYSID = SYSID)
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_Wtax`(`APPTYPE` CHAR(10),`TYPE` CHAR(10),`SYSID` char(10),`CID` char(10)) RETURNS char(10) CHARSET latin1
BEGIN
	DECLARE RETVAL CHAR(10);
	DECLARE TAXDEC INT;
#	DECLARE VALUE_ char(10);

  SELECT TAXCODE INTO TAXDEC FROM cif WHERE cif.SYSID=SYSID AND cif.CID=CID;
#	SELECT CONCAT(CAST(CAST( (SELECT GLACCINT/100 FROM `TABLES` WHERE tableno = '91' AND code = '001' AND
#										`TABLES`.SYSID = SYSID AND `TABLES`.DOTRN = DOTRN) AS DECIMAL(12,2)) AS CHAR(6)), '%') into VALUE_;
	
  # 1st check for tax exempt, TAXDEC = 0 = NON TAX
	SET RETVAL = CASE WHEN (TAXDEC != 1) THEN '0'
							 ELSE
									CASE WHEN (SELECT CONCAT(CAST(CAST( (SELECT GLACCINT/100 FROM `TABLES` WHERE tableno = '91' AND code = '001' AND
										`TABLES`.SYSID = SYSID) AS DECIMAL(12,2)) AS CHAR(6)), '%')) is null THEN
											CONCAT(CAST(CAST((select TaxRate from tabletx where Code = '001') AS DECIMAL(12,2)) AS CHAR(6)), '%')
									ELSE
										CONCAT(CAST(CAST( (SELECT GLACCINT/100 FROM `TABLES` WHERE tableno = '91' AND code = '001' AND
										`TABLES`.SYSID = SYSID) AS DECIMAL(12,2)) AS CHAR(6)), '%')
									END 
							 END ;

  # 2nd Check for tax exempt X = NON TAX
  IF (RETVAL != 0) THEN
			IF (
				SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE
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
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Dep_WTax_Date`(`APPTYPE`  char(10), `SYSID` char(10),`CID` char(10), `DOINTEFF` INT,`DOLASTTRN` INT, `DOPEN` INT,`TYPE` CHAR(10)) RETURNS char(20) CHARSET latin1
BEGIN
	DECLARE TAXDEC INT;
	DECLARE RETVAL INT;

	SELECT TAXCODE INTO TAXDEC FROM cif WHERE cif.SYSID=SYSID AND cif.CID=CID;

	SET RETVAL = CASE WHEN TAXDEC = 0 THEN 365
							 ELSE	DOINTEFF
							 END;

IF (
SELECT 1 FROM prparms WHERE prparms.APPTYPE = APPTYPE 
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
#RETURN RETVAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_Proper_Name
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_Proper_Name`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Proper_Name`(String VARCHAR(255)) RETURNS varchar(255) CHARSET latin1
BEGIN
    RETURN trim(IFNULL(CONCAT_WS(' ',
			CONCAT(UPPER(LEFT(SUBSTRING_INDEX(String , ' ',1),1)), LOWER(MID(SUBSTRING_INDEX(String , ' ',1),2))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String , ' ',2),LENGTH(SUBSTRING_INDEX(String , ' ',1)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String , ' ',2),3 + LENGTH(SUBSTRING_INDEX(String , ' ',1))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String , ' ',3),LENGTH(SUBSTRING_INDEX(String , ' ',2)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String , ' ',3),3 + LENGTH(SUBSTRING_INDEX(String , ' ',2))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',4),LENGTH(SUBSTRING_INDEX(String, ' ',3)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',4),3 + LENGTH(SUBSTRING_INDEX(String, ' ',3))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',5),LENGTH(SUBSTRING_INDEX(String, ' ',4)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',5),3 + LENGTH(SUBSTRING_INDEX(String, ' ',4))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',6),LENGTH(SUBSTRING_INDEX(String, ' ',5)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',6),3 + LENGTH(SUBSTRING_INDEX(String, ' ',5))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',7),LENGTH(SUBSTRING_INDEX(String, ' ',6)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',7),3 + LENGTH(SUBSTRING_INDEX(String, ' ',6))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',8),LENGTH(SUBSTRING_INDEX(String, ' ',7)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',8),3 + LENGTH(SUBSTRING_INDEX(String, ' ',7))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',9),LENGTH(SUBSTRING_INDEX(String, ' ',8)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',9),3 + LENGTH(SUBSTRING_INDEX(String, ' ',8))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',10),LENGTH(SUBSTRING_INDEX(String, ' ',9)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',10),3 + LENGTH(SUBSTRING_INDEX(String, ' ',9))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',11),LENGTH(SUBSTRING_INDEX(String, ' ',10)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',11),3 + LENGTH(SUBSTRING_INDEX(String, ' ',10))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',12),LENGTH(SUBSTRING_INDEX(String, ' ',11)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',12),3 + LENGTH(SUBSTRING_INDEX(String, ' ',11))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',13),LENGTH(SUBSTRING_INDEX(String, ' ',12)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',13),3 + LENGTH(SUBSTRING_INDEX(String, ' ',12))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',14),LENGTH(SUBSTRING_INDEX(String, ' ',13)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',14),3 + LENGTH(SUBSTRING_INDEX(String, ' ',13))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',15),LENGTH(SUBSTRING_INDEX(String, ' ',14)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',15),3 + LENGTH(SUBSTRING_INDEX(String, ' ',14))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',16),LENGTH(SUBSTRING_INDEX(String, ' ',15)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',16),3 + LENGTH(SUBSTRING_INDEX(String, ' ',15))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',17),LENGTH(SUBSTRING_INDEX(String, ' ',16)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',17),3 + LENGTH(SUBSTRING_INDEX(String, ' ',16))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',18),LENGTH(SUBSTRING_INDEX(String, ' ',17)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',18),3 + LENGTH(SUBSTRING_INDEX(String, ' ',17))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',19),LENGTH(SUBSTRING_INDEX(String, ' ',18)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',19),3 + LENGTH(SUBSTRING_INDEX(String, ' ',18))))),
			CONCAT(UPPER(MID(SUBSTRING_INDEX(String, ' ',20),LENGTH(SUBSTRING_INDEX(String, ' ',19)) + 2, 1)), LOWER(MID(SUBSTRING_INDEX(String, ' ',20),3 + LENGTH(SUBSTRING_INDEX(String, ' ',19)))))),''));
END
;;
DELIMITER ;
