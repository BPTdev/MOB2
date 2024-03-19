import SwiftUI

struct RoundButtonModel {
    var text: String
    var action: () -> Void
    var buttonColor: Color
    var buttonFontSize: CGFloat
    var buttonHeight: CGFloat
    var buttonWidth: CGFloat
}

struct RoundButton: View {
    var model: RoundButtonModel

    var body: some View {
        Button(action: model.action) {
            ZStack {
                Ellipse()
                    .fill(model.buttonColor)
                    .frame(width: model.buttonWidth, height: model.buttonHeight)
                Text(model.text)
                    .foregroundColor(.white)
                    .font(Font.custom("HelveticaNeue-Thin", size: model.buttonFontSize))
            }
        }
        .frame(width: model.buttonWidth, height: model.buttonHeight) // Fixed size for the button
    }
}

