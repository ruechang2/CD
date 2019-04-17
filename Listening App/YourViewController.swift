//
//  YourViewController.swift
//  Listening App
//
//  Created by USER on 2019/04/17.
//  Copyright © 2019年 USER. All rights reserved.
//

import UIKit
import AVFoundation


class YourViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 動画ファイルのURLを取得
        let url = URL(string: "https://www.youtube.com/watch?v=FiHSfk8veTk&t=1s")
        
        // 生成
        let player = AVPlayer(url: url!)
        
        // レイヤーの追加
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        
        // 再生
        player.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



