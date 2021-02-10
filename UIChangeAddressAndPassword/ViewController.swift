//
//  ViewController.swift
//  UIChangeAddressAndPassword
//
//  Created by 三浦　登哉 on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //セクションのタイトル
    let sectionTitle: NSArray = ["セキュリティ", "\n"]
    //セルのタイトル
    let cellTitle0: NSArray = ["メールアドレス", "パスワード", "表示名"]
    let cellTitle1: NSArray = ["ログアウト", "アカウント削除"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
    }
    
    
}

extension ViewController: UITableViewDelegate {
    //セルがタップされた時
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            switch  indexPath.row {
            case 0:
                self.performSegue(withIdentifier: "Segue1", sender: nil)
            case 1:
                self.performSegue(withIdentifier: "Segue2", sender: nil)
            case 2:
                self.performSegue(withIdentifier: "Segue3", sender: nil)
            default:
                break
            }
        } else if indexPath.section == 1 {
            switch  indexPath.row {
            case 0:
                print("ログアウト: HUDで確認")
            case 1:
                print("アカウント削除: HUDで確認")
            default:
                break
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    //セクションの数
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    //セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セクション番号０の時
        if section == 0 {
            return cellTitle0.count
            //セクション番号１の時
        } else if section == 1 {
            return cellTitle1.count
        } else {
            return 0
        }
    }
    
    //セクションのタイトル
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section] as? String
    }
    //セルの中
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = cellTitle0[indexPath.row] as? String
            cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        } else {
            cell.textLabel?.text = cellTitle1[indexPath.row] as? String
        }
        return cell
    }
    
    
}


