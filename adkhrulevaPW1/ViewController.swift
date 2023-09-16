//
//  ViewController.swift
//  adkhrulevaPW1
//
//  Created by Aleksa Khruleva on 09.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        button.isEnabled = false
        let uniqueColors = getUniqueColors(amount: views.count)
        let uniqueRadiuses = getUniqueRadiuses(amount: views.count)
        UIView.animate(
            withDuration: Constants.durationTime,
            animations: {
                for i in (0..<self.views.count) {
                    self.views[i].backgroundColor = uniqueColors[i]
                    self.views[i].layer.cornerRadius = uniqueRadiuses[i]
                }
            },
            completion: { [weak self] _ in
                self?.button.isEnabled = true
            }
        )
    }
}

