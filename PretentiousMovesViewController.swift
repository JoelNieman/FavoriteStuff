//
//  PretentiousMovesViewController.swift
//  FavoriteStuff
//
//  Created by Joel Nieman on 10/6/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class PretentiousMovesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    var pretentiousMoves = ["Clarify that Prime Boof != Kobe Beef", "Ask server to clarify what type of Kobe beef", "Ask the server to find out what ranch the cow was from", "Ask the server to order for me", "Change my date's order on her", "Ask to talk to the Chef", "Request really exotic items then act surprised when they don't have it", "Tell the server the food is good but it would be better if they provided something to clear my palate between items", "Act like I know more about foods from the server's native country than he/she does", "Call the manager ahead of time to let him know I am coming"]
    
    let pretentiousMovesIdentifier = "PretentiousMovesIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pretentiousMoves.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(pretentiousMovesIdentifier) as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: pretentiousMovesIdentifier)
        }
        cell.textLabel?.text = pretentiousMoves[indexPath.row]
        return cell
        
    }

}
