CREATE TABLE [adi].[Amerigroup_CLM_HDR_PROC] (
    [Amerigroup_CLM_HDR_PROC_Key] INT           NOT NULL,
    [OriginalFileName]            VARCHAR (100) NOT NULL,
    [SrcFileName]                 VARCHAR (100) NOT NULL,
    [LoadDate]                    DATE          NOT NULL,
    [CreatedDate]                 DATE          NOT NULL,
    [DataDate]                    DATE          NOT NULL,
    [FileDate]                    DATE          NOT NULL,
    [CreatedBy]                   VARCHAR (50)  NOT NULL,
    [LastUpdatedDate]             DATETIME      NOT NULL,
    [LastUpdatedBy]               VARCHAR (50)  NOT NULL,
    [ClaimNbr]                    VARCHAR (24)  NULL,
    [ClaimAdjustmentNum]          DECIMAL (4)   NULL,
    [ClaimDispositionCode]        VARCHAR (5)   NULL,
    [PG_ID]                       VARCHAR (32)  NULL,
    [PG_NAME]                     VARCHAR (100) NULL,
    [CLM_ADJSTMNT_KEY]            CHAR (32)     NULL,
    [SEQUENCE_NUMBER]             DECIMAL (2)   NULL,
    [ICD_Procedure_Date]          DATE          NULL,
    [ICD_CM_procedure]            VARCHAR (8)   NULL
);

