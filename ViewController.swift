//
//  ViewController.swift
//  MyPiano
//
//  Created by Eliza Maria Porto de Carvalho on 18/05/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!
    var selectedSound: String = ""
    var soundIndex = ["do","re","mi","fa","sol","la","si"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func SoundNotes(_ sender: UIButton) {
        
        
        selectedSound = soundIndex[sender.tag - 1]
        
        print(selectedSound)
        
        playSound()
        
    }
    
    
    
    func playSound(){
        
        let soundURL = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
}

