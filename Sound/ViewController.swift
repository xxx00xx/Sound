//
//  ViewController.swift
//  Sound
//
//  Created by 古田翔太郎 on 2020/09/17.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //ドラムを表示する箱を作る．
    @IBOutlet var drumButton: UIButton!
    
    //ドラムのサウンドプレイヤーを読み込んで，プレイヤーを作る．
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton(){
        
        //ドラムがなっている画像への切り替え
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //２回押されたら０に戻す．
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する．
        drumSoundPlayer.play()
    }

    @IBAction func touchDwonDrumButton() {
        //ドラムがなっていない画像への切り替え
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
}

