//
//  Scene.swift
//  air
//
//  Created by Jia Liu on 03/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import SpriteKit
import ARKit

class Scene: SKScene {
    
    func showEmoji() {
//        print("before guard")
        guard let sceneView = self.view as? ARSKView else {
            return
        }
//        print("after guard")
        
        // Create anchor using the camera's current position
        if let currentFrame = sceneView.session.currentFrame {
            print("in currentframe")
            
            // Create a transform with a translation of 0.2 meters in front of the camera
            var translation = matrix_identity_float4x4
            translation.columns.3.z = -0.5
            let transform = simd_mul(currentFrame.camera.transform, translation)
            
            // Add a new anchor to the session
            let anchor = ARAnchor(transform: transform)
            sceneView.session.add(anchor: anchor)
        }else {
            print("not currentframe")
        }
    }
}
