//
//  StyleText.swift
//  LuSwiftui
//
//  Created by VN Savis on 30/11/2023.
//

import Foundation
import SwiftUI

class TextStyleConfig {
    
    static func styleH1(_ text: String) -> some View {
        return Text(text)
            .font(.system(size: 36))
            .fontWeight(
            .semibold)
            .lineSpacing(42/36)
            .multilineTextAlignment(.center)
    }
    
}
