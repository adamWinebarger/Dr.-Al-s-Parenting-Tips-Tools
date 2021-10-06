//
//  WebsitesViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 9/26/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//

import UIKit

class WebsitesViewController: UITableViewController {
    
    let websiteArray = Constants.websiteArray
    let webcell = Constants.websiteCell

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: Constants.pdfCellNIBName, bundle: nil), forCellReuseIdentifier: webcell)
    }
    
    //MARK - TableView Data Source Method
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websiteArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: webcell, for: indexPath) as! PDFTitleCell
        cell.imageview.image = UIImage(named: Constants.webIcon)
        cell.cellLabel.text = websiteArray[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let url = URL(string: websiteArray[indexPath.row].address)
        
        let exitAlert = UIAlertController(title: "Open in Safari?", message: "Press OK to open website in safari", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "OK", style: .default) { _ in ()
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
        
        exitAlert.addAction(exitAction)
        exitAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(exitAlert, animated: true, completion: nil)
        
    }
}
