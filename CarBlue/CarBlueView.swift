//
// CarBlueView.swift
//
//  Created by Daniel Leonard on 8/18/15.
//  Copyright (c) 2015 Macme. All rights reserved.
//

import UIKit

@IBDesignable
class CarBlueView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 790, height: 1252))
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .ScaleToFill:
				break
			case .ScaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransformMakeScale(xScale, yScale)
			scalingView.center = CGPoint(x:CGRectGetMidX(self.bounds), y:CGRectGetMidY(self.bounds))
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = NSBundle(forClass:self.dynamicType)
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:790, height:1252)
		__scaling__.center = CGPoint(x:395.4, y:626.3)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let carBlue = UIImageView()
		carBlue.bounds = CGRect(x:0, y:0, width:260.0, height:260.0)
		var imgCarBlue: UIImage!
		if let imagePath = bundle.pathForResource("CarBlue.png", ofType:nil) {
			imgCarBlue = UIImage(contentsOfFile:imagePath)
		}
		carBlue.image = imgCarBlue
		carBlue.contentMode = .Center;
		carBlue.layer.position = CGPoint(x:395.395, y:1124.509)
		carBlue.alpha = 0.00
		carBlue.transform = CGAffineTransformMakeScale(0.99, 0.99)
		__scaling__.addSubview(carBlue)
		viewsByName["CarBlue"] = carBlue

		let titletext = UIImageView()
		titletext.bounds = CGRect(x:0, y:0, width:378.0, height:58.0)
		var imgTitleText: UIImage!
		if let imagePath = bundle.pathForResource("Title Text.png", ofType:nil) {
			imgTitleText = UIImage(contentsOfFile:imagePath)
		}
		titletext.image = imgTitleText
		titletext.contentMode = .Center;
		titletext.layer.position = CGPoint(x:395.395, y:107.115)
		titletext.transform = CGAffineTransformMakeScale(1.45, 1.45)
		__scaling__.addSubview(titletext)
		viewsByName["titletext"] = titletext

		let iPhone = UIImageView()
		iPhone.bounds = CGRect(x:0, y:0, width:429.0, height:498.0)
		var imgIPhone: UIImage!
		if let imagePath = bundle.pathForResource("iPhone.png", ofType:nil) {
			imgIPhone = UIImage(contentsOfFile:imagePath)
		}
		iPhone.image = imgIPhone
		iPhone.contentMode = .Center;
		iPhone.layer.position = CGPoint(x:180.895, y:740.639)
		iPhone.alpha = 0.00
		__scaling__.addSubview(iPhone)
		viewsByName["iPhone"] = iPhone

		let step4 = UIImageView()
		step4.bounds = CGRect(x:0, y:0, width:529.0, height:122.0)
		var imgStep4: UIImage!
		if let imagePath = bundle.pathForResource("Step 4.png", ofType:nil) {
			imgStep4 = UIImage(contentsOfFile:imagePath)
		}
		step4.image = imgStep4
		step4.contentMode = .Center;
		step4.layer.position = CGPoint(x:395.395, y:565.341)
		step4.alpha = 0.00
		__scaling__.addSubview(step4)
		viewsByName["step4"] = step4

		let step3 = UIImageView()
		step3.bounds = CGRect(x:0, y:0, width:378.0, height:57.0)
		var imgStep3: UIImage!
		if let imagePath = bundle.pathForResource("Step 3.png", ofType:nil) {
			imgStep3 = UIImage(contentsOfFile:imagePath)
		}
		step3.image = imgStep3
		step3.contentMode = .Center;
		step3.layer.position = CGPoint(x:395.395, y:443.429)
		step3.alpha = 0.00
		__scaling__.addSubview(step3)
		viewsByName["step3"] = step3

		let step2 = UIImageView()
		step2.bounds = CGRect(x:0, y:0, width:465.0, height:122.0)
		var imgStep2: UIImage!
		if let imagePath = bundle.pathForResource("Step 2.png", ofType:nil) {
			imgStep2 = UIImage(contentsOfFile:imagePath)
		}
		step2.image = imgStep2
		step2.contentMode = .Center;
		step2.layer.position = CGPoint(x:380.969, y:357.758)
		step2.alpha = 0.00
		__scaling__.addSubview(step2)
		viewsByName["step2"] = step2

		let step1 = UIImageView()
		step1.bounds = CGRect(x:0, y:0, width:465.0, height:122.0)
		var imgStepOne: UIImage!
		if let imagePath = bundle.pathForResource("Step One.png", ofType:nil) {
			imgStepOne = UIImage(contentsOfFile:imagePath)
		}
		step1.image = imgStepOne
		step1.contentMode = .Center;
		step1.layer.position = CGPoint(x:391.490, y:254.024)
		step1.alpha = 0.00
		__scaling__.addSubview(step1)
		viewsByName["step1"] = step1

		let settingsIcon = UIImageView()
		settingsIcon.bounds = CGRect(x:0, y:0, width:209.0, height:211.0)
		var imgSettingsIcon: UIImage!
		if let imagePath = bundle.pathForResource("SettingsIcon.png", ofType:nil) {
			imgSettingsIcon = UIImage(contentsOfFile:imagePath)
		}
		settingsIcon.image = imgSettingsIcon
		settingsIcon.contentMode = .Center;
		settingsIcon.layer.position = CGPoint(x:173.330, y:721.662)
		settingsIcon.alpha = 0.00
		settingsIcon.transform = CGAffineTransformMakeScale(0.90, 0.90)
		__scaling__.addSubview(settingsIcon)
		viewsByName["settingsIcon"] = settingsIcon

		let exsplain = UIImageView()
		exsplain.bounds = CGRect(x:0, y:0, width:657.0, height:122.0)
		var imgExsplain: UIImage!
		if let imagePath = bundle.pathForResource("exsplain.png", ofType:nil) {
			imgExsplain = UIImage(contentsOfFile:imagePath)
		}
		exsplain.image = imgExsplain
		exsplain.contentMode = .Center;
		exsplain.layer.position = CGPoint(x:395.395, y:247.960)
		exsplain.alpha = 0.00
		__scaling__.addSubview(exsplain)
		viewsByName["exsplain"] = exsplain

		let slogan = UIImageView()
		slogan.bounds = CGRect(x:0, y:0, width:707.0, height:58.0)
		var imgSlogan: UIImage!
		if let imagePath = bundle.pathForResource("slogan.png", ofType:nil) {
			imgSlogan = UIImage(contentsOfFile:imagePath)
		}
		slogan.image = imgSlogan
		slogan.contentMode = .Center;
		slogan.layer.position = CGPoint(x:395.395, y:335.548)
		slogan.alpha = 0.00
		__scaling__.addSubview(slogan)
		viewsByName["slogan"] = slogan

		self.viewsByName = viewsByName
	}

	// - MARK: carStart

	func addCarStartAnimation() {
		addCarStartAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addCarStartAnimation(completion: ((Bool) -> Void)?) {
		addCarStartAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addCarStartAnimation(#removedOnCompletion: Bool) {
		addCarStartAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addCarStartAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addCarStartAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addCarStartAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 7.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "CarStart")
			self.animationCompletions[layer.animationForKey("CarStart")] = complete
		}

		let titletextRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		titletextRotationAnimation.duration = 7.000
		titletextRotationAnimation.values = [0.000 as Float, -0.035 as Float, 0.035 as Float, -0.000 as Float, -0.000 as Float]
		titletextRotationAnimation.keyTimes = [0.000 as Float, 0.086 as Float, 0.136 as Float, 0.186 as Float, 1.000 as Float]
		titletextRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		titletextRotationAnimation.beginTime = beginTime
		titletextRotationAnimation.fillMode = fillMode
		titletextRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["titletext"]?.layer.addAnimation(titletextRotationAnimation, forKey:"carStart_Rotation")

		let exsplainRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		exsplainRotationAnimation.duration = 7.000
		exsplainRotationAnimation.values = [0.000 as Float, 0.002 as Float, -0.017 as Float, 0.017 as Float, 0.000 as Float, 0.000 as Float]
		exsplainRotationAnimation.keyTimes = [0.000 as Float, 0.429 as Float, 0.500 as Float, 0.571 as Float, 0.643 as Float, 1.000 as Float]
		exsplainRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		exsplainRotationAnimation.beginTime = beginTime
		exsplainRotationAnimation.fillMode = fillMode
		exsplainRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["exsplain"]?.layer.addAnimation(exsplainRotationAnimation, forKey:"carStart_Rotation")

		let exsplainOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		exsplainOpacityAnimation.duration = 7.000
		exsplainOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float, 1.000 as Float]
		exsplainOpacityAnimation.keyTimes = [0.000 as Float, 0.392 as Float, 0.429 as Float, 0.929 as Float, 1.000 as Float]
		exsplainOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		exsplainOpacityAnimation.beginTime = beginTime
		exsplainOpacityAnimation.fillMode = fillMode
		exsplainOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["exsplain"]?.layer.addAnimation(exsplainOpacityAnimation, forKey:"carStart_Opacity")

		let sloganOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		sloganOpacityAnimation.duration = 7.000
		sloganOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		sloganOpacityAnimation.keyTimes = [0.000 as Float, 0.571 as Float, 0.679 as Float, 1.000 as Float]
		sloganOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		sloganOpacityAnimation.beginTime = beginTime
		sloganOpacityAnimation.fillMode = fillMode
		sloganOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["slogan"]?.layer.addAnimation(sloganOpacityAnimation, forKey:"carStart_Opacity")

		let sloganScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		sloganScaleXAnimation.duration = 7.000
		sloganScaleXAnimation.values = [1.000 as Float, 1.060 as Float, 1.010 as Float, 1.010 as Float]
		sloganScaleXAnimation.keyTimes = [0.000 as Float, 0.714 as Float, 0.786 as Float, 1.000 as Float]
		sloganScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		sloganScaleXAnimation.beginTime = beginTime
		sloganScaleXAnimation.fillMode = fillMode
		sloganScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["slogan"]?.layer.addAnimation(sloganScaleXAnimation, forKey:"carStart_ScaleX")

		let sloganScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		sloganScaleYAnimation.duration = 7.000
		sloganScaleYAnimation.values = [1.000 as Float, 1.060 as Float, 1.010 as Float, 1.010 as Float]
		sloganScaleYAnimation.keyTimes = [0.000 as Float, 0.714 as Float, 0.786 as Float, 1.000 as Float]
		sloganScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		sloganScaleYAnimation.beginTime = beginTime
		sloganScaleYAnimation.fillMode = fillMode
		sloganScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["slogan"]?.layer.addAnimation(sloganScaleYAnimation, forKey:"carStart_ScaleY")

		let carBlueRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		carBlueRotationAnimation.duration = 7.000
		carBlueRotationAnimation.values = [0.000 as Float, 0.017 as Float, 0.000 as Float, -0.012 as Float, 0.000 as Float, 0.035 as Float, -0.035 as Float, -0.000 as Float, 0.035 as Float, -0.035 as Float, 0.000 as Float, 0.000 as Float]
		carBlueRotationAnimation.keyTimes = [0.000 as Float, 0.086 as Float, 0.114 as Float, 0.136 as Float, 0.157 as Float, 0.186 as Float, 0.214 as Float, 0.243 as Float, 0.264 as Float, 0.300 as Float, 0.357 as Float, 1.000 as Float]
		carBlueRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueRotationAnimation.beginTime = beginTime
		carBlueRotationAnimation.fillMode = fillMode
		carBlueRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueRotationAnimation, forKey:"carStart_Rotation")

		let carBlueOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		carBlueOpacityAnimation.duration = 7.000
		carBlueOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.keyTimes = [0.000 as Float, 0.014 as Float, 1.000 as Float]
		carBlueOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		carBlueOpacityAnimation.beginTime = beginTime
		carBlueOpacityAnimation.fillMode = fillMode
		carBlueOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueOpacityAnimation, forKey:"carStart_Opacity")

		let carBlueScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		carBlueScaleXAnimation.duration = 7.000
		carBlueScaleXAnimation.values = [0.986 as Float, 1.012 as Float, 0.988 as Float, 0.992 as Float, 0.990 as Float, 0.990 as Float]
		carBlueScaleXAnimation.keyTimes = [0.000 as Float, 0.036 as Float, 0.071 as Float, 0.179 as Float, 0.257 as Float, 1.000 as Float]
		carBlueScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueScaleXAnimation.beginTime = beginTime
		carBlueScaleXAnimation.fillMode = fillMode
		carBlueScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueScaleXAnimation, forKey:"carStart_ScaleX")

		let carBlueScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		carBlueScaleYAnimation.duration = 7.000
		carBlueScaleYAnimation.values = [0.986 as Float, 1.012 as Float, 0.988 as Float, 0.992 as Float, 0.990 as Float, 0.990 as Float]
		carBlueScaleYAnimation.keyTimes = [0.000 as Float, 0.036 as Float, 0.071 as Float, 0.179 as Float, 0.257 as Float, 1.000 as Float]
		carBlueScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueScaleYAnimation.beginTime = beginTime
		carBlueScaleYAnimation.fillMode = fillMode
		carBlueScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueScaleYAnimation, forKey:"carStart_ScaleY")

		let carBlueTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		carBlueTranslationYAnimation.duration = 7.000
		carBlueTranslationYAnimation.values = [0.000 as Float, 2.000 as Float, 1.000 as Float, 3.000 as Float, 1.000 as Float, 1.000 as Float]
		carBlueTranslationYAnimation.keyTimes = [0.000 as Float, 0.071 as Float, 0.157 as Float, 0.229 as Float, 0.307 as Float, 1.000 as Float]
		carBlueTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueTranslationYAnimation.beginTime = beginTime
		carBlueTranslationYAnimation.fillMode = fillMode
		carBlueTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueTranslationYAnimation, forKey:"carStart_TranslationY")
	}

	func removeCarStartAnimation() {
		self.layer.removeAnimationForKey("CarStart")
		self.viewsByName["titletext"]?.layer.removeAnimationForKey("carStart_Rotation")
		self.viewsByName["exsplain"]?.layer.removeAnimationForKey("carStart_Rotation")
		self.viewsByName["exsplain"]?.layer.removeAnimationForKey("carStart_Opacity")
		self.viewsByName["slogan"]?.layer.removeAnimationForKey("carStart_Opacity")
		self.viewsByName["slogan"]?.layer.removeAnimationForKey("carStart_ScaleX")
		self.viewsByName["slogan"]?.layer.removeAnimationForKey("carStart_ScaleY")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("carStart_Rotation")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("carStart_Opacity")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("carStart_ScaleX")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("carStart_ScaleY")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("carStart_TranslationY")
	}

	// - MARK: setpThree

	func addSetpThreeAnimation() {
		addSetpThreeAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addSetpThreeAnimation(completion: ((Bool) -> Void)?) {
		addSetpThreeAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addSetpThreeAnimation(#removedOnCompletion: Bool) {
		addSetpThreeAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addSetpThreeAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addSetpThreeAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addSetpThreeAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 4.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "SetpThree")
			self.animationCompletions[layer.animationForKey("SetpThree")] = complete
		}

		let step2OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step2OpacityAnimation.duration = 4.500
		step2OpacityAnimation.values = [1.000 as Float, 0.000 as Float, 0.000 as Float]
		step2OpacityAnimation.keyTimes = [0.000 as Float, 0.222 as Float, 1.000 as Float]
		step2OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		step2OpacityAnimation.beginTime = beginTime
		step2OpacityAnimation.fillMode = fillMode
		step2OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step2"]?.layer.addAnimation(step2OpacityAnimation, forKey:"setpThree_Opacity")

		let step2TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		step2TranslationYAnimation.duration = 4.500
		step2TranslationYAnimation.values = [-100.000 as Float, -100.000 as Float]
		step2TranslationYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		step2TranslationYAnimation.timingFunctions = [linearTiming]
		step2TranslationYAnimation.beginTime = beginTime
		step2TranslationYAnimation.fillMode = fillMode
		step2TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step2"]?.layer.addAnimation(step2TranslationYAnimation, forKey:"setpThree_TranslationY")

		let step3RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		step3RotationAnimation.duration = 4.500
		step3RotationAnimation.values = [0.000 as Float, -0.017 as Float, 0.017 as Float, 0.000 as Float]
		step3RotationAnimation.keyTimes = [0.000 as Float, 0.778 as Float, 0.889 as Float, 1.000 as Float]
		step3RotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		step3RotationAnimation.beginTime = beginTime
		step3RotationAnimation.fillMode = fillMode
		step3RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step3"]?.layer.addAnimation(step3RotationAnimation, forKey:"setpThree_Rotation")

		let step3OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step3OpacityAnimation.duration = 4.500
		step3OpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		step3OpacityAnimation.keyTimes = [0.000 as Float, 0.556 as Float, 1.000 as Float]
		step3OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		step3OpacityAnimation.beginTime = beginTime
		step3OpacityAnimation.fillMode = fillMode
		step3OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step3"]?.layer.addAnimation(step3OpacityAnimation, forKey:"setpThree_Opacity")

		let step3TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		step3TranslationYAnimation.duration = 4.500
		step3TranslationYAnimation.values = [0.000 as Float, -200.000 as Float, -200.000 as Float]
		step3TranslationYAnimation.keyTimes = [0.000 as Float, 0.556 as Float, 1.000 as Float]
		step3TranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		step3TranslationYAnimation.beginTime = beginTime
		step3TranslationYAnimation.fillMode = fillMode
		step3TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step3"]?.layer.addAnimation(step3TranslationYAnimation, forKey:"setpThree_TranslationY")

		let carBlueOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		carBlueOpacityAnimation.duration = 4.500
		carBlueOpacityAnimation.values = [1.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.timingFunctions = [linearTiming]
		carBlueOpacityAnimation.beginTime = beginTime
		carBlueOpacityAnimation.fillMode = fillMode
		carBlueOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueOpacityAnimation, forKey:"setpThree_Opacity")
	}

	func removeSetpThreeAnimation() {
		self.layer.removeAnimationForKey("SetpThree")
		self.viewsByName["step2"]?.layer.removeAnimationForKey("setpThree_Opacity")
		self.viewsByName["step2"]?.layer.removeAnimationForKey("setpThree_TranslationY")
		self.viewsByName["step3"]?.layer.removeAnimationForKey("setpThree_Rotation")
		self.viewsByName["step3"]?.layer.removeAnimationForKey("setpThree_Opacity")
		self.viewsByName["step3"]?.layer.removeAnimationForKey("setpThree_TranslationY")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("setpThree_Opacity")
	}

	// - MARK: stepFour

	func addStepFourAnimation() {
		addStepFourAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addStepFourAnimation(completion: ((Bool) -> Void)?) {
		addStepFourAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addStepFourAnimation(#removedOnCompletion: Bool) {
		addStepFourAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addStepFourAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addStepFourAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addStepFourAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 6.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "StepFour")
			self.animationCompletions[layer.animationForKey("StepFour")] = complete
		}

		let step4RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		step4RotationAnimation.duration = 6.000
		step4RotationAnimation.values = [0.000 as Float, -0.035 as Float, 0.035 as Float, -0.000 as Float, -0.000 as Float]
		step4RotationAnimation.keyTimes = [0.000 as Float, 0.417 as Float, 0.500 as Float, 0.583 as Float, 1.000 as Float]
		step4RotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		step4RotationAnimation.beginTime = beginTime
		step4RotationAnimation.fillMode = fillMode
		step4RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step4"]?.layer.addAnimation(step4RotationAnimation, forKey:"stepFour_Rotation")

		let step4OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step4OpacityAnimation.duration = 6.000
		step4OpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		step4OpacityAnimation.keyTimes = [0.000 as Float, 0.250 as Float, 1.000 as Float]
		step4OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		step4OpacityAnimation.beginTime = beginTime
		step4OpacityAnimation.fillMode = fillMode
		step4OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step4"]?.layer.addAnimation(step4OpacityAnimation, forKey:"stepFour_Opacity")

		let step4TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		step4TranslationYAnimation.duration = 6.000
		step4TranslationYAnimation.values = [0.000 as Float, -320.000 as Float, -320.000 as Float]
		step4TranslationYAnimation.keyTimes = [0.000 as Float, 0.250 as Float, 1.000 as Float]
		step4TranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		step4TranslationYAnimation.beginTime = beginTime
		step4TranslationYAnimation.fillMode = fillMode
		step4TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step4"]?.layer.addAnimation(step4TranslationYAnimation, forKey:"stepFour_TranslationY")

		let step3OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step3OpacityAnimation.duration = 6.000
		step3OpacityAnimation.values = [1.000 as Float, 0.000 as Float, 0.000 as Float]
		step3OpacityAnimation.keyTimes = [0.000 as Float, 0.167 as Float, 1.000 as Float]
		step3OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		step3OpacityAnimation.beginTime = beginTime
		step3OpacityAnimation.fillMode = fillMode
		step3OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step3"]?.layer.addAnimation(step3OpacityAnimation, forKey:"stepFour_Opacity")

		let step3TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		step3TranslationYAnimation.duration = 6.000
		step3TranslationYAnimation.values = [-200.000 as Float, -200.000 as Float]
		step3TranslationYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		step3TranslationYAnimation.timingFunctions = [linearTiming]
		step3TranslationYAnimation.beginTime = beginTime
		step3TranslationYAnimation.fillMode = fillMode
		step3TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step3"]?.layer.addAnimation(step3TranslationYAnimation, forKey:"stepFour_TranslationY")

		let carBlueRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		carBlueRotationAnimation.duration = 6.000
		carBlueRotationAnimation.values = [0.000 as Float, -0.035 as Float, 0.052 as Float, -0.052 as Float, 0.017 as Float, -0.035 as Float, 0.105 as Float, -0.070 as Float, 0.035 as Float, -0.175 as Float, -0.035 as Float, -0.052 as Float, 0.052 as Float, -0.157 as Float, -0.070 as Float, -0.122 as Float, 0.105 as Float, -0.017 as Float, 0.017 as Float, -0.017 as Float, 0.017 as Float]
		carBlueRotationAnimation.keyTimes = [0.000 as Float, 0.080 as Float, 0.167 as Float, 0.250 as Float, 0.333 as Float, 0.375 as Float, 0.417 as Float, 0.458 as Float, 0.500 as Float, 0.562 as Float, 0.625 as Float, 0.688 as Float, 0.708 as Float, 0.750 as Float, 0.771 as Float, 0.792 as Float, 0.833 as Float, 0.875 as Float, 0.917 as Float, 0.958 as Float, 1.000 as Float]
		carBlueRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueRotationAnimation.repeatCount = HUGE
		carBlueRotationAnimation.beginTime = beginTime
		carBlueRotationAnimation.fillMode = fillMode
		carBlueRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueRotationAnimation, forKey:"stepFour_Rotation")

		let carBlueOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		carBlueOpacityAnimation.duration = 6.000
		carBlueOpacityAnimation.values = [1.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.timingFunctions = [linearTiming]
		carBlueOpacityAnimation.beginTime = beginTime
		carBlueOpacityAnimation.fillMode = fillMode
		carBlueOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueOpacityAnimation, forKey:"stepFour_Opacity")
	}

	func removeStepFourAnimation() {
		self.layer.removeAnimationForKey("StepFour")
		self.viewsByName["step4"]?.layer.removeAnimationForKey("stepFour_Rotation")
		self.viewsByName["step4"]?.layer.removeAnimationForKey("stepFour_Opacity")
		self.viewsByName["step4"]?.layer.removeAnimationForKey("stepFour_TranslationY")
		self.viewsByName["step3"]?.layer.removeAnimationForKey("stepFour_Opacity")
		self.viewsByName["step3"]?.layer.removeAnimationForKey("stepFour_TranslationY")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepFour_Rotation")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepFour_Opacity")
	}

	// - MARK: stepOne

	func addStepOneAnimation() {
		addStepOneAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addStepOneAnimation(completion: ((Bool) -> Void)?) {
		addStepOneAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addStepOneAnimation(#removedOnCompletion: Bool) {
		addStepOneAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addStepOneAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addStepOneAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addStepOneAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 7.250
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "StepOne")
			self.animationCompletions[layer.animationForKey("StepOne")] = complete
		}

		let settingsIconRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		settingsIconRotationAnimation.duration = 7.250
		settingsIconRotationAnimation.values = [0.000 as Float, -0.017 as Float, 0.017 as Float, -0.017 as Float, 0.017 as Float, -0.017 as Float, 0.017 as Float, -0.017 as Float, 0.017 as Float, 0.000 as Float, 0.000 as Float]
		settingsIconRotationAnimation.keyTimes = [0.000 as Float, 0.276 as Float, 0.293 as Float, 0.310 as Float, 0.328 as Float, 0.345 as Float, 0.362 as Float, 0.379 as Float, 0.397 as Float, 0.414 as Float, 1.000 as Float]
		settingsIconRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		settingsIconRotationAnimation.beginTime = beginTime
		settingsIconRotationAnimation.fillMode = fillMode
		settingsIconRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconRotationAnimation, forKey:"stepOne_Rotation")

		let settingsIconOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		settingsIconOpacityAnimation.duration = 7.250
		settingsIconOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		settingsIconOpacityAnimation.keyTimes = [0.000 as Float, 0.190 as Float, 1.000 as Float]
		settingsIconOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		settingsIconOpacityAnimation.beginTime = beginTime
		settingsIconOpacityAnimation.fillMode = fillMode
		settingsIconOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconOpacityAnimation, forKey:"stepOne_Opacity")

		let settingsIconScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		settingsIconScaleXAnimation.duration = 7.250
		settingsIconScaleXAnimation.values = [0.904 as Float, 0.530 as Float, 0.429 as Float, 0.499 as Float, 0.264 as Float, 0.264 as Float]
		settingsIconScaleXAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.032 as Float, 0.190 as Float, 0.552 as Float, 1.000 as Float]
		settingsIconScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		settingsIconScaleXAnimation.beginTime = beginTime
		settingsIconScaleXAnimation.fillMode = fillMode
		settingsIconScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconScaleXAnimation, forKey:"stepOne_ScaleX")

		let settingsIconScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		settingsIconScaleYAnimation.duration = 7.250
		settingsIconScaleYAnimation.values = [0.904 as Float, 0.530 as Float, 0.429 as Float, 0.511 as Float, 0.271 as Float, 0.271 as Float]
		settingsIconScaleYAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.032 as Float, 0.190 as Float, 0.552 as Float, 1.000 as Float]
		settingsIconScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		settingsIconScaleYAnimation.beginTime = beginTime
		settingsIconScaleYAnimation.fillMode = fillMode
		settingsIconScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconScaleYAnimation, forKey:"stepOne_ScaleY")

		let settingsIconTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		settingsIconTranslationXAnimation.duration = 7.250
		settingsIconTranslationXAnimation.values = [0.000 as Float, 171.006 as Float, 181.093 as Float, 151.000 as Float, 149.000 as Float, 149.000 as Float]
		settingsIconTranslationXAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.032 as Float, 0.190 as Float, 0.552 as Float, 1.000 as Float]
		settingsIconTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		settingsIconTranslationXAnimation.beginTime = beginTime
		settingsIconTranslationXAnimation.fillMode = fillMode
		settingsIconTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconTranslationXAnimation, forKey:"stepOne_TranslationX")

		let settingsIconTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		settingsIconTranslationYAnimation.duration = 7.250
		settingsIconTranslationYAnimation.values = [0.000 as Float, -156.951 as Float, -142.182 as Float, -322.000 as Float, -301.000 as Float, -301.000 as Float]
		settingsIconTranslationYAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.032 as Float, 0.190 as Float, 0.552 as Float, 1.000 as Float]
		settingsIconTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		settingsIconTranslationYAnimation.beginTime = beginTime
		settingsIconTranslationYAnimation.fillMode = fillMode
		settingsIconTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["settingsIcon"]?.layer.addAnimation(settingsIconTranslationYAnimation, forKey:"stepOne_TranslationY")

		let iPhoneOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		iPhoneOpacityAnimation.duration = 7.250
		iPhoneOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		iPhoneOpacityAnimation.keyTimes = [0.000 as Float, 0.103 as Float, 1.000 as Float]
		iPhoneOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		iPhoneOpacityAnimation.beginTime = beginTime
		iPhoneOpacityAnimation.fillMode = fillMode
		iPhoneOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["iPhone"]?.layer.addAnimation(iPhoneOpacityAnimation, forKey:"stepOne_Opacity")

		let iPhoneScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		iPhoneScaleXAnimation.duration = 7.250
		iPhoneScaleXAnimation.values = [1.000 as Float, 1.600 as Float, 0.980 as Float, 0.980 as Float]
		iPhoneScaleXAnimation.keyTimes = [0.000 as Float, 0.207 as Float, 0.552 as Float, 1.000 as Float]
		iPhoneScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		iPhoneScaleXAnimation.beginTime = beginTime
		iPhoneScaleXAnimation.fillMode = fillMode
		iPhoneScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["iPhone"]?.layer.addAnimation(iPhoneScaleXAnimation, forKey:"stepOne_ScaleX")

		let iPhoneScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		iPhoneScaleYAnimation.duration = 7.250
		iPhoneScaleYAnimation.values = [1.000 as Float, 1.600 as Float, 0.980 as Float, 0.980 as Float]
		iPhoneScaleYAnimation.keyTimes = [0.000 as Float, 0.207 as Float, 0.552 as Float, 1.000 as Float]
		iPhoneScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		iPhoneScaleYAnimation.beginTime = beginTime
		iPhoneScaleYAnimation.fillMode = fillMode
		iPhoneScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["iPhone"]?.layer.addAnimation(iPhoneScaleYAnimation, forKey:"stepOne_ScaleY")

		let iPhoneTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		iPhoneTranslationXAnimation.duration = 7.250
		iPhoneTranslationXAnimation.values = [217.391 as Float, 216.488 as Float, 218.694 as Float, 184.694 as Float, 184.694 as Float]
		iPhoneTranslationXAnimation.keyTimes = [0.000 as Float, 0.032 as Float, 0.103 as Float, 0.552 as Float, 1.000 as Float]
		iPhoneTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		iPhoneTranslationXAnimation.beginTime = beginTime
		iPhoneTranslationXAnimation.fillMode = fillMode
		iPhoneTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["iPhone"]?.layer.addAnimation(iPhoneTranslationXAnimation, forKey:"stepOne_TranslationX")

		let iPhoneTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		iPhoneTranslationYAnimation.duration = 7.250
		iPhoneTranslationYAnimation.values = [-27.432 as Float, -25.280 as Float, -124.382 as Float, -186.382 as Float, -186.382 as Float]
		iPhoneTranslationYAnimation.keyTimes = [0.000 as Float, 0.032 as Float, 0.103 as Float, 0.552 as Float, 1.000 as Float]
		iPhoneTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		iPhoneTranslationYAnimation.beginTime = beginTime
		iPhoneTranslationYAnimation.fillMode = fillMode
		iPhoneTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["iPhone"]?.layer.addAnimation(iPhoneTranslationYAnimation, forKey:"stepOne_TranslationY")

		let sloganOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		sloganOpacityAnimation.duration = 7.250
		sloganOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 0.000 as Float, 0.000 as Float]
		sloganOpacityAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.085 as Float, 1.000 as Float]
		sloganOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		sloganOpacityAnimation.beginTime = beginTime
		sloganOpacityAnimation.fillMode = fillMode
		sloganOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["slogan"]?.layer.addAnimation(sloganOpacityAnimation, forKey:"stepOne_Opacity")

		let step1RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		step1RotationAnimation.duration = 7.250
		step1RotationAnimation.values = [0.000 as Float, -0.017 as Float, 0.017 as Float, 0.000 as Float, 0.000 as Float]
		step1RotationAnimation.keyTimes = [0.000 as Float, 0.207 as Float, 0.276 as Float, 0.345 as Float, 1.000 as Float]
		step1RotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		step1RotationAnimation.beginTime = beginTime
		step1RotationAnimation.fillMode = fillMode
		step1RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step1"]?.layer.addAnimation(step1RotationAnimation, forKey:"stepOne_Rotation")

		let step1OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step1OpacityAnimation.duration = 7.250
		step1OpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		step1OpacityAnimation.keyTimes = [0.000 as Float, 0.138 as Float, 0.207 as Float, 1.000 as Float]
		step1OpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		step1OpacityAnimation.beginTime = beginTime
		step1OpacityAnimation.fillMode = fillMode
		step1OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step1"]?.layer.addAnimation(step1OpacityAnimation, forKey:"stepOne_Opacity")

		let exsplainOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		exsplainOpacityAnimation.duration = 7.250
		exsplainOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 0.000 as Float, 0.000 as Float]
		exsplainOpacityAnimation.keyTimes = [0.000 as Float, 0.000 as Float, 0.086 as Float, 1.000 as Float]
		exsplainOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		exsplainOpacityAnimation.beginTime = beginTime
		exsplainOpacityAnimation.fillMode = fillMode
		exsplainOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["exsplain"]?.layer.addAnimation(exsplainOpacityAnimation, forKey:"stepOne_Opacity")

		let carBlueRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		carBlueRotationAnimation.duration = 7.250
		carBlueRotationAnimation.values = [0.000 as Float, -0.017 as Float, 0.017 as Float, -0.035 as Float, 0.052 as Float, -0.035 as Float, 0.035 as Float, -0.000 as Float, 0.035 as Float, -0.000 as Float, -0.024 as Float, 0.031 as Float, -0.023 as Float, -0.017 as Float, 0.017 as Float, -0.000 as Float]
		carBlueRotationAnimation.keyTimes = [0.000 as Float, 0.138 as Float, 0.276 as Float, 0.397 as Float, 0.483 as Float, 0.569 as Float, 0.621 as Float, 0.655 as Float, 0.690 as Float, 0.724 as Float, 0.793 as Float, 0.845 as Float, 0.897 as Float, 0.914 as Float, 0.966 as Float, 1.000 as Float]
		carBlueRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueRotationAnimation.beginTime = beginTime
		carBlueRotationAnimation.fillMode = fillMode
		carBlueRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueRotationAnimation, forKey:"stepOne_Rotation")

		let carBlueOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		carBlueOpacityAnimation.duration = 7.250
		carBlueOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.keyTimes = [0.000 as Float, 0.069 as Float, 1.000 as Float]
		carBlueOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		carBlueOpacityAnimation.beginTime = beginTime
		carBlueOpacityAnimation.fillMode = fillMode
		carBlueOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueOpacityAnimation, forKey:"stepOne_Opacity")

		let carBlueTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		carBlueTranslationXAnimation.duration = 7.250
		carBlueTranslationXAnimation.values = [0.000 as Float, -1.000 as Float, 1.000 as Float, 0.000 as Float, 0.000 as Float]
		carBlueTranslationXAnimation.keyTimes = [0.000 as Float, 0.793 as Float, 0.828 as Float, 0.862 as Float, 1.000 as Float]
		carBlueTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueTranslationXAnimation.beginTime = beginTime
		carBlueTranslationXAnimation.fillMode = fillMode
		carBlueTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueTranslationXAnimation, forKey:"stepOne_TranslationX")

		let carBlueTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		carBlueTranslationYAnimation.duration = 7.250
		carBlueTranslationYAnimation.values = [0.000 as Float, 2.000 as Float, -1.000 as Float, -2.000 as Float, -3.000 as Float, -1.000 as Float, 0.000 as Float, 0.000 as Float]
		carBlueTranslationYAnimation.keyTimes = [0.000 as Float, 0.759 as Float, 0.793 as Float, 0.828 as Float, 0.845 as Float, 0.879 as Float, 0.948 as Float, 1.000 as Float]
		carBlueTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		carBlueTranslationYAnimation.beginTime = beginTime
		carBlueTranslationYAnimation.fillMode = fillMode
		carBlueTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueTranslationYAnimation, forKey:"stepOne_TranslationY")
	}

	func removeStepOneAnimation() {
		self.layer.removeAnimationForKey("StepOne")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_Rotation")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_ScaleX")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_ScaleY")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_TranslationX")
		self.viewsByName["settingsIcon"]?.layer.removeAnimationForKey("stepOne_TranslationY")
		self.viewsByName["iPhone"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["iPhone"]?.layer.removeAnimationForKey("stepOne_ScaleX")
		self.viewsByName["iPhone"]?.layer.removeAnimationForKey("stepOne_ScaleY")
		self.viewsByName["iPhone"]?.layer.removeAnimationForKey("stepOne_TranslationX")
		self.viewsByName["iPhone"]?.layer.removeAnimationForKey("stepOne_TranslationY")
		self.viewsByName["slogan"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["step1"]?.layer.removeAnimationForKey("stepOne_Rotation")
		self.viewsByName["step1"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["exsplain"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepOne_Rotation")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepOne_Opacity")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepOne_TranslationX")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepOne_TranslationY")
	}

	// - MARK: stepTwo

	func addStepTwoAnimation() {
		addStepTwoAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addStepTwoAnimation(completion: ((Bool) -> Void)?) {
		addStepTwoAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addStepTwoAnimation(#removedOnCompletion: Bool) {
		addStepTwoAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addStepTwoAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addStepTwoAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addStepTwoAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 4.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "StepTwo")
			self.animationCompletions[layer.animationForKey("StepTwo")] = complete
		}

		let step1OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step1OpacityAnimation.duration = 4.000
		step1OpacityAnimation.values = [1.000 as Float, 0.000 as Float, 0.000 as Float]
		step1OpacityAnimation.keyTimes = [0.000 as Float, 0.125 as Float, 1.000 as Float]
		step1OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		step1OpacityAnimation.beginTime = beginTime
		step1OpacityAnimation.fillMode = fillMode
		step1OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step1"]?.layer.addAnimation(step1OpacityAnimation, forKey:"stepTwo_Opacity")

		let step2RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		step2RotationAnimation.duration = 4.000
		step2RotationAnimation.values = [0.000 as Float, -0.017 as Float, 0.017 as Float, 0.000 as Float]
		step2RotationAnimation.keyTimes = [0.000 as Float, 0.750 as Float, 0.875 as Float, 1.000 as Float]
		step2RotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		step2RotationAnimation.beginTime = beginTime
		step2RotationAnimation.fillMode = fillMode
		step2RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step2"]?.layer.addAnimation(step2RotationAnimation, forKey:"stepTwo_Rotation")

		let step2OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		step2OpacityAnimation.duration = 4.000
		step2OpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		step2OpacityAnimation.keyTimes = [0.000 as Float, 0.125 as Float, 0.250 as Float, 1.000 as Float]
		step2OpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		step2OpacityAnimation.beginTime = beginTime
		step2OpacityAnimation.fillMode = fillMode
		step2OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step2"]?.layer.addAnimation(step2OpacityAnimation, forKey:"stepTwo_Opacity")

		let step2TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		step2TranslationYAnimation.duration = 4.000
		step2TranslationYAnimation.values = [0.000 as Float, -100.000 as Float, -100.000 as Float]
		step2TranslationYAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		step2TranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		step2TranslationYAnimation.beginTime = beginTime
		step2TranslationYAnimation.fillMode = fillMode
		step2TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["step2"]?.layer.addAnimation(step2TranslationYAnimation, forKey:"stepTwo_TranslationY")

		let carBlueOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		carBlueOpacityAnimation.duration = 4.000
		carBlueOpacityAnimation.values = [1.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		carBlueOpacityAnimation.timingFunctions = [linearTiming]
		carBlueOpacityAnimation.beginTime = beginTime
		carBlueOpacityAnimation.fillMode = fillMode
		carBlueOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["CarBlue"]?.layer.addAnimation(carBlueOpacityAnimation, forKey:"stepTwo_Opacity")
	}

	func removeStepTwoAnimation() {
		self.layer.removeAnimationForKey("StepTwo")
		self.viewsByName["step1"]?.layer.removeAnimationForKey("stepTwo_Opacity")
		self.viewsByName["step2"]?.layer.removeAnimationForKey("stepTwo_Rotation")
		self.viewsByName["step2"]?.layer.removeAnimationForKey("stepTwo_Opacity")
		self.viewsByName["step2"]?.layer.removeAnimationForKey("stepTwo_TranslationY")
		self.viewsByName["CarBlue"]?.layer.removeAnimationForKey("stepTwo_Opacity")
	}

	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("SetpThree")
		self.layer.removeAnimationForKey("StepFour")
		self.layer.removeAnimationForKey("CarStart")
		self.layer.removeAnimationForKey("StepOne")
		self.layer.removeAnimationForKey("StepTwo")
	}
}