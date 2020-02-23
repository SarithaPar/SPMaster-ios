//
//  GroupedTableViewController.swift
//  TableViewControllerExample
//
//  Created by Parsoya, Saritha(AWF) on 2/23/20.
//  Copyright © 2020 Par, Saritha. All rights reserved.
//

import UIKit

struct Headline2 {
	var id : Int
	var date : Date
	var title : String
	var text : String
	var image : String
}

struct MonthSection {
	var month : Date
	var headlines : [Headline2]
}

private func parseDate(_ str : String) -> Date {
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "yyyy-MM-dd"
    return dateFormat.date(from: str)!
}

class GroupedTableViewController: UITableViewController {
	
	var sections = [MonthSection]()

	var headlines = [
        Headline2(id: 1, date: parseDate("2018-05-15"), title: "Proin suscipit maximus", text: "Quisque ultrices odio in neque eleifend eleifend. Praesent tincidunt euismod sem, et rhoncus lorem facilisis eget.", image: "Blueberry"),
        Headline2(id: 2, date: parseDate("2018-02-15"), title: "In ac ante sapien", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc in ipsum vehicula accumsan quis sit amet quam. Sed vel feugiat eros.", image: "Cantaloupe"),
        Headline2(id: 3, date: parseDate("2018-03-05"), title: "Lorem Ipsum", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id ornare tortor, quis dictum enim. Morbi convallis tincidunt quam eget bibendum. Suspendisse malesuada maximus ante, at molestie massa fringilla id.", image: "Apple"),
        Headline2(id: 4, date: parseDate("2018-02-10"), title: "Aenean condimentum", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non, finibus et diam. Morbi et felis a lacus pharetra blandit.", image: "Banana"),
    ]
	
	private func firstDayOfMonth(date: Date) -> Date {
		let calendar = Calendar.current
		let components = calendar.dateComponents([.year, .month], from: date)
		return calendar.date(from: components)!
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
		
		let groups = Dictionary(grouping: self.headlines) { (headline) in
			return firstDayOfMonth(date: headline.date)
		}
		self.sections = groups.map{(key, values) in
			return MonthSection(month: key, headlines: values)
		}
		self.sections.sort{ (lhs, rhs) in lhs.month < rhs.month}
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
		return self.sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		let section = self.sections[section]
		return section.headlines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        // Configure the cell...
		let section = self.sections[indexPath.section]
		let headline = section.headlines[indexPath.row]
		
//		let headline = self.headlines[indexPath.row]
		cell.textLabel?.text = headline.title
		cell.detailTextLabel?.text = headline.text
		cell.imageView?.image = UIImage(named: headline.image)

        return cell
    }
    
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		let section = self.sections[section]
		let date = section.month
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MMMM yyyy"
		return dateFormatter.string(from: date)
	}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
