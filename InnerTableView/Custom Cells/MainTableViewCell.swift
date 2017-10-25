//
//  MainTableViewCell.swift
//  InnerTableView
//
//  Created by Marcelo on 10/24/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    // Properties
    var innerSource = [String]()
    
    // Outlets
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var innerTableView: UITableView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return innerSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
