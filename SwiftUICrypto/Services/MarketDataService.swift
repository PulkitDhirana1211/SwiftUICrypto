//
//  MarketDataService.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 30/11/23.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else {
            return
        }
        
        marketDataSubscription =  NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: {[weak self] (returnedGlobalData) in
                
                guard let strongSelf = self else {
                    return
                }

                strongSelf.marketData = returnedGlobalData.data
                strongSelf.marketDataSubscription?.cancel()
            })
         
    }
}

