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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
