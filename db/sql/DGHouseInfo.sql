if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_EMPTYHOU_REFERENCE_BUILD]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[EmptyHouse] DROP CONSTRAINT FK_EMPTYHOU_REFERENCE_BUILD
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSE_HOUSEANDB_BUILD]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[House] DROP CONSTRAINT FK_HOUSE_HOUSEANDB_BUILD
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PORJECTC_REFERENCE_BUILD]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[PorjectCardAndBuild] DROP CONSTRAINT FK_PORJECTC_REFERENCE_BUILD
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NEWHOUSE_REFERENCE_DEMPLOYE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NewHouseContract] DROP CONSTRAINT FK_NEWHOUSE_REFERENCE_DEMPLOYE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DEMPLOYE_REFERENCE_DEVELOPE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[DEmployee] DROP CONSTRAINT FK_DEMPLOYE_REFERENCE_DEVELOPE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PROJECT_REFERENCE_DEVELOPE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Project] DROP CONSTRAINT FK_PROJECT_REFERENCE_DEVELOPE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SECTION_REFERENCE_DISTRICT]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Section] DROP CONSTRAINT FK_SECTION_REFERENCE_DISTRICT
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSEAND_REFERENCE_HOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseAndCard] DROP CONSTRAINT FK_HOUSEAND_REFERENCE_HOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSERECORD_REFERENCE_HOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseAndRecordOwner] DROP CONSTRAINT FK_HOUSERECORD_REFERENCE_HOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSESTA_REFERENCE_HOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseState] DROP CONSTRAINT FK_HOUSESTA_REFERENCE_HOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NEWHOUSE_REFERENCE_HOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NewHouseContract] DROP CONSTRAINT FK_NEWHOUSE_REFERENCE_HOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_HOUSE2]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContract] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_HOUSE2
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_HOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseRelease] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_HOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSEAND_REFERENCE_HOUSECAR]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseAndCard] DROP CONSTRAINT FK_HOUSEAND_REFERENCE_HOUSECAR
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_IEMPLOYE2]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContract] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_IEMPLOYE2
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_IEMPLOYE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseRelease] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_IEMPLOYE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_IEMPLOYE_REFERENCE_INTERMED]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[IEmployee] DROP CONSTRAINT FK_IEMPLOYE_REFERENCE_INTERMED
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSE_REFERENCE_LANDINFO]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[House] DROP CONSTRAINT FK_HOUSE_REFERENCE_LANDINFO
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SMSUBCOM_REFERENCE_MCOMPANY]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SMSubCompany] DROP CONSTRAINT FK_SMSUBCOM_REFERENCE_MCOMPANY
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_OLDHOUSE]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContractAndOwner] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_OLDHOUSE
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_OLDHOUSE2]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContract] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_OLDHOUSE2
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DEMPLOYE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[DEmployee] DROP CONSTRAINT FK_DEMPLOYE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DEVELOPE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Developer] DROP CONSTRAINT FK_DEVELOPE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_ECEMPLOY_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[ECEmployee] DROP CONSTRAINT FK_ECEMPLOY_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[House] DROP CONSTRAINT FK_HOUSE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSEAND_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseAndRecordOwner] DROP CONSTRAINT FK_HOUSEAND_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_HOUSECAR_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[HouseCard] DROP CONSTRAINT FK_HOUSECAR_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_IEMPLOYE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[IEmployee] DROP CONSTRAINT FK_IEMPLOYE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NEWHOUSE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NewHouseContract] DROP CONSTRAINT FK_NEWHOUSE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_OWNERINF2]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContract] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_OWNERINF2
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_OWNERINF3]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContract] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_OWNERINF3
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OLDHOUSE_REFERENCE_OWNERINF]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OldHouseContractAndOwner] DROP CONSTRAINT FK_OLDHOUSE_REFERENCE_OWNERINF
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_BUILD_REFERENCE_PROJECT]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Build] DROP CONSTRAINT FK_BUILD_REFERENCE_PROJECT
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PROJECTA_REFERENCE_PROJECT]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[ProjectAndCard] DROP CONSTRAINT FK_PROJECTA_REFERENCE_PROJECT
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PROJECTC_REFERENCE_PROJECT]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[ProjectCreateProcess] DROP CONSTRAINT FK_PROJECTC_REFERENCE_PROJECT
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PORJECTC_REFERENCE_PROJECTC]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[PorjectCardAndBuild] DROP CONSTRAINT FK_PORJECTC_REFERENCE_PROJECTC
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_BUILD_REFERENCE_SECTION]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Build] DROP CONSTRAINT FK_BUILD_REFERENCE_SECTION
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_OWNERGRO_REFERENCE_SECTION]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[OwnerGroup] DROP CONSTRAINT FK_OWNERGRO_REFERENCE_SECTION
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_POOLBUIL_REFERENCE_SECTION]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[PoolBuild] DROP CONSTRAINT FK_POOLBUIL_REFERENCE_SECTION
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PROJECT_REFERENCE_SECTION]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Project] DROP CONSTRAINT FK_PROJECT_REFERENCE_SECTION
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SMSUBCOM_REFERENCE_SECTION]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SMSubCompany] DROP CONSTRAINT FK_SMSUBCOM_REFERENCE_SECTION
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Build]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Build]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEmployee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Developer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Developer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[District]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[District]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ECEmployee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ECEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmptyHouse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EmptyHouse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EvaluateCorporation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EvaluateCorporation]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FinancialInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[FinancialInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[House]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[House]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseAndCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseAndCard]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseAndRecordOwner]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseAndRecordOwner]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseCard]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseCardNumber]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseCardNumber]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseState]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseState]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IEmployee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[IEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Intermediary]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Intermediary]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LandInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LandInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MCEmployee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MCEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MCompany]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MCompany]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MappingCorporation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MappingCorporation]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewHouseContract]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NewHouseContract]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OldHouseContract]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OldHouseContract]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OldHouseContractAndOwner]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OldHouseContractAndOwner]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OldHouseRelease]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OldHouseRelease]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OwnerGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OwnerGroup]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OwnerInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OwnerInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PoolBuild]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PoolBuild]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PorjectCardAndBuild]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PorjectCardAndBuild]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Project]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Project]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProjectAndCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProjectAndCard]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProjectCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProjectCard]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProjectCreateProcess]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProjectCreateProcess]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProvinceCity]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProvinceCity]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SMSubCompany]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SMSubCompany]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Section]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Section]
GO

