USE [MaintanenceSystem]
GO
/****** Object:  Table [dbo].[AssignedByTab]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedByTab](
	[AssignedByID] [int] IDENTITY(1,1) NOT NULL,
	[AssignedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignedByID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignedToTab]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedToTab](
	[AssignedToID] [int] IDENTITY(1,1) NOT NULL,
	[AssignedTo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignedToID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentTagNumberr]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentTagNumberr](
	[EquipmentTagID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTagNo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EquipmentTagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterMaster]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[MobileNumber] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[Role] [varchar](50) NULL,
	[ReportingManager] [varchar](50) NULL,
	[RoleID] [int] NULL,
	[ReportingManagerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportingManagerr]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportingManagerr](
	[ReportingManagerId] [int] IDENTITY(1,1) NOT NULL,
	[ReportingManagerName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportingManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketID] [int] IDENTITY(1,1) NOT NULL,
	[CreationDate] [datetime] NULL,
	[EquipmentTagNumber] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[AssignedBy] [varchar](50) NULL,
	[AssignedTo] [varchar](50) NULL,
	[ProblemDescription] [varchar](100) NULL,
	[RemarksByEngineer] [varchar](100) NULL,
	[RemarksByTechinician] [varchar](100) NULL,
	[WorkDescription] [varchar](100) NULL,
	[UploadDocument] [varchar](max) NULL,
	[AssignedByID] [int] NULL,
	[AssignedToID] [int] NULL,
	[EquipmentTagID] [int] NULL,
	[Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketLogDetails]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketLogDetails](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[TicketID] [int] NULL,
	[Action] [varchar](50) NULL,
	[ActionBy] [varchar](50) NULL,
	[Timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketUpdateLog]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketUpdateLog](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[TicketID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdateDescription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMasterr]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMasterr](
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RegisterMaster]  WITH CHECK ADD FOREIGN KEY([ReportingManagerId])
REFERENCES [dbo].[ReportingManagerr] ([ReportingManagerId])
GO
ALTER TABLE [dbo].[RegisterMaster]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleMaster] ([RoleId])
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD FOREIGN KEY([AssignedByID])
REFERENCES [dbo].[AssignedByTab] ([AssignedByID])
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD FOREIGN KEY([AssignedToID])
REFERENCES [dbo].[AssignedToTab] ([AssignedToID])
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD FOREIGN KEY([EquipmentTagID])
REFERENCES [dbo].[EquipmentTagNumberr] ([EquipmentTagID])
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Register] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Id]
GO
ALTER TABLE [dbo].[TicketLogDetails]  WITH CHECK ADD FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([TicketID])
GO
/****** Object:  StoredProcedure [dbo].[AddTicketScreen]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[AddTicketScreen]
@CreationDate datetime,
@EquipmentTagNumber varchar(50),

@Status varchar(50),
@AssignedBy varchar(50),
@AssignedTo varchar(50),
@ProblemDescription varchar(100),
@RemarksByEngineer varchar(100),
@RemarksByTechinician varchar(100),
@WorkDescription varchar(100),

@UploadDocument varchar(max)
as
begin
insert into Ticket(CreationDate,EquipmentTagNumber,Status,AssignedBy,AssignedTo,ProblemDescription,RemarksByEngineer,RemarksByTechinician,WorkDescription,UploadDocument)
values(@CreationDate,@EquipmentTagNumber,@Status,@AssignedBy,@AssignedTo,@ProblemDescription,@RemarksByEngineer,@RemarksByTechinician,@WorkDescription,@UploadDocument)
end 
GO
/****** Object:  StoredProcedure [dbo].[DeleteTicket]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[DeleteTicket]
@TicketID int
as
begin
delete from Ticket where TicketID=@TicketID
end
GO
/****** Object:  StoredProcedure [dbo].[GetAssIgnedBy]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetAssIgnedBy]
as
begin
select * from AssignedByTab
end
GO
/****** Object:  StoredProcedure [dbo].[GetAssIgnedTo]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetAssIgnedTo]
as
begin
select * from AssignedToTab
end
GO
/****** Object:  StoredProcedure [dbo].[GetEquipmentTag]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetEquipmentTag]
as
begin
select * from EquipmentTagNumberr
end
GO
/****** Object:  StoredProcedure [dbo].[GetReportingMng]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetReportingMng]
as
begin
select * from ReportingManagerr
end
GO
/****** Object:  StoredProcedure [dbo].[GetReportingMngByRole]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetReportingMngByRole]
as
begin
select * from ReportingManagerr
end
GO
/****** Object:  StoredProcedure [dbo].[GetRoles]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetRoles]
as
begin
select * from RoleMaster
end
GO
/****** Object:  StoredProcedure [dbo].[GetTicketCreationLogs]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetTicketCreationLogs]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TicketID, Action, ActionBy, Timestamp
    FROM TicketLogDetails
    WHERE Action = 'Created';
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTicketDeletionLogs]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetTicketDeletionLogs]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TicketID, Action, ActionBy, Timestamp
    FROM TicketLogDetails
    WHERE Action = 'Deleted';
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTickets]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetTickets]
as
begin
SELECT t.TicketID, t.CreationDate, t.EquipmentTagNumber, t.AssignedBy, t.AssignedTo, t.ProblemDescription,
           t.WorkDescription, t.UploadDocument, ab.AssignedBy, ast.AssignedTo ,
           e.EquipmentTagNo 
    FROM Ticket t 
    
    LEFT JOIN AssignedByTab ab ON t.AssignedByID = ab.AssignedByID 
    LEFT JOIN AssignedToTab ast ON t.AssignedToID = ast.AssignedToID 
    LEFT JOIN EquipmentTagNumberr e ON t.EquipmentTagID = e.EquipmentTagID;
end
GO
/****** Object:  StoredProcedure [dbo].[GetTicketsById]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetTicketsById]
@TicketID int
as
begin 
select *from Ticket where TicketID=@TicketID
end
GO
/****** Object:  StoredProcedure [dbo].[GetTicketUpdateLogs]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetTicketUpdateLogs]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TicketID, Action, ActionBy, Timestamp
    FROM TicketLogDetails
    WHERE Action = 'Updated';
END;
GO
/****** Object:  StoredProcedure [dbo].[GetUserRole]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[GetUserRole]
@UserName VARCHAR(50)
as
begin
SELECT Role FROM UserMasterr WHERE UserName = @UserName
end
GO
/****** Object:  StoredProcedure [dbo].[InsertIntoUserMaster]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertIntoUserMaster]
    @UserName NVARCHAR(50),
    @Password NVARCHAR(50),
	@Role varchar(50)
AS
BEGIN
    INSERT INTO UserMasterr (UserName, Password,Role)
    VALUES (@UserName, @Password,@Role);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegisterUser]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_RegisterUser]
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(50),
    @MobileNumber VARCHAR(15),
    @Email VARCHAR(100),
    @AddressLine1 VARCHAR(255),
    @AddressLine2 VARCHAR(255),
    @Role VARCHAR(MAX), 
    @ReportingManager VARCHAR(50)
AS
BEGIN
    INSERT INTO RegisterMaster(FirstName, LastName, Gender, MobileNumber, Email, AddressLine1, AddressLine2, Role, ReportingManager)
    VALUES (@FirstName, @LastName, @Gender, @MobileNumber, @Email, @AddressLine1, @AddressLine2, @Role, @ReportingManager);
  
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTicket]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateTicket]
    @TicketID INT,
    @CreationDate DATETIME,
    @EquipmentTagNumber NVARCHAR(50),
    @Status NVARCHAR(50),
    @AssignedBy NVARCHAR(50),
    @AssignedTo NVARCHAR(50),
    @ProblemDescription NVARCHAR(MAX),
    @RemarksByEngineer NVARCHAR(MAX),
    @RemarksByTechnician NVARCHAR(MAX),
    @WorkDescription NVARCHAR(MAX),
    @UploadDocument NVARCHAR(MAX)
AS
BEGIN
    UPDATE Ticket
    SET
        CreationDate = @CreationDate,
        EquipmentTagNumber = @EquipmentTagNumber,
        Status = @Status,
        AssignedBy = @AssignedBy,
        AssignedTo = @AssignedTo,
        ProblemDescription = @ProblemDescription,
        RemarksByEngineer = @RemarksByEngineer,
        RemarksByTechinician = @RemarksByTechnician,
        WorkDescription = @WorkDescription,
        UploadDocument = @UploadDocument
    WHERE
        TicketID = @TicketID;
END
GO
/****** Object:  StoredProcedure [dbo].[UserDetailsChk]    Script Date: 20-03-2024 00:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[UserDetailsChk]
@UserName varchar(50),
@Password varchar(50)
as
begin
SELECT COUNT(*) FROM UserMasterr WHERE UserName = @UserName AND Password = @Password
end
GO
