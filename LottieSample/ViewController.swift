//
//  ViewController.swift
//  LottieSample
//
//  Created by Togami Yuki on 2019/01/15.
//  Copyright © 2019 Togami Yuki. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    //アニメーションを表示するViewのインスタンス化
    let animationView = LOTAnimationView()
    
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        animationView.frame.size.width = 300//アニメーションを表示するViewの幅
        animationView.frame.size.height = 300//アニメーションを表示するViewの高さ
        animationView.center = self.view.center//Viewのs中心に配置
        animationView.setAnimation(named: "gears")
        animationView.animationSpeed = 1//アニメーションのスピード
        animationView.contentMode = .scaleAspectFit
        animationView.loopAnimation = true//アニメーションを繰り返し行う
        self.view.addSubview(animationView)
        
        
    }
    
    //アニメーション開始
    @IBAction func startAct(_ sender: UIButton) {
        print("アニメーション開始")
        animationView.play()
    }
    

    //アニメーションストップ
    @IBAction func stopAct(_ sender: UIButton) {
        print("アニメーション終了")
        animationView.stop()
    }
    
    


}

