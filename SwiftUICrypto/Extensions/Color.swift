//
//  Color.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 20/11/23.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}

struct ColorTheme {
    let accent = Color("accentColor")
    let background = Color("backgroundColor")
    let green = Color("greenColor2")
    let red = Color("redColor2")
    let secondaryText = Color("secondaryTextColor")
}

struct LaunchTheme {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
