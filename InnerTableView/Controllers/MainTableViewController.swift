//
//  MainTableViewController.swift
//  InnerTableView
//
//  Created by Marcelo on 10/24/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

let ROW_HEIGHT = 50

class MainTableViewController: UITableViewController {
    
    // Properties
    var source = [String]()
    var innerSource = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = CGFloat(ROW_HEIGHT)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        
        loadSource()
    }

    
    // MARK: - Application Data Source
    private func loadSource() {
        
        source.append("Setor Um")
        source.append("Setor Dois")
        source.append("Setor Três")
        source.append("Setor Quatro")
        
        innerSource.append("Amaranto Junior - 2232-0909")
        innerSource.append("Beatriz Salgado - 2232-1988")
        innerSource.append("Ingrid Bergman - 2232-7152")

        innerSource.append("Amaranto Junior - 2232-0909")
        innerSource.append("Beatriz Salgado - 2232-1988")
        innerSource.append("Ingrid Bergman - 2232-7152")

        innerSource.append("Amaranto Junior - 2232-0909")
        innerSource.append("Beatriz Salgado - 2232-1988")
        innerSource.append("Ingrid Bergman - 2232-7152")
   
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableViewCell
        cell.mainTitle.text = source[indexPath.row]
        cell.innerSource = innerSource
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 465
    }

}
