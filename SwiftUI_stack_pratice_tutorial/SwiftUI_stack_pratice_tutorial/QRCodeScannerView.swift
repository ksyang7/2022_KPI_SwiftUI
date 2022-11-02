//
//  QRCodeScannerView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI

struct QRCodeScannerView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?
 
    var body: some View {
       VStack(spacing: 10) {
           MyWebview(urlToLoad: "https://www.naver.com")
//           if let code = scannedCode {
//               NavigationLink("Next page", destination: NextView(scannedCode: code), isActive: .constant(true)).hidden()
//           }

           Button(action:{
               isPresentingScanner = true
           }) {
               Text("로또 번호 확인")
                   
                   .font(.largeTitle)
                   .fontWeight(.bold)
                   .foregroundColor(Color.blue)
                   .frame(width: 220, height: 55)
                   .background(Color.yellow)
                   .cornerRadius(15)
               
           }
           .padding(10)
           .background(Color.purple)
           .cornerRadius(20)

           
       }
//       .sheet(isPresented: $isPresentingScanner) {
//        CodeScannerView(codeTypes: [.qr]) { response in
//               if case let .success(result) = response {
//                   scannedCode = result.string
//                   isPresentingScanner = false
//               }
//           }
//       }
   }
}

struct QRCodeScannerView_Previews: PreviewProvider {
    static var previews: some View{
        QRCodeScannerView()
    }
}
