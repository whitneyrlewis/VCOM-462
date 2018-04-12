//
//  secondViewController.swift
//  let'sCookWorking
//
//  Created by WhitneyLewis on 4/3/18.
//  Copyright © 2018 WhitneyLewis. All rights reserved.
//

import UIKit
import SpriteKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let myImageView = UIImageView(image: UIImage(named: "potatoe.png"))
        myImageView.frame = CGRect(x: 249, y: 251, width: 33, height: 43)
        
        myImageView.isUserInteractionEnabled = true
        //Must be enabled for tap events
        
        view.addSubview(myImageView)
        //Add an image programmatically
        
        let myPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(myPanAction))
        
        myPanGestureRecognizer.minimumNumberOfTouches = 1
        myPanGestureRecognizer.maximumNumberOfTouches = 1
        
        myImageView.addGestureRecognizer(myPanGestureRecognizer)
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
