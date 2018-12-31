//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Wendy Dherin on 12/29/18.
//  Copyright © 2018 WendyDherin. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: Play Sounds View Controller
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
    
    // MARK: View lifecycle overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setContentModesForButtons()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }

    // MARK: handlePlay action
    
    @IBAction func handlePlay(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .highPitch:
            playSound(pitch: 1000)
        case .lowPitch:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        configureUI(.playing)
    }
    
    // MARK: handleStop action
    
    @IBAction func handleStop(_sender: AnyObject) {
        stopAudio()
    }
    
    // MARK: setContentModesForButtons helper
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
}
