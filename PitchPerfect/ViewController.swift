//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Wendy Dherin on 12/19/18.
//  Copyright © 2018 WendyDherin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(<#T##animated: Bool##Bool#>)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(<#T##animated: Bool##Bool#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    @IBAction func recordAudio(_ sender: Any) {
        print("Record button pressed.")
        recordingLabel.text = "Recording in progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop recording button was pressed.")
    }
}

