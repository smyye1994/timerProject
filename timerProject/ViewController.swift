//
//  ViewController.swift
//  timerProject
//
//  Created by Sümeyye Kılıçoğlu on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        }
    @objc func timerFunction()
    {
        timeLabel.text = "Time \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
        timeLabel.text = "Time's Over"
        
    }

func buttanClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

}
