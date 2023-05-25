//
//  ViewController.swift
//  API_Demo
//
//  Created by Gaurang Naik on 2023-05-20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func printProductData(_ sender: Any) {
        Task {
            print("\n==== FAKE STORE API ====\n")
            print(await FakeStoreAPI_Helper.fetch())
            print("\n==== END ====")
        }
    }
    
    @IBAction func printPersonData(_ sender: Any) {
        Task {
            print("\n==== FAKER API ====\n")
            print(await FakerAPI_Helper.fetch())
            print("\n==== END ====")
        }
    }
    
    @IBAction func printthisthatData(_ sender: Any) {
        Task {
            print("\n==== ITS THIS FOR THAT API ====\n")
            print(await ItsthisforthatAPI_Helper.fetch())
            print("\n==== END ====")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

