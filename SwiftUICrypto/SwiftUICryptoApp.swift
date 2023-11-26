//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 20/11/23.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
