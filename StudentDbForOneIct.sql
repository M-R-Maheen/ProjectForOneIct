USE [master]
GO
/****** Object:  Database [DbTestForOneIct]    Script Date: 4/4/2023 1:39:04 PM ******/
CREATE DATABASE [DbTestForOneIct]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbTestForOneIct', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbTestForOneIct.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbTestForOneIct_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbTestForOneIct_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbTestForOneIct] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbTestForOneIct].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbTestForOneIct] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbTestForOneIct] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbTestForOneIct] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbTestForOneIct] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbTestForOneIct] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET RECOVERY FULL 
GO
ALTER DATABASE [DbTestForOneIct] SET  MULTI_USER 
GO
ALTER DATABASE [DbTestForOneIct] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbTestForOneIct] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbTestForOneIct] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbTestForOneIct] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbTestForOneIct] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbTestForOneIct] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbTestForOneIct', N'ON'
GO
ALTER DATABASE [DbTestForOneIct] SET QUERY_STORE = OFF
GO
USE [DbTestForOneIct]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 4/4/2023 1:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Roll] [int] NOT NULL,
	[RegistrationNo] [int] NOT NULL,
	[Mobile] [int] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStudent] ON 

INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (1, 1, 202001, 1989898989, N'Dhanmondi', N'Science')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (2, 2, 202002, 1789989898, N'Mirpur-12', N'Humanities')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (3, 3, 202003, 1409949494, N'Mirpur-1', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (4, 4, 202004, 1787989898, N'Kolabagan', N'Science')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (7, 98, 202009, 1945545454, N'Taltola', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (8, 99, 202009, 1945545454, N'Taltola', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (9, 100, 202009, 1945545454, N'Taltola', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (10, 110, 301502, 1910396846, N'Taltola', N'Science')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (11, 110, 301502, 1910396846, N'Taltola', N'Science')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (12, 102, 301503, 1910396867, N'Mirpur-11', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (13, 102, 301502, 1910396846, N'dhfhfh', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (14, 101, 301503, 1910396867, N'dhfhfh', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (15, 101, 301503, 1910396867, N'dhfhfh', N'Commerce')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (16, 103, 301502, 191039686, N'Taltola', N'Humanities')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (17, 110, 301509, 191039686, N'Mirpur-12', N'Science')
INSERT [dbo].[tblStudent] ([StudentID], [Roll], [RegistrationNo], [Mobile], [Address], [Department]) VALUES (18, 111, 301512, 191039686, N'Mirpur-11', N'Commerce')
SET IDENTITY_INSERT [dbo].[tblStudent] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 4/4/2023 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllStudents]
	
AS
BEGIN
	Select * from tblStudent
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudentById]    Script Date: 4/4/2023 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentById] @StudentID int
AS
	BEGIN
		SELECT * FROM tblStudent WHERE StudentID = @StudentID
	END
GO
/****** Object:  StoredProcedure [dbo].[SpDeleteStudent]    Script Date: 4/4/2023 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SpDeleteStudent]
							@StudentID int
AS 
	DELETE FROM tblStudent WHERE StudentID = @StudentID
GO
/****** Object:  StoredProcedure [dbo].[SpInsertStudent]    Script Date: 4/4/2023 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[SpInsertStudent] 
							@Roll NVARCHAR(40),
							@RegistrationNo NVARCHAR(50),
							@Mobile NVARCHAR(20),
							@Address NVARCHAR(500),
							@Department NVARCHAR(50)
																			
AS
	BEGIN
		INSERT INTO tblStudent(Roll,RegistrationNo,Mobile,Address,Department) 
		VALUES(@Roll,@RegistrationNo,@Mobile,@Address,@Department)
	END
GO
USE [master]
GO
ALTER DATABASE [DbTestForOneIct] SET  READ_WRITE 
GO
