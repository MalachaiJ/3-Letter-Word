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
        //Initialize Current Letter and label
        currentLetterA = letters[counter]
        currentLetter.text = currentLetterA
        //recognize where the user is tapping
        let selectedPoint = sender.location(in: horizStackView)
        for label in lettersLabels
        {
            if label.frame.contains(selectedPoint)
            {
                label.text = "\(currentLetterA)"
            }
        }
        counter += 1
        if counter == 26
            
        {
            counter = 0
            currentLetterA = letters[counter]
            currentLetter.text = currentLetterA
            for label in self.lettersLabels
            {
                    label.text = "?"
    }
    
    
}

}
}
