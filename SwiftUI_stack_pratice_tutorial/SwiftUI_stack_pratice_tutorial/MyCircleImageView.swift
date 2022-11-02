//
//  MyCircleImageView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/07.
//

import SwiftUI

struct MyCircleImageView: View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle().strokeBorder(Color.yellow, lineWidth: 15)
            )
    }
    
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "imsmart")
    }
}
