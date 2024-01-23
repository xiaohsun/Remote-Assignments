//
//  ViewController.swift
//  week2Homework
//
//  Created by 徐柏勳 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fact: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let colors = [
        UIColor(red: 148, green: 0, blue: 211, alpha: 1),
        UIColor(red: 75, green: 0, blue: 130, alpha: 1),
        UIColor(red: 0, green: 0, blue: 255, alpha: 1),
        UIColor(red: 0, green: 255, blue: 0, alpha: 1),
        UIColor(red: 255, green: 255, blue: 0, alpha: 1),
        UIColor(red: 255, green: 127, blue: 0, alpha: 1),
        UIColor(red: 255, green: 0, blue: 0, alpha: 1)
    ]
    

    @IBAction func showFactBtn(_ sender: UIButton) {
        fact.text = text.randomElement()
        let color = colors.randomElement()
        self.view.backgroundColor = color
        btn.tintColor = color
    }
}


