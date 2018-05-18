//
//  ContentView.swift
//  Swift-Delegate
//
//  Created by lemo on 2018/5/18.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

//1, 声明代理
protocol ContentViewDelegate {
    func testAction(sender: UIButton)//代理方法
}

class ContentView: UIView {
    //2, 设置变量
    var delegate: ContentViewDelegate?
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        btn.center = self.center
        btn.setTitle("测试代理", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(btnAction(sender:)), for: .touchUpInside)
        self.addSubview(btn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //调用代理方法
    @objc func btnAction(sender: UIButton) {
        delegate?.testAction(sender: sender)
    }

}
