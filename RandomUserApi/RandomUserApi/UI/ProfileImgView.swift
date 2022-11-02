//
//  ProfileImgView.swift
//  RandomUserApi
//
//  Created by 양승은 on 2022/06/16.
//

import Foundation
import SwiftUI
import URLImage

struct ProfileImgView: View{
    
    let imgaeUrl: URL
    
    var body: some View{
         URLImage(imgaeUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
        .frame(width: 60, height: 60)
        
        
    }
}

struct ProfileImgView_Previews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://randomuser.me/api/portraits/women/2.jpg")!
        ProfileImgView(imgaeUrl: url)
    }
}
