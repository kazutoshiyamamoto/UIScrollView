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
    
    // 写真のファイル名とタイトルの構造体（Photoタイプ）
    struct Photo {
        var imageName: String
        var title: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 各ページに表示する写真
        let photoList = [
            Photo(imageName:"photo1", title:"映画は中劇"),
            Photo(imageName:"photo2", title:"札幌は時計台"),
            Photo(imageName:"photo3", title:"蓮の花"),
            Photo(imageName:"photo4", title:"夏の垣根")
            ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

