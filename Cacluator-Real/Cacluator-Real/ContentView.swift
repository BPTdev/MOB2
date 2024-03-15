//
//  ContentView.swift
//  Cacluator-Real
//
//  Created by Benoît Pierrehumbert on 15.03.2024.
//

import SwiftUI

let primaryColor = Color.init(red: 43, green: 151/255, blue: 78/255, opacity: 1.0)


struct ContentView: View {
    @State var finalValue:String = "Oui"
    @State var calExpression:[String] = []
    var body: some View {
        VStack {
            VStack {
                Text(self.finalValue)
                    .font(Font.custom("HelveticaNeue-Thin", size: 80))
                    .frame(idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity)
                    .foregroundColor(.white)
                Text(flattenTheExpression(exps: calExpression))
                    .font(Font.custom("HelveticaNeue-Thin", size: 24))
                    .frame(alignment: Alignment.bottomTrailing)
                    .foregroundColor(Color.white)
                
                    // This will give a bottom padding to our Text above.
                    Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .background(primaryColor)
            VStack {
            }
            .background(Color.gray)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 414, maxHeight: .infinity, alignment: .topLeading)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}


func flattenTheExpression(exps: [String]) -> String {
    
    var calExp = ""
    for exp in exps {
        calExp.append(exp)
    }
    
    return calExp
    
}
