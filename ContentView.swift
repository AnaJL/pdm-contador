//
//  ContentView.swift
//  Contador
//
//  Created by IFPB on 29/09/21.
//  Copyright © 2021 IFPB. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    @ObservedObject var contadorVM: ContadorViewModel
    
    var body: some View {
        VStack{
            me
            contador
            HStack{
                btIncrementa
                btDecrementa
            }
        }
    }
}

extension ContentView{
    var me: some View{
        Text("Ana Julia")
            .fontWeight(.bold)
            .padding()
            .font(.title)
    }
}
extension ContentView{
    var contador: some View{
        Text(self.contadorVM.quantidade.description)
            .fontWeight(.bold)
            .padding()
            .font(.title)
    }
}
extension ContentView{
    var btIncrementa: some View{
        Button("+"){
            // incrementar a quantidade
            self.contadorVM.incrementa()
        }
        .font(.title)
        .padding(20)
    }
}

extension ContentView{
    var btDecrementa: some View{
        Button("-"){
            // decrementar a quantidade
            self.contadorVM.decrementa()
        }
        .font(.title)
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //var cvm = ContadorViewModel()
        ContentView(contadorVM: ContadorViewModel())
    }
}
