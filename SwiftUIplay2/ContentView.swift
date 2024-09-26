//
//  ContentView.swift
//  SwiftUIplay2
//
//  Created by Nader Ahmed on 6/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleState = false
    
    var body: some View {
        VStack {
            ChildView(isToggled: $toggleState)
            Text("Toggle State: \(toggleState.description)")
        }
    }
}
 

struct ChildView: View {
    @Binding var isToggled: Bool
    
    var body: some View {
        Toggle("Toggle", isOn: $isToggled)
        
        
        
        
        
        ForEach((1...10).reversed(), id: \.self) {
               Text("\($0)…")
           }
        
        
        
        
        
        
        
    }
}


#Preview {
    ContentView()
}
