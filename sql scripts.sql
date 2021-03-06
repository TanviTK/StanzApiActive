USE [master]
GO
/****** Object:  Database [Stanz]    Script Date: 7/6/2021 5:02:57 PM ******/
CREATE DATABASE [Stanz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stanz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Stanz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stanz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Stanz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Stanz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stanz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stanz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stanz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stanz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stanz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stanz] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stanz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stanz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stanz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stanz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stanz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stanz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stanz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stanz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stanz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stanz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Stanz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stanz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stanz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stanz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stanz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stanz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stanz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stanz] SET RECOVERY FULL 
GO
ALTER DATABASE [Stanz] SET  MULTI_USER 
GO
ALTER DATABASE [Stanz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stanz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stanz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stanz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Stanz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Stanz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Stanz', N'ON'
GO
ALTER DATABASE [Stanz] SET QUERY_STORE = OFF
GO
USE [Stanz]
GO
/****** Object:  Schema [finhub]    Script Date: 7/6/2021 5:02:59 PM ******/
CREATE SCHEMA [finhub]
GO
/****** Object:  UserDefinedTableType [finhub].[BasicFinancialsType]    Script Date: 7/6/2021 5:02:59 PM ******/
CREATE TYPE [finhub].[BasicFinancialsType] AS TABLE(
	[Symbol] [nvarchar](100) NULL,
	[_10DayAverageTradingVolume] [float] NULL,
	[_13WeekPriceReturnDaily] [float] NULL,
	[_26WeekPriceReturnDaily] [float] NULL,
	[_3MonthAverageTradingVolume] [float] NULL,
	[_52WeekHigh] [float] NULL,
	[_52WeekHighDate] [nvarchar](100) NULL,
	[_52WeekLow] [float] NULL,
	[_52WeekLowDate] [nvarchar](100) NULL,
	[_52WeekPriceReturnDaily] [float] NULL,
	[_5DayPriceReturnDaily] [float] NULL,
	[AssetTurnoverAnnual] [float] NULL,
	[AssetTurnoverTTM] [float] NULL,
	[Beta] [float] NULL,
	[BookValuePerShareAnnual] [float] NULL,
	[BookValuePerShareQuarterly] [float] NULL,
	[BookValueShareGrowth5Y] [float] NULL,
	[CapitalSpendingGrowth5Y] [float] NULL,
	[CashFlowPerShareAnnual] [float] NULL,
	[CashFlowPerShareTTM] [float] NULL,
	[CashPerSharePerShareAnnual] [float] NULL,
	[CashPerSharePerShareQuarterly] [float] NULL,
	[CurrentDividendYieldTTM] [float] NULL,
	[CurrentEvFreeCashFlowAnnual] [float] NULL,
	[CurrentEvFreeCashFlowTTM] [float] NULL,
	[CurrentRatioAnnual] [float] NULL,
	[CurrentRatioQuarterly] [float] NULL,
	[DividendGrowthRate5Y] [float] NULL,
	[DividendPerShare5Y] [float] NULL,
	[DividendPerShareAnnual] [float] NULL,
	[DividendYield5Y] [float] NULL,
	[DividendYieldIndicatedAnnual] [float] NULL,
	[DividendsPerShareTTM] [float] NULL,
	[EbitdPerShareTTM] [float] NULL,
	[EbitdaCagr5Y] [float] NULL,
	[EbitdaobjecterimCagr5Y] [float] NULL,
	[EpsBasicExclExtraItemsAnnual] [float] NULL,
	[EpsBasicExclExtraItemsTTM] [float] NULL,
	[EpsExclExtraItemsAnnual] [float] NULL,
	[EpsExclExtraItemsTTM] [float] NULL,
	[EpsGrowth3Y] [float] NULL,
	[EpsGrowth5Y] [float] NULL,
	[EpsGrowthQuarterlyYoy] [float] NULL,
	[EpsGrowthTTMYoy] [float] NULL,
	[EpsInclExtraItemsAnnual] [float] NULL,
	[EpsInclExtraItemsTTM] [float] NULL,
	[EpsNormalizedAnnual] [float] NULL,
	[FocfCagr5Y] [float] NULL,
	[FreeCashFlowAnnual] [float] NULL,
	[FreeCashFlowPerShareTTM] [float] NULL,
	[FreeCashFlowTTM] [float] NULL,
	[FreeOperatingCashFlowRevenue5Y] [float] NULL,
	[FreeOperatingCashFlowRevenueTTM] [float] NULL,
	[GrossMargin5Y] [float] NULL,
	[GrossMarginAnnual] [float] NULL,
	[GrossMargobjectTM] [float] NULL,
	[InventoryTurnoverAnnual] [float] NULL,
	[InventoryTurnoverTTM] [float] NULL,
	[LongTermDebtEquityAnnual] [float] NULL,
	[LongTermDebtEquityQuarterly] [float] NULL,
	[MarketCapitalization] [float] NULL,
	[MonthToDatePriceReturnDaily] [float] NULL,
	[NetDebtAnnual] [float] NULL,
	[NetDebtobjecterim] [float] NULL,
	[NetIncomeEmployeeAnnual] [float] NULL,
	[NetIncomeEmployeeTTM] [float] NULL,
	[NetobjecterestCoverageAnnual] [float] NULL,
	[NetobjecterestCoverageTTM] [float] NULL,
	[NetMarginGrowth5Y] [float] NULL,
	[NetProfitMargin5Y] [float] NULL,
	[NetProfitMarginAnnual] [float] NULL,
	[NetProfitMargobjectTM] [float] NULL,
	[OperatingMargin5Y] [float] NULL,
	[OperatingMarginAnnual] [float] NULL,
	[OperatingMargobjectTM] [float] NULL,
	[PayoutRatioAnnual] [float] NULL,
	[PayoutRatioTTM] [float] NULL,
	[PbAnnual] [float] NULL,
	[PbQuarterly] [float] NULL,
	[PcfShareTTM] [float] NULL,
	[PeBasicExclExtraTTM] [float] NULL,
	[PeExclExtraAnnual] [float] NULL,
	[PeExclExtraHighTTM] [float] NULL,
	[PeExclExtraTTM] [float] NULL,
	[PeExclLowTTM] [float] NULL,
	[PeInclExtraTTM] [float] NULL,
	[PeNormalizedAnnual] [float] NULL,
	[PfcfShareAnnual] [float] NULL,
	[PfcfShareTTM] [float] NULL,
	[PretaxMargin5Y] [float] NULL,
	[PretaxMarginAnnual] [float] NULL,
	[PretaxMargobjectTM] [float] NULL,
	[PriceRelativeToSP50013Week] [float] NULL,
	[PriceRelativeToSP50026Week] [float] NULL,
	[PriceRelativeToSP5004Week] [float] NULL,
	[PriceRelativeToSP50052Week] [float] NULL,
	[PriceRelativeToSP500Ytd] [float] NULL,
	[PsAnnual] [float] NULL,
	[PsTTM] [float] NULL,
	[PtbvAnnual] [float] NULL,
	[PtbvQuarterly] [float] NULL,
	[QuickRatioAnnual] [float] NULL,
	[QuickRatioQuarterly] [float] NULL,
	[ReceivablesTurnoverAnnual] [float] NULL,
	[ReceivablesTurnoverTTM] [float] NULL,
	[RevenueEmployeeAnnual] [float] NULL,
	[RevenueEmployeeTTM] [float] NULL,
	[RevenueGrowth3Y] [float] NULL,
	[RevenueGrowth5Y] [float] NULL,
	[RevenueGrowthQuarterlyYoy] [float] NULL,
	[RevenueGrowthTTMYoy] [float] NULL,
	[RevenuePerShareAnnual] [float] NULL,
	[RevenuePerShareTTM] [float] NULL,
	[RevenueShareGrowth5Y] [float] NULL,
	[RoaRfy] [float] NULL,
	[Roaa5Y] [float] NULL,
	[Roae5Y] [float] NULL,
	[RoaeTTM] [float] NULL,
	[RoeRfy] [float] NULL,
	[RoeTTM] [float] NULL,
	[Roi5Y] [float] NULL,
	[RoiAnnual] [float] NULL,
	[RoiTTM] [float] NULL,
	[TangibleBookValuePerShareAnnual] [float] NULL,
	[TangibleBookValuePerShareQuarterly] [float] NULL,
	[TbvCagr5Y] [float] NULL,
	[TotalDebtTotalEquityAnnual] [float] NULL,
	[TotalDebtTotalEquityQuarterly] [float] NULL,
	[TotalDebtCagr5Y] [float] NULL,
	[YearToDatePriceReturnDaily] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [finhub].[FinancialBalanceSheetType]    Script Date: 7/6/2021 5:02:59 PM ******/
CREATE TYPE [finhub].[FinancialBalanceSheetType] AS TABLE(
	[accessNumber] [nvarchar](100) NULL,
	[symbol] [nvarchar](100) NULL,
	[cik] [nvarchar](100) NULL,
	[year] [int] NULL,
	[quarter] [int] NULL,
	[form] [nvarchar](100) NULL,
	[startDate] [nvarchar](100) NULL,
	[endDate] [nvarchar](100) NULL,
	[filedDate] [nvarchar](100) NULL,
	[acceptedDate] [nvarchar](100) NULL,
	[CashAndCashEquivalentsAtCarryingValue] [float] NULL,
	[MarketableSecuritiesCurrent] [float] NULL,
	[AccountsReceivableNetCurrent] [float] NULL,
	[InventoryNet] [float] NULL,
	[NontradeReceivablesCurrent] [float] NULL,
	[OtherAssetsCurrent] [float] NULL,
	[AssetsCurrent] [float] NULL,
	[MarketableSecuritiesNoncurrent] [float] NULL,
	[PropertyPlantAndEquipmentNet] [float] NULL,
	[OtherAssetsNoncurrent] [float] NULL,
	[AssetsNoncurrent] [float] NULL,
	[Assets] [float] NULL,
	[AccountsPayableCurrent] [float] NULL,
	[OtherLiabilitiesCurrent] [float] NULL,
	[ContractWithCustomerLiabilityCurrent] [float] NULL,
	[CommercialPaper] [float] NULL,
	[LongTermDebtCurrent] [float] NULL,
	[LiabilitiesCurrent] [float] NULL,
	[LongTermDebtNoncurrent] [float] NULL,
	[OtherLiabilitiesNoncurrent] [float] NULL,
	[LiabilitiesNoncurrent] [float] NULL,
	[Liabilities] [float] NULL,
	[CommitmentsAndContingencies] [float] NULL,
	[CommonStocksIncludingAdditionalPaidInCapital] [float] NULL,
	[RetainedEarningsAccumulatedDeficit] [float] NULL,
	[AccumulatedOtherComprehensiveIncomeLossNetOfTax] [float] NULL,
	[StockholdersEquity] [float] NULL,
	[LiabilitiesAndStockholdersEquity] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [finhub].[FinancialCashFlowType]    Script Date: 7/6/2021 5:02:59 PM ******/
CREATE TYPE [finhub].[FinancialCashFlowType] AS TABLE(
	[accessNumber] [nvarchar](100) NULL,
	[symbol] [nvarchar](100) NULL,
	[cik] [nvarchar](100) NULL,
	[year] [int] NULL,
	[quarter] [int] NULL,
	[form] [nvarchar](100) NULL,
	[startDate] [nvarchar](100) NULL,
	[endDate] [nvarchar](100) NULL,
	[filedDate] [nvarchar](100) NULL,
	[acceptedDate] [nvarchar](100) NULL,
	[netIncomeLoss] [float] NULL,
	[depreciationDepletionAndAmortization] [float] NULL,
	[shareBasedCompensation] [float] NULL,
	[deferredIncomeTaxExpenseBenefit] [float] NULL,
	[otherNoncashIncomeExpense] [float] NULL,
	[increaseDecreaseInAccountsReceivable] [float] NULL,
	[increaseDecreaseInInventories] [float] NULL,
	[increaseDecreaseInOtherReceivables] [float] NULL,
	[increaseDecreaseInOtherOperatingAssets] [float] NULL,
	[increaseDecreaseInAccountsPayable] [float] NULL,
	[increaseDecreaseInContractWithCustomerLiability] [float] NULL,
	[increaseDecreaseInOtherOperatingLiabilities] [float] NULL,
	[netCashProvidedByUsedInOperatingActivities] [float] NULL,
	[paymentsToAcquireAvailableForSaleSecuritiesDebt] [float] NULL,
	[proceedsFromMaturitiesPrepaymentsAndCallsOfAvailableForSaleSecurities] [float] NULL,
	[proceedsFromSaleOfAvailableForSaleSecuritiesDebt] [float] NULL,
	[paymentsToAcquirePropertyPlantAndEquipment] [float] NULL,
	[paymentsToAcquireBusinessesNetOfCashAcquired] [float] NULL,
	[paymentsToAcquireOtherInvestments] [float] NULL,
	[proceedsFromSaleAndMaturityOfOtherInvestments] [float] NULL,
	[paymentsForProceedsFromOtherInvestingActivities] [float] NULL,
	[netCashProvidedByUsedInInvestingActivities] [float] NULL,
	[proceedsFromIssuanceOfCommonStock] [float] NULL,
	[paymentsRelatedToTaxWithholdingForShareBasedCompensation] [float] NULL,
	[paymentsOfDividends] [float] NULL,
	[paymentsForRepurchaseOfCommonStock] [float] NULL,
	[proceedsFromIssuanceOfLongTermDebt] [float] NULL,
	[repaymentsOfLongTermDebt] [float] NULL,
	[proceedsFromRepaymentsOfCommercialPaper] [float] NULL,
	[proceedsFromPaymentsForOtherFinancingActivities] [float] NULL,
	[netCashProvidedByUsedInFinancingActivities] [float] NULL,
	[cashCashEquivalentsRestrictedCashAndRestrictedCashEquivalentsPeriodIncreaseDecreaseIncludingExchangeRateEffect] [float] NULL,
	[incomeTaxesPaidNet] [float] NULL,
	[interestPaidNet] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [finhub].[Financials_BalanceSheetType]    Script Date: 7/6/2021 5:02:59 PM ******/
CREATE TYPE [finhub].[Financials_BalanceSheetType] AS TABLE(
	[Symbol] [nvarchar](100) NULL,
	[AccountsPayable] [float] NULL,
	[AccountsReceivables] [float] NULL,
	[AccruedLiability] [float] NULL,
	[AccumulatedDepreciation] [float] NULL,
	[AdditionalPaidInCapital] [float] NULL,
	[Cash] [float] NULL,
	[CashEquivalents] [float] NULL,
	[CashShortTermInvestments] [float] NULL,
	[CommonStock] [float] NULL,
	[CurrentAssets] [float] NULL,
	[CurrentLiabilities] [float] NULL,
	[CurrentPortionLongTermDebt] [float] NULL,
	[DeferredIncomeTax] [float] NULL,
	[IntangiblesAssets] [float] NULL,
	[Inventory] [float] NULL,
	[LiabilitiesShareholdersEquity] [float] NULL,
	[LongTermDebt] [float] NULL,
	[LongTermInvestments] [float] NULL,
	[MinorityInterest] [float] NULL,
	[NoteReceivableLongTerm] [float] NULL,
	[OtherAssets] [float] NULL,
	[OtherCurrentAssets] [float] NULL,
	[OtherCurrentliabilities] [float] NULL,
	[OtherEquity] [float] NULL,
	[OtherLiabilities] [float] NULL,
	[OtherLongTermAssets] [float] NULL,
	[OtherReceivables] [float] NULL,
	[Period] [nvarchar](100) NULL,
	[PropertyPlantEquipment] [float] NULL,
	[RetainedEarnings] [float] NULL,
	[SharesOutstanding] [float] NULL,
	[ShortTermDebt] [float] NULL,
	[ShortTermInvestments] [float] NULL,
	[TangibleBookValueperShare] [float] NULL,
	[TotalAssets] [float] NULL,
	[TotalDebt] [float] NULL,
	[TotalEquity] [float] NULL,
	[TotalLiabilities] [float] NULL,
	[TotalReceivables] [float] NULL,
	[TreasuryStock] [float] NULL,
	[UnrealizedProfitLossSecurity] [float] NULL,
	[Year] [float] NULL
)
GO
/****** Object:  Table [finhub].[BasicFinancials]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finhub].[BasicFinancials](
	[basicFinancialsId] [int] IDENTITY(1,1) NOT NULL,
	[Symbol] [nvarchar](100) NULL,
	[_10DayAverageTradingVolume] [float] NULL,
	[_13WeekPriceReturnDaily] [float] NULL,
	[_26WeekPriceReturnDaily] [float] NULL,
	[_3MonthAverageTradingVolume] [float] NULL,
	[_52WeekHigh] [float] NULL,
	[_52WeekHighDate] [nvarchar](100) NULL,
	[_52WeekLow] [float] NULL,
	[_52WeekLowDate] [nvarchar](100) NULL,
	[_52WeekPriceReturnDaily] [float] NULL,
	[_5DayPriceReturnDaily] [float] NULL,
	[AssetTurnoverAnnual] [float] NULL,
	[AssetTurnoverTTM] [float] NULL,
	[Beta] [float] NULL,
	[BookValuePerShareAnnual] [float] NULL,
	[BookValuePerShareQuarterly] [float] NULL,
	[BookValueShareGrowth5Y] [float] NULL,
	[CapitalSpendingGrowth5Y] [float] NULL,
	[CashFlowPerShareAnnual] [float] NULL,
	[CashFlowPerShareTTM] [float] NULL,
	[CashPerSharePerShareAnnual] [float] NULL,
	[CashPerSharePerShareQuarterly] [float] NULL,
	[CurrentDividendYieldTTM] [float] NULL,
	[CurrentEvFreeCashFlowAnnual] [float] NULL,
	[CurrentEvFreeCashFlowTTM] [float] NULL,
	[CurrentRatioAnnual] [float] NULL,
	[CurrentRatioQuarterly] [float] NULL,
	[DividendGrowthRate5Y] [float] NULL,
	[DividendPerShare5Y] [float] NULL,
	[DividendPerShareAnnual] [float] NULL,
	[DividendYield5Y] [float] NULL,
	[DividendYieldIndicatedAnnual] [float] NULL,
	[DividendsPerShareTTM] [float] NULL,
	[EbitdPerShareTTM] [float] NULL,
	[EbitdaCagr5Y] [float] NULL,
	[EbitdaobjecterimCagr5Y] [float] NULL,
	[EpsBasicExclExtraItemsAnnual] [float] NULL,
	[EpsBasicExclExtraItemsTTM] [float] NULL,
	[EpsExclExtraItemsAnnual] [float] NULL,
	[EpsExclExtraItemsTTM] [float] NULL,
	[EpsGrowth3Y] [float] NULL,
	[EpsGrowth5Y] [float] NULL,
	[EpsGrowthQuarterlyYoy] [float] NULL,
	[EpsGrowthTTMYoy] [float] NULL,
	[EpsInclExtraItemsAnnual] [float] NULL,
	[EpsInclExtraItemsTTM] [float] NULL,
	[EpsNormalizedAnnual] [float] NULL,
	[FocfCagr5Y] [float] NULL,
	[FreeCashFlowAnnual] [float] NULL,
	[FreeCashFlowPerShareTTM] [float] NULL,
	[FreeCashFlowTTM] [float] NULL,
	[FreeOperatingCashFlowRevenue5Y] [float] NULL,
	[FreeOperatingCashFlowRevenueTTM] [float] NULL,
	[GrossMargin5Y] [float] NULL,
	[GrossMarginAnnual] [float] NULL,
	[GrossMargobjectTM] [float] NULL,
	[InventoryTurnoverAnnual] [float] NULL,
	[InventoryTurnoverTTM] [float] NULL,
	[LongTermDebtEquityAnnual] [float] NULL,
	[LongTermDebtEquityQuarterly] [float] NULL,
	[MarketCapitalization] [float] NULL,
	[MonthToDatePriceReturnDaily] [float] NULL,
	[NetDebtAnnual] [float] NULL,
	[NetDebtobjecterim] [float] NULL,
	[NetIncomeEmployeeAnnual] [float] NULL,
	[NetIncomeEmployeeTTM] [float] NULL,
	[NetobjecterestCoverageAnnual] [float] NULL,
	[NetobjecterestCoverageTTM] [float] NULL,
	[NetMarginGrowth5Y] [float] NULL,
	[NetProfitMargin5Y] [float] NULL,
	[NetProfitMarginAnnual] [float] NULL,
	[NetProfitMargobjectTM] [float] NULL,
	[OperatingMargin5Y] [float] NULL,
	[OperatingMarginAnnual] [float] NULL,
	[OperatingMargobjectTM] [float] NULL,
	[PayoutRatioAnnual] [float] NULL,
	[PayoutRatioTTM] [float] NULL,
	[PbAnnual] [float] NULL,
	[PbQuarterly] [float] NULL,
	[PcfShareTTM] [float] NULL,
	[PeBasicExclExtraTTM] [float] NULL,
	[PeExclExtraAnnual] [float] NULL,
	[PeExclExtraHighTTM] [float] NULL,
	[PeExclExtraTTM] [float] NULL,
	[PeExclLowTTM] [float] NULL,
	[PeInclExtraTTM] [float] NULL,
	[PeNormalizedAnnual] [float] NULL,
	[PfcfShareAnnual] [float] NULL,
	[PfcfShareTTM] [float] NULL,
	[PretaxMargin5Y] [float] NULL,
	[PretaxMarginAnnual] [float] NULL,
	[PretaxMargobjectTM] [float] NULL,
	[PriceRelativeToSP50013Week] [float] NULL,
	[PriceRelativeToSP50026Week] [float] NULL,
	[PriceRelativeToSP5004Week] [float] NULL,
	[PriceRelativeToSP50052Week] [float] NULL,
	[PriceRelativeToSP500Ytd] [float] NULL,
	[PsAnnual] [float] NULL,
	[PsTTM] [float] NULL,
	[PtbvAnnual] [float] NULL,
	[PtbvQuarterly] [float] NULL,
	[QuickRatioAnnual] [float] NULL,
	[QuickRatioQuarterly] [float] NULL,
	[ReceivablesTurnoverAnnual] [float] NULL,
	[ReceivablesTurnoverTTM] [float] NULL,
	[RevenueEmployeeAnnual] [float] NULL,
	[RevenueEmployeeTTM] [float] NULL,
	[RevenueGrowth3Y] [float] NULL,
	[RevenueGrowth5Y] [float] NULL,
	[RevenueGrowthQuarterlyYoy] [float] NULL,
	[RevenueGrowthTTMYoy] [float] NULL,
	[RevenuePerShareAnnual] [float] NULL,
	[RevenuePerShareTTM] [float] NULL,
	[RevenueShareGrowth5Y] [float] NULL,
	[RoaRfy] [float] NULL,
	[Roaa5Y] [float] NULL,
	[Roae5Y] [float] NULL,
	[RoaeTTM] [float] NULL,
	[RoeRfy] [float] NULL,
	[RoeTTM] [float] NULL,
	[Roi5Y] [float] NULL,
	[RoiAnnual] [float] NULL,
	[RoiTTM] [float] NULL,
	[TangibleBookValuePerShareAnnual] [float] NULL,
	[TangibleBookValuePerShareQuarterly] [float] NULL,
	[TbvCagr5Y] [float] NULL,
	[TotalDebtTotalEquityAnnual] [float] NULL,
	[TotalDebtTotalEquityQuarterly] [float] NULL,
	[TotalDebtCagr5Y] [float] NULL,
	[YearToDatePriceReturnDaily] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[basicFinancialsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [finhub].[FinancialBalanceSheet]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finhub].[FinancialBalanceSheet](
	[balanceSheetId] [int] IDENTITY(1,1) NOT NULL,
	[accessNumber] [nvarchar](100) NULL,
	[symbol] [nvarchar](100) NULL,
	[cik] [nvarchar](100) NULL,
	[year] [int] NULL,
	[quarter] [int] NULL,
	[form] [nvarchar](100) NULL,
	[startDate] [nvarchar](100) NULL,
	[endDate] [nvarchar](100) NULL,
	[filedDate] [nvarchar](100) NULL,
	[acceptedDate] [nvarchar](100) NULL,
	[cashAndCashEquivalentsAtCarryingValue] [float] NULL,
	[marketableSecuritiesCurrent] [float] NULL,
	[accountsReceivableNetCurrent] [float] NULL,
	[inventoryNet] [float] NULL,
	[nontradeReceivablesCurrent] [float] NULL,
	[otherAssetsCurrent] [float] NULL,
	[assetsCurrent] [float] NULL,
	[marketableSecuritiesNoncurrent] [float] NULL,
	[propertyPlantAndEquipmentNet] [float] NULL,
	[otherAssetsNoncurrent] [float] NULL,
	[assetsNoncurrent] [float] NULL,
	[assets] [float] NULL,
	[accountsPayableCurrent] [float] NULL,
	[otherLiabilitiesCurrent] [float] NULL,
	[contractWithCustomerLiabilityCurrent] [float] NULL,
	[commercialPaper] [float] NULL,
	[longTermDebtCurrent] [float] NULL,
	[liabilitiesCurrent] [float] NULL,
	[longTermDebtNoncurrent] [float] NULL,
	[otherLiabilitiesNoncurrent] [float] NULL,
	[liabilitiesNoncurrent] [float] NULL,
	[liabilities] [float] NULL,
	[commitmentsAndContingencies] [float] NULL,
	[commonStocksIncludingAdditionalPaidInCapital] [float] NULL,
	[retainedEarningsAccumulatedDeficit] [float] NULL,
	[accumulatedOtherComprehensiveIncomeLossNetOfTax] [float] NULL,
	[stockholdersEquity] [float] NULL,
	[liabilitiesAndStockholdersEquity] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[balanceSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [finhub].[FinancialCashFlow]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finhub].[FinancialCashFlow](
	[cashFlowId] [int] IDENTITY(1,1) NOT NULL,
	[accessNumber] [nvarchar](100) NULL,
	[symbol] [nvarchar](100) NULL,
	[cik] [nvarchar](100) NULL,
	[year] [int] NULL,
	[quarter] [int] NULL,
	[form] [nvarchar](100) NULL,
	[startDate] [nvarchar](100) NULL,
	[endDate] [nvarchar](100) NULL,
	[filedDate] [nvarchar](100) NULL,
	[acceptedDate] [nvarchar](100) NULL,
	[netIncomeLoss] [float] NULL,
	[depreciationDepletionAndAmortization] [float] NULL,
	[shareBasedCompensation] [float] NULL,
	[deferredIncomeTaxExpenseBenefit] [float] NULL,
	[otherNoncashIncomeExpense] [float] NULL,
	[increaseDecreaseInAccountsReceivable] [float] NULL,
	[increaseDecreaseInInventories] [float] NULL,
	[increaseDecreaseInOtherReceivables] [float] NULL,
	[increaseDecreaseInOtherOperatingAssets] [float] NULL,
	[increaseDecreaseInAccountsPayable] [float] NULL,
	[increaseDecreaseInContractWithCustomerLiability] [float] NULL,
	[increaseDecreaseInOtherOperatingLiabilities] [float] NULL,
	[netCashProvidedByUsedInOperatingActivities] [float] NULL,
	[paymentsToAcquireAvailableForSaleSecuritiesDebt] [float] NULL,
	[proceedsFromMaturitiesPrepaymentsAndCallsOfAvailableForSaleSecurities] [float] NULL,
	[proceedsFromSaleOfAvailableForSaleSecuritiesDebt] [float] NULL,
	[paymentsToAcquirePropertyPlantAndEquipment] [float] NULL,
	[paymentsToAcquireBusinessesNetOfCashAcquired] [float] NULL,
	[paymentsToAcquireOtherInvestments] [float] NULL,
	[proceedsFromSaleAndMaturityOfOtherInvestments] [float] NULL,
	[paymentsForProceedsFromOtherInvestingActivities] [float] NULL,
	[netCashProvidedByUsedInInvestingActivities] [float] NULL,
	[proceedsFromIssuanceOfCommonStock] [float] NULL,
	[paymentsRelatedToTaxWithholdingForShareBasedCompensation] [float] NULL,
	[paymentsOfDividends] [float] NULL,
	[paymentsForRepurchaseOfCommonStock] [float] NULL,
	[proceedsFromIssuanceOfLongTermDebt] [float] NULL,
	[repaymentsOfLongTermDebt] [float] NULL,
	[proceedsFromRepaymentsOfCommercialPaper] [float] NULL,
	[proceedsFromPaymentsForOtherFinancingActivities] [float] NULL,
	[netCashProvidedByUsedInFinancingActivities] [float] NULL,
	[cashCashEquivalentsRestrictedCashAndRestrictedCashEquivalentsPeriodIncreaseDecreaseIncludingExchangeRateEffect] [float] NULL,
	[incomeTaxesPaidNet] [float] NULL,
	[interestPaidNet] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[cashFlowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [finhub].[FinancialIncomeStatement]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finhub].[FinancialIncomeStatement](
	[incomeStatementId] [int] IDENTITY(1,1) NOT NULL,
	[accessNumber] [nvarchar](100) NULL,
	[symbol] [nvarchar](100) NULL,
	[cik] [nvarchar](100) NULL,
	[year] [int] NULL,
	[quarter] [int] NULL,
	[form] [nvarchar](100) NULL,
	[startDate] [nvarchar](100) NULL,
	[endDate] [nvarchar](100) NULL,
	[filedDate] [nvarchar](100) NULL,
	[acceptedDate] [nvarchar](100) NULL,
	[revenueFromContractWithCustomerExcludingAssessedTax] [float] NULL,
	[costOfGoodsAndServicesSold] [float] NULL,
	[grossProfit] [float] NULL,
	[researchAndDevelopmentExpense] [float] NULL,
	[sellingGeneralAndAdministrativeExpense] [float] NULL,
	[operatingExpenses] [float] NULL,
	[operatingIncomeLoss] [float] NULL,
	[nonoperatingIncomeExpense] [float] NULL,
	[incomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest] [float] NULL,
	[incomeTaxExpenseBenefit] [float] NULL,
	[netIncomeLoss] [float] NULL,
	[earningsPerShareBasic] [float] NULL,
	[earningsPerShareDiluted] [float] NULL,
	[weightedAverageNumberOfSharesOutstandingBasic] [float] NULL,
	[weightedAverageNumberOfDilutedSharesOutstanding] [float] NULL,
	[otherComprehensiveIncomeLossForeignCurrencyTransactionAndTranslationAdjustmentNetOfTax] [float] NULL,
	[otherComprehensiveIncomeLossDerivativeInstrumentGainLossbeforeReclassificationafterTax] [float] NULL,
	[otherComprehensiveIncomeLossCashFlowHedgeGainLossReclassificationAfterTax] [float] NULL,
	[otherComprehensiveIncomeLossDerivativeInstrumentGainLossafterReclassificationandTax] [float] NULL,
	[otherComprehensiveIncomeUnrealizedHoldingGainLossOnSecuritiesArisingDuringPeriodNetOfTax] [float] NULL,
	[otherComprehensiveIncomeLossReclassificationAdjustmentFromAOCIForSaleOfSecuritiesNetOfTax] [float] NULL,
	[otherComprehensiveIncomeLossAvailableForSaleSecuritiesAdjustmentNetOfTax] [float] NULL,
	[otherComprehensiveIncomeLossNetOfTaxPortionAttributableToParent] [float] NULL,
	[comprehensiveIncomeNetOfTax] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[incomeStatementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [finhub].[Financials_BalanceSheet]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finhub].[Financials_BalanceSheet](
	[BalanceSheetId] [int] IDENTITY(1,1) NOT NULL,
	[Symbol] [nvarchar](100) NULL,
	[AccountsPayable] [float] NULL,
	[AccountsReceivables] [float] NULL,
	[AccruedLiability] [float] NULL,
	[AccumulatedDepreciation] [float] NULL,
	[AdditionalPaidInCapital] [float] NULL,
	[Cash] [float] NULL,
	[CashEquivalents] [float] NULL,
	[CashShortTermInvestments] [float] NULL,
	[CommonStock] [float] NULL,
	[CurrentAssets] [float] NULL,
	[CurrentLiabilities] [float] NULL,
	[CurrentPortionLongTermDebt] [float] NULL,
	[DeferredIncomeTax] [float] NULL,
	[IntangiblesAssets] [float] NULL,
	[Inventory] [float] NULL,
	[LiabilitiesShareholdersEquity] [float] NULL,
	[LongTermDebt] [float] NULL,
	[LongTermInvestments] [float] NULL,
	[MinorityInterest] [float] NULL,
	[NoteReceivableLongTerm] [float] NULL,
	[OtherAssets] [float] NULL,
	[OtherCurrentAssets] [float] NULL,
	[OtherCurrentliabilities] [float] NULL,
	[OtherEquity] [float] NULL,
	[OtherLiabilities] [float] NULL,
	[OtherLongTermAssets] [float] NULL,
	[OtherReceivables] [float] NULL,
	[Period] [nvarchar](100) NULL,
	[PropertyPlantEquipment] [float] NULL,
	[RetainedEarnings] [float] NULL,
	[SharesOutstanding] [float] NULL,
	[ShortTermDebt] [float] NULL,
	[ShortTermInvestments] [float] NULL,
	[TangibleBookValueperShare] [float] NULL,
	[TotalAssets] [float] NULL,
	[TotalDebt] [float] NULL,
	[TotalEquity] [float] NULL,
	[TotalLiabilities] [float] NULL,
	[TotalReceivables] [float] NULL,
	[TreasuryStock] [float] NULL,
	[UnrealizedProfitLossSecurity] [float] NULL,
	[Year] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[BalanceSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [finhub].[SPGetBasicFinancialInfo]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [finhub].[SPGetBasicFinancialInfo] 
@Symbols nvarchar(max) 
AS
   
   select * from  finhub.BasicFinancials
   where Symbol in (select l.value from  string_split(@Symbols,',') l)
GO
/****** Object:  StoredProcedure [finhub].[SPInsertBasicFinancialInfo]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [finhub].[SPInsertBasicFinancialInfo] 
   @TypBasicFinancials BasicFinancialsType READONLY
AS
   SET NOCOUNT ON;

   INSERT INTO finhub.[BasicFinancials]
        (
	     Symbol ,
		 _10DayAverageTradingVolume ,    
         _13WeekPriceReturnDaily ,  
         _26WeekPriceReturnDaily ,  
         _3MonthAverageTradingVolume ,     
         _52WeekHigh ,     
         _52WeekHighDate ,
         _52WeekLow ,
         _52WeekLowDate ,       
         _52WeekPriceReturnDaily ,  
         _5DayPriceReturnDaily ,  
         AssetTurnoverAnnual ,    
         AssetTurnoverTTM , 
         Beta ,       
         BookValuePerShareAnnual ,      
         BookValuePerShareQuarterly ,
         BookValueShareGrowth5Y ,    
         CapitalSpendingGrowth5Y ,   
         CashFlowPerShareAnnual ,  
         CashFlowPerShareTTM ,      
         CashPerSharePerShareAnnual ,
         CashPerSharePerShareQuarterly ,
         CurrentDividendYieldTTM ,
         CurrentEvFreeCashFlowAnnual ,
         CurrentEvFreeCashFlowTTM ,
         CurrentRatioAnnual ,   
         CurrentRatioQuarterly ,   
         DividendGrowthRate5Y , 
         DividendPerShare5Y ,
         DividendPerShareAnnual ,   
         DividendYield5Y ,   
         DividendYieldIndicatedAnnual ,    
         DividendsPerShareTTM ,       
         EbitdPerShareTTM ,        
         EbitdaCagr5Y ,   
         EbitdaobjecterimCagr5Y ,     
         EpsBasicExclExtraItemsAnnual ,    
         EpsBasicExclExtraItemsTTM ,     
         EpsExclExtraItemsAnnual ,       
         EpsExclExtraItemsTTM ,      
         EpsGrowth3Y ,     
         EpsGrowth5Y ,       
         EpsGrowthQuarterlyYoy ,      
         EpsGrowthTTMYoy ,
         EpsInclExtraItemsAnnual ,
         EpsInclExtraItemsTTM ,  
         EpsNormalizedAnnual ,  
         FocfCagr5Y ,
         FreeCashFlowAnnual ,  
         FreeCashFlowPerShareTTM ,     
         FreeCashFlowTTM ,      
         FreeOperatingCashFlowRevenue5Y ,   
         FreeOperatingCashFlowRevenueTTM ,
         GrossMargin5Y , 
         GrossMarginAnnual ,
         GrossMargobjectTM ,    
         InventoryTurnoverAnnual ,  
         InventoryTurnoverTTM ,
         LongTermDebtEquityAnnual ,
         LongTermDebtEquityQuarterly ,
         MarketCapitalization ,
         MonthToDatePriceReturnDaily ,        
         NetDebtAnnual ,
         NetDebtobjecterim ,       
         NetIncomeEmployeeAnnual ,
         NetIncomeEmployeeTTM ,
         NetobjecterestCoverageAnnual ,
         NetobjecterestCoverageTTM ,
         NetMarginGrowth5Y ,
         NetProfitMargin5Y ,
         NetProfitMarginAnnual ,
         NetProfitMargobjectTM ,
         OperatingMargin5Y ,
         OperatingMarginAnnual ,
         OperatingMargobjectTM ,
         PayoutRatioAnnual ,        
         PayoutRatioTTM ,
         PbAnnual ,
         PbQuarterly ,
         PcfShareTTM ,
         PeBasicExclExtraTTM ,
         PeExclExtraAnnual ,
         PeExclExtraHighTTM ,
         PeExclExtraTTM ,
         PeExclLowTTM ,
         PeInclExtraTTM ,        
         PeNormalizedAnnual ,       
         PfcfShareAnnual ,
         PfcfShareTTM ,
         PretaxMargin5Y ,
         PretaxMarginAnnual ,
         PretaxMargobjectTM ,
         PriceRelativeToSP50013Week ,
         PriceRelativeToSP50026Week ,
         PriceRelativeToSP5004Week ,
         PriceRelativeToSP50052Week ,
         PriceRelativeToSP500Ytd ,        
         PsAnnual ,
         PsTTM ,
         PtbvAnnual ,
         PtbvQuarterly ,
         QuickRatioAnnual ,
         QuickRatioQuarterly ,
         ReceivablesTurnoverAnnual ,
         ReceivablesTurnoverTTM ,
         RevenueEmployeeAnnual ,
         RevenueEmployeeTTM ,
         RevenueGrowth3Y ,
         RevenueGrowth5Y ,
         RevenueGrowthQuarterlyYoy ,
         RevenueGrowthTTMYoy ,
         RevenuePerShareAnnual ,
         RevenuePerShareTTM ,
         RevenueShareGrowth5Y ,
         RoaRfy ,
         Roaa5Y ,
         Roae5Y ,        
         RoaeTTM ,
         RoeRfy ,
         RoeTTM ,
         Roi5Y ,
         RoiAnnual ,       
         RoiTTM ,        
         TangibleBookValuePerShareAnnual ,
         TangibleBookValuePerShareQuarterly ,
         TbvCagr5Y ,
         TotalDebtTotalEquityAnnual ,
         TotalDebtTotalEquityQuarterly ,     
         TotalDebtCagr5Y ,
         YearToDatePriceReturnDaily 
 )
   SELECT * FROM @TypBasicFinancials 

GO
/****** Object:  StoredProcedure [finhub].[SPInsertFinancialReports]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [finhub].[SPInsertFinancialReports] 
   @TypFinancialBalanceSheet FinancialBalanceSheetType READONLY,
   @TypFinancialCashFlow FinancialCashFlowType READONLY
AS
   SET NOCOUNT ON;

   INSERT INTO finhub.[FinancialBalanceSheet]
        (accessNumber,
         symbol,
         cik,
         year,
         quarter,
         form,
         startDate,
         endDate,
         filedDate,
         acceptedDate,
         CashAndCashEquivalentsAtCarryingValue ,
         MarketableSecuritiesCurrent ,
         AccountsReceivableNetCurrent ,
         InventoryNet ,
         NontradeReceivablesCurrent ,
         OtherAssetsCurrent ,
         AssetsCurrent ,
         MarketableSecuritiesNoncurrent ,
         PropertyPlantAndEquipmentNet ,
         OtherAssetsNoncurrent ,
         AssetsNoncurrent ,
         Assets ,
         AccountsPayableCurrent ,
         OtherLiabilitiesCurrent ,
         ContractWithCustomerLiabilityCurrent ,
         CommercialPaper ,
         LongTermDebtCurrent ,
         LiabilitiesCurrent ,
         LongTermDebtNoncurrent ,
         OtherLiabilitiesNoncurrent ,
         LiabilitiesNoncurrent ,
         Liabilities ,
         CommitmentsAndContingencies ,
         CommonStocksIncludingAdditionalPaidInCapital ,
         RetainedEarningsAccumulatedDeficit ,
         AccumulatedOtherComprehensiveIncomeLossNetOfTax ,
         StockholdersEquity ,
         LiabilitiesAndStockholdersEquity  )
   SELECT * FROM @TypFinancialBalanceSheet 


      INSERT INTO finhub.[FinancialCashFlow]
        ( accessNumber, 
          symbol, 
          cik, 
          year , 
          quarter, 
          form, 
          startDate, 
          endDate, 
          filedDate, 
          acceptedDate, 
          netIncomeLoss,
          depreciationDepletionAndAmortization,
          shareBasedCompensation,
          deferredIncomeTaxExpenseBenefit,
          otherNoncashIncomeExpense,
          increaseDecreaseInAccountsReceivable,
          increaseDecreaseInInventories,
          increaseDecreaseInOtherReceivables,
          increaseDecreaseInOtherOperatingAssets,
          increaseDecreaseInAccountsPayable,
          increaseDecreaseInContractWithCustomerLiability,
          increaseDecreaseInOtherOperatingLiabilities,
          netCashProvidedByUsedInOperatingActivities,
          paymentsToAcquireAvailableForSaleSecuritiesDebt,
          proceedsFromMaturitiesPrepaymentsAndCallsOfAvailableForSaleSecurities,
          proceedsFromSaleOfAvailableForSaleSecuritiesDebt,
          paymentsToAcquirePropertyPlantAndEquipment,
          paymentsToAcquireBusinessesNetOfCashAcquired,
          paymentsToAcquireOtherInvestments,
          proceedsFromSaleAndMaturityOfOtherInvestments,
          paymentsForProceedsFromOtherInvestingActivities,
          netCashProvidedByUsedInInvestingActivities,
          proceedsFromIssuanceOfCommonStock,
          paymentsRelatedToTaxWithholdingForShareBasedCompensation,
          paymentsOfDividends,
          paymentsForRepurchaseOfCommonStock,
          proceedsFromIssuanceOfLongTermDebt,
          repaymentsOfLongTermDebt,
          proceedsFromRepaymentsOfCommercialPaper,
          proceedsFromPaymentsForOtherFinancingActivities,
          netCashProvidedByUsedInFinancingActivities,
          cashCashEquivalentsRestrictedCashAndRestrictedCashEquivalentsPeriodIncreaseDecreaseIncludingExchangeRateEffect,
          incomeTaxesPaidNet,
          interestPaidNet  )
   SELECT * FROM @TypFinancialCashFlow


   
		 
GO
/****** Object:  StoredProcedure [finhub].[SPInsertFinancials_BalanceSheet]    Script Date: 7/6/2021 5:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [finhub].[SPInsertFinancials_BalanceSheet] 
   @TypBSFinancials finhub.[Financials_BalanceSheetType] READONLY
AS
   SET NOCOUNT ON;

   INSERT INTO finhub.[Financials_BalanceSheet]
 (
             Symbol,
             AccountsPayable ,
             AccountsReceivables ,
             AccruedLiability ,
             AccumulatedDepreciation ,
             AdditionalPaidInCapital ,
             Cash ,
             CashEquivalents ,
             CashShortTermInvestments ,
             CommonStock ,
             CurrentAssets ,
             CurrentLiabilities ,
             CurrentPortionLongTermDebt ,
             DeferredIncomeTax ,
             IntangiblesAssets ,
             Inventory ,
             LiabilitiesShareholdersEquity ,
             LongTermDebt ,
             LongTermInvestments ,
             MinorityInterest ,
             NoteReceivableLongTerm ,
             OtherAssets ,
             OtherCurrentAssets ,
             OtherCurrentliabilities ,
             OtherEquity ,
             OtherLiabilities ,
             OtherLongTermAssets ,
             OtherReceivables ,
             Period,
             PropertyPlantEquipment,
             RetainedEarnings ,
             SharesOutstanding ,
             ShortTermDebt ,
             ShortTermInvestments ,
             TangibleBookValueperShare ,
             TotalAssets ,
             TotalDebt ,
             TotalEquity ,
             TotalLiabilities ,
             TotalReceivables ,
             TreasuryStock ,
             UnrealizedProfitLossSecurity ,
             Year 
			 )
select * from @TypBSFinancials
GO
USE [master]
GO
ALTER DATABASE [Stanz] SET  READ_WRITE 
GO
