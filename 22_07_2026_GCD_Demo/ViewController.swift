//
//  ViewController.swift
//  22_07_2026_GCD_Demo
//
//  Created by Vishal Jagtap on 27/10/26.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        queue1Execution()
        
    }

    func queue1Execution(){
        let queue1 = DispatchQueue(label: "queue1")
        queue1.async {
            for i in 1...1000{
                print("Task 1 is running on queue 1 -- details -- \(i) -- \(Thread.isMainThread) -- \(Thread.current) -- \(Thread.description)")
            }
        }
        
        queue1.sync {
            for i in 1...1000{
                print("Task 2 is running on queue 1 -- details -- \(i) -- \(Thread.isMainThread) -- \(Thread.current) -- \(Thread.description)")
            }
        }
        
        DispatchQueue.main.async {
            print("Task 70 is running on queue 1 -- details -- \(Thread.isMainThread) -- \(Thread.current) -- \(Thread.description())")
        }
        
        queue1.async {
            for i in 1...1000{
                print("Task 3 is running on queue 1 -- details -- \(i) -- \(Thread.isMainThread) -- \(Thread.current) -- \(Thread.description)")
            }
        }
    }
    
    
//    func queue2Execution(){
//        
//    }

}

