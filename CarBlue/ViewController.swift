//
//  ViewController.swift
//  BluetoothAudoUpgrade
//
//  Created by P Leonard on 8/18/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer


class ViewController: UIViewController {
    
    @IBOutlet weak var playBTN: UIButton!
    @IBOutlet weak var volView: MPVolumeView!
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("Edm Trumpets", ofType: "mp3")
        var music = NSURL(fileURLWithPath: path!)
        configureAudioSession()
        audioPlayer = AVAudioPlayer(contentsOfURL: music, error: nil)
        audioPlayer.prepareToPlay()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureAudioSession() {
        let session:AVAudioSession = AVAudioSession.sharedInstance()
        var error: NSError?
        if !session.setCategory(AVAudioSessionCategoryPlayAndRecord, withOptions: AVAudioSessionCategoryOptions.MixWithOthers | AVAudioSessionCategoryOptions.AllowBluetooth, error: nil) {
            println("could not set session catigory")
            if let e = error    {
                println(e.localizedDescription)
            }
        }
        
        
        //        if !session.setMode(AVAudioSessionModeVoiceChat, error: &error) {
        //            println("Could not set mode")
        //        }
        if !session.setActive(true, error: &error)  {
            println("Could not make session active")
            if let e = error{
                println(e.localizedDescription)
            }
        }
        
        
    }
    @IBAction func stopTheNoise(sender: AnyObject) {
        audioPlayer.stop()
        audioPlayer.prepareToPlay()
    }
    
    @IBAction func playBTN(sender: AnyObject) {
        audioPlayer.play()
        println("play")
    }
    
}

