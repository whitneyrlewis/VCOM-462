//
//  thirdController.swift
//  let'sCookWorking
//
//  Created by WhitneyLewis on 4/12/18.
//  Copyright © 2018 WhitneyLewis. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class thirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let myImageView = UIImageView(image: UIImage(named: "salt.png"))
        let myImageView2 = UIImageView(image: UIImage(named:"pepper.png"))
        myImageView.frame = CGRect(x: 437, y: 43, width: 224, height: 76)
        myImageView2.frame = CGRect(x: 494, y: 42, width: 224, height: 76)

        myImageView.isUserInteractionEnabled = true
        myImageView2.isUserInteractionEnabled = true

        //Must be enabled for tap events
        
        view.addSubview(myImageView)
        //Add an image programmatically
        
        let myPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(myPanAction))
        
        myPanGestureRecognizer.minimumNumberOfTouches = 1
        myPanGestureRecognizer.maximumNumberOfTouches = 1
        
        myImageView.addGestureRecognizer(myPanGestureRecognizer)
        myImageView2.addGestureRecognizer(myPanGestureRecognizer)

    }
    @objc func myPanAction(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let myView = recognizer.view {
            myView.center = CGPoint(x: myView.center.x + translation.x, y: myView.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
        
        func didReceiveMemoryWarning() {
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
}
