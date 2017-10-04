//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    
    
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        texture = SKTexture(imageNamed: "BadgeTeal")
        let badgeAnimation = arc4random_uniform(3)
      
            switch badgeAnimation {
            case 1:
                growAndShrink()
            case 2:
                rotate()
            case 3:
                shake()
            default:
                print("ERROR IN BADGE ANIMATION")
        }
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func growAndShrink(){
        let action1 = SKAction.scale(to: 0.8, duration: 1.0)
        let action2 = SKAction.scale(to: 1.1, duration: 1.0)
        let sequencedAction = SKAction.sequence([action1, action2])
        run(SKAction.repeatForever(sequencedAction))
    }
    
    func rotate() {
        let action = SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1.5)
        run(SKAction.repeatForever(action))
    }
    
    func shake() {
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
            let action = SKAction.moveBy(x: CGFloat(dX), y: CGFloat(dY), duration: 0.02)
            actionsArray.append(action)
            actionsArray.append(action.reversed())
        }
        
        let sequencedAction = SKAction.sequence(actionsArray)
        run(SKAction.repeatForever(sequencedAction))
    }
}

