//
//  TableViewController.swift
//  LondonLandmarks
//
//  Created by Oludemilade Raji on 4/16/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageList = ["BigBen.jpg", "BuckinghamPalace.jpg", "LondonEye.jpg", "St-Pauls.jpg", "TowerBridge.jpg", "WestminsterAbbey.jpg"]
    var titleList = ["Big Ben", "Buckingham Palace", "London Eye", "St Paul's Cathedral", "Tower Bridge", "Westminster Abbey"]
    var descriptionList = ["16-storey Gothic clocktower and national symbol at the Eastern end of the Houses of Parliament.",
                           "Visitors can tour the palace's opulent private and state rooms or watch the changing of the guard.",
                           "Huge observation wheel giving passengers a privileged bird's-eye view of the city's landmarks.",
                           "Churchyard and gardens outside Saint Paul's cathedral, with a floor-plan of the original building.",
                           "Panoramic views from high-level walkways and behind-the-scenes access to original lifting machinery.",
                           "Protestant abbey hosting daily services and every English and British coronation since 1066."]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //configure the back button
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! TableViewCell

        // Configure the cell...
        cell.cellTitle.text = titleList[indexPath.row]
        cell.cellDescription.text = descriptionList[indexPath.row]
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])
        cell.cellTitle.textColor = UIColor(red: 35/255, green: 90/255, blue: 141/255, alpha: 1.0)
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Prepare data for navgation
        if (segue.identifier == "showDetail"){
            
            let DVC =  segue.destination as! detailViewController //lets us transfer data to the detailViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                let title = titleList[indexpath.row] as String
                DVC.sendData1 = title
                
                let description = descriptionList[indexpath.row] as String
                DVC.sendData2 = description
                
                let image = imageList[indexpath.row] as String
                DVC.sendData3 = image
            }
        }
    }
 

}
