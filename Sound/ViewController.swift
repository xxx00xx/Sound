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

    //ピアノを表示する箱を作る．
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドプレイヤーを読み込んで，プレイヤーを作る．
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    //ピアノのサウンドプレイヤーを読み込んで，プレイヤーを作る．
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタッチが始まったときに呼ばれる．
    @IBAction func touchDownDrumButton(){
        
        //ドラムがなっている画像への切り替え
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //２回押されたら０に戻す．
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する．
        drumSoundPlayer.play()
    }

    //ドラムボタンの上でタッチが終わったときに呼ばれる．
    @IBAction func touchUpDrumButton() {
        //ドラムがなっていない画像への切り替え
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    //ピアノがタッチが始まったときに呼ばれる．
    @IBAction func touchDownPianoButton(){
        
        //ピアノがなっている画像への切り替え
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //２回押されたら０に戻す．
        pianoSoundPlayer.currentTime = 0
        
        //ピアノの音を再生する．
        pianoSoundPlayer.play()
    }
    
    //ピアノボタンの上でタッチが終わったときに呼ばれる．
    @IBAction func touchUpPianoButton() {
        //ピアノがなっていない画像への切り替え
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton(){
            
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        guitarSoundPlayer.currentTime = 0

        guitarSoundPlayer.play()
    }
        
    //ピアノボタンの上でタッチが終わったときに呼ばれる．
    @IBAction func touchUpGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

