//
//  GameTableViewController.swift
//  What are the Odds? dds?
//
//  Created by DPI Student 28 on 7/12/22.
//

import UIKit

class GameViewController: UIViewController {
    // var option: Option!
    var option: Option!
    var success = false
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var generatedResponseLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!
    
    var letters = [Letter]()
    var result: Int?
    var boolResult: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // generatedResponseLabel.text = ""
        let letter1 = Letter(name: "A")
        let letter2 = Letter(name: "B")
        let letter3 = Letter(name: "C")
        let letter4 = Letter(name: "D")
        let letter5 = Letter(name: "E")
        let letter6 = Letter(name: "F")
        let letter7 = Letter(name: "G")
        let letter8 = Letter(name: "H")
        let letter9 = Letter(name: "I")
        let letter10 = Letter(name: "J")
        let letter11 = Letter(name: "K")
        let letter12 = Letter(name: "L")
        let letter13 = Letter(name: "M")
        let letter14 = Letter(name: "N")
        let letter15 = Letter(name: "O")
        let letter16 = Letter(name: "P")
        let letter17 = Letter(name: "Q")
        let letter18 = Letter(name: "R")
        let letter19 = Letter(name: "S")
        let letter20 = Letter(name: "T")
        let letter21 = Letter(name: "U")
        let letter22 = Letter(name: "V")
        let letter23 = Letter(name: "W")
        let letter24 = Letter(name: "X")
        let letter25 = Letter(name: "Y")
        let letter26 = Letter(name: "Z")
        letters = [letter1, letter2, letter3, letter4, letter5, letter6, letter7, letter8, letter9, letter10, letter11, letter12, letter13, letter14, letter15, letter16, letter17, letter18, letter19, letter20, letter21, letter22, letter23, letter24, letter25, letter26]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    /* override func numberOfSections(in View: UIView) -> Int {
     // #warning Incomplete implementation, return the number of sections
     return 0
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     // #warning Incomplete implementation, return the number of rows
     return 0
     }
     */
    
    @IBAction func onGenerateButtonPressed() {
        
        if option.name == "OddsOrEvens" {
            boolResult = Bool.random()
            if boolResult == true {
                generatedResponseLabel.text = "Evens"
            }
            else {
                generatedResponseLabel.text = "Odds"
            }
        }else if option.name == "OneToTen" {
            result = Int.random(in: 0...10)
            if let result = result {
                generatedResponseLabel.text = result.description
            }
            //Figure out how to display Int
            print("number")
        }else if  option.name == "AThroughZ"  {
            let result = letters.randomElement()!
            generatedResponseLabel.text = result.name
            print("letter.name")
        }
        
    }
    //Figure out to compare user input to generator
    
    
    @IBAction func onResultButtonPressed() {
        if option.name == "OddsOrEvens" {
            if (guessTextField.text?.lowercased() == "odds" && boolResult == false) || (guessTextField.text?.lowercased() == "evens" && boolResult == true) {
                success = true
                performSegue(withIdentifier: "resultSegue", sender: self)
            } else {
                success = false
                performSegue(withIdentifier: "resultSegue", sender: self)
            }
        }else if option.name == "OneToTen" {
            if let input = Int(guessTextField.text!) {
                if result == input {
                    success = true
                    performSegue(withIdentifier: "resultSegue", sender: self)
                } else {
                    success = false
                    performSegue(withIdentifier: "resultSegue", sender: self)
                }
                
            }
            
        }else if  option.name == "AThroughZ"  {
            
            if guessTextField.text?.lowercased() == generatedResponseLabel.text!.lowercased() {
                success = true
                performSegue(withIdentifier: "resultSegue", sender: self)
            } else {
                success = false
                performSegue(withIdentifier: "resultSegue", sender: self)
            }
            
        }
    }
    
    @IBAction func onBackgroundTapped() {
        guessTextField.resignFirstResponder()
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller
        let dvc = segue.destination as! ResultViewController
        dvc.success = success
        
    }
    
    
}

