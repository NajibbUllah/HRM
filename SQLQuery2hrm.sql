USE [HRM]
GO
/****** Object:  Table [dbo].[LeaveApplication]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveApplication](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Reason] [nvarchar](max) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
 CONSTRAINT [PK_LeaveApplication] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LeaveApplication] ON
INSERT [dbo].[LeaveApplication] ([LeaveId], [StartDate], [EndDate], [Reason], [EmployeeName], [Department]) VALUES (3, CAST(0x00009E2200000000 AS DateTime), CAST(0x0000A11A00000000 AS DateTime), N'urgent work', N'ali', N'Accounts')
INSERT [dbo].[LeaveApplication] ([LeaveId], [StartDate], [EndDate], [Reason], [EmployeeName], [Department]) VALUES (4, CAST(0x0000A6EF00000000 AS DateTime), CAST(0x0000A6F100000000 AS DateTime), N'sick', N'eram', N'accounts')
INSERT [dbo].[LeaveApplication] ([LeaveId], [StartDate], [EndDate], [Reason], [EmployeeName], [Department]) VALUES (5, CAST(0x00009F0900000000 AS DateTime), CAST(0x00009E8000000000 AS DateTime), N'sick leave', N'laraib', N'Accounts')
INSERT [dbo].[LeaveApplication] ([LeaveId], [StartDate], [EndDate], [Reason], [EmployeeName], [Department]) VALUES (6, CAST(0x0000A84300000000 AS DateTime), CAST(0x0000A84500000000 AS DateTime), N'sick leave', N'ali', N'hr')
SET IDENTITY_INSERT [dbo].[LeaveApplication] OFF
/****** Object:  Table [dbo].[Jobs]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobApplication]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobApplication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[CNIC] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[CellNo] [nvarchar](50) NULL,
	[DateOfApply] [nvarchar](50) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
 CONSTRAINT [PK_JobApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[JobApplication] ON
INSERT [dbo].[JobApplication] ([Id], [Name], [FatherName], [CNIC], [Department], [Address], [CellNo], [DateOfApply], [DateOfBirth], [Experience]) VALUES (1, N'UULLL', N'LLL', N'NML', NULL, N'KK,L', N'0988', N',L09', N'098J', N'MK')
SET IDENTITY_INSERT [dbo].[JobApplication] OFF
/****** Object:  Table [dbo].[Employeee]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employeee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[Departmentname] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[CNIC] [nvarchar](50) NULL,
	[DateOfJoining] [nvarchar](50) NULL,
	[GrossSalary] [int] NULL,
	[PayIncrement] [int] NULL,
	[TotalSalary] [int] NULL,
 CONSTRAINT [PK_Employeee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employeee] ON
INSERT [dbo].[Employeee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (6, N'Kiran', NULL, NULL, N'Accountant', N'82303-24567432-6', N'04/06/2011', 20000, 5000, 25000)
INSERT [dbo].[Employeee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (8, N'jj', NULL, NULL, N'mm', N'988', N'4/9/11', 678, 0, 678)
INSERT [dbo].[Employeee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (9, N'ali', NULL, NULL, N'manager', N'82303-9871236-9', N'2/3/11', 5000, 500, 5500)
INSERT [dbo].[Employeee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (10, N'ahmed', NULL, NULL, N'manfacturar', N'82303-8123467-6', N'3/6/90', 3000, 1000, 4000)
INSERT [dbo].[Employeee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (11, N'Eram', NULL, NULL, N'accountant', N'82303-8765432-9', N'02/03/2011', 2000, 500, 2500)
SET IDENTITY_INSERT [dbo].[Employeee] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [Description]) VALUES (1, N'Sales Department', N'erty')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [Description]) VALUES (3, N'Human Resource Management', N'ttyuiiiiii')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[UserAccount]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Role_Id] [int] NULL,
	[JoiningDate] [nvarchar](50) NULL,
	[IsVerify] [bit] NULL,
	[IsActive] [bit] NULL,
	[Result] [int] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_account1]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_account1](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Role_Id] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[IsVerify] [bit] NULL,
	[IsActive] [bit] NULL,
	[Result] [int] NULL,
	[Role_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_account1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[user_account1] ON
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (1, N'Admin', N'Null', N'admin1234@gmail.com', N'admin1234', N'female', N'1', NULL, NULL, 1, NULL, N'Admin')
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (2, N'eram', N'khan', N'eram8222@gmail.com', N'54324567777', N'Female', N'2', N'2018-08-06', NULL, 1, NULL, NULL)
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (3, N'admin', N'admin', N'admin@gmail.com', N'admin123', N'female', N'2', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (4, N'Ali', N'khan', N'ali@gmail.com', N'12345678', N'Male', N'2', N'1993-09-05', NULL, 1, NULL, NULL)
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (5, N'moin', N'khan', N'moin@gmail.com', N'11223344', N'Male', N'2', N'2017-12-04', NULL, 1, NULL, NULL)
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (6, N'kiran', N'shaheen', N'kiran@gmail.com', N'12345678', N'Female', N'2', N'2018-02-15', NULL, 1, NULL, NULL)
INSERT [dbo].[user_account1] ([UserId], [FirstName], [LastName], [Email], [Password], [Gender], [Role_Id], [DOB], [IsVerify], [IsActive], [Result], [Role_Name]) VALUES (7, N'HH', N'H', N'eram8222@gmail.com', N'12345678', N'Male', N'2', N'2011-06-04', NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[user_account1] OFF
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[Task] [nvarchar](50) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[startDate] [nvarchar](50) NULL,
	[EndDate] [nvarchar](50) NULL,
	[Notes] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TimeSheet] ON
INSERT [dbo].[TimeSheet] ([TaskId], [Task], [StartTime], [EndTime], [startDate], [EndDate], [Notes]) VALUES (4, N'manufacturar', CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700F0E066B80000 AS Time), N'3/2/11', N'3/2/11', N'completed')
INSERT [dbo].[TimeSheet] ([TaskId], [Task], [StartTime], [EndTime], [startDate], [EndDate], [Notes]) VALUES (5, N'Accounts', CAST(0x070010ACD1530000 AS Time), CAST(0x07001882BA7D0000 AS Time), N'4/5/17', N'4/5/17', N'done')
INSERT [dbo].[TimeSheet] ([TaskId], [Task], [StartTime], [EndTime], [startDate], [EndDate], [Notes]) VALUES (6, N'yh', CAST(0x0700D8018E4C0000 AS Time), CAST(0x0700F0E066B80000 AS Time), N'2/3/11', N'2/3/11', N'kmnj')
INSERT [dbo].[TimeSheet] ([TaskId], [Task], [StartTime], [EndTime], [startDate], [EndDate], [Notes]) VALUES (7, N'tt', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x0700E80A7E8E0000 AS Time), N'02/03/2010', N'02/03/2010', N'complete')
SET IDENTITY_INSERT [dbo].[TimeSheet] OFF
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Roles](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](50) NULL,
	[UpdatedBy] [int] NULL,
	[CreatedDate] [date] NULL,
	[UpdationDate] [date] NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Roles] ON
INSERT [dbo].[tbl_Roles] ([Role_Id], [Role_Name], [UpdatedBy], [CreatedDate], [UpdationDate]) VALUES (1, N'Admin', NULL, CAST(0xB63D0B00 AS Date), NULL)
INSERT [dbo].[tbl_Roles] ([Role_Id], [Role_Name], [UpdatedBy], [CreatedDate], [UpdationDate]) VALUES (2, N'User', NULL, CAST(0xB63D0B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[tbl_Roles] OFF
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[EmployeeId] [int] NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[Departmentname] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[CNIC] [nvarchar](50) NULL,
	[DateOfJoining] [nvarchar](50) NULL,
	[GrossSalary] [int] NULL,
	[PayIncrement] [int] NULL,
	[TotalSalary] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_employee] ([EmployeeId], [EmployeeName], [DepartmentId], [Departmentname], [Designation], [CNIC], [DateOfJoining], [GrossSalary], [PayIncrement], [TotalSalary]) VALUES (NULL, N'J', NULL, NULL, N'KK', N'00', N'69', 78, 89, NULL)
/****** Object:  Table [dbo].[tbl_Attendance]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Attendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[EmployeeId] [int] NULL,
	[CheckinTime] [time](7) NULL,
	[CheckoutTime] [time](7) NULL,
 CONSTRAINT [PK_tbl_Attendance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Attendance] ON
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (1, CAST(0xEF3D0B00 AS Date), NULL, CAST(0x0700E03495640000 AS Time), CAST(0x0700E80A7E8E0000 AS Time))
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (2, CAST(0xEF3D0B00 AS Date), NULL, CAST(0x070008D6E8290000 AS Time), CAST(0x070050CFDF960000 AS Time))
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (3, CAST(0xF13D0B00 AS Date), NULL, CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070080461C860000 AS Time))
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (4, CAST(0x3A3E0B00 AS Date), NULL, CAST(0x0700000000000000 AS Time), CAST(0x0700F0E066B80000 AS Time))
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (5, CAST(0x3A3E0B00 AS Date), NULL, CAST(0x0700709A4A320000 AS Time), CAST(0x070080461C860000 AS Time))
INSERT [dbo].[tbl_Attendance] ([id], [Date], [EmployeeId], [CheckinTime], [CheckoutTime]) VALUES (6, CAST(0x3A3E0B00 AS Date), NULL, CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700E80A7E8E0000 AS Time))
SET IDENTITY_INSERT [dbo].[tbl_Attendance] OFF
/****** Object:  Table [dbo].[salary]    Script Date: 05/13/2018 22:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[salary] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [salaryfk]    Script Date: 05/13/2018 22:06:00 ******/
ALTER TABLE [dbo].[salary]  WITH CHECK ADD  CONSTRAINT [salaryfk] FOREIGN KEY([empid])
REFERENCES [dbo].[Employeee] ([EmployeeId])
GO
ALTER TABLE [dbo].[salary] CHECK CONSTRAINT [salaryfk]
GO
