//
//  QRCodeScannerExampleView.swift
//  QRCode_reader_swiftui_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI
struct QRCodeScannerExampleView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?

    var body: some View {
       
        VStack(spacing: 10) {
            if self.scannedCode != nil{
                Text("self.scannedCode : \(self.scannedCode!)")
            } else {
                
            }
            VStack{
                Spacer()
                
                Button("로또번호 확인") {
                    self.isPresentingScanner = true
                }
                .sheet(isPresented: $isPresentingScanner){
                    self.scannerSheet
                }
                
                Spacer().frame(height: 30)
            }
        }
       
    }
        var scannerSheet: some View {
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        //self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
        }
    }

struct QRCodeScannerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExampleView()
    }
}
