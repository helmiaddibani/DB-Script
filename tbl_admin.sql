/*
   Wednesday, November 26, 20147:28:18 PM
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
	first_nm nvarchar(50) NOT NULL,
	last_nm nvarchar(50) NULL,
	email varbinary(MAX) NOT NULL,
	status int NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Table_1 ADD CONSTRAINT
	DF_Table_1_status DEFAULT 101 FOR status
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
