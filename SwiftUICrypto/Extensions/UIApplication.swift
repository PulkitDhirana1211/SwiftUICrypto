//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 29/11/23.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
