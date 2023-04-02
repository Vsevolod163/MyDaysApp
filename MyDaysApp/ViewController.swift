//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Vsevolod Lashin on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var daysLabel: UILabel!
    @IBOutlet var resultButton: UIButton!
    @IBOutlet var birthdayDP: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultButton.layer.cornerRadius = 10
    }

    @IBAction func resultButtonTapped() {
        guard birthdayDP.date < Date.now else { return }
        
        let range = birthdayDP.date..<Date.now
        let numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        daysLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
}

