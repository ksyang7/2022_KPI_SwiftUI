//
//  MyViewModel.swift
//  State_Binding_EnvironmentObject_tutorial
//
//  Created by μμΉμ on 2022/06/20.
//

import Foundation
import Combine

class MyViewModel: ObservableObject {
    
    @Published var appTitle: String = "Smart Yang's Daily Life"
}
