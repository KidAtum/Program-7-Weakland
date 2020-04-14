//
//  ViewController2.swift
//  Program 7 Weakland
//
//  Created by Lucas Weakland on 4/14/20.
//  Copyright © 2020 Lucas Weakland. All rights reserved.
//
import WebKit
import MessageUI
import UIKit

class ViewController2: UIViewController, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    // Third Tab
       @IBOutlet weak var webView: WKWebView!
       @IBAction func openSite(_ sender: Any) {
           if let url = URL (string: "https://sanibel-captiva.org/") {
                   UIApplication.shared.open(url, options: [:])
               }
       }
       
       @IBAction func sendSMS(_ sender: Any) {
           let composeVC = MFMessageComposeViewController()
               composeVC.messageComposeDelegate = self
               
               composeVC.recipients = ["7244548752"]
               composeVC.body = "Hello"
               
               if MFMessageComposeViewController.canSendText() {
               self.present(composeVC, animated: true, completion: nil)
           } else {
           print("Can't send messages.")
               }
       }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                   // Load web content
                   let myURL = URL(string:"https://sanibel-captiva.org/")!
                   let myRequest = URLRequest(url: myURL)
             print(myRequest)
            webView.load(myRequest)
        
        
        
        // Do any additional setup after loading the view.
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
