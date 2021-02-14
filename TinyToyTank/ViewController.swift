//
//  ViewController.swift
//  TinyToyTank
//
//  Created by Jim Toepel on 2/12/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    var tankAnchor: TinyToyTank._TinyToyTank?
    @IBOutlet var arView: ARView!
    
    @IBAction func tankRightPressed(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
    @IBAction func tankForwardPressed(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func tankLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func turretLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.turretLeft.post()
    }
    @IBAction func turretRightPressed(_ sender: Any) {
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func cannonFirePressed(_ sender: Any) {
        tankAnchor!.notifications.cannonFire.post()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Tank" scene from the "TTT" Reality File
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        
        // Add the tank anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
}
