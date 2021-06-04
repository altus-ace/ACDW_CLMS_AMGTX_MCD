CREATE TABLE [adi].[Amerigroup_CodeSets] (
    [Amerigroup_CodeSetsSKey] INT            NOT NULL,
    [OriginalFileName]        VARCHAR (100)  NOT NULL,
    [SrcFileName]             VARCHAR (100)  NOT NULL,
    [LoadDate]                DATE           NOT NULL,
    [CreatedDate]             DATE           NOT NULL,
    [DataDate]                DATE           NOT NULL,
    [FileDate]                DATE           NOT NULL,
    [CreatedBy]               VARCHAR (50)   NOT NULL,
    [LastUpdatedDate]         DATETIME       NOT NULL,
    [LastUpdatedBy]           VARCHAR (50)   NOT NULL,
    [CodeSet]                 VARCHAR (40)   NULL,
    [CodeValue]               VARCHAR (100)  NULL,
    [CodeValueName]           VARCHAR (1000) NULL,
    [SystemRecordCode]        VARCHAR (10)   NULL,
    [ProductSystemRecordCode] CHAR (10)      NULL
);

