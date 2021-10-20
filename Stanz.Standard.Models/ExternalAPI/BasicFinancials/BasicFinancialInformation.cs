using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.ExternalAPI.BasicFinancials
{
    public class Metric
    {
        [JsonProperty("10DayAverageTradingVolume")]
        public object _10DayAverageTradingVolume { get; set; }

        [JsonProperty("13WeekPriceReturnDaily")]
        public object _13WeekPriceReturnDaily { get; set; }

        [JsonProperty("26WeekPriceReturnDaily")]
        public object _26WeekPriceReturnDaily { get; set; }

        [JsonProperty("3MonthAverageTradingVolume")]
        public object _3MonthAverageTradingVolume { get; set; }

        [JsonProperty("52WeekHigh")]
        public object _52WeekHigh { get; set; }

        [JsonProperty("52WeekHighDate")]
        public string _52WeekHighDate { get; set; }

        [JsonProperty("52WeekLow")]
        public object _52WeekLow { get; set; }

        [JsonProperty("52WeekLowDate")]
        public string _52WeekLowDate { get; set; }

        [JsonProperty("52WeekPriceReturnDaily")]
        public object _52WeekPriceReturnDaily { get; set; }

        [JsonProperty("5DayPriceReturnDaily")]
        public object _5DayPriceReturnDaily { get; set; }

        [JsonProperty("assetTurnoverAnnual")]
        public object AssetTurnoverAnnual { get; set; }

        [JsonProperty("assetTurnoverTTM")]
        public object AssetTurnoverTTM { get; set; }

        [JsonProperty("beta")]
        public object Beta { get; set; }

        [JsonProperty("bookValuePerShareAnnual")]
        public object BookValuePerShareAnnual { get; set; }

        [JsonProperty("bookValuePerShareQuarterly")]
        public object BookValuePerShareQuarterly { get; set; }

        [JsonProperty("bookValueShareGrowth5Y")]
        public object BookValueShareGrowth5Y { get; set; }

        [JsonProperty("capitalSpendingGrowth5Y")]
        public object CapitalSpendingGrowth5Y { get; set; }

        [JsonProperty("cashFlowPerShareAnnual")]
        public object CashFlowPerShareAnnual { get; set; }

        [JsonProperty("cashFlowPerShareTTM")]
        public object CashFlowPerShareTTM { get; set; }

        [JsonProperty("cashPerSharePerShareAnnual")]
        public object CashPerSharePerShareAnnual { get; set; }

        [JsonProperty("cashPerSharePerShareQuarterly")]
        public object CashPerSharePerShareQuarterly { get; set; }

        [JsonProperty("currentDividendYieldTTM")]
        public object CurrentDividendYieldTTM { get; set; }

        [JsonProperty("currentEv/freeCashFlowAnnual")]
        public object CurrentEvFreeCashFlowAnnual { get; set; }

        [JsonProperty("currentEv/freeCashFlowTTM")]
        public object CurrentEvFreeCashFlowTTM { get; set; }

        [JsonProperty("currentRatioAnnual")]
        public object CurrentRatioAnnual { get; set; }

        [JsonProperty("currentRatioQuarterly")]
        public object CurrentRatioQuarterly { get; set; }

        [JsonProperty("dividendGrowthRate5Y")]
        public object DividendGrowthRate5Y { get; set; }

        [JsonProperty("dividendPerShare5Y")]
        public object DividendPerShare5Y { get; set; }

        [JsonProperty("dividendPerShareAnnual")]
        public object DividendPerShareAnnual { get; set; }

        [JsonProperty("dividendYield5Y")]
        public object DividendYield5Y { get; set; }

        [JsonProperty("dividendYieldIndicatedAnnual")]
        public object DividendYieldIndicatedAnnual { get; set; }

        [JsonProperty("dividendsPerShareTTM")]
        public object DividendsPerShareTTM { get; set; }

        [JsonProperty("ebitdPerShareTTM")]
        public object EbitdPerShareTTM { get; set; }

        [JsonProperty("ebitdaCagr5Y")]
        public object EbitdaCagr5Y { get; set; }

        [JsonProperty("ebitdaobjecterimCagr5Y")]
        public object EbitdaobjecterimCagr5Y { get; set; }

        [JsonProperty("epsBasicExclExtraItemsAnnual")]
        public object EpsBasicExclExtraItemsAnnual { get; set; }

        [JsonProperty("epsBasicExclExtraItemsTTM")]
        public object EpsBasicExclExtraItemsTTM { get; set; }

        [JsonProperty("epsExclExtraItemsAnnual")]
        public object EpsExclExtraItemsAnnual { get; set; }

        [JsonProperty("epsExclExtraItemsTTM")]
        public object EpsExclExtraItemsTTM { get; set; }

        [JsonProperty("epsGrowth3Y")]
        public object EpsGrowth3Y { get; set; }

        [JsonProperty("epsGrowth5Y")]
        public object EpsGrowth5Y { get; set; }

        [JsonProperty("epsGrowthQuarterlyYoy")]
        public object EpsGrowthQuarterlyYoy { get; set; }

        [JsonProperty("epsGrowthTTMYoy")]
        public object EpsGrowthTTMYoy { get; set; }

        [JsonProperty("epsInclExtraItemsAnnual")]
        public object EpsInclExtraItemsAnnual { get; set; }

        [JsonProperty("epsInclExtraItemsTTM")]
        public object EpsInclExtraItemsTTM { get; set; }

        [JsonProperty("epsNormalizedAnnual")]
        public object EpsNormalizedAnnual { get; set; }

        [JsonProperty("focfCagr5Y")]
        public object FocfCagr5Y { get; set; }

        [JsonProperty("freeCashFlowAnnual")]
        public object FreeCashFlowAnnual { get; set; }

        [JsonProperty("freeCashFlowPerShareTTM")]
        public object FreeCashFlowPerShareTTM { get; set; }

        [JsonProperty("freeCashFlowTTM")]
        public object FreeCashFlowTTM { get; set; }

        [JsonProperty("freeOperatingCashFlow/revenue5Y")]
        public object FreeOperatingCashFlowRevenue5Y { get; set; }

        [JsonProperty("freeOperatingCashFlow/revenueTTM")]
        public object FreeOperatingCashFlowRevenueTTM { get; set; }

        [JsonProperty("grossMargin5Y")]
        public object GrossMargin5Y { get; set; }

        [JsonProperty("grossMarginAnnual")]
        public object GrossMarginAnnual { get; set; }

        [JsonProperty("grossMargobjectTM")]
        public object GrossMargobjectTM { get; set; }

        [JsonProperty("inventoryTurnoverAnnual")]
        public object InventoryTurnoverAnnual { get; set; }

        [JsonProperty("inventoryTurnoverTTM")]
        public object InventoryTurnoverTTM { get; set; }

        [JsonProperty("longTermDebt/equityAnnual")]
        public object LongTermDebtEquityAnnual { get; set; }

        [JsonProperty("longTermDebt/equityQuarterly")]
        public object LongTermDebtEquityQuarterly { get; set; }

        [JsonProperty("marketCapitalization")]
        public object MarketCapitalization { get; set; }

        [JsonProperty("monthToDatePriceReturnDaily")]
        public object MonthToDatePriceReturnDaily { get; set; }

        [JsonProperty("netDebtAnnual")]
        public object NetDebtAnnual { get; set; }

        [JsonProperty("netDebtobjecterim")]
        public object NetDebtobjecterim { get; set; }

        [JsonProperty("netIncomeEmployeeAnnual")]
        public object NetIncomeEmployeeAnnual { get; set; }

        [JsonProperty("netIncomeEmployeeTTM")]
        public object NetIncomeEmployeeTTM { get; set; }

        [JsonProperty("netobjecterestCoverageAnnual")]
        public object NetobjecterestCoverageAnnual { get; set; }

        [JsonProperty("netobjecterestCoverageTTM")]
        public object NetobjecterestCoverageTTM { get; set; }

        [JsonProperty("netMarginGrowth5Y")]
        public object NetMarginGrowth5Y { get; set; }

        [JsonProperty("netProfitMargin5Y")]
        public object NetProfitMargin5Y { get; set; }

        [JsonProperty("netProfitMarginAnnual")]
        public object NetProfitMarginAnnual { get; set; }

        [JsonProperty("netProfitMargobjectTM")]
        public object NetProfitMargobjectTM { get; set; }

        [JsonProperty("operatingMargin5Y")]
        public object OperatingMargin5Y { get; set; }

        [JsonProperty("operatingMarginAnnual")]
        public object OperatingMarginAnnual { get; set; }

        [JsonProperty("operatingMargobjectTM")]
        public object OperatingMargobjectTM { get; set; }

        [JsonProperty("payoutRatioAnnual")]
        public object PayoutRatioAnnual { get; set; }

        [JsonProperty("payoutRatioTTM")]
        public object PayoutRatioTTM { get; set; }

        [JsonProperty("pbAnnual")]
        public object PbAnnual { get; set; }

        [JsonProperty("pbQuarterly")]
        public object PbQuarterly { get; set; }

        [JsonProperty("pcfShareTTM")]
        public object PcfShareTTM { get; set; }

        [JsonProperty("peBasicExclExtraTTM")]
        public object PeBasicExclExtraTTM { get; set; }

        [JsonProperty("peExclExtraAnnual")]
        public object PeExclExtraAnnual { get; set; }

        [JsonProperty("peExclExtraHighTTM")]
        public object PeExclExtraHighTTM { get; set; }

        [JsonProperty("peExclExtraTTM")]
        public object PeExclExtraTTM { get; set; }

        [JsonProperty("peExclLowTTM")]
        public object PeExclLowTTM { get; set; }

        [JsonProperty("peInclExtraTTM")]
        public object PeInclExtraTTM { get; set; }

        [JsonProperty("peNormalizedAnnual")]
        public object PeNormalizedAnnual { get; set; }

        [JsonProperty("pfcfShareAnnual")]
        public object PfcfShareAnnual { get; set; }

        [JsonProperty("pfcfShareTTM")]
        public object PfcfShareTTM { get; set; }

        [JsonProperty("pretaxMargin5Y")]
        public object PretaxMargin5Y { get; set; }

        [JsonProperty("pretaxMarginAnnual")]
        public object PretaxMarginAnnual { get; set; }

        [JsonProperty("pretaxMargobjectTM")]
        public object PretaxMargobjectTM { get; set; }

        [JsonProperty("priceRelativeToS&P50013Week")]
        public object PriceRelativeToSP50013Week { get; set; }

        [JsonProperty("priceRelativeToS&P50026Week")]
        public object PriceRelativeToSP50026Week { get; set; }

        [JsonProperty("priceRelativeToS&P5004Week")]
        public object PriceRelativeToSP5004Week { get; set; }

        [JsonProperty("priceRelativeToS&P50052Week")]
        public object PriceRelativeToSP50052Week { get; set; }

        [JsonProperty("priceRelativeToS&P500Ytd")]
        public object PriceRelativeToSP500Ytd { get; set; }

        [JsonProperty("psAnnual")]
        public object PsAnnual { get; set; }

        [JsonProperty("psTTM")]
        public object PsTTM { get; set; }

        [JsonProperty("ptbvAnnual")]
        public object PtbvAnnual { get; set; }

        [JsonProperty("ptbvQuarterly")]
        public object PtbvQuarterly { get; set; }

        [JsonProperty("quickRatioAnnual")]
        public object QuickRatioAnnual { get; set; }

        [JsonProperty("quickRatioQuarterly")]
        public object QuickRatioQuarterly { get; set; }

        [JsonProperty("receivablesTurnoverAnnual")]
        public object ReceivablesTurnoverAnnual { get; set; }

        [JsonProperty("receivablesTurnoverTTM")]
        public object ReceivablesTurnoverTTM { get; set; }

        [JsonProperty("revenueEmployeeAnnual")]
        public object RevenueEmployeeAnnual { get; set; }

        [JsonProperty("revenueEmployeeTTM")]
        public object RevenueEmployeeTTM { get; set; }

        [JsonProperty("revenueGrowth3Y")]
        public object RevenueGrowth3Y { get; set; }

        [JsonProperty("revenueGrowth5Y")]
        public object RevenueGrowth5Y { get; set; }

        [JsonProperty("revenueGrowthQuarterlyYoy")]
        public object RevenueGrowthQuarterlyYoy { get; set; }

        [JsonProperty("revenueGrowthTTMYoy")]
        public object RevenueGrowthTTMYoy { get; set; }

        [JsonProperty("revenuePerShareAnnual")]
        public object RevenuePerShareAnnual { get; set; }

        [JsonProperty("revenuePerShareTTM")]
        public object RevenuePerShareTTM { get; set; }

        [JsonProperty("revenueShareGrowth5Y")]
        public object RevenueShareGrowth5Y { get; set; }

        [JsonProperty("roaRfy")]
        public object RoaRfy { get; set; }

        [JsonProperty("roaa5Y")]
        public object Roaa5Y { get; set; }

        [JsonProperty("roae5Y")]
        public object Roae5Y { get; set; }

        [JsonProperty("roaeTTM")]
        public object RoaeTTM { get; set; }

        [JsonProperty("roeRfy")]
        public object RoeRfy { get; set; }

        [JsonProperty("roeTTM")]
        public object RoeTTM { get; set; }

        [JsonProperty("roi5Y")]
        public object Roi5Y { get; set; }

        [JsonProperty("roiAnnual")]
        public object RoiAnnual { get; set; }

        [JsonProperty("roiTTM")]
        public object RoiTTM { get; set; }

        [JsonProperty("tangibleBookValuePerShareAnnual")]
        public object TangibleBookValuePerShareAnnual { get; set; }

        [JsonProperty("tangibleBookValuePerShareQuarterly")]
        public object TangibleBookValuePerShareQuarterly { get; set; }

        [JsonProperty("tbvCagr5Y")]
        public object TbvCagr5Y { get; set; }

        [JsonProperty("totalDebt/totalEquityAnnual")]
        public object TotalDebtTotalEquityAnnual { get; set; }

        [JsonProperty("totalDebt/totalEquityQuarterly")]
        public object TotalDebtTotalEquityQuarterly { get; set; }

        [JsonProperty("totalDebtCagr5Y")]
        public object TotalDebtCagr5Y { get; set; }

        [JsonProperty("yearToDatePriceReturnDaily")]
        public object YearToDatePriceReturnDaily { get; set; }
    }

    public class CashRatio
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class CurrentRatio
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class EbitPerShare
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class Ep
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class GrossMargin
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class LongtermDebtTotalAsset
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class LongtermDebtTotalCapital
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class LongtermDebtTotalEquity
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class NetDebtToTotalCapital
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class NetDebtToTotalEquity
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class NetMargin
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class OperatingMargin
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class PretaxMargin
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class SalesPerShare
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class SgaToSale
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class TotalDebtToEquity
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class TotalDebtToTotalAsset
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class TotalDebtToTotalCapital
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class TotalRatio
    {
        [JsonProperty("period")]
        public string Period { get; set; }

        [JsonProperty("v")]
        public object V { get; set; }
    }

    public class Annual
    {
        [JsonProperty("cashRatio")]
        public List<CashRatio> CashRatio { get; set; }

        [JsonProperty("currentRatio")]
        public List<CurrentRatio> CurrentRatio { get; set; }

        [JsonProperty("ebitPerShare")]
        public List<EbitPerShare> EbitPerShare { get; set; }

        [JsonProperty("eps")]
        public List<Ep> Eps { get; set; }

        [JsonProperty("grossMargin")]
        public List<GrossMargin> GrossMargin { get; set; }

        [JsonProperty("longtermDebtTotalAsset")]
        public List<LongtermDebtTotalAsset> LongtermDebtTotalAsset { get; set; }

        [JsonProperty("longtermDebtTotalCapital")]
        public List<LongtermDebtTotalCapital> LongtermDebtTotalCapital { get; set; }

        [JsonProperty("longtermDebtTotalEquity")]
        public List<LongtermDebtTotalEquity> LongtermDebtTotalEquity { get; set; }

        [JsonProperty("netDebtToTotalCapital")]
        public List<NetDebtToTotalCapital> NetDebtToTotalCapital { get; set; }

        [JsonProperty("netDebtToTotalEquity")]
        public List<NetDebtToTotalEquity> NetDebtToTotalEquity { get; set; }

        [JsonProperty("netMargin")]
        public List<NetMargin> NetMargin { get; set; }

        [JsonProperty("operatingMargin")]
        public List<OperatingMargin> OperatingMargin { get; set; }

        [JsonProperty("pretaxMargin")]
        public List<PretaxMargin> PretaxMargin { get; set; }

        [JsonProperty("salesPerShare")]
        public List<SalesPerShare> SalesPerShare { get; set; }

        [JsonProperty("sgaToSale")]
        public List<SgaToSale> SgaToSale { get; set; }

        [JsonProperty("totalDebtToEquity")]
        public List<TotalDebtToEquity> TotalDebtToEquity { get; set; }

        [JsonProperty("totalDebtToTotalAsset")]
        public List<TotalDebtToTotalAsset> TotalDebtToTotalAsset { get; set; }

        [JsonProperty("totalDebtToTotalCapital")]
        public List<TotalDebtToTotalCapital> TotalDebtToTotalCapital { get; set; }

        [JsonProperty("totalRatio")]
        public List<TotalRatio> TotalRatio { get; set; }
    }

    public class Series
    {
        [JsonProperty("annual")]
        public Annual Annual { get; set; }
    }

    public class BasicFinancialsRoot
    {
        [JsonProperty("metric")]
        public Metric Metric { get; set; }

        [JsonProperty("metricType")]
        public string MetricType { get; set; }

        [JsonProperty("series")]
        public Series Series { get; set; }

        [JsonProperty("symbol")]
        public string Symbol { get; set; }
    }


}
