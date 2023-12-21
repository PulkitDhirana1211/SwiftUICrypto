//
//  DetailView.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 14/12/23.
//

import SwiftUI

struct DetailLoadingView: View {

    @Binding var coin: CoinModel?

    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    @State private var showFullDescription: Bool = false
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    private let spacing: CGFloat = 30
        
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ChartView(coin: vm.coin)
                    .padding(.vertical)

                VStack(spacing: 20) {
                    
                    overviewTitle
                    Divider()
                    
                    descriptionSection
                    
                    overviewGrid
                    
                    additionalTitle
                    Divider()
                    additionalGrid
                    
                    websiteSection
                    
                }
                .padding()
            }
        }
        .navigationTitle(vm.coin.name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                navigationBarTrailingItems
            }
        }
    }
}

#Preview {
    NavigationView {
        DetailView(coin: DeveloperPreview.shared.coin)
    }
}

extension DetailView {
    
    private var navigationBarTrailingItems: some View {
        HStack {
            Text(vm.coin.symbol.uppercased())
                .font(.headline)
            .foregroundStyle(Color.theme.secondaryText)
            CoinImageView(coin: vm.coin)
                .frame(width: 25, height: 25)
        }
    }
    
    private var overviewTitle: some View {
        Text("Overview")
            .font(.title)
            .bold()
            .foregroundStyle(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var additionalTitle: some View {
        Text("Additional Details")
            .font(.title)
            .bold()
            .foregroundStyle(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var descriptionSection: some View {
        ZStack {
        if let coinDescription = vm.coinDescription, !coinDescription.isEmpty {
            VStack(alignment: .leading) {
                    Text(coinDescription)
                    .lineLimit(showFullDescription ? nil : 3)
                        .font(.callout)
                        .foregroundStyle(Color.theme.secondaryText)
                    
                    Button(action: {
                        withAnimation(.easeInOut) {
                            showFullDescription.toggle()
                        }
                        
                    }, label: {
                        Text(showFullDescription ? "Less" : "Read more...")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.vertical, 4)
                    })
                    .tint(Color.blue)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
    
    private var overviewGrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.overviewStatistics) { stat in
                    StatisticView(stat: stat)
                }
        })
    }
    
    private var additionalGrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.additionalStatistics) { stat in
                    StatisticView(stat: stat)
                }
        })
    }
    
    private var websiteSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            if let websiteString = vm.websiteURL, let url = URL(string: websiteString) {
                Link("Website", destination: url)
            }
            
            if let redditURL = vm.redditURL, let url = URL(string: redditURL) {
                Link("Reddit", destination: url)
            }
        }
        .tint(Color.blue)
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
    }
}
