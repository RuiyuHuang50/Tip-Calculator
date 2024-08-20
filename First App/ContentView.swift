//
//  ContentView.swift
//  First App
//
//  Created by Ria on 8/14/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.title)
                Text("Tip calculator")
                    .font(.title)
                    .fontWeight(.bold)

            }
            HStack {
                Text("$")
                TextField("amount", text: $total)
                Text(total)
                }
            HStack{
                Slider(value: $tipPercent,in:1...30, step:1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNum = Double(total){
                Text("Tip Amount: $\(totalNum * (tipPercent/100), specifier: "%.2f")")
            } else{
                Text("Please add a numeric value")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
