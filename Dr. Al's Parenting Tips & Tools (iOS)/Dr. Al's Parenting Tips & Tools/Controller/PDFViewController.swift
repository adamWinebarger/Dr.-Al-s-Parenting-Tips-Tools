//
//  PDFViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 2/23/21.
//  Copyright © 2021 adam Winebarger. All rights reserved.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {
    
    private var pdfView : PDFView?
    private var pdfDocument : PDFDocument?
    
    var destination : String?
    var pdfTitle : String?
    
    //let folder = Constants.pdfFolder

    override func viewDidLoad() {
        super.viewDidLoad()

        //Do any additional setup after loading the view.
        navigationItem.title = pdfTitle
        
        let fileURL = "\(destination ?? "")"
        pdfView = PDFView(frame: self.view.bounds)
        self.view.addSubview(pdfView!)
        
        pdfView?.autoScales = true

        guard let path = Bundle.main.url(forResource: fileURL, withExtension: ".pdf") else {return}

        pdfDocument = PDFDocument(url: path)
        pdfView!.document = pdfDocument

    }
    
    
}
