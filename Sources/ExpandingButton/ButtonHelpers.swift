import SwiftUI

//MARK: View's helpers properties
@available(macOS 13.0, *)
extension ExpandingButton {
    //Computed paddings
    var paddings: (vertical: CGFloat, horizontal: CGFloat) {
        switch size {
        case .s:
            click ? (11, 16) : (12, 17)
        case .m:
            click ? (12, 17) : (15, 20)
        case .l:
            click ? (15, 20) : (20, 30)
        }
    }
    
    //Computed cornerRadius
    var cornerRadius: CGFloat {
        if let cr =  _cornerRadius {
            CGFloat(click ? cr / stretch : cr)
        } else {
            switch size {
            case .s:
                CGFloat(click ? 7.5: 13)
            case .m:
                CGFloat(click ? 8: 15)
            case .l:
                CGFloat(click ? 10: 15)
            }
        }
    }
    
    //Computed kerning
    var kerning: CGFloat {
        if let kr = _kerning {
            click ? kr*stretch : kr
        } else {
            switch size {
            case .s:
                click ? 5: 1
            case .m:
                click ? 7.5: 2
            case .l:
                click ? 10: 2
            }
        }
    }
}
