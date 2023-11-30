//
//  XMarkButton.swift
//  SwiftUICrypto
//
//  Created by Pulkit Dhirana on 30/11/23.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
                .foregroundStyle(Color.black)
        })
    }
}

#Preview {
    XMarkButton()
}
