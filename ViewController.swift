//
//  ViewController.swift
//  FriendList
//
//  Created by michi on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {

    
    var appList: [String: String] = [:]     //딕셔너리 생성 [이름:휴대폰]
    
    @IBOutlet var name: UITextField!
    @IBOutlet var phone: UITextField!
    @IBOutlet var friendList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addFriend(){
        appList[name.text!] = phone.text!
        name.text = ""
        phone.text = ""
        reloadFriend()
    }
    
    @IBAction func reloadFriend(){
        var finalString = ""
        for (name, phone) in appList{
            finalString = "\(finalString)\(name),\(phone)\n"
        }
        friendList.text = finalString
        
    }
}

