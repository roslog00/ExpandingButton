import SwiftUI

//MARK: Other inits
@available(macOS 13.0, *)
extension ExpandingButton {
    init(text: String,
         size: SizeButton = .m)
    {
        self.text = text
        self.size = size
        self.textColor = .white
        self.backgroundColor = .black
        self._kerning = nil
        self._cornerRadius = nil
    }
    
    init(text: String,
         textColor: Color,
         rectangleColor: Color)
    {
        self.text = text
        self.size = .m
        self.textColor = textColor
        self.backgroundColor = rectangleColor
        self._kerning = nil
        self._cornerRadius = nil
    }
    
    init(text: String,
         size: SizeButton,
         textColor: Color,
         rectangleColor: Color)
    {
        self.text = text
        self.size = size
        self.textColor = textColor
        self.backgroundColor = rectangleColor
        self._kerning = nil
        self._cornerRadius = nil
    }
    
    init(text: String,
         kerning: CGFloat)
    {
        self.text = text
        self.size = .m
        self.textColor = .white
        self.backgroundColor = .black
        self._kerning = kerning <= 1 ? 2 : kerning
        self._cornerRadius = nil
    }
    
    init(text: String,
         kerning: CGFloat,
         cornerRadius: CGFloat)
    {
        self.text = text
        self.size = .m
        self.textColor = .white
        self.backgroundColor = .black
        self._kerning = kerning <= 1 ? 2 : kerning
        self._cornerRadius = cornerRadius
    }
}
