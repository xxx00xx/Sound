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

    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapDrumButton(){
        
        //２回押されたら０に戻す．
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する．
        drumSoundPlayer.play()
    }

    
}

