USE [OpenAuthDB]
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(max)]    Script Date: 12/16/2015 22:51:22 ******/
CREATE TYPE [dbo].[varchar(max)] FROM [varchar](max) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(50)]    Script Date: 12/16/2015 22:51:22 ******/
CREATE TYPE [dbo].[varchar(50)] FROM [varchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(200)]    Script Date: 12/16/2015 22:51:22 ******/
CREATE TYPE [dbo].[varchar(200)] FROM [varchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[decimal (16,2)]    Script Date: 12/16/2015 22:51:22 ******/
CREATE TYPE [dbo].[decimal (16,2)] FROM [decimal](16, 2) NULL
GO
/****** Object:  Table [dbo].[UserExt]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserExt](
	[Id] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Phone_] [varchar](255) NOT NULL,
	[Mobile] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Zip] [varchar](255) NOT NULL,
	[Birthday] [varchar](255) NOT NULL,
	[IdCard] [varchar](255) NOT NULL,
	[QQ] [varchar](255) NOT NULL,
	[DynamicField] [varchar](4000) NOT NULL,
	[ByteArrayId] [int] NOT NULL,
	[Remark] [varchar](4000) NOT NULL,
	[Field1] [varchar](255) NOT NULL,
	[Field2] [varchar](255) NOT NULL,
	[Field3] [varchar](255) NOT NULL,
 CONSTRAINT [PK_USEREXT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Phone_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'IdCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态扩展字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'DynamicField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像流文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'ByteArrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户扩展信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt'
GO
/****** Object:  Table [dbo].[UserCfg]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserCfg](
	[Id] [int] NOT NULL,
	[Theme] [varchar](255) NOT NULL,
	[Skin] [varchar](255) NOT NULL,
	[NavBarStyle] [varchar](255) NOT NULL,
	[TabFocusColor] [varchar](255) NOT NULL,
	[NavTabIndex] [int] NOT NULL,
 CONSTRAINT [PK_USERCFG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户界面主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Theme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户界面皮肤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Skin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航条按钮风格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'NavBarStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tab高亮颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'TabFocusColor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航缺省活动页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'NavTabIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg'
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Sex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [varchar](64) NOT NULL,
	[OrgId] [int] NOT NULL,
	[OrgCascadeId] [varchar](255) NOT NULL,
	[OrgName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgCascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId], [OrgId], [OrgCascadeId], [OrgName]) VALUES (1, N'管理员', 0, 0, CAST(0x0000A5650171F3DC AS DateTime), N'', 1, N'0.1', N'集团总部')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Resource]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Resource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Key] [varchar](200) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource'
GO
/****** Object:  Table [dbo].[Relevance]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Relevance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstId] [int] NOT NULL,
	[SecondId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[OperateTime] [datetime] NOT NULL,
	[OperatorId] [int] NOT NULL,
 CONSTRAINT [PK_RELEVANCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'FirstId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'SecondId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'多对多关系集中映射' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance'
GO
SET IDENTITY_INSERT [dbo].[Relevance] ON
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (28, 2, 0, N'', N'RoleModule', 0, CAST(0x0000A5650188DE18 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (29, 2, 2, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (30, 2, 1, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (31, 2, 3, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (41, 1, 2, N'', N'RoleModule', 0, CAST(0x0000A56701686F8C AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (42, 1, 5, N'', N'RoleModule', 0, CAST(0x0000A56701686F8C AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (48, 1, 19, N'', N'RoleElement', 0, CAST(0x0000A568000586B7 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (49, 1, 20, N'', N'RoleElement', 0, CAST(0x0000A568000586B7 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (50, 21, 10, N'', N'UserElement', 0, CAST(0x0000A5680005BED0 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (51, 21, 11, N'', N'UserElement', 0, CAST(0x0000A5680005BED0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Relevance] OFF
/****** Object:  Table [dbo].[Param]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Param](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PARAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键值参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param'
GO
/****** Object:  Table [dbo].[Org]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Org](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CustomCode] [varchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
 CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务对照码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'BizCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义扩展码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CustomCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org'
GO
SET IDENTITY_INSERT [dbo].[Org] ON
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (1, N'0.1', N'集团总部', N'', 0, N'根节点', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A56501683E57 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Org] OFF
/****** Object:  Table [dbo].[ModuleElement]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleElement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DomId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[Attr] [varchar](500) NOT NULL,
	[Script] [varchar](500) NOT NULL,
	[Icon] [varchar](255) NOT NULL,
	[Class] [varchar](255) NOT NULL,
	[Remark] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_MODULEELEMENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOM ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'DomId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素附加属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Attr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素调用脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Script'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块元素表(需要权限控制的按钮)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement'
GO
SET IDENTITY_INSERT [dbo].[ModuleElement] ON
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (2, N'btnAdd', N'添加', N'a', 3, N'href=''/UserManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (3, N'btnEdit', N'编辑', N'button', 3, N'', N'editUser()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (4, N'btnAccessModule', N'为用户分配模块', N'button', 3, N'', N'openUserModuleAccess(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (5, N'btnAccessRole', N'为用户分配角色', N'button', 3, N'', N'openUserRoleAccess(this)', N'pencil', N'btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (6, N'btnRefresh', N'刷新', N'button', 3, N'', N'refreshUserGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (7, N'btnDel', N'删除', N'button', 3, N'', N'delUser()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (10, N'btnRefresh', N'刷新', N'button', 4, N'', N'refreshOrgGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (11, N'btnAdd', N'添加', N'a', 4, N'href=''/OrgManager/AddOrg/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (12, N'btnDel', N'删除', N'button', 4, N'', N'delOrg()', N'del', N'btn-red', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (19, N'btnAdd', N'添加', N'a', 5, N'href=''/RoleManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (20, N'btnEdit', N'编辑', N'button', 5, N'', N'editRole()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (21, N'btnAccessModule', N'为角色分配模块', N'button', 5, N'', N'assignRoleModule(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (23, N'btnRefresh', N'刷新', N'button', 5, N'', N'refreshRoleGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (24, N'btnDel', N'删除', N'button', 5, N'', N'delRole()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (25, N'btnAdd', N'添加', N'a', 1, N'href=''/ModuleManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (26, N'btnEdit', N'编辑', N'button', 1, N'', N'editModule()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (27, N'btnAssign', N'为模块分配按钮', N'button', 1, N'', N'assignButton()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (28, N'btnRefresh', N'刷新', N'button', 1, N'', N'refreshModuleGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (29, N'btnDel', N'删除', N'button', 1, N'', N'delModule()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (30, N'btnAssignElement', N'为用户分配菜单', N'button', 3, N'', N'openAssignUserElement(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (31, N'btnAssignElement', N'为角色分配菜单', N'button', 5, N'', N'assignRoleElement(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (32, N'btnAdd', N'添加', N'a', 8, N'href=''/CategoryManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'', N'plus', N'btn btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (33, N'btnDel', N'删除', N'button', 8, N' ', N'delCategory()', N'pencil', N'btn-red', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (34, N'btnEdit', N'编辑', N'button', 8, N' ', N'editCategory()', N'pencil', N'btn-green', N'', 0)
SET IDENTITY_INSERT [dbo].[ModuleElement] OFF
/****** Object:  Table [dbo].[Module]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[Vector] [varchar](255) NOT NULL,
	[SortNo] [int] NOT NULL,
 CONSTRAINT [PK_aos_sys_module] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页面URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矢量图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Vector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module'
GO
SET IDENTITY_INSERT [dbo].[Module] ON
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (1, N'0.1.1', N'模块管理', N'ModuleManager/Index', N' ', 2, 1, 0, N' ', 1, N' ', N' ', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (2, N'0.1', N'基础配置', N' ', N' ', 0, 1, 0, N' ', 1, N' ', N' ', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (4, N'0.1.3', N'部门管理', N'OrgManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (5, N'0.1.4', N'角色管理', N'RoleManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (6, N'0.2', N'应用功能', N'/', N'', 0, 0, 0, N'', 0, N'根节点', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (7, N'0.2.1', N'报表管理', N'/', N'', 6, 0, 0, N'', 0, N'应用功能', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (8, N'0.1.5', N'分类管理', N'CategoryManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
SET IDENTITY_INSERT [dbo].[Module] OFF
/****** Object:  Table [dbo].[DicIndex]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DicIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[SortNo] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DICINDEX] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex'
GO
/****** Object:  Table [dbo].[DicDetail]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DicDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Text] [nvarchar](100) NOT NULL,
	[DicId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DICDETAIL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail'
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/16/2015 22:51:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[RootKey] [varchar](100) NOT NULL,
	[RootName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [ParentId], [Status], [SortNo], [RootKey], [RootName]) VALUES (2, N'0.1', N'配置分类', 0, 0, 0, N'', N'')
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [ParentId], [Status], [SortNo], [RootKey], [RootName]) VALUES (3, N'0.1.1', N'系统配置', 2, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Default [DF__UserExt__Email__38E44ECF]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Email]
GO
/****** Object:  Default [DF__UserExt__Phone___39D87308]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Phone_]
GO
/****** Object:  Default [DF__UserExt__Mobile__3ACC9741]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Mobile]
GO
/****** Object:  Default [DF__UserExt__Address__3BC0BB7A]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Address]
GO
/****** Object:  Default [DF__UserExt__Zip__3CB4DFB3]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Zip]
GO
/****** Object:  Default [DF__UserExt__Birthda__3DA903EC]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Birthday]
GO
/****** Object:  Default [DF__UserExt__IdCard__3E9D2825]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [IdCard]
GO
/****** Object:  Default [DF__UserExt__QQ__3F914C5E]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [QQ]
GO
/****** Object:  Default [DF__UserExt__Dynamic__40857097]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [DynamicField]
GO
/****** Object:  Default [DF__UserExt__ByteArr__417994D0]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT ((0)) FOR [ByteArrayId]
GO
/****** Object:  Default [DF__UserExt__Remark__426DB909]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Remark]
GO
/****** Object:  Default [DF__UserExt__Field1__4361DD42]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field1]
GO
/****** Object:  Default [DF__UserExt__Field2__4456017B]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field2]
GO
/****** Object:  Default [DF__UserExt__Field3__454A25B4]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field3]
GO
/****** Object:  Default [DF__UserCfg__Id__31432D07]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT ((0)) FOR [Id]
GO
/****** Object:  Default [DF__UserCfg__Theme__32375140]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [Theme]
GO
/****** Object:  Default [DF__UserCfg__Skin__332B7579]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [Skin]
GO
/****** Object:  Default [DF__UserCfg__NavBarS__341F99B2]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [NavBarStyle]
GO
/****** Object:  Default [DF__UserCfg__TabFocu__3513BDEB]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [TabFocusColor]
GO
/****** Object:  Default [DF__UserCfg__NavTabI__3607E224]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT ((0)) FOR [NavTabIndex]
GO
/****** Object:  Default [DF__User__Account__26C59E94]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Account]
GO
/****** Object:  Default [DF__User__Password__27B9C2CD]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Password]
GO
/****** Object:  Default [DF__User__Name__28ADE706]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__User__Sex__29A20B3F]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Sex]
GO
/****** Object:  Default [DF__User__Status__2A962F78]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__User__Type__2B8A53B1]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__User__BizCode__2C7E77EA]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__User__CreateTime__2D729C23]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__User__CreateId__2E66C05C]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [CreateId]
GO
/****** Object:  Default [DF__Role__Name__1D3C345A]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Role__Status__1E305893]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Role__Type__1F247CCC]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__Role__CreateTime__2018A105]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Role__CreateId__210CC53E]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [CreateId]
GO
/****** Object:  Default [DF__Role__OrgId__2200E977]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [OrgId]
GO
/****** Object:  Default [DF__Role__OrgCascade__22F50DB0]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [OrgCascadeId]
GO
/****** Object:  Default [DF__Role__OrgName__23E931E9]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [OrgName]
GO
/****** Object:  Default [DF__Resource__Cascad__7128A7F2]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Resource__Key__721CCC2B]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Resource__Name__7310F064]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Resource__Parent__7405149D]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__Resource__Status__74F938D6]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Resource__SortNo__75ED5D0F]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Resource__Catego__76E18148]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
/****** Object:  Default [DF__Resource__Descri__77D5A581]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Relevance__First__14A6EE59]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [FirstId]
GO
/****** Object:  Default [DF__Relevance__Secon__159B1292]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [SecondId]
GO
/****** Object:  Default [DF__Relevance__Descr__168F36CB]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Relevance__Key__17835B04]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Relevance__Statu__18777F3D]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Relevance__Opera__196BA376]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (getdate()) FOR [OperateTime]
GO
/****** Object:  Default [DF__Relevance__Opera__1A5FC7AF]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [OperatorId]
GO
/****** Object:  Default [DF__Param__Value__6987862A]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Value]
GO
/****** Object:  Default [DF__Param__Key__6A7BAA63]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Param__CategoryI__6B6FCE9C]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
/****** Object:  Default [DF__Param__SortNo__6C63F2D5]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Param__Status__6D58170E]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Param__Descripti__6E4C3B47]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Org__CascadeId__04708690]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Org__Name__0564AAC9]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Org__HotKey__0658CF02]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Org__ParentId__074CF33B]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__Org__ParentName__08411774]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Org__IsLeaf__09353BAD]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Org__IsAutoExpan__0A295FE6]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Org__IconName__0B1D841F]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Org__Status__0C11A858]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Org__Type__0D05CC91]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__Org__BizCode__0DF9F0CA]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__Org__CustomCode__0EEE1503]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CustomCode]
GO
/****** Object:  Default [DF__Org__CreateTime__0FE2393C]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Org__CreateId__10D65D75]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [CreateId]
GO
/****** Object:  Default [DF__Org__SortNo__11CA81AE]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__ModuleEle__DomId__79F2F81D]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__DomId__79F2F81D]  DEFAULT (' ') FOR [DomId]
GO
/****** Object:  Default [DF__ModuleElem__Name__7AE71C56]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Name__7AE71C56]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__ModuleEle__Modul__7CCF64C8]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Modul__7CCF64C8]  DEFAULT ((0)) FOR [ModuleId]
GO
/****** Object:  Default [DF__ModuleElem__Attr__7DC38901]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Attr__7DC38901]  DEFAULT (' ') FOR [Attr]
GO
/****** Object:  Default [DF__ModuleEle__Scrip__7EB7AD3A]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Scrip__7EB7AD3A]  DEFAULT (' ') FOR [Script]
GO
/****** Object:  Default [DF__ModuleElem__Icon__7FABD173]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Icon__7FABD173]  DEFAULT (' ') FOR [Icon]
GO
/****** Object:  Default [DF__ModuleEle__Class__009FF5AC]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Class__009FF5AC]  DEFAULT (' ') FOR [Class]
GO
/****** Object:  Default [DF__ModuleEle__Remar__019419E5]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Remar__019419E5]  DEFAULT (' ') FOR [Remark]
GO
/****** Object:  Default [DF_ModuleElement_Sort]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF_ModuleElement_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF__Module__CascadeI__6C98FCFF]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Module__Name__6D8D2138]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Module__Url__6E814571]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Url]
GO
/****** Object:  Default [DF__Module__HotKey__6F7569AA]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Module__ParentId__70698DE3]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__Module__IsLeaf__715DB21C]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Module__IsAutoEx__7251D655]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Module__IconName__7345FA8E]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Module__Status__743A1EC7]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Module__ParentNa__752E4300]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Module__Vector__76226739]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Vector]
GO
/****** Object:  Default [DF__Module__SortNo__77168B72]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__DicIndex__Name__62DA889B]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__DicIndex__Key__63CEACD4]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__DicIndex__SortNo__64C2D10D]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__DicIndex__Catego__65B6F546]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
/****** Object:  Default [DF__DicIndex__Descri__66AB197F]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ('0') FOR [Description]
GO
/****** Object:  Default [DF__DicDetail__Value__5B3966D3]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT (' ') FOR [Value]
GO
/****** Object:  Default [DF__DicDetail__Text__5C2D8B0C]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ('0') FOR [Text]
GO
/****** Object:  Default [DF__DicDetail__DicId__5D21AF45]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [DicId]
GO
/****** Object:  Default [DF__DicDetail__SortN__5E15D37E]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__DicDetail__Statu__5F09F7B7]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__DicDetail__Descr__5FFE1BF0]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Category__Cascad__52A420D2]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Category__Name__5398450B]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Category__Parent__548C6944]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__Category__Status__55808D7D]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Category__SortNo__5674B1B6]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Category__RootKe__5768D5EF]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [RootKey]
GO
/****** Object:  Default [DF__Category__RootNa__585CFA28]    Script Date: 12/16/2015 22:51:23 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [RootName]
GO
