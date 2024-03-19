import SwiftUI

var text: String = "0"

let primaryColor = Color.init(red: 43/255, green: 151/255, blue: 78/255, opacity: 1.0)
let fontSize: CGFloat = 30
let buttonHeight: CGFloat = 80

let screenWidth: CGFloat = UIScreen.main.bounds.width

let buttonCount: CGFloat = 4
let buttonWidth: CGFloat = getButtonSize(screenWidth: screenWidth, buttonCount: buttonCount, padding: 12)
let spacingWidth: CGFloat = getSpacingSize(screenWidth: screenWidth, buttonWidth: buttonWidth, buttonCount: buttonCount)

func getButtonSize(screenWidth: CGFloat, buttonCount: CGFloat = 4, padding: CGFloat = 20) -> CGFloat {
    let spacingCount = buttonCount + 1
    return (screenWidth - (spacingCount * padding)) / buttonCount
}

func getSpacingSize(screenWidth: CGFloat, buttonWidth: CGFloat, buttonCount: CGFloat = 4) -> CGFloat {
    let totalButtonWidth = buttonWidth * buttonCount
    let totalSpacingWidth = screenWidth - totalButtonWidth
    let spacingCount = buttonCount + 1
    return totalSpacingWidth / spacingCount
}



// Define your buttons in a structured array
let buttonRows: [[(String, Color)]] = [
    [("AC", .gray), ("+/-", .gray), ("%", .gray), ("7", .orange)],
    [("7", .gray), ("8", .gray), ("9", .gray), ("X", .orange)],
    [("4", .gray), ("5", .gray), ("6", .gray), ("-", .orange)],
    [("1", .gray), ("2", .gray), ("3", .gray), ("+", .orange)],
    [("0", .gray), (".", .gray), ("=", .orange)]
]

struct ContentView: View {
    @State var displayText: String = "0"

    var body: some View {
        VStack {
            Spacer()
                HStack {
                    Spacer()
                    Text(displayText)
                        .font(Font.custom("HelveticaNeue-Thin", size: 100))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                }
                .background(Color.black)

            ForEach(0..<buttonRows.count, id: \.self) { rowIndex in
                HStack{
                    Spacer()
                    ForEach(0..<buttonRows[rowIndex].count, id: \.self) { buttonIndex in
                        let button = buttonRows[rowIndex][buttonIndex]
                        RoundButton(model: RoundButtonModel(text: button.0, action: { text+=button.0 }, buttonColor: button.1, buttonFontSize: fontSize, buttonHeight: buttonWidth, buttonWidth: buttonWidth))
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

#Preview {
    ContentView()
}


