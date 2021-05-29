//
//  ViewController.swift
//  StateNamesandAbbreviations
//
//  Created by Daniel Washington Ignacio on 28/05/21.
//


/*
 Create a function that filters out an array of state names into two categories based on the second parameter.

 Abbreviations abb
 Full names full
 Examples

 filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb")
 ➞ ["CA", "NY"]

 filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full")
 ➞ ["Arizona", "Nevada"]

 filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb")
 ➞ ["MT", "NJ", "TX", "ID", "IL"]

 filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full")
 ➞ []
 Notes

 State abbreviations will always be in uppercase.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb"))
        print(filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full"))
        print(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb"))
        print(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full"))
    }

    
    
    func filterStateNames(_ arr: [String], _ type: String) -> [String] {
        var strLower:[Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
        var arrayResult: [String] = []
        var check: Int = 0
        for n in arr{
            for m in n {
                for j in strLower{
                    if m == j{
                        check = check + 1
                    }
                }
            }
            if type == "abb"{
                if check == 0 {
                    arrayResult.append(n)
                }
            }
            
            if type == "full"{
                if check > 1 {
                    arrayResult.append(n)
                }
            }
            check = 0
        }
        return arrayResult
        }
    

}

