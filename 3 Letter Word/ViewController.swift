//
//  ViewController.swift
//  3 Letter Word
//
//  Created by Malachai Jacobs on 11/4/21.
//

import UIKit

class ViewController: UIViewController
{
// declare outlets and variables
    
    @IBOutlet weak var currentLetter: UILabel!
    
    @IBOutlet var lettersLabels: [UILabel]!
    
    @IBOutlet weak var horizStackView: UIStackView!
    
    var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var currentLetterA = "A"
    var counter = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whenTapped(_ sender: UITapGestureRecognizer)
    {
        currentLetterA = letters[counter]
        currentLetter.text = currentLetterA
    }
    
    
    
    
}