CREATE TABLE [dbo].[Build] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BuildNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BuildName] [varchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ProjectID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SectionID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[DoorNO] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[UnintCount] [int] NULL ,
	[FloorCount] [int] NULL ,
	[BuildAddress] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SumCount] [int] NULL ,
	[Area] [decimal](18, 3) NULL ,
	[SumArea] [decimal](18, 3) NULL ,
	[HomeArea] [decimal](18, 3) NULL ,
	[UNHomeArea] [decimal](18, 3) NULL ,
	[NetPointArea] [decimal](18, 3) NULL ,
	[DepotArea] [decimal](18, 3) NULL ,
	[OfficeArea] [decimal](18, 3) NULL ,
	[OtherArea] [decimal](18, 3) NULL ,
	[HomeCount] [int] NULL ,
	[UNHomeCount] [int] NULL ,
	[NetPointCount] [int] NULL ,
	[DepotCount] [int] NULL ,
	[OfficeCount] [int] NULL ,
	[OtherCount] [int] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Lng] [decimal](18, 14) NULL ,
	[Lat] [decimal](18, 14) NULL ,
	[Zoom] [int] NULL ,
	[MapNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BlockNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BuildType] [bigint] NULL ,
	[CompositeArea] [decimal](18, 0) NULL ,
	[FirmlyPower] [bit] NOT NULL ,
	[FirmlyDate] [datetime] NULL ,
	[Structure] [bigint] NULL ,
	[isModify] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DEmployee] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Developer] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Password] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseDateTo] [datetime] NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Education] [bigint] NULL ,
	[DateTo] [datetime] NULL ,
	[isOff] [bit] NULL ,
	[CreateDate] [datetime] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseLeve] [bigint] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Developer] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[OwnerName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerCard] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyType] [bigint] NULL ,
	[Manager] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[GroupLeve] [bigint] NULL ,
	[E_Mail] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhoneNumber] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyCode] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[RegMoney] [decimal](18, 3) NULL ,
	[DateTo] [datetime] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Icon] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxLicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[WebAddress] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChildrenCount] [int] NULL ,
	[ChildrenCompany] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[RecordDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[District] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[WordNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DisNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProvinceCityID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ECEmployee] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[EvaluateCompany] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Password] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseDateTo] [datetime] NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Education] [bigint] NULL ,
	[DateTo] [datetime] NULL ,
	[isOff] [bit] NULL ,
	[CreateDate] [datetime] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseLeve] [bigint] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EmptyHouse] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BuildID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[UseType] [int] NULL ,
	[HouseOrder] [int] NOT NULL ,
	[HouseUnit] [int] NOT NULL ,
	[InFloor] [int] NOT NULL ,
	[RowSpan] [int] NOT NULL ,
	[ColSpan] [int] NOT NULL ,
	[UnionUnitColSpan] [int] NOT NULL ,
	[InFloorName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseUnitName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Page] [int] NOT NULL ,
	[UnionColSpanLeft] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EvaluateCorporation] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner_card] [varchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerWay] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Manager] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[Postalcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyNo] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Companylicense] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[RecordDate] [datetime] NULL ,
	[Icon] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxLicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyType] [bigint] NULL ,
	[RegMoney] [decimal](13, 3) NULL ,
	[GroupLeve] [bigint] NULL ,
	[WebAddress] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateTo] [datetime] NULL ,
	[ChildrenCount] [int] NULL ,
	[ChildrenCompany] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FinancialInfo] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[No] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LegalPeople] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[House] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HouseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuildID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HouseArea] [decimal](18, 3) NOT NULL ,
	[TempArea] [decimal](18, 3) NULL ,
	[UseArea] [decimal](18, 3) NULL ,
	[CommArea] [decimal](18, 3) NULL ,
	[ShineArea] [decimal](18, 10) NULL ,
	[LoftArea] [decimal](18, 3) NULL ,
	[CommParam] [decimal](18, 3) NULL ,
	[PrivateArea] [decimal](18, 3) NULL ,
	[SellSumPrice] [decimal](18, 3) NULL ,
	[SumPrice] [decimal](18, 3) NULL ,
	[LoftPrice] [decimal](18, 3) NULL ,
	[SellPrice] [decimal](18, 3) NULL ,
	[HouseState] [bigint] NOT NULL ,
	[HouseUnit] [int] NOT NULL ,
	[HouseOrder] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[InFloor] [int] NULL ,
	[InFloorName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DoorNo] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseType] [bigint] NULL ,
	[UseType] [bigint] NULL ,
	[HousePorperty] [bigint] NULL ,
	[Structure] [bigint] NULL ,
	[KnotSize] [bigint] NULL ,
	[HouseFrom] [bigint] NULL ,
	[SellDate] [datetime] NULL ,
	[Html_Order] [int] NOT NULL ,
	[Html_RowSpan] [int] NULL ,
	[Html_ColSpan] [int] NULL ,
	[Html_Page] [int] NOT NULL ,
	[Html_HouseOrder] [int] NULL ,
	[KeyCode] [varchar] (13) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompactNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseStation] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LandInfo] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[InBiz] [bit] NOT NULL ,
	[InBizCode] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[MainOwner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreatDate] [datetime] NULL ,
	[DataSource] [bigint] NULL ,
	[UnitName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Html_UnionColSpan] [int] NOT NULL ,
	[Html_UnionColSpanLeft] [int] NOT NULL ,
	[PoolMemo] [bigint] NULL ,
	[PrepareArea] [decimal](18, 3) NULL ,
	[EastTo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SouthTo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[WestTo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[NorthTo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EastNext] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SouthNext] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[WestNext] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[NorthNext] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EastWall] [bigint] NULL ,
	[SouthWall] [bigint] NULL ,
	[WestWall] [bigint] NULL ,
	[NorthWall] [bigint] NULL ,
	[MappingDate] [datetime] NULL ,
	[MappingMemo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Direction] [bigint] NULL ,
	[PayType] [bigint] NULL ,
	[RecordDate] [datetime] NULL ,
	[SignDate] [datetime] NULL ,
	[InitReg] [bit] NOT NULL ,
	[FirmlyPower] [bit] NOT NULL ,
	[OutPlan] [bit] NOT NULL ,
	[InitRegDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseAndCard] (
	[HouseID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CardID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseAndRecordOwner] (
	[HouseID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[OwnerID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseCard] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Type] [bigint] NOT NULL ,
	[PrintTime] [datetime] NULL ,
	[Cancel] [bit] NOT NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColPeo] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColTel] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColTime] [datetime] NULL ,
	[OwnerID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[BusinessID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Relation] [bigint] NULL ,
	[PoolArea] [decimal](18, 3) NULL ,
	[Perc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[KEYCODE] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseCardNumber] (
	[id] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Type] [bigint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseState] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HouseID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[StateKey] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[FcBizId] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[IEmployee] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Intermediary] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[LicenseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseDateTo] [datetime] NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Education] [bigint] NULL ,
	[DateTo] [datetime] NULL ,
	[isOff] [bit] NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreateDate] [datetime] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseLeve] [bigint] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Intermediary] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[RecordDate] [datetime] NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhoneNumber] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerCard] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[E_Mail] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Icon] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxLicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyCode] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyType] [bigint] NULL ,
	[RegMoney] [decimal](13, 3) NULL ,
	[GroupLeve] [bigint] NULL ,
	[WebAddress] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateTo] [datetime] NULL ,
	[ChildrenCount] [int] NULL ,
	[ChildrenCompany] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Manager] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LandInfo] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[LandProperty] [bigint] NULL ,
	[LUTS] [datetime] NULL ,
	[LUTO] [datetime] NULL ,
	[LandArea] [decimal](18, 3) NULL ,
	[LandCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LandGetMode] [bigint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MCEmployee] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Employee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[MapCompany] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[LicenseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseDateTo] [datetime] NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Education] [bigint] NULL ,
	[DateTo] [datetime] NULL ,
	[isOff] [bit] NULL ,
	[CreateDate] [datetime] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseLeve] [bigint] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MCompany] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[RecordDate] [datetime] NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhoneNumber] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerCard] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[E_Mail] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Icon] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[LicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxLicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyCode] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyType] [bigint] NULL ,
	[RegMoney] [decimal](13, 3) NULL ,
	[GroupLeve] [bigint] NULL ,
	[WebAddress] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateTo] [datetime] NULL ,
	[Manager] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MappingCorporation] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner_card] [varchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[OwnerWay] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Manager] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[Postalcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyNo] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Companylicense] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[RecordDate] [datetime] NULL ,
	[Icon] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[GoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NoGoodAction] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Complaints] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxLicenseNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyType] [bigint] NULL ,
	[RegMoney] [decimal](13, 3) NULL ,
	[GroupLeve] [bigint] NULL ,
	[WebAddress] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateTo] [datetime] NULL ,
	[ChildrenCount] [int] NULL ,
	[ChildrenCompany] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NewHouseContract] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[DEmployee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[House] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[RecordDate] [datetime] NULL ,
	[TransactionPrice] [decimal](18, 3) NOT NULL ,
	[State] [bigint] NOT NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[PartCount] [int] NOT NULL ,
	[PayType] [bigint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OldHouseContract] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IEmployee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[RecordDate] [datetime] NULL ,
	[House] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Release] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Buyer] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Seller] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TransactionPrice] [decimal](18, 3) NULL ,
	[State] [bigint] NOT NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PartCount] [int] NOT NULL ,
	[PayType] [bigint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OldHouseContractAndOwner] (
	[Record] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OldHouseRelease] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[House] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[IEmployee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[TransactionPrice] [decimal](18, 3) NULL ,
	[State] [bigint] NOT NULL ,
	[RecordDate] [datetime] NULL ,
	[DateTo] [datetime] NOT NULL ,
	[CheckEmployee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[CheckView] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxPayType] [bigint] NULL ,
	[Decoration] [bigint] NULL ,
	[SManagement] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[WXZJOper] [bigint] NULL ,
	[OtherHouse] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Equipment] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OwnerGroup] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Section] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Owner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreateDate] [datetime] NULL ,
	[TotalCount] [int] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OwnerInfo] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Type] [bigint] NULL ,
	[Name] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[IDType] [bigint] NULL ,
	[IDNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Sex] [int] NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[City] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Nation] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Birthday] [datetime] NULL ,
	[Domicile] [bigint] NULL ,
	[Nationality] [bigint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PoolBuild] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SectionID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BuildName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Structure] [bigint] NULL ,
	[Address] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[MapNumber] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BlockNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuildNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LayerNumber] [int] NULL ,
	[BuildArea] [float] NULL ,
	[RegisterTime] [datetime] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PorjectCardAndBuild] (
	[ProjectCard] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Build] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SumArea] [numeric](18, 3) NULL ,
	[SumCount] [int] NULL ,
	[HomeArea] [decimal](18, 3) NULL ,
	[HomeCount] [int] NULL ,
	[UnhomeArea] [decimal](18, 3) NULL ,
	[UnhomeCount] [int] NULL ,
	[NetPointArea] [decimal](18, 3) NULL ,
	[NetPointCount] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Project] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SectionID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[DeveloperID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[OpenDate] [datetime] NULL ,
	[CheckDate] [datetime] NULL ,
	[BuildSize] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuildCount] [int] NULL ,
	[InvestMoney] [decimal](18, 3) NULL ,
	[FinishDate] [datetime] NULL ,
	[Area] [decimal](18, 3) NULL ,
	[SumArea] [decimal](18, 3) NULL ,
	[HomeArea] [decimal](18, 3) NULL ,
	[UNHomeArea] [decimal](18, 3) NULL ,
	[NetPointArea] [decimal](18, 3) NULL ,
	[OfficeArea] [decimal](18, 3) NULL ,
	[DepotArea] [decimal](18, 3) NULL ,
	[CommonArea] [decimal](18, 3) NULL ,
	[OtherArea] [decimal](18, 3) NULL ,
	[SellCount] [int] NULL ,
	[HomeCount] [int] NULL ,
	[UNHomeCount] [int] NULL ,
	[NetPointCount] [int] NULL ,
	[OfficeCount] [int] NULL ,
	[DepotCount] [int] NULL ,
	[CommonCount] [int] NULL ,
	[OtherCount] [int] NULL ,
	[HouseBeginPrice] [decimal](18, 3) NULL ,
	[HouseAvePrice] [decimal](18, 3) NULL ,
	[OtherBeginPrice] [decimal](18, 3) NULL ,
	[OtherHouseAvePrice] [decimal](18, 3) NULL ,
	[NetPointBeginPrice] [decimal](18, 3) NULL ,
	[NetPointAvePrice] [decimal](18, 3) NULL ,
	[OfficeBeginPrice] [decimal](18, 3) NULL ,
	[OfficeAvePrice] [decimal](18, 3) NULL ,
	[DepotBeginPrice] [decimal](18, 3) NULL ,
	[DepotAvePrice] [decimal](18, 3) NULL ,
	[OtherPrice] [decimal](18, 3) NULL ,
	[Phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[USLLicence] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[BCLicence] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PClicence] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[JWLicence] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[YYLicence] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ComeDate] [datetime] NULL ,
	[State] [bigint] NOT NULL ,
	[InBiz] [bit] NOT NULL ,
	[InBizCode] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LUTS] [datetime] NULL ,
	[LUTO] [datetime] NULL ,
	[LandGetMode] [bigint] NULL ,
	[DataSource] [bigint] NULL ,
	[MappingDate] [datetime] NULL ,
	[MappingMemo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LandCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LandArea] [decimal](18, 3) NULL ,
	[LandProperty] [bigint] NULL ,
	[LandMoney] [decimal](18, 3) NULL ,
	[CreateDate] [datetime] NULL ,
	[BCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BCardDate] [datetime] NULL ,
	[BCardCount] [int] NULL ,
	[BCardCDate] [datetime] NULL ,
	[Seal] [bit] NOT NULL ,
	[PlanArea] [decimal](18, 0) NULL ,
	[GarageArea] [decimal](18, 0) NULL ,
	[GarageCount] [int] NULL ,
	[IsCard] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProjectAndCard] (
	[Card] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Project] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProjectCard] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Type] [bigint] NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[PrintTime] [datetime] NULL ,
	[Cancel] [bit] NOT NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColPeo] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColTel] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[ColTime] [datetime] NULL ,
	[BusinessID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseCount] [int] NULL ,
	[BuildCount] [int] NULL ,
	[SumArea] [decimal](18, 3) NULL ,
	[IsPrepareSell] [bit] NULL ,
	[UseType] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SellObject] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[YearNum] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderNum] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[KEYCODE] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProjectCreateProcess] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[project] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[processDate] [datetime] NULL ,
	[money] [decimal](18, 3) NULL ,
	[houseMoney] [decimal](18, 3) NULL ,
	[memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProvinceCity] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProvinceName] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[CityName] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SMSubCompany] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[MCompany] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Section] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[RegDate] [datetime] NULL ,
	[IsOff] [bit] NULL ,
	[OffDate] [datetime] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Section] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[DistrictID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CreateDate] [datetime] NULL ,
	[Address] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

