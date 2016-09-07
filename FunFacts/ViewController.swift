//
//  ViewController.swift
//  FunFacts
//
//  Created by Jonathan Martinez on 9/6/16.
//  Copyright © 2016 Jonathan Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // Label association... kinda like making it a variable.
  @IBOutlet weak var funFactLabel: UILabel!
  let factModel = FactModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    funFactLabel.text = factModel.getRandomFact()
  }
  
  @IBOutlet weak var buttonText: UIButton!
  // Button association with an action.
  @IBAction func showFunFact() {
    funFactLabel.text = factModel.getRandomFact()
    let randomColor = ColorModel().getRandomColor()
    view.backgroundColor = randomColor
    buttonText.tintColor = randomColor
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

