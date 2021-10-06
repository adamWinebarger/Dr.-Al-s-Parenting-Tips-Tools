//
//  TipsViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 9/14/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//
//Tip sheet view controller

import UIKit
import PDFKit

class TipsSheetViewController: UITableViewController {
    
    //TODO: Figure out which PDFs will go here and which will go in the other view.
    //Determine whether we can store the PDF's in table cells and view them on the same view, or if we'll need a dedicated view to look
    //at the PDF's
    //@IBOutlet weak var pdfView: PDFView!
    
    let folder : String = Constants.pdfFolder
    let pdfArray = Constants.tipsPDFArray2
    let button = UIButton(frame: CGRect(x: 25, y: 25, width: 33, height: 33))
    let tipCell = Constants.tipCell
    
    var fileURL : String = ""
    var pdfTitle = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Registers our custom cell class
        tableView.register(UINib(nibName: Constants.pdfCellNIBName, bundle: nil), forCellReuseIdentifier: tipCell)
        
    }
    
    //MARK - tableView data source methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pdfArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tipCell, for: indexPath) as! PDFTitleCell
        cell.cellLabel.text = pdfArray[indexPath.row].title
        cell.imageview.image = UIImage(named: Constants.pdfIcon)
        return cell
    }
    
    //MARK - tableview delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(pdfArray[indexPath.row])
        
        fileURL = "\(folder)/\(pdfArray[indexPath.row].address)"
        pdfTitle = pdfArray[indexPath.row].title
        self.performSegue(withIdentifier: Constants.tips2PDFView, sender: self)        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.tips2PDFView {
            let destinationVC = segue.destination as! PDFViewController
            destinationVC.destination = fileURL
            destinationVC.pdfTitle = pdfTitle
            print(fileURL)
            
        }
    }

}
