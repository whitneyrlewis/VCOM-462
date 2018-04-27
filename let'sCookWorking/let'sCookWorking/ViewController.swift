//
//  ViewController.swift
//  let'sCookWorking
//
//  Created by WhitneyLewis on 3/13/18.
//  Copyright © 2018 WhitneyLewis. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {

    var AudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "cuteMusic", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
    }
        
    @IBAction func startGame(_ sender: UIButton) {
    }
    
    @IBAction func button2Recipes(_ sender: UIButton) {
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
   
    }
  
    @IBAction func movePotatoe(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
        
    }
    @IBAction func movePotatoe2(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    
    @IBAction func moveSalt(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    
    @IBAction func movePepper(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func rotateSalt(_ sender: UIRotationGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
        
    }
    
    @IBAction func rotatePepper(_ sender: UIRotationGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    
    @IBAction func lockedHam(_ sender: Any) {
    
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
    }
    
    @IBAction func lockHam2(_ sender: Any) {
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
    
    }
    
    @IBAction func lockham3(_ sender: Any) {
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
    }
    
    @IBAction func lockDou3(_ sender: Any) {
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
    }
    
    @IBAction func lockDou2(_ sender: Any) {
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
    }
    @IBAction func lockDoug(_ sender: Any) {
        let alertButton = UIAlertController(title: "Let's Cook", message: "Wait a minute, you hsven't purchased this reciepe yet", preferredStyle: UIAlertControllerStyle.alert)
        alertButton.addAction(UIAlertAction(title:"Close",style:UIAlertActionStyle.default,handler:nil))
        self.present(alertButton,animated: true,completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
