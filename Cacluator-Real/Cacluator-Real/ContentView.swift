//
//  ContentView.swift
//  Cacluator-Real
//
//  Created by Benoît Pierrehumbert on 15.03.2024.
//

import SwiftUI


let primaryColor = Color.init(red: 43, green: 151/255, blue: 78/255, opacity: 1.0)
let gap:CGFloat = 70
let fontSize:CGFloat = 30
let buttonHeight:CGFloat = 30
let buttonWidth:CGFloat = 30
let buttons = {
    
}

struct ContentView: View {
    @State var calExpression:[String] = []
    var body: some View {
        VStack {
            VStack {
                HStack{
                    RoundButton(model: RoundButtonModel(text:"AC", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"+/-", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"%", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"7", action:{print("1")}, buttonColor:.orange, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: gap, alignment: .topLeading)
                .background(.white)
                HStack{
                    RoundButton(model: RoundButtonModel(text:"7", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"8", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"9", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"X", action:{print("1")}, buttonColor:.orange, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: gap, alignment: .topLeading)
                .background(.white)
                HStack{
                    RoundButton(model: RoundButtonModel(text:"4", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"5", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"6", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"-", action:{print("1")}, buttonColor:.orange, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: gap, alignment: .topLeading)
                .background(.white)
                HStack{
                    RoundButton(model: RoundButtonModel(text:"1", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"2", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"3", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"+", action:{print("1")}, buttonColor:.orange, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: gap, alignment: .topLeading)
                .background(.white)
                HStack{
                    RoundButton(model: RoundButtonModel(text:"0", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight,  buttonWidth:  buttonWidth*2))
                    RoundButton(model: RoundButtonModel(text:".", action:{print("1")}, buttonColor:.gray, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                    RoundButton(model: RoundButtonModel(text:"=", action:{print("1")}, buttonColor:.orange, buttonFontSize: fontSize, buttonHeight:  buttonHeight, buttonWidth:  buttonWidth))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: gap, alignment: .topLeading)
                .background(.white)
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 414, maxHeight: .infinity, alignment: .topLeading)
        }
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
