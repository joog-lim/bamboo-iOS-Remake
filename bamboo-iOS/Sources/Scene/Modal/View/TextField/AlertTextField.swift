import UIKit
import PinLayout
import BamBooSetting

final class AlertTextField : UITextField {
    init(placeholder :String? = "",font: UIFont? = UIFont.bamboo(size: 11, family: .Regular), text : String? = "", isEnabled : Bool = true) {
        super.init(frame: .zero)
        spacing()
        self.attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.rgb(red: 196, green: 196, blue: 196)])
        self.text = text
        self.textColor = .black
        self.font = font
        self.isEnabled = isEnabled
        self.backgroundColor = .white
        self.borderStyle = .none
        self.layer.cornerRadius = 5
        self.layer.applySketchShadow(color: .black, alpha: 0.25, x: 1, y: 1, blur: 4, spread: 0)
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Method
    private  func spacing(){
        let view = UIView()
        view.pin.height(frame.height).width(6)
        rightView = view
        leftView = view
        leftViewMode = .always
        rightViewMode = .always
    }
}
