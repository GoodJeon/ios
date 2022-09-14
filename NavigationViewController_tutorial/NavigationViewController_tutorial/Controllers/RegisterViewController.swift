//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by dong jun Jeon on 2022/09/13.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
    }


    @IBAction func onLoginViewControllerBtnClicked(_ sender: Any) {
        print("RegisterViewController - onLoginViewControllerBtnClicked() called / 로그인 버튼 클릭!!")
        // 네비게이션 뷰 컨트롤러를 팝 한다.
        self.navigationController?.popViewController(animated: true)
    }
}
