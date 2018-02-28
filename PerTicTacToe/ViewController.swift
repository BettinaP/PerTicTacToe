//
//  ViewController.swift
//  PerTicTacToe
//
//  Created by Bettina on 2/27/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //1 is noughts, 2 is crosses
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty spot, 1 - noughts/O, 2 - crosses/X
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var activeGame = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //slight disadvantage of using tag 1-9 because array index starts with 0.
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 {
            
            gameState[activePosition] = activePlayer //switches from 0(empty) to whichever player occupies it
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
            
            } else {
                
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
                
            }
            
            for combination in winningCombinations {
                //if gameState == 0 in any position, no win yet. Then checking for gameState to be 1,1,1 or 2,2,2
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    //we have a winner! NOtify users and give them option to play again.
                    
                    
                }
            }
        }
    }
    
}

