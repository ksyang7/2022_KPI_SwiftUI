//
//  MyViewModel.swift
//  State_Binding_EnvironmentObject_tutorial
//
//  Created by 양승은 on 2022/06/20.
//

import Foundation
import Combine

class MyViewModel: ObservableObject {
    
    @Published var appTitle: String = "Smart Yang's Daily Life"
}
