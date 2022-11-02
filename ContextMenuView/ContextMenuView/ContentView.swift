//
//  ContentView.swift
//  ContextMenuView
//
//  Created by 양승은 on 2022/06/21.
//

import SwiftUI

func selectHearts() {
    // Act on hearts selection.
}
func selectClubs() { }
func selectSpades() { }
func selectDiamonds() { }

let menuItems = ContextMenu {
    Button("♥️ - Hearts", action: selectHearts)
    Button("♣️ - Clubs", action: selectClubs)
    Button("♠️ - Spades", action: selectSpades)
    Button("♦️ - Diamonds", action: selectDiamonds)
}
struct ContentView: View {
    private var shouldShowMenu = true
        var body: some View {
            VStack {
                Text("Favorite Card Suit")
                    .padding()
                    .contextMenu(shouldShowMenu ? menuItems : nil)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
