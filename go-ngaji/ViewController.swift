//
//  ViewController.swift
//  go-ngaji
//
//  Created by Agfi on 30/03/24.
//

import Foundation
import Lottie

override func viewDidLoad() {
    super.viewDidLoad()
            
    if let animationView = LOTAnimationView(name: "servishero_loading") {
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        
        view.addSubview(animationView)
    
        animationView.play()
    }
}
