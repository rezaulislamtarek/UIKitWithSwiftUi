//
//  ViewController.swift
//  USUI
//
//  Created by MD. Rezaul Islam Tarek on 27/2/23.
//

import UIKit
import SwiftUI
import SnapKit

class ViewController: UIViewController {
    
    lazy var usLabel : UILabel = {
        let ul = UILabel()
        ul.text = "Nothing selected yet"
        return ul
    }()
    
    lazy var userList: UserListView = {
        let ulv = UserListView{ user in
            self.usLabel.text = user.name
        }
        return ulv
    }()
    
    lazy var uicontroller : UIHostingController = {
        let uc = UIHostingController(rootView: userList)
        return uc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setUpView()
        setUpConstraint()
    }
    
    func setUpView(){
        view.addSubview(usLabel)
        view.addSubview(uicontroller.view)
    }
    func setUpConstraint(){
        
        usLabel.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view).offset(16)
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        uicontroller.view.snp.makeConstraints{ make in
            make.top.equalTo(usLabel.snp.bottom)
            make.left.equalTo(self.view)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }


}

