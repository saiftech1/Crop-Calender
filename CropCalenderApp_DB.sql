USE [CropCalenderApp_DB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaBbsId] [nvarchar](150) NULL,
	[AreaName] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.Area] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Crop]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crop](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CropName] [nvarchar](250) NULL,
	[CropVarieties] [nvarchar](250) NULL,
	[CultivationDateRange] [int] NULL,
	[HarvestDuration] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Crop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CropAdvices]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CropAdvices](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AdviceId] [int] NULL,
	[CropName] [nvarchar](250) NULL,
	[CropVarieties] [nvarchar](250) NULL,
	[HarvestDuration] [int] NULL,
	[CultivationDateRange] [nvarchar](500) NULL,
	[SeasonId] [int] NULL,
	[LandTypeId] [int] NULL,
 CONSTRAINT [PK_dbo.CropAdvices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CropVarieties]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CropVarieties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CropId] [bigint] NULL,
	[CropVarietiesName] [nvarchar](100) NULL,
	[CropVarietiesDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.CropVarieties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistBbsId] [nvarchar](50) NOT NULL,
	[DistrictName] [nvarchar](150) NULL,
	[AreaBbsId] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[DistBbsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandType]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LandTypeName] [nvarchar](100) NULL,
	[LandTypeDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.LandType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NULL,
	[SeasonDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Season] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDistrict]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDistrict](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubDistBbsId] [nvarchar](50) NULL,
	[SubDistrictName] [nvarchar](150) NULL,
	[DistBbsId] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SubDistrict] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDistrictAdvice]    Script Date: 9/25/2018 9:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDistrictAdvice](
	[SubDistrictID] [int] NOT NULL,
	[AdviceID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SubDistrictAdvice] PRIMARY KEY CLUSTERED 
(
	[SubDistrictID] ASC,
	[AdviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201809251526487_Initial_Create', N'CropCalender.Models.DatabaseContext.CropCalenderDbContext', 0x1F8B0800000000000400ED5DDB6EDC36107D2FD07F10F458A42BDB698BD6D84DE0D8716B348E03AF13F4CDE04AF45AA8446D45CAF0A2E897F5A19FD45F2875A144F122515A692F4691975822CF9073E10C4733F6BF7FFF337DFB1C06D6138CB11FA1997D3C39B22D88DCC8F3D1726627E4E1DB1FEDB76FBEFE6AFADE0B9FAD2F6CDCEB741C9D89F0CC7E246475EA38D87D8421C093D077E308470F64E246A103BCC839393AFAC9393E762085B02996654D6F1344FC10663FD01FCF23E4C2154940701D7930C0C573FA669EA15A1F4108F10AB870669FC7D1EA1C041079309EE4C32717808005C090E210F84C6CEB2CF0015DDA1C060FB605108A082074E1A79F319C933842CBF98A3E00C1DD7A05E9B8071060586CE8B41A6EBAB7A393746F4E359141B9092651D811F0F875C12C479CDE8BE576C94CCACEF794ED649DEE3A63E9CC3E8B21B02D91D0E97910A783D4DCCE418A1F5280579662D8AB525BA852A5FFE8A82420490C6708262406C12BEB53B2087CF757B8BE8B7E8768869220E0974B174CDFD51ED0479F282D1893F52D7C283671E5D996539FE78813CB69DC9C7C8B5788BC3EB1AD8F94385804B0D4068E1D7312C5F06788600C08F43E0142608C520C98B142A22ED04A79F46E812B925407A97DD9D63578FE00D1923C52CBFB9E5AD4A5FF0C3DF6A458C667E45373A493489C40134AE9FF062634752AC56954A7540FCEBC27DF851B29550573F0AAF5C377E3AA56C62549999B27A52C6DD1929341D43125F405C43E243EC4A353FB05C44F10938B242E4ECB2E2CA1FAE33F65F3A83381B7002D9BD8F3FDD1100B9E438023D451781F00F2D2E16DD33E82277F996D4803605BB730C806E0477F953BCB097B795F992015DC651C85B751C04DE6DFDFDF817809A9D7BD8B1A06CDA3247665966897993347B9C80AF69E8DAA5628BD2C29B3E5C923D8067A9D79153F3738F118C8C19F7723BB52C6A7362737887D32621710BBC31F065ACDAF99DE50362A1A41A321F7B203668A1B58410EF1BF0D98B88D160B18C4A3E6944650FF4E01E5C6A1E4C12BD4C841E40B8D079B623AA3504B1350EEC20672AEAD37368502E7E02D62E42336E58E64811D747B2BE1498DE20E62146D6C5E28D97D3EA81E9AF3EF9491796DC04601C9858F29235CB291D13090FDB318E5B074B945AA699FED8B5BE6A6118CB4CA76CAA93C47C8926D2FF1671E93270BB6E101D27212DAAE8D825BD0D585917D14F9326970BB7908B436B5948F116A579F72B1C353EBA3424329CFAED566DF4FC78255031D9046B4B676248EB4319D3A9F611CB97E261521A953CB9ED497FC1E7996492A255F3F9F92A1DB482F1D2BAAA5743133FB6832399638D2025F66532B78FEB34A9DC037123A557318A77A0682731A9951C3F111916DC247AEBF0281C13E85B9E6D189535211DF5CC0556AFA8818F0C1843C9F1397975152134CBE8D535387D39E66A59233D23A9137A4A7FBC9BB095AA14A2C4B67A0A7BD3449BB882DA89196B726B4AB8F313BD3A0DABDA949CAEA4B545D7FCA8C413705525EBF04E871B547B5822D298F8AAF26A459BA600B9A93BBB9B4D085CE8031B700164F5D2CCA3218295CFB8C6111B1E1C28B8ABA90A2CF21E12E30D8B62ADF5A68415E362229527D72EDF38404C19F712D40EC7857C1549EB70524B76F15043B120DB6A3DB88D1642EF3A904292DB6058BC56B2A9C2A546F63877897537246BE3E9AC3B6004A509CC2CBA2AF7FEBE286367D1313ADD130AE2BF754D33CC9B60DC3380EADB607F10252DFBE016B145FC165BEB4042686A189D91E0C83110EACB4C94198514F3BAA79A177B1664E56E00467D22DBC50FA5501AD0B23D885A7F404E5BBA993174D160FA68EA6BA727A0D562B7AF5E2AA2D8B27D6BC28B5FC76DEBDE430CC311C172B2A0FCBD59694E84D192CA1F09692A62BBDF4634C5869A76D9D7BA13C4CE9F7344714A3C9BB365968ECC462A359B58151E569EE18E590A100BBA47B0DD390234B1070D2574FB3D2FA57108058918B388F822444FAC8473F9B4B4AF220DCE36E5879DA4084CA9FCA485347E08514324922104C4294A791B49BDDC26632E72299EE926F9A3C92FCCB92C19ACCCAA7E648D577631EA97ADA0D893B4B45B88663568F297DBDE551A5971DD6AAFCAC5C5BB272843985EA2ACAA3EA2FA87A243E31C26335254C7666A355B035B485969784EEF6A99F3A8E75D60BDC5432EB6A5BF52A361562FE666FF4804585436B813A0036D001DDC47134802FEF92EDBFABF4F9122E196DCF249F07C163F8E79E9E795B32DF6F4F3ABEC7DBD457EF505F2B8E8EA1B72C27D44F7DB5B3C7D3621141971A6D46110AA9B45ABC9175C887A2E2F5DEE85A95561B5ACFCA8C5C7725D34F1D47C3B8AFC73C88B6EAA90DABFAEC2DC2556FC6BD59EF2AC692D3BF83875B52F2B847E4D58EA10D7CEAF53AB5D8A7B96CA841C065418EE2EAAC44DABD784715EC6622DD5A445DABA7516842E7B343AA9AD1A857D713A4CFF936AA8A496966714849BD4C370B69E56991E235E8EC1773BEF910DBA24C7AF2BD34DF3B5F6302C34C2327F33F82F3C0A7FBAD065C03E43FD050312F0FB34F8E8E4F84DF05B03F7DF90EC65EA0489173A5777256781BF56D7ECAD1D60AB68E65B752252C7A02B1FB0862B9C4AC42EED3F1DE0FB74F83FBD605B3F097E3C846E821CF88749382D841A494C24977E92A1B868602D7B4F7F4D97E43A79172B5593B46371A62B378B64CA9C0E38A3AEEE799FD6736E9D4BAFAED9ECD7B65DDC4F4883CB58EACBFBAD2967BCE4DA95733CDE977EFBC7E1967A4AAB7597D9C75D71E552B733FCDECDA0FFC326423F7DC6AB8D7CFACB728164571E101FBAE83743C4DEEA287F7D1F8B12DE89132BF78B0365E6FFA641A6BE0E4F2899B38586DF3E850E7BFB65774642D515FF5F7AFE5711485927A5D0C7C46EF26C6212F5403DCD4366851ECA12A3B6F04148EED2EF7AE0E18BD9AF65EC6E1ACEA891B2A0453B7C00D6550C32C7BE406B721BAD9F88AFE5D34AF6DB7C5E8A535A6B11AF27EBD62BBD7026D75CFAE75E0901ACBFAB57A292BDDFB37A4F5EE1CDB729BD881B4864995F4A2F0E4962F6DC757FE4566667B8B88CA37F7551D7BC15A5AC154149AFA66444295EF92C854AF54443A369235F491A9D03BF498695BCC74ACE9D07CB66E6B3DD3D1D0D68D69BBD31A9BD35464FAB7AE9975AE29C5B249835B5B7F5B0BC1BD68805376BB19367669FAC2F6B1B5AD6EB37C51EF3E6C75E0C63569B1A6CD699AF636B9237590B634B92E80FA3EEEEF0250D78BFD650591FE950004DD9AD72BC75CA18788395F61456C88702DBB860478D4259EC5C47F002EA1AFA9C9E0EC77917C01414287BC0F17D0BB4237095925846E19868BA0C68CD48937D1CF7AEFEA6B9EDEACB2DF9836C416E8327DBA057883DE257EE095EBBE54640E3410697450DCD2535992F4B6BE5C97488ADF1BA4012AD857063577305C05140CDFA03978827DD6F619C30F7009DC352BEFD083B40BA2CEF6E9850F963108718151CDA73F521DF6C2E737FF0123AAA1881E630000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201809251533475_InitialCreate', N'CropCalender.Models.DatabaseContext.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1ADD099CB69D35767CC1B427C8DB802DB1DBC2489422528E8D45BE2C0FF9A4FCC216254A2DF1A24BB7FAE22040302D154F158B8764B154F49FBFFF31FEFE250CAC679C503F2213FB64746C5B98B891E793E5C44ED9E2DB0FF6F7DFFDFD6FE32B2F7CB17E2AE4CEB81CB42474623F31169F3B0E759F7088E828F4DD24A2D1828DDC2874901739A7C7C7FF764E4E1C0C10366059D6F8534A981FE2EC07FC9C46C4C5314B51701B7938A0E239BC9965A8D61D0A318D918B27F63489E2290A30F17032CAC5479788A139A21870187E61B67511F8084C9BE160615B8890882106869F7FA678C692882C67313C40C1E36B8C416E81028A4587CE57E25DFB767CCAFBE6AC1A16506E4A5914F6043C3913CE72E4E66BB9DC2E9D09EEBC02B7B357DEEBCCA513FBC6C3D9A34F51000E90159E4F83840B4FECDB52C5058DEF301B150D4739E4750270BF46C9D75115F1C8EADCEEA824D7E9E898FF77644DD380A5099E109CB2040547D6433A0F7CF7BFF8F531FA8AC9E4EC64BE38FBF0EE3DF2CEDEFF0B9FBDABF614FA0A72B507F0E801B88313B00D2FCAFEDB96536FE7C80DCB669536B957804B304F6CEB16BD7CC464C99E60069D7EB0AD6BFF057BC51341AECFC48769058D5892C2CFBB3408D03CC0E57BA75127FF7F83D6D377EF07D17A879EFD6536F4927E983809B5AD4F38C8DED2273FCEA7576DBCBF08B1EB240AF9EF3ABFF2B75F66519AB8BC339151E411254BCCEAD68D9D15793B519A430D4FEB02F5F0A9CD2D55E9AD15E51D5A6726142A763D1B0A7BB7ABB733E32EE218062FA316F74813E174BB578E277E48584015B5C58A50275D0945A0A37FE5F5F12A447E30C002D9410B04190B3F0971D9CB1F22A02322BD6D7E4094C2FAE0FD07D1A706D3E19F03983EC36E9A00CD660C85F1D6B53D3C4504DFA5E19CCF86DDE91A6C681E7F8DAE91CBA2E48AF0561BE37D8CDCAF51CAAE8807A12AFECCDC0290FF7CF4C3EE00839873E1BA98D26B2033F6A611C4E205E00D6167A7BDE1F842B5EF00651A203FD44728D292FAA5105D45297A0925523188E9A29526533F464B9F7433B510359B9A4BB49A2AC4FA9ACAC1BA592A24CD866602AD76E65283C57FD9080D1F0066B0871F016EB6799BD6828A1B67B042E21F31C1092C63DE03620C276435025DD68D7D040BD9F071A55BDF9B324D3FA1201D5AD55AB3215B04869F0D19ECE1CF86CC4C78FCEC7B3C2AE9702C2A8401BE93BCFEC4D53EE724CB763D1D6ADDDCB5F2DDAC01A6E9724169E4FAD92CD024C4443AA36E3FC470567B6E23EF8D9C1F818E01D17DBEE5C113E89B2D93EA9E5CE200336C5DB879C2708AA88B3CD58DD021AF8761C58EAA316C9527A91BF74F4527301D27BC11E287200A33D5274C9D163E71FD1805AD5E925A76DCC278DF4B1DF29B4B1CF3833261AD9EE8A25C9F16E106947AA44169F3D0D8A930AE998886A8D534E66D21EC6ADC956CC54E38D9123B1B7829E2B7AD10B3D9633B2067B34BBA18604CF1ED83A0E2ACD29500F2C1E5D0082A9D980C041521D54E085AF7D81E085A77C99B23687E44ED3AFED279F5D0E8593F28EF7E5B6F74D71EB859F3C78151338F3DF9C769688113959E97F3F2CBB57238033BC5F98C8A5057A608079F61564FD9ACE25D6D1CEA3483C8246A025C11AD05547C1C54809409D5C3B82297D7689D88227AC01679B74658B1F64BB0150EA8D8D58FA41541F3A754999C9D4E1F65CF4A362824EF7458A8E06808212F5EF58E77708A292FAB3AA64B2CDC271AAE744C0C4683835A225783938ACE0CEEA5829AED5ED205647D42B28DBC24854F062F159D19DC4B82A3ED4ED204053DC2828D5C54DFC2079A6C45A6A3DC6DCA7763272FA6120FC68EA1EA6A7C8BE2D827CB4A15967862CD4409D6B7B3FEA548618EE1B8545391545A5B6A62518296587A0BAAC1D26B3FA1AC28F9B2ADA9172A62DABDD5B0FC172AABDBA73A88C53E5048F37F8B1C6F7B415A7DF355A313017A0D5D0E798893E5D53584D037B778991C0A50A249E54FA3200D8939E232B7CE3FE855DBE74F5484B123D9AF44548AFB94B8B73E169D464A9D25DB1AB532C2597FE4CC1026FF17F16975044C31AB19A5486155514C69ADBD8DA429D4D96CF4E4B0B2FFE0B5226C67E6895A962A8078D413A3520EA18055DE7547AD57AC5431EB6FBA234A65295548E9550F2BABC5273523AB2FD6C23378542FD15D835A6E524557DF7647D6149E54A135AFD7C0D6D82CBFEB8EAAA94DA9026B5E77C75E15AAC8ABEA01EF6DC6C3CE709B5B7E40DE6C7733606C67891C6673ACD40154812A8F7B62892FFD0A98787E90F4329E1287A3579E28D98C5E060CF3DA54FBA45E5F9A1AEB00CC98B5EFE4B5E5BFA94EC08CD78FC45BA58A726A94454AEDE5E9513A258EC589ADC3051EF908978BD856E146D8FA5F29C361C6A9D1EC97601AF8982FF485C02D22FE025396D786D8A7C727A7D2959FC3B97EE350EA059A13AFE90E4E7DCC7650E6459E51E23EA1442DBAD8E08ACA0A54C967DFC0AAF132B1FF97B53ACF5223FC5FD9E323EB867E26FE2F29BC784C526CFDA616910E53B2DF7C2E3BD00B16DDBD7AF3F397BCE991759FC08C39B78E255FAE33C2F56B17BDACC99B6E60CDDA9731DEEE84AADD69D0A24A1362FD2B0C739F0D727DA1B0F29B10BDFCA3AF69DA2B0A1B216AAE210C8537880B4DD70CD6C1325E31F0E027CBAE18F4EBACFECAC13AA619AF1BF8A43F987CD9A0FB3254B4DCE356A33924ED6249CAFCDC5AACBD51E5E6BEF726A5A67BA389AED66DF780DBA0367B0D66BCB1B2E6C176474DD5F260D8FBA4F6D64B950FA53A795537B2DFA2E45DD621377C49FA4B951F1F40C19CA60068FF45C6BBE69A29B17BE0959AFD4A890F8C6CA22C6CFF05C3BB269B29CD7BE064EB55167C605CDBD7FEB967A675DE42F75EE4ABD62B193ED0E872C16D45BC79E21C4EF8F30848904794F9DD4B7DD55853C56B8BC2958859A9B95C4D56AC4C1C45AF22D1ACB65F5FC586DFD85921D3ACD650E4D9A45BACFF8DBA854CB36E43E9E43ECA8FB5C58BBA92F09675ACA96EEA2D951BD77AD252DDDE16B3367E6D7F4BD5C58338A5367B0CDF88DF4E31F1202E1972EAF4281E563FF7C2DE59F9AB8EB07F537FB982E07FE39160B7B66B9632376411159BB76451212265686E31431E6CA91709F317C865F09AE798B3CBE359DE8E7FE99863EF86DCA72C4E19741987F3A096F0E2414093FEAC42BA6EF3F83ECEFE0ECA105D00337D9E9BBF273FA47EE095765F6B724206081E5D888C2E1F4BC633BBCBD712E92E221D8184FBCAA0E81187710060F49ECCD0335EC736A0DF47BC44EEEB2A036802691F88BADBC7973E5A2628A40263D51E7E0287BDF0E5BBFF0376438B59DC540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (1, N'reg_kln', N'খুলনা')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (2, N'reg_rjs', N'রাজশাহী')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (3, N'reg_dhk', N'ঢাকা')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (4, N'reg_brs', N'বরিশাল')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (5, N'reg_rng', N'রংপুর')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (6, N'reg_ctg', N'চট্টগ্রাম')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (7, N'reg_slt', N'সিলেট')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (8, N'reg_mnh', N'ময়মনসিংহ')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (9, N'reg_cml', N'কুমিল্লা')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (10, N'reg_rgm', N'রাঙ্গামাটি')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (11, N'reg_frd', N'ফরিদপুর')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (12, N'reg_jsr', N'যশোর')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (13, N'reg_bgr', N'বগুড়া')
INSERT [dbo].[Area] ([Id], [AreaBbsId], [AreaName]) VALUES (14, N'reg_dnj', N'দিনাজপুর')
SET IDENTITY_INSERT [dbo].[Area] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'31fb65ab-492f-4db6-aa3d-c782c7fa2fb4', N'shalauddin99@gmail.com', 0, N'AEbDX6bhywVIoD+p1GkJEdBG2adwlQI4iVlVaIKXBX7+/peaPrpMW/IEesTV/iz+rA==', N'77efb8df-1a37-4986-b1db-a12242cda99a', NULL, 0, 0, NULL, 1, 0, N'shalauddin99@gmail.com')
SET IDENTITY_INSERT [dbo].[Crop] ON 

INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (1, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (2, N'ফসলের নাম 1', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (3, N'ফসলের নাম 1', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (4, N'ফসলের নাম 2', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (5, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (6, N'ফসলের নাম 2', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (7, N'ফসলের নাম 3', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (8, N'ফসলের নাম 3', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (9, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (10, N'ফসলের নাম 4', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (11, N'ফসলের নাম 4', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (12, N'ফসলের নাম 4', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (13, N'ফসলের নাম 5', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (14, N'ফসলের নাম 5', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক')
INSERT [dbo].[Crop] ([Id], [CropName], [CropVarieties], [CultivationDateRange], [HarvestDuration]) VALUES (15, N'ফসলের নাম 5', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ')
SET IDENTITY_INSERT [dbo].[Crop] OFF
SET IDENTITY_INSERT [dbo].[CropAdvices] ON 

INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (1, 101, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1, 1)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (2, 101, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2, 1)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (3, 101, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3, 1)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (4, 102, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1, 2)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (5, 102, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2, 2)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (6, 102, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3, 2)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (7, 103, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1, 3)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (8, 103, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2, 3)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (9, 103, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3, 3)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (10, 104, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1, 4)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (11, 104, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2, 4)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (12, 104, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3, 4)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (13, 104, N'ফসলের নাম 4', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 4, 4)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (14, 105, N'ফসলের নাম 1', N'ফসলের জাত 1', 90, N'০১ বৈশাখ - ২৩ শ্রাবন', 1, 3)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (15, 105, N'ফসলের নাম 2', N'ফসলের জাত 2', 120, N'২৩ শ্রাবন - ২৫ কার্তিক', 2, 3)
INSERT [dbo].[CropAdvices] ([Id], [AdviceId], [CropName], [CropVarieties], [HarvestDuration], [CultivationDateRange], [SeasonId], [LandTypeId]) VALUES (16, 105, N'ফসলের নাম 3', N'ফসলের জাত 3', 150, N'২৫ কার্তিক - ১৫ পৌষ', 3, 3)
SET IDENTITY_INSERT [dbo].[CropAdvices] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (1, N'3068', N'নরসিংদী', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (2, N'5081', N'রাজশাহী', N'reg_rjs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (3, N'5070', N'চাপাইনবাবগঞ্জ', N'reg_rjs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (4, N'5069', N'নাটোর', N'reg_rjs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (5, N'5088', N'সিরাজগঞ্জ', N'reg_bgr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (6, N'5010', N'বগুড়া', N'reg_bgr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (7, N'5064', N'নওগাঁ', N'reg_rjs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (8, N'5038', N'জয়পুরহাট', N'reg_bgr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (9, N'5076', N'পাবনা', N'reg_bgr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (10, N'3026', N'ঢাকা', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (11, N'3029', N'ফরিদপুর', N'reg_frd')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (12, N'3033', N'গাজীপুর', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (13, N'3039', N'জামালপুর', N'reg_mnh')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (14, N'3048', N'কিশোরগঞ্জ', N'reg_mnh')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (15, N'3054', N'মাদারীপুর', N'reg_frd')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (16, N'3056', N'মানিকগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (17, N'3059', N'মুন্সিগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (18, N'3061', N'ময়মনসিংহ', N'reg_mnh')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (19, N'3067', N'নারায়নগঞ্জ', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (20, N'3072', N'নেত্রকোনা', N'reg_mnh')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (21, N'3082', N'রাজবাড়ী', N'reg_frd')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (22, N'3086', N'শরিয়তপুর', N'reg_frd')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (23, N'3089', N'শেরপুর', N'reg_mnh')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (24, N'3093', N'টাঙ্গাইল', N'reg_dhk')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (25, N'3035', N'গোপালগঞ্জ', N'reg_frd')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (26, N'2019', N'কুমিল্লা', N'reg_cml')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (27, N'2013', N'চাঁদপুর', N'reg_cml')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (28, N'2012', N'বি-বাড়িয়া', N'reg_cml')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (29, N'6091', N'সিলেট', N'reg_slt')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (30, N'6058', N'মৌলভীবাজার', N'reg_slt')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (31, N'6036', N'হবিগঞ্জ', N'reg_slt')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (32, N'6090', N'সুনামগঞ্জ', N'reg_slt')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (33, N'2015', N'চট্টগ্রাম', N'reg_ctg')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (34, N'2022', N'কক্সবাজার', N'reg_ctg')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (35, N'2075', N'নোয়াখালী', N'reg_ctg')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (36, N'2030', N'ফেনী', N'reg_ctg')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (37, N'2051', N'লক্ষীপুর', N'reg_ctg')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (38, N'2084', N'রাঙ্গামাটি', N'reg_rgm')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (39, N'2046', N'খাগড়াছড়ি', N'reg_rgm')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (40, N'2003', N'বান্দরবন', N'reg_rgm')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (41, N'5585', N'রংপুর', N'reg_rng')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (42, N'5532', N'গাইবান্ধা', N'reg_rng')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (43, N'5549', N'কুড়িগ্রাম', N'reg_rng')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (44, N'5552', N'লালমনিরহাট', N'reg_rng')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (45, N'5573', N'নীলফামারী', N'reg_rng')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (46, N'5527', N'দিনাজপুর', N'reg_dnj')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (47, N'5594', N'ঠাকুরগাঁও', N'reg_dnj')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (48, N'5577', N'পঞ্চগড়', N'reg_dnj')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (49, N'4041', N'যশোর', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (50, N'4044', N'ঝিনাইদহ', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (51, N'4055', N'মাগুরা', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (52, N'4065', N'নড়াইল', N'reg_kln')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (53, N'4047', N'খুলনা', N'reg_kln')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (54, N'4001', N'বাগেরহাট', N'reg_kln')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (55, N'4087', N'সাতক্ষীরা', N'reg_kln')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (56, N'4050', N'কুষ্টিয়া', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (57, N'4018', N'চুয়াডাঙ্গা', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (58, N'4057', N'মেহেরপুর', N'reg_jsr')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (59, N'1006', N'বরিশাল', N'reg_brs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (60, N'1079', N'পিরোজপুর', N'reg_brs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (61, N'1042', N'ঝালকাঠি', N'reg_brs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (62, N'1078', N'পটুয়াখালি', N'reg_brs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (63, N'1004', N'বরগুনা', N'reg_brs')
INSERT [dbo].[District] ([Id], [DistBbsId], [DistrictName], [AreaBbsId]) VALUES (64, N'1009', N'ভোলা', N'reg_brs')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[LandType] ON 

INSERT [dbo].[LandType] ([Id], [LandTypeName], [LandTypeDesc]) VALUES (1, N'বসতভিটা', NULL)
INSERT [dbo].[LandType] ([Id], [LandTypeName], [LandTypeDesc]) VALUES (2, N'উচু জমি', NULL)
INSERT [dbo].[LandType] ([Id], [LandTypeName], [LandTypeDesc]) VALUES (3, N'মাঝারি উচু', NULL)
INSERT [dbo].[LandType] ([Id], [LandTypeName], [LandTypeDesc]) VALUES (4, N'মাঝারি নিচু', NULL)
INSERT [dbo].[LandType] ([Id], [LandTypeName], [LandTypeDesc]) VALUES (5, N'নিচু জমি', NULL)
SET IDENTITY_INSERT [dbo].[LandType] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([Id], [SeasonName], [SeasonDesc]) VALUES (1, N'প্রথম মৌসুম', N'প্রথম মৌসুম')
INSERT [dbo].[Season] ([Id], [SeasonName], [SeasonDesc]) VALUES (2, N'দ্বিতীয় মৌসুম', N'দ্বিতীয় মৌসুম')
INSERT [dbo].[Season] ([Id], [SeasonName], [SeasonDesc]) VALUES (3, N'তৃতীয় মৌসুম', N'তৃতীয় মৌসুম')
INSERT [dbo].[Season] ([Id], [SeasonName], [SeasonDesc]) VALUES (4, N'চতুর্থ মৌসুম', N'চতুর্থ মৌসুম')
INSERT [dbo].[Season] ([Id], [SeasonName], [SeasonDesc]) VALUES (5, N'পঞ্চম মৌসুম', N'পঞ্চম মৌসুম')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[SubDistrict] ON 

INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (1, N'306860', N'নরসিংদী', N'3068')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (2, N'306863', N'পলাশ', N'3068')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (3, N'306864', N'রায়পুরা', N'3068')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (4, N'306876', N'শিবপুর', N'3068')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (5, N'552743', N'ঘোড়ামারা', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (6, N'508134', N'গোদাগাড়ী', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (7, N'306860', N'নরসিংদী সদর', N'3068')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (8, N'501006', N'আদমদিঘী', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (9, N'501020', N'বগুরা সদর', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (10, N'501027', N'দুনাট', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (11, N'501033', N'দুপচানচিয়া', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (12, N'501040', N'গাবতলী', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (13, N'501054', N'কাহালু', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (14, N'501067', N'নন্দিগ্রাম', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (15, N'501081', N'সারিয়াকান্দি', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (16, N'501085', N'শাহাজাহানপুর', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (17, N'501088', N'শেরপুর', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (18, N'501094', N'শিবগঙ্জ', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (19, N'501095', N'সোনাতলা', N'5010')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (20, N'508110', N'বাঘা', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (21, N'508125', N'চরঘাটা', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (22, N'508131', N'দূ্গাপুর', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (23, N'508153', N'মোহনপুর', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (24, N'508172', N'পাবা', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (25, N'508182', N'পুঠিয়া', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (26, N'508194', N'তানোর', N'5081')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (27, N'506486', N'সাপাহার', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (28, N'506428', N'ধামইরহাট', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (29, N'506475', N'পত্নীতলা', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (30, N'506479', N'পরশা', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (31, N'506450', N'মহাদেবপুর', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (32, N'506406', N'বাদালগাছি', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (33, N'506469', N'নিয়ামতপুর', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (34, N'506447', N'মানদা', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (35, N'506485', N'রানীনগর', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (36, N'506403', N'আতড়াই', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (37, N'506460', N'নওগাঁ সদর', N'5064')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (38, N'305610', N'দৌলতপুর', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (39, N'305622', N'ঘিওর', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (40, N'305628', N'হরিরামপুর', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (41, N'305646', N'মানিকগঞ্জ সদর', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (42, N'305670', N'সাতুরিয়া', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (43, N'305678', N'শিবালয়া', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (44, N'305682', N'সিঙ্গার', N'3056')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (45, N'201940', N'দেবিদ্বার', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (46, N'201909', N'বরুড়া', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (47, N'201915', N'ব্রাহ্মণপাড়া', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (48, N'201927', N'চান্দিনা', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (49, N'201931', N'চৌদ্দগ্রাম', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (50, N'201936', N'দাউদকান্দি', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (51, N'201954', N'হোমনা', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (52, N'201972', N'লাকসাম', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (53, N'201981', N'মুরাদনগর', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (54, N'201987', N'নাঙ্গলকোট', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (55, N'201967', N'কুমিল্লা সদর', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (56, N'201975', N'মেঘনা', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (57, N'201974', N'মনোহরগঞ্জ', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (58, N'201933', N'সদরদক্ষিণ', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (59, N'201994', N'তিতাস', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (60, N'201918', N'বুড়িচং', N'2019')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (61, N'203014', N'ছাগলনাইয়া উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (62, N'203029', N'ফেনী সদর', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (63, N'203094', N'সোনাগাজী উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (64, N'203041', N'ফুলগাজী উপজেলা', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (65, N'203051', N'পরশুরাম', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (66, N'203025', N'দাগনভূঞা', N'2030')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (67, N'201213', N'ব্রাহ্মণবাড়িয়া সদর', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (68, N'201263', N'কসবা', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (69, N'201290', N'নাসিরনগর', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (70, N'201294', N'সরাইল উপজেলা', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (71, N'201233', N'আশুগঞ্জ', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (72, N'201202', N'আখাউড়া', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (73, N'201285', N'নবীনগর', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (74, N'201204', N'বাঞ্ছারামপুর', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (75, N'201207', N'বিজয়নগর', N'2012')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (76, N'208487', N'রাঙ্গামাটি সদর', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (77, N'208436', N'কাপ্তাই', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (78, N'208425', N'কাউখালী', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (79, N'208407', N'বাঘাইছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (80, N'208421', N'বরকল', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (81, N'208458', N'লংগদু', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (82, N'208478', N'রাজস্থলী', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (83, N'208429', N'বিলাইছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (84, N'208447', N'জুরাছড়ি', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (85, N'208475', N'নানিয়ারচর', N'2084')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (86, N'207587', N'নোয়াখালী', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (87, N'207521', N'কোম্পানীগঞ্জ', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (88, N'207507', N'বেগমগঞ্জ', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (89, N'207536', N'হাতিয়া', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (90, N'207585', N'সুবর্ণচর', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (91, N'207547', N'কবিরহাট', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (92, N'207580', N'সেনবাগ', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (93, N'207510', N'চাটখিল', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (94, N'207583', N'সোনাইমুড়ী', N'2075')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (95, N'201347', N'হাইমচর', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (96, N'201358', N'কচুয়া', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (97, N'201395', N'শাহরাস্তি', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (98, N'201322', N'চাঁদপুর সদর', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (99, N'201376', N'মতলব', N'2013')
GO
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (100, N'201349', N'হাজীগঞ্জ', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (101, N'201379', N'মতলব', N'2013')
INSERT [dbo].[SubDistrict] ([Id], [SubDistBbsId], [SubDistrictName], [DistBbsId]) VALUES (102, N'201345', N'ফরিদগঞ্জ', N'2013')
SET IDENTITY_INSERT [dbo].[SubDistrict] OFF
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 101)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 102)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 103)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 104)
INSERT [dbo].[SubDistrictAdvice] ([SubDistrictID], [AdviceID]) VALUES (552743, 105)
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CropAdvices]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CropAdvices_dbo.LandType_LandTypeId] FOREIGN KEY([LandTypeId])
REFERENCES [dbo].[LandType] ([Id])
GO
ALTER TABLE [dbo].[CropAdvices] CHECK CONSTRAINT [FK_dbo.CropAdvices_dbo.LandType_LandTypeId]
GO
ALTER TABLE [dbo].[CropAdvices]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CropAdvices_dbo.Season_SeasonId] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([Id])
GO
ALTER TABLE [dbo].[CropAdvices] CHECK CONSTRAINT [FK_dbo.CropAdvices_dbo.Season_SeasonId]
GO
ALTER TABLE [dbo].[CropVarieties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CropVarieties_dbo.Crop_CropId] FOREIGN KEY([CropId])
REFERENCES [dbo].[Crop] ([Id])
GO
ALTER TABLE [dbo].[CropVarieties] CHECK CONSTRAINT [FK_dbo.CropVarieties_dbo.Crop_CropId]
GO
