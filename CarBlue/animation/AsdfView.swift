//
// AsdfView.swift
// Generated by Core Animator version 1.1.1 on 8/30/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class AsdfView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 407, height: 308))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:407, height:308)
		__scaling__.center = CGPoint(x:203.7, y:154.4)
		__scaling__.layer.masksToBounds = true
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let signal = UIView()
		signal.bounds = CGRect(x:0, y:0, width:376.0, height:277.3)
		signal.layer.position = CGPoint(x:201.780, y:152.184)
		__scaling__.addSubview(signal)
		viewsByName["signal"] = signal

		let dot2 = UIImageView()
		dot2.bounds = CGRect(x:0, y:0, width:72.0, height:72.0)
		var imgDot: UIImage!
		if let imagePath = bundle.pathForResource("dot.png", ofType:nil) {
			imgDot = UIImage(contentsOfFile:imagePath)
		}
		dot2.image = imgDot
		dot2.contentMode = .Center;
		dot2.layer.position = CGPoint(x:188.000, y:241.283)
		signal.addSubview(dot2)
		viewsByName["dot 2"] = dot2

		let bottomWave22 = UIImageView()
		bottomWave22.bounds = CGRect(x:0, y:0, width:252.0, height:84.0)
		var imgBottomWave: UIImage!
		if let imagePath = bundle.pathForResource("bottomWave.png", ofType:nil) {
			imgBottomWave = UIImage(contentsOfFile:imagePath)
		}
		bottomWave22.image = imgBottomWave
		bottomWave22.contentMode = .Center;
		bottomWave22.layer.position = CGPoint(x:188.000, y:143.591)
		signal.addSubview(bottomWave22)
		viewsByName["bottomWave 2 2"] = bottomWave22

		let topWave2 = UIImageView()
		topWave2.bounds = CGRect(x:0, y:0, width:376.0, height:114.0)
		var imgTopWave: UIImage!
		if let imagePath = bundle.pathForResource("topWave.png", ofType:nil) {
			imgTopWave = UIImage(contentsOfFile:imagePath)
		}
		topWave2.image = imgTopWave
		topWave2.contentMode = .Center;
		topWave2.layer.position = CGPoint(x:188.000, y:57.000)
		signal.addSubview(topWave2)
		viewsByName["topWave 2"] = topWave2

		self.viewsByName = viewsByName
	}

	// - MARK: doit

	func addDoitAnimation() {
		addDoitAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addDoitAnimation(completion: ((Bool) -> Void)?) {
		addDoitAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addDoitAnimation(#removedOnCompletion: Bool) {
		addDoitAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addDoitAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addDoitAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addDoitAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let anticOverTiming = CAMediaTimingFunction(controlPoints: 0.42, -0.30, 0.58, 1.30)
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 6.750
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Doit")
			self.animationCompletions[layer.animationForKey("Doit")] = complete
		}

		let dot2ScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		dot2ScaleXAnimation.duration = 6.750
		dot2ScaleXAnimation.values = [1.000 as Float, 0.900 as Float, 1.100 as Float, 1.100 as Float]
		dot2ScaleXAnimation.keyTimes = [0.000 as Float, 0.074 as Float, 0.148 as Float, 1.000 as Float]
		dot2ScaleXAnimation.timingFunctions = [anticOverTiming, anticOverTiming, linearTiming]
		dot2ScaleXAnimation.beginTime = beginTime
		dot2ScaleXAnimation.fillMode = fillMode
		dot2ScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["dot 2"]?.layer.addAnimation(dot2ScaleXAnimation, forKey:"doit_ScaleX")

		let dot2ScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		dot2ScaleYAnimation.duration = 6.750
		dot2ScaleYAnimation.values = [1.000 as Float, 0.900 as Float, 1.100 as Float, 1.100 as Float]
		dot2ScaleYAnimation.keyTimes = [0.000 as Float, 0.074 as Float, 0.148 as Float, 1.000 as Float]
		dot2ScaleYAnimation.timingFunctions = [anticOverTiming, anticOverTiming, linearTiming]
		dot2ScaleYAnimation.beginTime = beginTime
		dot2ScaleYAnimation.fillMode = fillMode
		dot2ScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["dot 2"]?.layer.addAnimation(dot2ScaleYAnimation, forKey:"doit_ScaleY")

		let bottomWave22RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bottomWave22RotationAnimation.duration = 6.750
		bottomWave22RotationAnimation.values = [0.000 as Float, 0.000 as Float, 0.052 as Float, -0.052 as Float, 0.000 as Float, 0.000 as Float]
		bottomWave22RotationAnimation.keyTimes = [0.000 as Float, 0.519 as Float, 0.555 as Float, 0.593 as Float, 0.630 as Float, 1.000 as Float]
		bottomWave22RotationAnimation.timingFunctions = [anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, linearTiming]
		bottomWave22RotationAnimation.beginTime = beginTime
		bottomWave22RotationAnimation.fillMode = fillMode
		bottomWave22RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["bottomWave 2 2"]?.layer.addAnimation(bottomWave22RotationAnimation, forKey:"doit_Rotation")

		let bottomWave22OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		bottomWave22OpacityAnimation.duration = 6.750
		bottomWave22OpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 0.000 as Float, 1.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		bottomWave22OpacityAnimation.keyTimes = [0.000 as Float, 0.148 as Float, 0.222 as Float, 0.296 as Float, 0.370 as Float, 0.444 as Float, 0.519 as Float, 1.000 as Float]
		bottomWave22OpacityAnimation.timingFunctions = [anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, linearTiming]
		bottomWave22OpacityAnimation.beginTime = beginTime
		bottomWave22OpacityAnimation.fillMode = fillMode
		bottomWave22OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["bottomWave 2 2"]?.layer.addAnimation(bottomWave22OpacityAnimation, forKey:"doit_Opacity")

		let topWave2RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		topWave2RotationAnimation.duration = 6.750
		topWave2RotationAnimation.values = [0.000 as Float, 0.000 as Float, 0.052 as Float, -0.052 as Float, 0.000 as Float]
		topWave2RotationAnimation.keyTimes = [0.000 as Float, 0.888 as Float, 0.926 as Float, 0.963 as Float, 1.000 as Float]
		topWave2RotationAnimation.timingFunctions = [anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming]
		topWave2RotationAnimation.beginTime = beginTime
		topWave2RotationAnimation.fillMode = fillMode
		topWave2RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["topWave 2"]?.layer.addAnimation(topWave2RotationAnimation, forKey:"doit_Rotation")

		let topWave2OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		topWave2OpacityAnimation.duration = 6.750
		topWave2OpacityAnimation.values = [0.000 as Float, 0.057 as Float, 1.000 as Float, 0.000 as Float, 1.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		topWave2OpacityAnimation.keyTimes = [0.000 as Float, 0.519 as Float, 0.593 as Float, 0.667 as Float, 0.741 as Float, 0.815 as Float, 0.889 as Float, 1.000 as Float]
		topWave2OpacityAnimation.timingFunctions = [anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, anticOverTiming, linearTiming]
		topWave2OpacityAnimation.beginTime = beginTime
		topWave2OpacityAnimation.fillMode = fillMode
		topWave2OpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["topWave 2"]?.layer.addAnimation(topWave2OpacityAnimation, forKey:"doit_Opacity")
	}

	func removeDoitAnimation() {
		self.layer.removeAnimationForKey("Doit")
		self.viewsByName["dot 2"]?.layer.removeAnimationForKey("doit_ScaleX")
		self.viewsByName["dot 2"]?.layer.removeAnimationForKey("doit_ScaleY")
		self.viewsByName["bottomWave 2 2"]?.layer.removeAnimationForKey("doit_Rotation")
		self.viewsByName["bottomWave 2 2"]?.layer.removeAnimationForKey("doit_Opacity")
		self.viewsByName["topWave 2"]?.layer.removeAnimationForKey("doit_Rotation")
		self.viewsByName["topWave 2"]?.layer.removeAnimationForKey("doit_Opacity")
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
		self.layer.removeAnimationForKey("Doit")
	}
}