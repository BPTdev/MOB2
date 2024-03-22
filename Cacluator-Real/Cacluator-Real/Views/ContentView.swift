import SwiftUI

let fontSize: CGFloat = 30

struct ContentView: View {
    @StateObject var calculatorViewModel = CalculatorViewModel()
    @StateObject var operationViewModel = OperationViewModel()

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(operationViewModel.getCurrentNumber())
                    .padding()
                    .font(Font.custom("HelveticaNeue-Thin", size: 100))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
            }
            .background(Color.black)

            ForEach(0..<calculatorViewModel.buttonRows.count, id: \.self) { rowIndex in
                HStack{
                    Spacer()
                    ForEach(0..<calculatorViewModel.buttonRows[rowIndex].count, id: \.self) { buttonIndex in
                        let button = calculatorViewModel.buttonRows[rowIndex][buttonIndex]
                        RoundButton(model: RoundButtonModel(text: button.0, action: {operationViewModel.receiveInput(button.0) }, buttonColor: button.1, buttonFontSize: fontSize, buttonHeight: button.2, buttonWidth: button.3))
                    }
                    Spacer()
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: buttonWidth+spacingWidth, alignment: .topLeading)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
