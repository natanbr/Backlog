/****** Object:  ForeignKey [FK_Story_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story] DROP CONSTRAINT [FK_Story_Programmer]
GO
/****** Object:  ForeignKey [FK_Story_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story] DROP CONSTRAINT [FK_Story_Sprint]
GO
/****** Object:  ForeignKey [FK_Story_In_Sprint_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint] DROP CONSTRAINT [FK_Story_In_Sprint_Sprint]
GO
/****** Object:  ForeignKey [FK_Story_In_Sprint_Story]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint] DROP CONSTRAINT [FK_Story_In_Sprint_Story]
GO
/****** Object:  ForeignKey [FK_Task_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] DROP CONSTRAINT [FK_Task_Programmer]
GO
/****** Object:  ForeignKey [FK_Task_Story]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] DROP CONSTRAINT [FK_Task_Story]
GO
/****** Object:  ForeignKey [FK_Work_hours_Date]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Date]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours] DROP CONSTRAINT [FK_Work_hours_Date]
GO
/****** Object:  ForeignKey [FK_Work_hours_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours] DROP CONSTRAINT [FK_Work_hours_Programmer]
GO
/****** Object:  Table [dbo].[Story_In_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]') AND type in (N'U'))
DROP TABLE [dbo].[Story_In_Sprint]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Task]') AND type in (N'U'))
DROP TABLE [dbo].[Task]
GO
/****** Object:  Table [dbo].[Work_hours]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Work_hours]') AND type in (N'U'))
DROP TABLE [dbo].[Work_hours]
GO
/****** Object:  View [dbo].[Sprint view]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Sprint view]'))
DROP VIEW [dbo].[Sprint view]
GO
/****** Object:  Table [dbo].[Story]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Story]') AND type in (N'U'))
DROP TABLE [dbo].[Story]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Date]') AND type in (N'U'))
DROP TABLE [dbo].[Date]
GO
/****** Object:  Table [dbo].[Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programmer]') AND type in (N'U'))
DROP TABLE [dbo].[Programmer]
GO
/****** Object:  Table [dbo].[Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sprint]') AND type in (N'U'))
DROP TABLE [dbo].[Sprint]
GO
/****** Object:  Default [DF_Date_Date_Day_status]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Date_Date_Day_status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Date]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Date_Date_Day_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Date] DROP CONSTRAINT [DF_Date_Date_Day_status]
END


End
GO
/****** Object:  Default [DF_Story_Story_Priority]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Story_Story_Priority]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Story_Story_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Story] DROP CONSTRAINT [DF_Story_Story_Priority]
END


End
GO
/****** Object:  Default [DF_Story_Story_Work_Status]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Story_Story_Work_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Story_Story_Work_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Story] DROP CONSTRAINT [DF_Story_Story_Work_Status]
END


End
GO
/****** Object:  Default [DF_Task_Task_Story_ID]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Task_Task_Story_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Task_Task_Story_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Task] DROP CONSTRAINT [DF_Task_Task_Story_ID]
END


End
GO
/****** Object:  Default [DF_Task_Task_Priority]    Script Date: 01/13/2013 11:41:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Task_Task_Priority]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Task_Task_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Task] DROP CONSTRAINT [DF_Task_Task_Priority]
END


End
GO
/****** Object:  Table [dbo].[Sprint]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sprint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sprint](
	[Sprint_Beginning_Day] [date] NOT NULL,
	[Sprint_Finish_Day] [date] NULL,
 CONSTRAINT [PK_Sprint] PRIMARY KEY CLUSTERED 
(
	[Sprint_Beginning_Day] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Sprint] ([Sprint_Beginning_Day], [Sprint_Finish_Day]) VALUES (CAST(0x75360B00 AS Date), CAST(0x07240B00 AS Date))
/****** Object:  Table [dbo].[Programmer]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programmer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Programmer](
	[Programmer_id] [int] IDENTITY(1,1) NOT NULL,
	[Programmer_Name] [nchar](100) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[Programmer_Expected_Work_Hours] [float] NULL,
	[Programmer_Current_Work_Hours] [float] NULL,
 CONSTRAINT [PK_Programmer] PRIMARY KEY CLUSTERED 
(
	[Programmer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Programmer] ON
INSERT [dbo].[Programmer] ([Programmer_id], [Programmer_Name], [Programmer_Expected_Work_Hours], [Programmer_Current_Work_Hours]) VALUES (1, N'bbb                                                                                                 ', 5, 3)
INSERT [dbo].[Programmer] ([Programmer_id], [Programmer_Name], [Programmer_Expected_Work_Hours], [Programmer_Current_Work_Hours]) VALUES (8, N'uiyu                                                                                                ', 10, 0)
SET IDENTITY_INSERT [dbo].[Programmer] OFF
/****** Object:  Table [dbo].[Date]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Date]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Date](
	[Date_Day_status] [int] NOT NULL,
	[Date_Day] [date] NOT NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[Date_Day] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Date] ([Date_Day_status], [Date_Day]) VALUES (1, CAST(0x07240B00 AS Date))
/****** Object:  Table [dbo].[Story]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Story]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Story](
	[Story_ID] [int] IDENTITY(1,1) NOT NULL,
	[Story_Owner] [int] NOT NULL,
	[Story_Current_Sprint] [date] NOT NULL,
	[Story_Demo_DES] [varchar](500) COLLATE Cyrillic_General_CI_AS NULL,
	[Story_Demo_PIC] [image] NULL,
	[Story_Description] [varchar](500) COLLATE Cyrillic_General_CI_AS NULL,
	[Story_Priority] [int] NOT NULL,
	[Story_Work_Status] [int] NOT NULL,
 CONSTRAINT [PK_Story] PRIMARY KEY CLUSTERED 
(
	[Story_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
ALTER TABLE [dbo].[Story] SET (LOCK_ESCALATION = AUTO)
GO
SET IDENTITY_INSERT [dbo].[Story] ON
INSERT [dbo].[Story] ([Story_ID], [Story_Owner], [Story_Current_Sprint], [Story_Demo_DES], [Story_Demo_PIC], [Story_Description], [Story_Priority], [Story_Work_Status]) VALUES (3, 1, CAST(0x75360B00 AS Date), N'HELP ME', NULL, N'1', 1, 1)
SET IDENTITY_INSERT [dbo].[Story] OFF
/****** Object:  View [dbo].[Sprint view]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Sprint view]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Sprint view]
AS
SELECT        dbo.Sprint.*
FROM            dbo.Sprint
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Sprint view', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sprint"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 101
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Sprint view'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Sprint view', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Sprint view'
GO
/****** Object:  Table [dbo].[Work_hours]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Work_hours]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Work_hours](
	[Work_hours_Programmer_id] [int] NOT NULL,
	[Work_hours__Date_Day] [date] NOT NULL,
	[Work_hours_Work_hours] [float] NULL,
 CONSTRAINT [PK_Work_hours] PRIMARY KEY CLUSTERED 
(
	[Work_hours_Programmer_id] ASC,
	[Work_hours__Date_Day] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Work_hours] ([Work_hours_Programmer_id], [Work_hours__Date_Day], [Work_hours_Work_hours]) VALUES (1, CAST(0x07240B00 AS Date), 100)
/****** Object:  Table [dbo].[Task]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Task]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Task](
	[Task_ID] [int] IDENTITY(1,1) NOT NULL,
	[Task_Story_ID] [int] NOT NULL,
	[Task_Priority] [int] NOT NULL,
	[Task_Description] [varchar](500) COLLATE Cyrillic_General_CI_AS NULL,
	[Task_Ovner_Id] [int] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Task_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Task] ON
INSERT [dbo].[Task] ([Task_ID], [Task_Story_ID], [Task_Priority], [Task_Description], [Task_Ovner_Id]) VALUES (1, 3, 2, N'Daniel', 1)
INSERT [dbo].[Task] ([Task_ID], [Task_Story_ID], [Task_Priority], [Task_Description], [Task_Ovner_Id]) VALUES (2, 3, 5, N'data', 1)
INSERT [dbo].[Task] ([Task_ID], [Task_Story_ID], [Task_Priority], [Task_Description], [Task_Ovner_Id]) VALUES (3, 3, 9, N'dima', 1)
INSERT [dbo].[Task] ([Task_ID], [Task_Story_ID], [Task_Priority], [Task_Description], [Task_Ovner_Id]) VALUES (7, 3, 10, N'ASKD', 1)
INSERT [dbo].[Task] ([Task_ID], [Task_Story_ID], [Task_Priority], [Task_Description], [Task_Ovner_Id]) VALUES (8, 3, 1, N'ry', 1)
SET IDENTITY_INSERT [dbo].[Task] OFF
/****** Object:  Table [dbo].[Story_In_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Story_In_Sprint](
	[In_Story_id] [int] NOT NULL,
	[In_Sprint] [date] NOT NULL,
 CONSTRAINT [PK_Story_In_Sprint] PRIMARY KEY CLUSTERED 
(
	[In_Story_id] ASC,
	[In_Sprint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Default [DF_Date_Date_Day_status]    Script Date: 01/13/2013 11:41:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Date_Date_Day_status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Date]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Date_Date_Day_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Date] ADD  CONSTRAINT [DF_Date_Date_Day_status]  DEFAULT ((0)) FOR [Date_Day_status]
END


End
GO
/****** Object:  Default [DF_Story_Story_Priority]    Script Date: 01/13/2013 11:41:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Story_Story_Priority]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Story_Story_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Story] ADD  CONSTRAINT [DF_Story_Story_Priority]  DEFAULT ((0)) FOR [Story_Priority]
END


End
GO
/****** Object:  Default [DF_Story_Story_Work_Status]    Script Date: 01/13/2013 11:41:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Story_Story_Work_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Story_Story_Work_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Story] ADD  CONSTRAINT [DF_Story_Story_Work_Status]  DEFAULT ((0)) FOR [Story_Work_Status]
END


End
GO
/****** Object:  Default [DF_Task_Task_Story_ID]    Script Date: 01/13/2013 11:41:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Task_Task_Story_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Task_Task_Story_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Task] ADD  CONSTRAINT [DF_Task_Task_Story_ID]  DEFAULT ((0)) FOR [Task_Story_ID]
END


End
GO
/****** Object:  Default [DF_Task_Task_Priority]    Script Date: 01/13/2013 11:41:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Task_Task_Priority]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Task_Task_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Task] ADD  CONSTRAINT [DF_Task_Task_Priority]  DEFAULT ((0)) FOR [Task_Priority]
END


End
GO
/****** Object:  ForeignKey [FK_Story_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Programmer] FOREIGN KEY([Story_Owner])
REFERENCES [dbo].[Programmer] ([Programmer_id])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Programmer]
GO
/****** Object:  ForeignKey [FK_Story_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Sprint] FOREIGN KEY([Story_Current_Sprint])
REFERENCES [dbo].[Sprint] ([Sprint_Beginning_Day])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Sprint]
GO
/****** Object:  ForeignKey [FK_Story_In_Sprint_Sprint]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint]  WITH CHECK ADD  CONSTRAINT [FK_Story_In_Sprint_Sprint] FOREIGN KEY([In_Sprint])
REFERENCES [dbo].[Sprint] ([Sprint_Beginning_Day])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Sprint]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint] CHECK CONSTRAINT [FK_Story_In_Sprint_Sprint]
GO
/****** Object:  ForeignKey [FK_Story_In_Sprint_Story]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint]  WITH CHECK ADD  CONSTRAINT [FK_Story_In_Sprint_Story] FOREIGN KEY([In_Story_id])
REFERENCES [dbo].[Story] ([Story_ID])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Story_In_Sprint_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story_In_Sprint]'))
ALTER TABLE [dbo].[Story_In_Sprint] CHECK CONSTRAINT [FK_Story_In_Sprint_Story]
GO
/****** Object:  ForeignKey [FK_Task_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Programmer] FOREIGN KEY([Task_Ovner_Id])
REFERENCES [dbo].[Programmer] ([Programmer_id])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Programmer]
GO
/****** Object:  ForeignKey [FK_Task_Story]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Story] FOREIGN KEY([Task_Story_ID])
REFERENCES [dbo].[Story] ([Story_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Task_Story]') AND parent_object_id = OBJECT_ID(N'[dbo].[Task]'))
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Story]
GO
/****** Object:  ForeignKey [FK_Work_hours_Date]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Date]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours]  WITH CHECK ADD  CONSTRAINT [FK_Work_hours_Date] FOREIGN KEY([Work_hours__Date_Day])
REFERENCES [dbo].[Date] ([Date_Day])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Date]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours] CHECK CONSTRAINT [FK_Work_hours_Date]
GO
/****** Object:  ForeignKey [FK_Work_hours_Programmer]    Script Date: 01/13/2013 11:41:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours]  WITH CHECK ADD  CONSTRAINT [FK_Work_hours_Programmer] FOREIGN KEY([Work_hours_Programmer_id])
REFERENCES [dbo].[Programmer] ([Programmer_id])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Work_hours_Programmer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Work_hours]'))
ALTER TABLE [dbo].[Work_hours] CHECK CONSTRAINT [FK_Work_hours_Programmer]
GO
