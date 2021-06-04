CREATE TABLE [adi].[Amerigroup_MemberEligibility] (
    [MemberEligibilityKey]     INT           NOT NULL,
    [OriginalFileName]         VARCHAR (100) NOT NULL,
    [SrcFileName]              VARCHAR (100) NOT NULL,
    [LoadDate]                 DATE          NOT NULL,
    [CreatedDate]              DATE          NOT NULL,
    [DataDate]                 DATE          NOT NULL,
    [FileDate]                 DATE          NOT NULL,
    [CreatedBy]                VARCHAR (50)  NOT NULL,
    [LastUpdatedDate]          DATETIME      NOT NULL,
    [LastUpdatedBy]            VARCHAR (50)  NOT NULL,
    [MASTER_CONSUMER_ID]       BIGINT        NULL,
    [EligibilityEffectiveDate] DATE          NULL,
    [EligibilityEndDate]       DATE          NULL,
    [PG_ID]                    VARCHAR (32)  NULL,
    [PG_NAME]                  VARCHAR (150) NULL,
    [PRDCTSL]                  VARCHAR (32)  NULL,
    [RXBNFLG]                  VARCHAR (3)   NULL,
    [RowStatus]                TINYINT       NOT NULL
);

