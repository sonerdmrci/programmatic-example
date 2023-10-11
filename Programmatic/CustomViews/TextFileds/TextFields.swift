
//Bu sınıf cocoa touch class ve UITextField türünde

import UIKit

class CustomTextField: UITextField{

    override init(frame: CGRect){
        super.init(frame: frame)
        configure()
        
    }

    required init?(coder: NSCoder){
        fatalError("init (coder: ) has not been implemented")
    }

    //textfieldlerin farklı özellikleri olduğu için parametresi böyle olan label çalıştığında bu init çalışır
    convenience init(isSecureText: Bool){
        self.init(frame: .zero)
        set(isSecureText: isSecureText)
    }

    func configure(){
        borderStyle     = .none
        textColor       = .red
        backgroundColor = .systemGray5
    }
    
    //Password labeli için güvenli moduna geçti
    private func set(isSecureText: Bool){
        isSecureTextEntry = isSecureText
    }
}