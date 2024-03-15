import SwiftUI

struct RoundButtonModel {
    var text: String
    var action: () -> Void
    var buttonColor: Color
    var buttonFontSize: CGFloat
    var buttonHeight: CGFloat
    var buttonWidth:CGFloat
}

struct RoundButton: View {
    var model: RoundButtonModel
    
    var body: some View {
        Button(action: model.action) {
            Text(model.text)
                .foregroundColor(.white)
                .font(Font.custom("HelveticaNeue-Thin", size: model.buttonFontSize))
                .padding()
                .background(model.buttonColor)
                .clipShape(Circle())
        }
        .frame(width: model.buttonWidth, height: model.buttonHeight) // Fixed size for the button
    }
}
