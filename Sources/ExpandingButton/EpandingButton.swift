import SwiftUI


//MARK: Button's view
@available(macOS 13.0, *)
struct ExpandingButton: View {
    //View's property
    let text: String
    let size: SizeButton
    let textColor: Color
    let backgroundColor: Color
    
    //Optional values
    let _font: Font?
    let _cornerRadius: CGFloat?
    let _kerning: CGFloat?
    
    
    //Default init
    init(text: String,
         font: Font? = nil,
         size: SizeButton = .m,
         textColor: Color = .white,
         backgroundColor: Color = .black,
         cornerRadius: CGFloat? = nil,
         kerning: CGFloat? = nil)
    {
        self.text = text
        self.size = size
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self._kerning = kerning
        self._cornerRadius = cornerRadius
        self._font = font
    }
    
    //Stretchability
    let stretch: CGFloat = 2.5
    
    @State var click: Bool = false
    
    //MARK: body
    var body: some View {
        textView
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .animation(.default, value: click)
            .simultaneousGesture (
                DragGesture(minimumDistance: 0)
                    .onChanged({ _ in click = true })
                    .onEnded({ _ in click = false})
            )
    }
    
    //Text view
    private var textView: some View {
        Text(text)
            .animation(.default, value: click)
            .foregroundStyle(textColor)
            .font(_font)
            .kerning(kerning)
            .lineLimit(1)
            .padding(.horizontal, paddings.horizontal)
            .padding(.vertical, paddings.vertical)
    }
}
