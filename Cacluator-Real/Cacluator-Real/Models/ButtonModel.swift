import SwiftUI

struct RoundButtonModel {
    var text: String
    var action: () -> Void
    var buttonColor: Color
    var buttonFontSize: CGFloat
    var buttonHeight: CGFloat
    var buttonWidth: CGFloat
}
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

struct RoundButton: View {
    var model: RoundButtonModel

    var body: some View {
        Button(action: model.action) {
            ZStack {
                Ellipse()
                    .fill(model.buttonColor)
                    .frame(width: buttonWidth, height: buttonHeight)
                Text(model.text)
                    .foregroundColor(.white)
                    .font(Font.custom("HelveticaNeue-Thin", size: model.buttonFontSize))
            }
        }
        .frame(width: model.buttonWidth, height: model.buttonHeight) // Fixed size for the button
    }
}


