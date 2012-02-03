if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_BUSINESS_REFERENCE_BUSINESS]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Business] DROP CONSTRAINT FK_BUSINESS_REFERENCE_BUSINESS
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_RECORDAN_REFERENCE_RECORD]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[RecordandBiz] DROP CONSTRAINT FK_RECORDAN_REFERENCE_RECORD
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Business]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Business]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CloseOpenHouse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CloseOpenHouse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DirectnessHouse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DirectnessHouse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DoubtBiz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DoubtBiz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ForecastRegiste]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ForecastRegiste]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseAndBusiness]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseAndBusiness]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseHistroy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseHistroy]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseModify]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseModify]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseMoney]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HouseMortagage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HouseMortagage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProjectMortagage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProjectMortagage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Record]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Record]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RecordandBiz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[RecordandBiz]
GO

CREATE TABLE [dbo].[Business] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NameID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[WorkID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BOTime] [datetime] NOT NULL ,
	[RegisterTime] [datetime] NULL ,
	[FinalWorker] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[EnrolWorker] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[FinalTime] [datetime] NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ApprovalContext] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[BizSource] [bigint] NULL ,
	[ProcessMessage] [varchar] (800) COLLATE Chinese_PRC_CI_AS NULL ,
	[AddBizTime] [datetime] NULL ,
	[Enable] [bit] NOT NULL ,
	[SelectBiz] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[RecordBizNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProjectID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[MappingCompany] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[EvaluateCompany] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CloseOpenHouse] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[closeDown_clour] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[close_file] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[close_cardId] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[close_date] [datetime] NULL ,
	[open_file] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[open_cardId] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[open_date] [datetime] NULL ,
	[selectBiz] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[isOpen] [bit] NULL ,
	[keycode] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DirectnessHouse] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CapturePeo] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[CTime] [datetime] NULL ,
	[CTimeS] [datetime] NULL ,
	[CTimeO] [datetime] NULL ,
	[HCPeo] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[CMC] [int] NULL ,
	[MMeney] [float] NULL ,
	[AddUp] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DoubtBiz] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[proposer] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[doubt_matters] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[keycode] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ForecastRegiste] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[owner] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ownerIdNo] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[dutyPerson] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[dutyIdNo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[forenoticeNo] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[keycode] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseAndBusiness] (
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HouseID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseHistroy] (
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
	[SellSumPrice] [decimal](18, 2) NULL ,
	[SumPrice] [decimal](18, 2) NULL ,
	[LoftPrice] [decimal](18, 2) NULL ,
	[SellPrice] [decimal](18, 2) NULL ,
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
	[ChangeDate] [datetime] NOT NULL ,
	[ChangeFrom] [bigint] NULL ,
	[Business] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[Employee] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[PayType] [bigint] NULL ,
	[RecordDate] [datetime] NULL ,
	[SignDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseModify] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[MapNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BlockNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuildNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseOrder] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UseType] [bigint] NULL ,
	[Structure] [bigint] NULL ,
	[HouseStation] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseArea] [decimal](18, 3) NULL ,
	[CommArea] [decimal](18, 3) NULL ,
	[ParticularArea] [decimal](18, 3) NULL ,
	[HouseFrom] [bigint] NULL ,
	[HouseProperty] [bigint] NULL ,
	[CreateDate] [datetime] NULL ,
	[InFloor] [int] NULL ,
	[LandNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LandProperty] [bigint] NULL ,
	[LandGetMode] [bigint] NULL ,
	[LUTS] [datetime] NULL ,
	[LUTO] [datetime] NULL ,
	[LandArea] [decimal](18, 3) NULL ,
	[LandCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ModifyMemo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[OldModifyMemo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[MainOwner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreMapNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreBlockNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreBuildNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreHouseOrder] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreUseType] [bigint] NULL ,
	[PreStructure] [bigint] NULL ,
	[PreHouseStation] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreHouseArea] [decimal](18, 3) NULL ,
	[PreCommArea] [decimal](18, 3) NULL ,
	[PreParticularArea] [decimal](18, 3) NULL ,
	[PreHouseFrom] [bigint] NULL ,
	[PreHouseProperty] [bigint] NULL ,
	[PreCreateDate] [datetime] NULL ,
	[PreInFloor] [int] NULL ,
	[PreLandNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreLandProperty] [bigint] NULL ,
	[PreLandGetMode] [bigint] NULL ,
	[PreLUTS] [datetime] NULL ,
	[PreLUTO] [datetime] NULL ,
	[PreLandArea] [decimal](18, 3) NULL ,
	[PreLandCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreModifyMemo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreOldModifyMemo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreMainOwner] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PrePoolMemo] [bigint] NULL ,
	[PoolMemo] [bigint] NULL ,
	[PreHouseCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseCardNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PrePoolCardNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PoolCardNO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PreCompactNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompactNO] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseMoney] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[MoneyTypeID] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ShouldMoney] [decimal](18, 3) NULL ,
	[FactMoney] [decimal](18, 3) NULL ,
	[ChargeDetails] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Memo] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HouseMortagage] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[mortDebter] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[mortPerson] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[maxWarrant] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[warrantScope] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[debtExecuteTimeS] [datetime] NULL ,
	[debtExecuteTimeO] [datetime] NULL ,
	[otherCardNo] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[maxDebtMakeSure] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[motorPerson] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[keycode] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProjectMortagage] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BizID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[proDuty] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[proMotorPerson] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[proWarrant] [float] NULL ,
	[proWarrantsScope] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[proTimeLimiteS] [datetime] NULL ,
	[proTimeLimiteO] [datetime] NULL ,
	[proMotorNo] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[keycode] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Record] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Frame] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Cab] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Volume] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RecordandBiz] (
	[Record] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Business] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

