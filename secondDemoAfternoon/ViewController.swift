//
//  ViewController.swift
//  secondDemoAfternoon
//
//  Created by Saysanasy, Jeremy on 10/10/17.
//  Copyright © 2017 Saysanasy, Jeremy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Made a link to button in storyboard for output.
    @IBOutlet weak var firstButton: UIButton!
    
    // Variable for button color changer.
    var count = 0
    
    // Made an action link for button which changes color based on even and odds from when you press it.
    @IBAction func firstMethod(_ sender: UIButton)
    {
        
        // This is an if block that changes color of button based on even and odds.
        if (count % 2 == 0)
        {
            firstButton.backgroundColor = .green
            count += 1
        }
        else if (count % 2 == 1)
        {
            firstButton.backgroundColor = .blue
            count += 1
        }
        // Then I call createRandomColor() which changes the backgroundColor.
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
    }
    
    // This here is where I make the color changer random for the background.
    private func createRandomColor() -> UIColor
    {
        // These all make new values to be used for random colors.
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (drand48())
        let blueValue :CGFloat = CGFloat (Double (arc4random() % 256) / 255.00)
            newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha:CGFloat(1.0))
        return newColor // I return newColor.
    }


    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

