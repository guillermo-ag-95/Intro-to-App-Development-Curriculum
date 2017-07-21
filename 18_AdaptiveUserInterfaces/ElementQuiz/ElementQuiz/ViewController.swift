//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Guillermo Alcalá Gamero on 21/7/17.
//  Copyright © 2017 Guillermo Alcalá Gamero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let elements = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elements[currentElementIndex]
    }
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elements.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elements[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    

}

