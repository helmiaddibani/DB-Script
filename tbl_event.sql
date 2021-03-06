/*
   Wednesday, November 26, 20147:23:51 PM
   User: 
   Server: .\SQLEXPRESS
   Database: EventManagementSystem
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Table_1
	(
	id uniqueidentifier NOT NULL,
	admin_id uniqueidentifier NOT NULL,
	name nvarchar(50) NOT NULL,
	type nvarchar(50) NULL,
	start_dt date NULL,
	end_dt date NULL,
	address nvarchar(MAX) NULL,
	status_cd int NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Table_1 ADD CONSTRAINT
	DF_Table_1_status_cd DEFAULT 101 FOR status_cd
GO
ALTER TABLE dbo.Table_1 ADD CONSTRAINT
	PK_Table_1 PRIMARY KEY CLUSTERED 
	(
	id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Table_1 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
