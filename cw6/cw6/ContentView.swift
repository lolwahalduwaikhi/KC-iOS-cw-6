//
//  ContentView.swift
//  cw6
//
//  Created by Lulwah alduwaikhi on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var condition = ""
    var body: some View {
        VStack{
        Image("scale")
      TextField("weight", text: $weight)
            TextField("height", text: $height)
            
            Button {
                result = bmiCalc(W: Double(weight) ?? 0.0, H: Double(height) ?? 0.0)
                
                if result <= 20 {
                   condition = "ضعيف"
                }else if result <= 25{
                    condition = "جيد"
                } else {
                    condition = "سمين"
                }
                
                
            } label: {
                Text("احسب")
                    .background(.indigo)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .font(.largeTitle)
                   
            }

        Text("BMI = \(result)")
                .font(.largeTitle)
            Text("الحالة = \(condition)")
                .font(.largeTitle)
    }
  
    }
   
    func bmiCalc(W: Double, H: Double) -> Double{
       return W / (H*H)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
