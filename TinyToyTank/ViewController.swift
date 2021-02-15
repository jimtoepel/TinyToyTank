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
    var isActionPlaying: Bool = false
    @IBOutlet var arView: ARView!
    
    @IBAction func tankRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankRight.post()
    }
    @IBAction func tankForwardPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func tankLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func turretLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.turretLeft.post()
    }
    @IBAction func turretRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func cannonFirePressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        } else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.cannonFire.post()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Tank" scene from the "TTT" Reality File
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        
        tankAnchor?.actions.actionComplete.onAction = { _ in
            self.isActionPlaying = false
        }
        
        // Add the tank anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
}
