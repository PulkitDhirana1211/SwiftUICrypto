//
//  String.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 21/12/23.
//

import Foundation

extension String {
    
    var removingHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
