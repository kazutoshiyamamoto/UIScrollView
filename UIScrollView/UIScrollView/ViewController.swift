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
    
    // 写真とタイトルがある１ページ分のビューを作る
    func createPage(viewRect:CGRect, imageSize:CGSize, item:Photo) -> UIView {
        let pageView = UIView(frame: viewRect)
        // 写真ビューを作ってイメージを設定する
        let photoView = UIImageView()
        let left = (pageView.frame.width - imageSize.width)/2
        photoView.frame = CGRect(x:left, y:10, width:imageSize.width, height: imageSize.height)
        photoView.contentMode = .scaleToFill
        photoView.image = UIImage(named: item.imageName)
        // ラベルを作って写真タイトルを設定する
        let titleFrame = CGRect(x:left, y:photoView.frame.maxY+10, width:200, height:21)
        let titleLabel = UILabel(frame: titleFrame)
        titleLabel.text = item.title
        // 写真とタイトルとページビューに追加する
        pageView.addSubview(photoView)
        pageView.addSubview(titleLabel)
        return pageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

