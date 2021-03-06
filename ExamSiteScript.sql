USE [master]
GO
/****** Object:  Database [ExamSite]    Script Date: 10/16/2018 9:35:13 PM ******/
CREATE DATABASE [ExamSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExamSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ExamSite.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ExamSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ExamSite_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ExamSite] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExamSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExamSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExamSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExamSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExamSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExamSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExamSite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExamSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExamSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExamSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExamSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExamSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExamSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExamSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExamSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExamSite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExamSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExamSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExamSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExamSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExamSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExamSite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExamSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExamSite] SET RECOVERY FULL 
GO
ALTER DATABASE [ExamSite] SET  MULTI_USER 
GO
ALTER DATABASE [ExamSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExamSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExamSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExamSite] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ExamSite] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExamSite', N'ON'
GO
USE [ExamSite]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerDetails] [nvarchar](100) NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exams]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [nvarchar](200) NULL,
	[ExamDescription] [nvarchar](200) NULL,
	[Duration] [int] NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionTitle] [nvarchar](100) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Phone] [nvarchar](200) NULL,
	[Password] [nvarchar](2000) NOT NULL,
	[FirstName] [nvarchar](2000) NULL,
	[LastName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (1, N'12', 1)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (2, N'13', 1)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (3, N'14', 1)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (4, N'20', 1)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (5, N'25', 1)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (6, N'Yes', 2)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (7, N'No', 2)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (8, N'Yes', 3)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (9, N'No', 3)
INSERT [dbo].[Answers] ([AnswerID], [AnswerDetails], [QuestionID]) VALUES (10, N'1', 1)
SET IDENTITY_INSERT [dbo].[Answers] OFF
SET IDENTITY_INSERT [dbo].[Exams] ON 

INSERT [dbo].[Exams] ([ID], [ExamName], [ExamDescription], [Duration]) VALUES (1, N'Exam 1', N'This exam is to allow you to solve all questions with a fixed duration of 10 minutes, Feel free to start the exam whenever you want but the exam will end after 10 min of the start.', 10)
INSERT [dbo].[Exams] ([ID], [ExamName], [ExamDescription], [Duration]) VALUES (2, N'Exam 2', N'This exam start and end at a fixed and predefined time based on the examination system, so you have to solve all questions within this slot of time with no control of its start and end.', NULL)
SET IDENTITY_INSERT [dbo].[Exams] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle]) VALUES (1, N'How old are you')
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle]) VALUES (2, N'Are you happy')
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle]) VALUES (3, N'Are you sad')
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle]) VALUES (4, N'are you big')
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle]) VALUES (5, N'are you small')
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Email], [Phone], [Password], [FirstName], [LastName]) VALUES (1, N'AmrQasem', N'amrkasem47@yahoo.com', N'01020807249', N'01020807249', N'Amr', N'Qasem')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[GetAllExams]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllExams]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Exams
END

GO
/****** Object:  StoredProcedure [dbo].[GetAnswers]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAnswers] 
	-- Add the parameters for the stored procedure here
	@QuestionID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.AnswerID , a.AnswerDetails , a.QuestionID, q.QuestionTitle
	from Answers a
	inner join Questions q on q.QuestionID = a.QuestionID
	where a.QuestionID = @QuestionID
END
GO
/****** Object:  StoredProcedure [dbo].[GetExamDetails]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetExamDetails]
	-- Add the parameters for the stored procedure here
	@ExamID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Exams
	where Exams.ID = @ExamID
END

GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestions]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetExamQuestions] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	from Questions
END

GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 10/16/2018 9:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserLogin] 
	-- Add the parameters for the stored procedure here
	@Email Nvarchar(100),
	@Password Nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Users.ID , Users.UserName
	from Users
	where Users.Email = @Email and Users.Password = @Password
END


GO
USE [master]
GO
ALTER DATABASE [ExamSite] SET  READ_WRITE 
GO
