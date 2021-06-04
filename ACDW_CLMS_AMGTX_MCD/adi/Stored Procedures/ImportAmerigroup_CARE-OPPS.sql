﻿

-- =============================================
-- Author:		Bing Yu
-- Create date: 09/08/2020
-- Description:	Insert 
-- ============================================
CREATE PROCEDURE [adi].[ImportAmerigroup_CARE-OPPS]
    @OriginalFileName  varchar(100)  ,
	@SrcFileName  varchar(100)  ,
	@LoadDate varchar(10) ,
	--@CreatedDate  
	@DataDate varchar(10) ,  
	@FileDate varchar(10) , 
	@CreatedBy  varchar(50)  ,
	--@LastUpdatedDate  @datetime   ,
	@LastUpdatedBy  varchar(50)  ,
    @MasterConsumerID  bigint ,
	@HealthCardIdentifier  varchar(50) ,
	@FirstName  varchar(50) ,
	@LastName  varchar(50) ,
	@DateBirth  varchar(10) ,
	@Gender  varchar(3) ,
	@EnterpriseMemberCode  varchar(3) ,
	@MemberSequenceNumber  varchar(15) ,
	@MSR_CMPLNC_CD  varchar(32) ,
	@RULE_ID  varchar(8) ,
	@ANLYSS_AS_OF_DT  varchar(10) ,
	@LAST_SRVC_DT  varchar(10) ,
	@RULE_NM  varchar(255) ,
	@PG_ID  varchar(32) ,
	@PG_NAME  varchar(100) ,
	@PGM_ID  varchar(32) ,
	@Panel_ID  varchar(32) ,
	@MemberKey  varchar(32) ,
	@MSR_NMRTR_NBR  varchar(3) ,
	@MSR_DNMNTR_NBR  varchar(3) ,
	@NEXT_CLNCL_DUE_DT  varchar(10) ,
	@MSRMNT_PRD_STRT_DT  varchar(10) ,
	@MSRMNT_PRD_END_DT  varchar(10) ,
	@LatestValue  varchar(100) ,
	@AttributionAsDate  varchar(10) 
            
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @DATE VARCHAR(8) , @YEAR VARCHAR(4), @MONTH VARCHAR(2), @DAY VARCHAR(2)	
	SET @DATE =  SUBSTRING(@SrcFileName, (CHARINDEX('.',@SrcFileName)-8),8)
	SET @YEAR = SUBSTRING(@DATE, 5,4)
	SET @MONTH = SUBSTRING(@DATE, 1,2)
	SET @DAY = SUBSTRING(@DATE, 3,2)


    INSERT INTO [adi].[Amerigroup_CARE-OPPS]
    (
        [OriginalFileName]
      ,[SrcFileName]
      ,[LoadDate]
      ,[CreatedDate]
      ,[DataDate]
      ,[FileDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
      ,[MasterConsumerID]
      ,[HealthCardIdentifier]
      ,[FirstName]
      ,[LastName]
      ,[DateBirth]
      ,[Gender]
      ,[EnterpriseMemberCode]
      ,[MemberSequenceNumber]
      ,[MSR_CMPLNC_CD]
      ,[RULE_ID]
      ,[ANLYSS_AS_OF_DT]
      ,[LAST_SRVC_DT]
      ,[RULE_NM]
      ,[PG_ID]
      ,[PG_NAME]
      ,[PGM_ID]
      ,[Panel_ID]
      ,[MemberKey]
      ,[MSR_NMRTR_NBR]
      ,[MSR_DNMNTR_NBR]
      ,[NEXT_CLNCL_DUE_DT]
      ,[MSRMNT_PRD_STRT_DT]
      ,[MSRMNT_PRD_END_DT]
      ,[LatestValue]
      ,[AttributionAsDate]
	)
		
 VALUES  (
       @OriginalFileName    ,
	@SrcFileName   ,
	GETDATE(),
	--@LoadDate varchar(10) ,
	GETDATE(),
	--@CreatedDate  
	CONVERT(DATE, @YEAR + '-' + @MONTH + '-' + @DAY),
	--@DataDate  ,  
	CONVERT(DATE, @YEAR + '-' + @MONTH + '-' + @DAY),
--	@FileDate  ,  
	@CreatedBy   ,
	GETDATE(),
	--@LastUpdatedDate  @datetime   ,
	@LastUpdatedBy   ,
    @MasterConsumerID  ,
	@HealthCardIdentifier  ,
	@FirstName  ,
	@LastName   ,
	Case when @DateBirth   =''
	then NULL
	ELSE CONVERT(DATE, @DateBirth )
	END,
	@Gender  ,
	@EnterpriseMemberCode   ,
	@MemberSequenceNumber  ,
	@MSR_CMPLNC_CD  ,
	@RULE_ID   ,
	Case when @ANLYSS_AS_OF_DT  =''
	then NULL
	ELSE CONVERT(DATE, @ANLYSS_AS_OF_DT )
	END,
	Case when @LAST_SRVC_DT  =''
	then NULL
	ELSE CONVERT(DATE, @LAST_SRVC_DT)
	END,
	@RULE_NM   ,
	@PG_ID   ,
	@PG_NAME   ,
	@PGM_ID   ,
	@Panel_ID  ,
	@MemberKey   ,
	@MSR_NMRTR_NBR  ,
	@MSR_DNMNTR_NBR   ,
	Case when @NEXT_CLNCL_DUE_DT  =''
	then NULL
	ELSE CONVERT(DATE, @NEXT_CLNCL_DUE_DT)
	END,
	Case when @MSRMNT_PRD_STRT_DT  =''
	then NULL
	ELSE CONVERT(DATE, @MSRMNT_PRD_STRT_DT)
	END,
	Case when @MSRMNT_PRD_END_DT  =''
	then NULL
	ELSE CONVERT(DATE, @MSRMNT_PRD_END_DT)
	END,
	@LatestValue   ,
	Case when @AttributionAsDate =''
	then NULL
	ELSE CONVERT(DATE, @AttributionAsDate  )
	END
            
)

END




