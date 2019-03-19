DROP TABLE IF EXISTS [#FLAGS_PATCH];
CREATE TABLE [dbo].[#FLAGS_PATCH]
(
    [PATCH] NVARCHAR(50) NOT NULL,
	[SIZE_PATCH] INT NOT NULL
);
INSERT INTO [dbo].[#FLAGS_PATCH] VALUES
(('Flags\16x\'), (16)),
(('Flags\24x\'), (24)),
(('Flags\32x\'), (32)),
(('Flags\48x\'), (48)),
(('Flags\64x\'), (64)),
(('Flags\100x\'), (100)),
(('Flags\128x\'), (128)),
(('Flags\250x\'), (250)),
(('Flags\1000x\'), (1000));