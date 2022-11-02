//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formetter = DateFormatter()
        //formetter.dateFormat = "YYYY년 M월 d일"
        formetter.dateStyle = .long
        return formetter
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing")
                .tracking(2)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10)
                .truncationMode(.middle)
                .shadow(color: Color.red, radius: 1.5, x: -10, y: 10)
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
            
            Text("안녕하세요").background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
