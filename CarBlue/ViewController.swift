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
import iAd


class ViewController: UIViewController, ADBannerViewDelegate {
    
    var steps = 0
    
    @IBOutlet weak var volView: MPVolumeView!
    
    @IBOutlet weak var asdf: AsdfView!
    
    @IBOutlet weak var carAni: CarBlueView!
    
    
    @IBAction func tapOccured(sender: AnyObject) {
        switch self.steps{
        case 0:
            carAni.addCarStartAnimation()
            self.steps += 1
        case 1:
            carAni.addStepOneAnimation()
            self.steps += 1
        case 2:
            carAni.addStepTwoAnimation()
            self.steps += 1
        case 3:
            carAni.addSetpThreeAnimation()
            self.steps += 1
        case 4:
            carAni.addStepFourAnimation()
            self.steps += 1
        case 5:
            carAni.addCarStartAnimation()  //creates a loop if the user keeps tapping
            self.steps = 1
        default:
            carAni.addCarStartAnimation()
        }
       
       
    
    }
   
    
    
    var bannerAdView = ADBannerView(adType: ADAdType.Banner)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerAdView.delegate = self
        self.canDisplayBannerAds = true
        configureAudioSession()
        carAni.addCarStartAnimation()
        
        
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        println("Banner added")
        self.view.addSubview(banner)
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        println("Failed adding ad")
        banner.removeFromSuperview()
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
        
        if !session.setActive(true, error: &error)  {
            println("Could not make session active")
            if let e = error{
                println(e.localizedDescription)
            }
        }
    }
}

