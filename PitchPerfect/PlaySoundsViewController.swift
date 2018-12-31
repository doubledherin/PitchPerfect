//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Wendy Dherin on 12/29/18.
//  Copyright © 2018 WendyDherin. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioUrl: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int { case slow = 0, fast, highPitch, lowPitch, echo, reverb }
    
    @IBAction func handlePlay(_ sender: UIButton) {
        print("play button pressed")
    }
    
    @IBAction func handleStop(_sender: AnyObject) {
        print("stop button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setContentModesForButtons()
        setupAudio()
    }
    
    func setContentModesForButtons() {
        let buttons = [
            slowButton,
            fastButton,
            highPitchButton,
            lowPitchButton,
            echoButton,
            reverbButton
        ]
        
        for button in buttons {
            button!.contentMode = .center
            button!.imageView?.contentMode = .scaleAspectFit
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }


}
