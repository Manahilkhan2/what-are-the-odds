//
//  ResultTableViewController.swift
//  What are the Odds? dds?
//
//  Created by DPI Student 28 on 7/12/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var success = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if success == true  {
            view.backgroundColor = .systemGreen
            resultLabel.text = "The 😎dds are in Your Favor!"
            
        }else if success == false {
            view.backgroundColor = .systemRed
            resultLabel.text = "The ☹️dds are Against You!"
        }
    }
 


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
