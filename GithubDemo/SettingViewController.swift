//
//  SettingViewController.swift
//  GithubDemo
//
//  Created by Pj Nguyen on 10/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    var isFilteredLanguage:Bool = true
    @IBOutlet weak var tableView: UITableView!
    
    var languages: [String] = ["Java", "JavaScript", "Objective-C", "Python", "Ruby", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource, FilterLanguageTableViewCellDelegate{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        default:
            break
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        switch indexPath.section {
        case 0:
            return UITableViewCell()
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FilterLanguageCell") as! FilterLanguageTableViewCell
            cell.delegate = self
            
            switch indexPath.row {
            case 0:
                cell.filterLable.text = "Jave"
            case 1:
                cell.filterLable.text = "Ruby"

            case 2:
                cell.filterLable.text = "Objective C"

            default:
                break
            }
            return cell
            
        default:
            break
        }
     return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 1:
            if isFilteredLanguage {
                return 44
            } else {
                return indexPath.row == 0 ? 44 : 0
            }
        default:
            return 44
        }
    return 0
    }
    
    func filterLanguageTableViewCell(filterLanguageTableViewCell: FilterLanguageTableViewCell, didChangeValue value: Bool) {
        isFilteredLanguage = value
        tableView.reloadData()
    }
}
