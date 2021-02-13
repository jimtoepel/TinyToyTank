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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor)
    }
}
