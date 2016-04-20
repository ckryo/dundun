//
//  RepassViewController.swift
//  dundun
//
//  Created by 刘荣 on 16/4/18.
//  Copyright © 2016年 Microali. All rights reserved.
//

import UIKit

class RepassViewController: BaseViewController {
    let themColor = MColor.themeColor
    
    
    let phoTextField = LoginTextFieldGroup()
    let smsTextField = LoginTextFieldGroup()
    let psdTextField = LoginTextFieldGroup()
    
    override func initView() {
        title = "重置密码"
        
        let logo = LogoView.defaultLogo()
        addsubView(logo)
        
        view.addSubview(phoTextField.initGroup(logo, topOffset: 60, icon: "tx_pho"))
        view.addSubview(smsTextField.initGroup(phoTextField, topOffset: 10, icon: "tx_sms"))
        view.addSubview(psdTextField.initGroup(smsTextField, topOffset: 10, icon: "tx_psd"))
        
        
        
        let smsBtn = MButton.whiteButton("获取验证码", target: self, action: #selector(RegistViewController.login)).addTo(view)
        smsBtn.snp_makeConstraints { (make) in
            make.top.equalTo(phoTextField).offset(8)
            make.right.equalTo(phoTextField)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
        let btn = MButton.whiteButton("登       录", target: self, action: #selector(RegistViewController.login)).addTo(view)
        btn.snp_makeConstraints { (make) in
            make.top.equalTo(psdTextField.snp_bottom).offset(50)
            make.left.equalTo(view).offset(40)
            make.right.equalTo(view).offset(-40)
            make.height.equalTo(50)
        }
        
        let scrollView = UIScrollView(frame: UIScreen.mainScreen().bounds)
        scrollView.addSubview(view)
        scrollView.contentSize = CGSize(width: 0, height: 700)
        scrollView.backgroundColor = themColor
        view = scrollView
        
    }

}