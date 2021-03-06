USE [master]
GO
/****** Object:  Database [wen]    Script Date: 2016/4/25 14:27:24 ******/
CREATE DATABASE [wen] ON  PRIMARY 
( NAME = N'wen', FILENAME = N'D:\MSSQL DATA\wen.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wen_log', FILENAME = N'D:\MSSQL DATA\wen_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wen] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wen].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [wen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wen] SET ARITHABORT OFF 
GO
ALTER DATABASE [wen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wen] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [wen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wen] SET RECOVERY FULL 
GO
ALTER DATABASE [wen] SET  MULTI_USER 
GO
ALTER DATABASE [wen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wen] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'wen', N'ON'
GO
USE [wen]
GO
/****** Object:  Table [dbo].[bao]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shijian] [varchar](50) NULL,
	[sm] [varchar](max) NULL,
	[jiaoshi] [varchar](50) NULL,
	[bao] [varchar](50) NULL,
	[yijian] [varchar](max) NULL,
	[Username] [varchar](50) NULL,
	[sf] [varchar](50) NULL,
	[fei] [int] NULL,
 CONSTRAINT [PK_ping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hetong]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hetong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dutyid] [int] NULL,
	[branch] [varchar](50) NULL,
	[ming] [varchar](50) NULL,
	[zt] [varchar](50) NULL,
	[kehu] [varchar](50) NULL,
	[yusuan] [varchar](50) NULL,
	[sj] [varchar](50) NULL,
	[dutyid2] [int] NULL,
	[branch2] [varchar](50) NULL,
 CONSTRAINT [PK_hetong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jindu]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jindu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dutyid] [int] NULL,
	[branch] [varchar](50) NULL,
	[zt] [varchar](50) NULL,
	[beizhu] [varchar](max) NULL,
	[baifen] [varchar](50) NULL,
 CONSTRAINT [PK_jindu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kehu]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kehu](
	[Employeeid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[addtime] [varchar](50) NULL,
	[qq] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[jibie] [varchar](50) NULL,
	[lei] [varchar](50) NULL,
	[hao] [varchar](50) NULL,
	[dh] [varchar](50) NULL,
	[you] [varchar](50) NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_kehu] PRIMARY KEY CLUSTERED 
(
	[Employeeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rizhi]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rizhi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dutyid] [int] NULL,
	[branch] [varchar](50) NULL,
	[rizhi] [varchar](max) NULL,
 CONSTRAINT [PK_rizhi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shouru]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shouru](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laiyuan] [varchar](50) NULL,
	[shijian] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[sm] [varchar](max) NULL,
	[fei] [int] NULL,
 CONSTRAINT [PK_shouru] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yg]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yg](
	[Employeeid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[addtime] [varchar](50) NULL,
	[qq] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[jibie] [varchar](50) NULL,
	[lei] [varchar](50) NULL,
	[zu] [varchar](50) NULL,
	[hao] [varchar](50) NULL,
	[dh] [varchar](50) NULL,
	[you] [varchar](50) NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_yg] PRIMARY KEY CLUSTERED 
(
	[Employeeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[yusuan]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yusuan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yusuan] [varchar](50) NULL,
	[shijian] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[sm] [varchar](max) NULL,
	[fei] [int] NULL,
	[jiaoshi] [varchar](50) NULL,
	[yijian] [varchar](max) NULL,
	[sf] [varchar](50) NULL,
 CONSTRAINT [PK_yusuan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zl]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ming] [varchar](50) NULL,
	[zijin] [varchar](50) NULL,
	[kaishi] [varchar](50) NULL,
	[jieshu] [varchar](50) NULL,
	[dutyid] [int] NULL,
	[branch] [varchar](50) NULL,
	[xs] [varchar](50) NULL,
	[shenhe] [varchar](50) NULL,
 CONSTRAINT [PK_shu1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zu]    Script Date: 2016/4/25 14:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ming] [varchar](50) NULL,
	[shu] [varchar](50) NULL,
	[zuzhang] [varchar](50) NULL,
	[xiangmu] [varchar](50) NULL,
 CONSTRAINT [PK_zu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bao] ON 

INSERT [dbo].[bao] ([id], [shijian], [sm], [jiaoshi], [bao], [yijian], [Username], [sf], [fei]) VALUES (44, N'2016/4/15', N'7878', N'admin', N'78', N'同意', N'张三', N'通过', 87878)
INSERT [dbo].[bao] ([id], [shijian], [sm], [jiaoshi], [bao], [yijian], [Username], [sf], [fei]) VALUES (45, N'2016/4/19', N'报销2报销2', N'admin', N'报销2', N'很好', N'张三', N'通过', 90)
SET IDENTITY_INSERT [dbo].[bao] OFF
SET IDENTITY_INSERT [dbo].[hetong] ON 

INSERT [dbo].[hetong] ([id], [dutyid], [branch], [ming], [zt], [kehu], [yusuan], [sj], [dutyid2], [branch2]) VALUES (2, 4, N'张三', N'11', N'22', NULL, N'33', N'44', 1, N'王惠')
SET IDENTITY_INSERT [dbo].[hetong] OFF
SET IDENTITY_INSERT [dbo].[jindu] ON 

INSERT [dbo].[jindu] ([id], [dutyid], [branch], [zt], [beizhu], [baifen]) VALUES (1, 43, N'11', N'666', N'2666', N'70')
SET IDENTITY_INSERT [dbo].[jindu] OFF
SET IDENTITY_INSERT [dbo].[kehu] ON 

INSERT [dbo].[kehu] ([Employeeid], [username], [addtime], [qq], [password], [xingbie], [jibie], [lei], [hao], [dh], [you], [id]) VALUES (1, N'王惠', NULL, N'12121227', N'111', N'男', N'经理', N'员工', N'001', N'56767676', NULL, NULL)
SET IDENTITY_INSERT [dbo].[kehu] OFF
SET IDENTITY_INSERT [dbo].[rizhi] ON 

INSERT [dbo].[rizhi] ([id], [dutyid], [branch], [rizhi]) VALUES (1, 43, N'11', N'7777999.')
SET IDENTITY_INSERT [dbo].[rizhi] OFF
SET IDENTITY_INSERT [dbo].[shouru] ON 

INSERT [dbo].[shouru] ([id], [laiyuan], [shijian], [Username], [sm], [fei]) VALUES (2, N'上级拨款', N'2016/4/13', N'张三', N'1144', 1117)
INSERT [dbo].[shouru] ([id], [laiyuan], [shijian], [Username], [sm], [fei]) VALUES (3, N'上级拨款', N'2016/4/27', N'张三', N'1212', 212)
SET IDENTITY_INSERT [dbo].[shouru] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[yg] ON 

INSERT [dbo].[yg] ([Employeeid], [username], [addtime], [qq], [password], [xingbie], [jibie], [lei], [zu], [hao], [dh], [you], [id]) VALUES (4, N'张三', NULL, N'12121218', N'111111', N'男', N'业务员', N'员工', N'2组', N'111', N'67676767', NULL, 2)
SET IDENTITY_INSERT [dbo].[yg] OFF
SET IDENTITY_INSERT [dbo].[yusuan] ON 

INSERT [dbo].[yusuan] ([id], [yusuan], [shijian], [Username], [sm], [fei], [jiaoshi], [yijian], [sf]) VALUES (2, N'1', N'2016/4/14', N'张三', N'3', 2, N'admin', N'676767', N'通过')
INSERT [dbo].[yusuan] ([id], [yusuan], [shijian], [Username], [sm], [fei], [jiaoshi], [yijian], [sf]) VALUES (3, N'预算2', N'2016/4/18', N'张三', N'预算2预算2', 200, N'admin', N'', N'通过')
SET IDENTITY_INSERT [dbo].[yusuan] OFF
SET IDENTITY_INSERT [dbo].[zl] ON 

INSERT [dbo].[zl] ([id], [ming], [zijin], [kaishi], [jieshu], [dutyid], [branch], [xs], [shenhe]) VALUES (43, N'11', N'22', N'2016-2-12', N'2016-3-12', 2, N'2组', NULL, NULL)
SET IDENTITY_INSERT [dbo].[zl] OFF
SET IDENTITY_INSERT [dbo].[zu] ON 

INSERT [dbo].[zu] ([id], [ming], [shu], [zuzhang], [xiangmu]) VALUES (1, N'1组', N'18', N'张三', NULL)
INSERT [dbo].[zu] ([id], [ming], [shu], [zuzhang], [xiangmu]) VALUES (2, N'2组', N'22', N'李四', NULL)
INSERT [dbo].[zu] ([id], [ming], [shu], [zuzhang], [xiangmu]) VALUES (3, N'第七小组', N'10', N'王五', N'项目aaa')
SET IDENTITY_INSERT [dbo].[zu] OFF
USE [master]
GO
ALTER DATABASE [wen] SET  READ_WRITE 
GO
