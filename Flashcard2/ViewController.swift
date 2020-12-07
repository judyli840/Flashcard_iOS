//
//  ViewController.swift
//  Flashcard2
//
//  Created by Judy Li on 11/22/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func btnAlex(_ sender: Any) {
        self.performSegue(withIdentifier: "FlashcardSetPage", sender: sender)
    }
    
    @IBAction func btnJudy(_ sender: Any) {
        self.performSegue(withIdentifier: "FlashcardSetPage", sender: sender)
    }
    
}

