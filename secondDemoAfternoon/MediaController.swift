//
//  MediaController.swift
//  secondDemoAfternoon
//
//  Created by Saysanasy, Jeremy on 10/18/17.
//  Copyright © 2017 Saysanasy, Jeremy. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaController: UIViewController
{
    private lazy var color : ColorTools = ColorTools()
    private var imageCounter : Int = 0
    private var soundPlayer : AVAudioPlayer?
    
    @IBOutlet weak var changePicture: UIButton!
    
    @IBOutlet weak var playPause: UIButton!
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func imageButtonClick(_ sender: UIButton) -> Void
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "Redguard")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                volumeSlider.maximumValue = Float ((soundPlayer?.duration)!)
         //       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
        }
    }
    
    private func changeImage() -> Void
    {
        if (imageCounter > 5)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageView.image = UIImage(named: "o")
        }
        else if (imageCounter == 1)
        {
            imageView.image = UIImage(named: "ok")
        }
        else if (imageCounter == 2)
        {
            imageView.image = UIImage (named: "Cats" )
        }
        else if (imageCounter == 3)
        {
            imageView.image = UIImage (named: "boo")
        }
        else if (imageCounter == 4)
        {
            imageView.image = UIImage(named: "idk")
        }
        else
        {
            imageView.image = UIImage(named: "WAT")
        }
        imageCounter += 1
    }
    
    @IBAction func playStopClick(_ sender: UIButton)
    {
        
    }
    
    
    @IBAction func volumeSliderMove(_ sender: UISlider)
    {
        
    }
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
