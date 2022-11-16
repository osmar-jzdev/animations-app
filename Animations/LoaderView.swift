//
//  LoaderView.swift
//  Animations
//
//  Created by Osmar Juarez on 14/11/22.
//

import UIKit
import Lottie

public class LoaderView: UIView {
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDeccoder: NSCoder){
        super.init(coder: aDeccoder)
    }

    
    func initAnimation(animationName: String) {
        let animationView = LottieAnimationView(name: animationName)
        animationView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        animationView.center = self.center
        animationView.animationSpeed = 0.2
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 448).isActive = true
    }
}
