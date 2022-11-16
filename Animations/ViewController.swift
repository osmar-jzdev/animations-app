//
//  ViewController.swift
//  Animations
//
//  Created by Osmar Juarez on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var animation: LoaderView!
    private let animationsList = ["women_finance","finance","rocket_loader","fish"]
    private var animationIndex = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentedControl = UISegmentedControl (items: ["Anim1","Anim2","Anim3"])
        segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        view.addSubview(segmentedControl)
        segmentedControl.addTarget(self, action: #selector(selectItemSegmentedControlAction(_ :)), for: .valueChanged)
    }

    @objc func selectItemSegmentedControlAction(_ segmentedControl: UISegmentedControl){
        view.subviews[1].removeFromSuperview()
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            animationIndex = 0
            self.viewWillAppear(true)
        case 1:
            animationIndex = 1
            self.viewWillAppear(true)
        case 2:
            animationIndex = 2
            self.viewWillAppear(true)
        default:
            print("default")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animation = LoaderView()
        animation.initAnimation(animationName: animationsList[animationIndex])
        animation.frame.size = CGSize(width: 400, height: 600)
        animation.center = self.view.center
        view.addSubview(animation)
    }
}

