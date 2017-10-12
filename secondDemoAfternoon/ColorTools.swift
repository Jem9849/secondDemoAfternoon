//
//  ColorTools.swift
//  secondDemoAfternoon
//
//  Created by Saysanasy, Jeremy on 10/12/17.
//  Copyright © 2017 Saysanasy, Jeremy. All rights reserved.
//

import UIKit

public class ColorTools
{
    // This here is where I make the color changer random for the background.
    public func createRandomColor() -> UIColor
    {
        // These all make new values to be used for random colors.
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (drand48())
        let blueValue :CGFloat = CGFloat (Double (arc4random() % 256) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha:CGFloat(1.0))
        return newColor // I return newColor.
    }
}
