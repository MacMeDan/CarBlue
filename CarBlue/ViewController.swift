//
//  ViewController.swift
//  BluetoothAudoUpgrade
//
//  Created by Daniel Leonard on 8/18/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer


class ViewController: UIViewController {
    
    var steps = 0
    
    @IBOutlet weak var volView: MPVolumeView!
    
    var asdf: AsdfView = AsdfView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAudioSession()
        view.addSubview(asdf)
        asdf.center = view.center
        asdf.addDoitAnimation()
        addTapGesture()
       
    }
    
    func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(configureAudioSession))
        view.addGestureRecognizer(tap)
    }
    
    func configureAudioSession() {
        let session:AVAudioSession = AVAudioSession.sharedInstance()
        
        do {
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord, with: [.mixWithOthers, .allowBluetooth, .allowBluetoothA2DP])
        } catch {
            print("ERROR setting session active")
        }

         do {
            try session.setActive(true)
         } catch {
            print("ERROR setting session active")
        }
    }
    
}

