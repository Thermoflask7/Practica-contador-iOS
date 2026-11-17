//
//  ContentView.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var contador1 = 0
    @State private var contador2 = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("Marcador")
                .font(.largeTitle)
                .bold()
            HStack() {
//equipo1
                VStack (spacing : 20){
                    Text("Equipo 1")
                        .font(.title)
                        .foregroundStyle(.blue)
                    Text("\(contador1)")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundStyle(contador1 >= 10 ? Color.blue : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 10){
                        Button {
                            withAnimation {contador1 -= 1}
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador1 == 0)
                        Button {
                            withAnimation {contador1 += 1}
                            
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    .tint(.blue)
                    .padding()
                }
                
                Text("VS")
                    .font(.system(size: 50))
//Equipo 2
                VStack (spacing: 20){
                    Text("Equipo 2")
                        .font(.title)
                        .foregroundStyle(.orange)
                    Text("\(contador2)")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundStyle(contador2 >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 16){
                        Button {
                            withAnimation {contador2 -= 1}
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador2 == 0)
                        Button {
                            withAnimation {contador2 += 1}
                            
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    .tint(.orange)
                    .padding()
                }
            }
            Button("Reiniciar", role: .destructive){
                contador1 = 0
                contador2 = 0
            }
            if contador1 > contador2 {
                Text("Equipo 1 va ganando")
                    .font(.headline)
            }
            else if contador2 > contador1 {
                Text("Equipo 2 va ganando")
                    .font(.headline)
            }
        
        }
    }
}


#Preview {
    ContentView()
}
