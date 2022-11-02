//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct CircleImageView: View{
    var body: some View{
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.yellow)
//            .shadow(color: .gray, radius: 2, x: 5, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(Circle().stroke(Color.red, lineWidth: 10).padding())
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10).padding(30))
            .overlay(Circle().stroke(Color.blue, lineWidth: 10))
            .overlay(
                Text("smart")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            )
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200,height: 100)
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View{
        CircleImageView()
    }
}
