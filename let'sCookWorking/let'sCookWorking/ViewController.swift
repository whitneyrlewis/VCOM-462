//
//  ViewController.swift
//  let'sCookWorking
//
//  Created by WhitneyLewis on 3/13/18.
//  Copyright © 2018 WhitneyLewis. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    //var panGesture  = UIPanGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        
    @IBAction func startGame(_ sender: UIButton) {
    }
    
    @IBAction func button2Recipes(_ sender: UIButton) {
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
    }
    
    @IBAction func movePotatoe(_ sender: UIPanGestureRecognizer) {
        //let myImageView = UIImageView(image: UIImage(named: "potatoe.png"))
        //myImageView.frame = CGRect(x: 268, y: 251, width: 50, height: 50)
        
        //myImageView.isUserInteractionEnabled = true
        //Must be enabled for tap events
        
        //view.addSubview(myImageView)
        //Add an image programmatically
        
        //let myPanGestureRecognizer = //UIPanGestureRecognizer(target: self, action: //#selector(myPanAction))
        
       // myPanGestureRecognizer.minimumNumberOfTouches = 1
        //myPanGestureRecognizer.maximumNumberOfTouches = 1
        
        //myImageView.addGestureRecognizer(myPanGestureRecognizer)
    
    //}
   // @objc func myPanAction(recognizer: UIPanGestureRecognizer) {
        //let translation = recognizer.translation(in: //self.view)
        //if let myView = recognizer.view {
            //myView.center = CGPoint(x: myView.center.x + //translation.x, y: myView.center.y + //translation.y)
       // }
        //recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
    }
    @IBAction func movementPotatoe(_ sender: UITapGestureRecognizer) {
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
