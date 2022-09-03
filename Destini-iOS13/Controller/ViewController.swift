//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var brain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        brain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = brain.getStory()
        choice1Button.setTitle(brain.getChoice1(), for: .normal)
        choice2Button.setTitle(brain.getChoice2(), for: .normal)
    }
}

