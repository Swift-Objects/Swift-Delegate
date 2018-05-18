//
//  ViewController.swift
//  Swift-Delegate
//
//  Created by lemo on 2018/5/18.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

//4, 注册代理
class ViewController: UIViewController, ContentViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let content = ContentView(frame: self.view.bounds)
        content.delegate = self
        self.view.addSubview(content)
    }
    
    // 5 实现代理方法
    func testAction(sender: UIButton) {
        print("测试代理")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

