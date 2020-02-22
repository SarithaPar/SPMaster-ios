//
//  StoriesTableViewController.swift
//  TableViewControllerExample
//
//  Created by Parsoya, Saritha(AWF) on 2/20/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//

import UIKit

struct Headline {
	var id : Int
	var title : String
	var text : String
	var image : String
}

class StoriesTableViewController: UITableViewController {
	
	var headlines = [
		Headline(id: 1, title: "Title 1", text: "Long long text 1", image: "Apple"),
		Headline(id: 1, title: "Aenean condimentum", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non.", image: "Banana"),
		Headline(id: 1, title: "In ac ante sapien", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc", image: "Cantaloupe")
	]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
			self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return headlines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        // Configure the cell...
		cell.textLabel?.text = headlines[indexPath.row].title

        return cell
    }
}
