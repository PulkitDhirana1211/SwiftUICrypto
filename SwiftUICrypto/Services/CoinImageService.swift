//
//  CoinImageService.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 28/11/23.
//

import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.shared
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            print("Retrieved image from File Manager!")
        } else {
            downloadCoinImage()
            print("Downloading image now")
        }
        
    }
    
    private func downloadCoinImage() {
        
        guard let url = URL(string: coin.image) else {
            return
        }
        
        imageSubscription  =  NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: {[weak self] (returnedImage) in
                
                guard let strongSelf = self, let downloadedImage = returnedImage else {
                    return
                }

                strongSelf.image = downloadedImage
                strongSelf.imageSubscription?.cancel()
                strongSelf.fileManager.saveImage(image: downloadedImage, imageName: strongSelf.imageName, folderName: strongSelf.folderName)
            })
         
    }
}
