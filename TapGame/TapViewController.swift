//
//  TapViewController.swift
//  TapGame
//
//  Created by Madeline Eckhart on 6/30/20.
//  Copyright © 2020 MaddGaming. All rights reserved.
//

import UIKit

class TapViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var workerButton1: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var officialCount: Int = 0
    
    var workerButton1Count: Int = 0
    var workerButton1CurrentPrice: Int = 10
    
    var timer: Timer?
    
    @IBAction func tapButton(_ sender: Any) {
        update(by: 1)
    }
    
    @IBAction func workerButton1(_ sender: Any) {
        if officialCount >= workerButton1CurrentPrice {
            workerButton1Count += 1
            addWorker()
        }
        
    }
    
    
    func update(by value: Int) {
        officialCount += value
        countLabel.text = "\(officialCount)"
    }
    
    func addWorker() {
        switch workerButton1Count {
        case 1:
            officialCount -= 10
            countLabel.text = "\(officialCount)"
            workerButton1.backgroundColor = .red
//            workerButton1.titleLabel?.text = "Buy 2 clicks/second for 100"
            workerButton1.setTitle("Buy 2 clicks/second for 100", for: .normal)
            workerButton1CurrentPrice = 100
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.update(by: 1)
            })
        case 2:
            officialCount -= 100
            countLabel.text = "\(officialCount)"
            workerButton1.backgroundColor = .orange
            workerButton1.setTitle("Buy 4 clicks/second for 500", for: .normal)
            workerButton1CurrentPrice = 1000
            timer?.invalidate()
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.update(by: 2)
            })
        default:
            workerButton1.titleLabel?.text = "Done for now"
        }
    }

    //MARK: App Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        countLabel.text = "\(officialCount)"
        tapButton.layer.cornerRadius = tapButton.bounds.size.width/2;
        workerButton1.setTitle("Buy 1 click/second for 10", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    //MARK: Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "minerCell", for: indexPath)
        cell.tintColor = .blue
        // Configure the cell...

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
    }
}
