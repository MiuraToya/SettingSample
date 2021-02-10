//
//  ChangeAddressViewController.swift
//  UIChangeAddressAndPassword
//
//  Created by 三浦　登哉 on 2021/02/10.
//

import UIKit

class ChangeAddressViewController: UIViewController {

    @IBOutlet weak var currentAddress: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        currentAddress.text = "hogehoge@hoge.hoge"
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
