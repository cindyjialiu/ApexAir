//
//  ViewController.swift
//  air
//
//  Created by Jia Liu on 03/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import UIKit
import SpriteKit
import ARKit
import CoreLocation

class ViewController: UIViewController, ARSKViewDelegate, CLLocationManagerDelegate {
    
    var scene: Scene?
    
    var emoji = ""
    
    @IBOutlet var sceneView: ARSKView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 50))
//        imageView.contentMode = .scaleAspectFit
//        let image = UIImage(named: "emoji")
//        imageView.image = image
//        navigationItem.titleView = imageView
        
//        navigationController?.navigationBar.prefersLargeTitles = true

        
        let customButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 50))
        customButton.setImage(UIImage.init(named:"emoji"), for: .normal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: customButton)

        
        locationManager.delegate = self
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        locationManager.stopUpdatingHeading()
        
//        locationManager.distanceFilter = 20
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and node count
        sceneView.showsFPS = true
        sceneView.showsNodeCount = true
        
        // Load the SKScene from 'Scene.sks'
        scene = SKScene(fileNamed: "Scene") as? Scene
            sceneView.presentScene(scene)
    }
    
   func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for currentLocation in locations{
            let pollutionLevel = getConcen(lon: currentLocation.coordinate.longitude, lat: currentLocation.coordinate.latitude)
            let result = getEmoji(value: pollutionLevel)
            emoji = result
            scene!.showEmoji()
            print("\(pollutionLevel)","\(result)","\(currentLocation.coordinate)")
            
            }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    // MARK: - ARSKViewDelegate
    
    func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode? {
        // Create and configure a node for the anchor added to the view's session.
        print("before showing", "\(emoji)")
        let labelNode = SKLabelNode(text: emoji)
        labelNode.horizontalAlignmentMode = .center
        labelNode.verticalAlignmentMode = .center
        return labelNode;
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
