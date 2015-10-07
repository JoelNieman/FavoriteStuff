//
//  FavoriteSongsViewController.swift
//  FavoriteStuff
//
//  Created by Joel Nieman on 10/6/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class FavoriteSongsViewController: UIViewController {

    var favoriteSongs = ["Wait For Me", "She's Gone", "Out Of Touch", "Rich Girl", "Sara Smile", "Kiss on My List"]
    let favoriteSongsIdentifier = "FavoriteSongsIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteSongs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(favoriteSongsIdentifier) as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: favoriteSongsIdentifier)
        }
        cell.textLabel?.text = favoriteSongs[indexPath.row]
        return cell
        
    }

}
