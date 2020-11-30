//
//  ViewController.swift
//  Flashcard2
//
//  Created by Judy Li on 11/22/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var flashcardDecks: [FlashcardDeck]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flashcardDecks = [FlashcardDeck.init(4, "Spanish"), FlashcardDeck.init(2, "Database"), FlashcardDeck.init(3, "Japanese")]
    }
    
    //MARK: UITableViewDataSource

    @IBAction func btnAlex(_ sender: Any) {
        self.performSegue(withIdentifier: "FlashcardSetPage", sender: sender)
    }
    
    @IBAction func btnJudy(_ sender: Any) {
        self.performSegue(withIdentifier: "FlashcardSetPage", sender: sender)
    }
    
}

