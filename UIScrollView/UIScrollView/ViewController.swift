//
//  ViewController.swift
//  UIScrollView
//
//  Created by home on 2018/04/29.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // スクロールビューをOutlet接続する
    @IBOutlet weak var scrollView: UIScrollView!
    
    // ページコントロールをOutlet接続する
    @IBOutlet weak var pageControll: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

