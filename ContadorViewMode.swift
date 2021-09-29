//
//  ContadorViewMode.swift
//  Contador
//
//  Created by IFPB on 29/09/21.
//  Copyright © 2021 IFPB. All rights reserved.
//


import SwiftUI

class ContadorViewModel: ObservableObject{
    @Published var quantidade: Int = 0
    
    func incrementa() {
        if (self.quantidade < 10){
            self.quantidade += 1
        }
    }
    
    func decrementa(){
        if (self.quantidade > 0){
            self.quantidade -=  1
        }
    }
}
