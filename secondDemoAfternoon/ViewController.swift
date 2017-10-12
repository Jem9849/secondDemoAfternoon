//
//  ViewController.swift
//  secondDemoAfternoon
//
//  Created by Saysanasy, Jeremy on 10/10/17.
//  Copyright © 2017 Saysanasy, Jeremy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var colorTool : ColorTools = ColorTools()
    
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
        view.backgroundColor = colorTool.createRandomColor()
        firstButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
    }
    
    // Link to the button of its Outlet
    @IBOutlet weak var firstSwitch: UISwitch!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    var wait = 5
    
    @IBAction func firstSwitchMethod(_ sender: UISwitch)
    {
        while !(firstSwitch.isOn == true )
        {
            while (wait != 0)
            {
                if wait == 0
                {
                    view.backgroundColor = .black
                    firstButton.isHidden = true
                    firstLabel.isHidden = false
                    myProgressBar.isHidden = true
                }
                wait -= 1
            }
        }
        
        while (firstSwitch.isOn == true)
        {
            while (wait != 0)
            {
                if wait == 0
                {
                    view.backgroundColor = .white
                    firstButton.isHidden = false
                    firstLabel.isHidden = true
                    myProgressBar.isHidden = true
                }
                wait -= 1
            }
        }
    }
    
    
    @IBOutlet weak var myProgressBar: UIProgressView!

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

