//
//  ProfileView.swift
//  deeplink_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/13.
//

import Foundation
import SwiftUI

struct PorfileView: View {
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(Color.purple)
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .overlay(
                Text("프로필")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            )
    }
}

struct PorfileView_Previews: PreviewProvider {
    static var previews: some View {
        PorfileView()
    }
}
