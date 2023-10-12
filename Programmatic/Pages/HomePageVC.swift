import UIKit

class HpmePageVC: UIViewController{

    //MARK: UI Elements

    lazy var userNameTextFiled = CustomTextFiled()
    lazy var passwordTextFiled = CustomTextFiled(isSecureText: true)

    /*lazy var userNameTextFiled: UITextFiled ={
        let textFiled = UITextFiled()
        textFiled.borderStyle     = .none
        textFiled.textColor       = .red
        textFiled.backgroundColor = .systemGray5
        textFiled.keyBoardType    = .emailAdress
        return textFiled  
    }()

    lazy var passwordTextFiled: UITextFiled ={
        let textFiled = UITextFiled()
        textFiled.borderStyle = .none
        textFiled.textColor = .red
        textFiled.backgroundColor = .systemGray5
        textFiled.isSecureTextEntry = true
        return textFiled
    }()*/

    lazy var loginButton: UIButton ={
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.setTitle = ("iOS geliştirici", for: normal)
        return button
    }()

    lazy var homeStackView: UIStackView ={
        let stackView = UIStackView()
        stackView.axis = .veritical
        stackView.pacing = 15
        return stackView
    }()
    //MARK: Life cycle
    override func viewDidLoad(){
        super.viewDidLoad()
        setupUI()
        addTargets()
    }

    //MARK -Helpers 
    func setupUI(){
        //view.backgroundColor = systemBlue
        //configureUserNameTextField()
        //configurePasswordTextField()
        //configureLoginButton()   
        //configureStackView()
        configureWidthExtesion()
    }

    func addTargets(){
        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
    }

    //MARK: -Actions
    @objc func loginButtonClicked(){
        navigationController?.pushViewController(DetailsVC(), animated: true)
    }

    func configureWidthExtesion(){
        //UIViewe Extension ile subView fonk. yazarak eklemeleri orada yaptık
        view.addSubViewsFromExt(userNameTextField,passwordTextField,loginButton)

        //Hangi nesne olursa onu kullandığımızda UIViewde anchor fonk yazdık orası çalışır
        let standartPadding: CGFloat = 15
        userNameTextField.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: rightAnchor ,paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding, height: standartPadding * 2){
        passwordTextField.anchor(top: userNameTextField.bottomAnchor, left: view.leftAnchor, right: rightAnchor, paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding, height:standartPadding * 2)
        loginButton.anchor(top: passwordTextField.bottomAnchor, left: view.leftAnchor, right: rightAnchor, paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding)
        loginButton.configSize(height: , width: )
       
        }

    }

    /* UIViewe Extension ile özelik verdiğimiz için configureWidthAnchor bu kodların görevini yapıyor
    func configureUserNameTextField(){
        view.addSubView(userNameTextField) 
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activite([
            userNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 30),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 30)
        ])
    }
    func cofigurePasswordTextField(){
        view.addSubView(passwordTextField) 
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activite([
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 30)
        ])
    }
    func configureLoginButton(){
        view.addSubView(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.active([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    */
    /*
    func configureStackView(){
        view.addSubView(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.active([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }*/
}