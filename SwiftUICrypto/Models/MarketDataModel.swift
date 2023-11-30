//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 30/11/23.
//

import Foundation
// JSON Data
/*
URL: https://api.coingecko.com/api/v3/global

JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11172,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 938,
     "total_market_cap": {
       "btc": 39404018.43456597,
       "eth": 728686901.3959355,
       "ltc": 21439525409.98153,
       "bch": 6703355119.949659,
       "bnb": 6530570757.686975,
       "eos": 2202904863899.088,
       "xrp": 2468718008508.3535,
       "xlm": 12527710668431.75,
       "link": 101398163336.18288,
       "dot": 287025874421.94604,
       "yfi": 179828757.99215496,
       "usd": 1492834443354.769,
       "aed": 5482285209776.039,
       "ars": 537395469272512,
       "aud": 2262247286797.589,
       "bdt": 164604587846263.5,
       "bhd": 562714986415.9207,
       "bmd": 1492834443354.769,
       "brl": 7356226851009.304,
       "cad": 2032270169461.0154,
       "chf": 1306861606904.9602,
       "clp": 1298392757107809.8,
       "cny": 10585614396106.482,
       "czk": 33209424843743.617,
       "dkk": 10196296608789.56,
       "eur": 1367802094551.591,
       "gbp": 1180843987369.1682,
       "hkd": 11660238734327.648,
       "huf": 519257657676680.94,
       "idr": 23203939056732068,
       "ils": 5550379360075.248,
       "inr": 124462883219409.84,
       "jpy": 220557331999006.84,
       "krw": 1938547891339615.2,
       "kwd": 460882777696.9158,
       "lkr": 489943178222088.06,
       "mmk": 3135186050698300,
       "mxn": 26013311950956.336,
       "myr": 6955862088811.542,
       "ngn": 1178637578061890.2,
       "nok": 16042479620981.092,
       "nzd": 2430421058179.2764,
       "php": 82825442079043.5,
       "pkr": 425483203498654.56,
       "pln": 5948887036225.464,
       "rub": 132354703240668.02,
       "sar": 5600480376828.649,
       "sek": 15633216072666.5,
       "sgd": 1995721103784.3599,
       "thb": 52622414128255.75,
       "try": 43077030657629.6,
       "twd": 46739153586994.46,
       "uah": 54270549631587.125,
       "vef": 149477512813.1128,
       "vnd": 36216273528115100,
       "zar": 28171126511434.594,
       "xdr": 1121765064273.4028,
       "xag": 59671488799.71033,
       "xau": 732683144.7985213,
       "bits": 39404018434565.97,
       "sats": 3940401843456597
     },
     "total_volume": {
       "btc": 1634136.1008608683,
       "eth": 30219597.36855093,
       "ltc": 889125115.9054695,
       "bch": 277996890.50980246,
       "bnb": 270831297.37349457,
       "eos": 91357341405.1,
       "xrp": 102380959628.47159,
       "xlm": 519540520934.93445,
       "link": 4205114245.99501,
       "dot": 11903337829.692257,
       "yfi": 7457733.426247944,
       "usd": 61909793808.10042,
       "aed": 227357526780.86737,
       "ars": 22286491877359.523,
       "aud": 93818349175.97054,
       "bdt": 6826367209567.218,
       "bhd": 23336525317.20063,
       "bmd": 61909793808.10042,
       "brl": 305072333760.0321,
       "cad": 84280897800.65753,
       "chf": 54197257424.86862,
       "clp": 53846043164595.32,
       "cny": 438999252403.54895,
       "czk": 1377238215338.5066,
       "dkk": 422853735366.54114,
       "eur": 56724539027.703,
       "gbp": 48971142180.55786,
       "hkd": 483565327025.27985,
       "huf": 21534293144923.65,
       "idr": 962297653924519.8,
       "ils": 230181480115.6311,
       "inr": 5161638298992.647,
       "jpy": 9146800576383.982,
       "krw": 80394112538199.33,
       "kwd": 19113410642.37476,
       "lkr": 20318583401151.11,
       "mmk": 130020259656239.22,
       "mxn": 1078806016513.3625,
       "myr": 288468684248.84375,
       "ngn": 48879639505309.5,
       "nok": 665302579215.4526,
       "nzd": 100792735087.62827,
       "php": 3434879241970.8115,
       "pkr": 17645344073262.19,
       "pln": 246708113843.32166,
       "rub": 5488922380935.967,
       "sar": 232259234705.62357,
       "sek": 648329885423.3745,
       "sgd": 82765160318.85379,
       "thb": 2182320231735.5457,
       "try": 1786460714214.167,
       "twd": 1938333734337.816,
       "uah": 2250670563303.2954,
       "vef": 6199027654.005085,
       "vnd": 1501936156821732.2,
       "zar": 1168293404153.6934,
       "xdr": 46521062090.602264,
       "xag": 2474654563.5097656,
       "xau": 30385326.801015716,
       "bits": 1634136100860.8684,
       "sats": 163413610086086.84
     },
     "market_cap_percentage": {
       "btc": 49.631930389222035,
       "eth": 16.501040358460905,
       "usdt": 5.982632599601664,
       "bnb": 2.356678523251671,
       "xrp": 2.1828436902583626,
       "sol": 1.7266540841890707,
       "usdc": 1.6343432675621858,
       "steth": 1.27257545052415,
       "ada": 0.8814519113097684,
       "doge": 0.7783853517118575
     },
     "market_cap_change_percentage_24h_usd": -0.4489744994097874,
     "updated_at": 1701347007
   }
 }
*/

struct GlobalData: Decodable {
    let data: MarketDataModel?
}

struct MarketDataModel: Decodable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
