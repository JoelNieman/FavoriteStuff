//
//  FavoriteMoviesViewController.swift
//  FavoriteStuff
//
//  Created by Joel Nieman on 10/6/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class FavoriteMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var favoriteMovies = ["The Dark Knight", "The Dark Knight Rises", "The Big Lebowski",]
    let favoriteMoviesIdentifier = "FavoriteMoviesIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteMovies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(favoriteMoviesIdentifier) as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: favoriteMoviesIdentifier)
        }
        cell.textLabel?.text = favoriteMovies[indexPath.row]
        return cell
        
    }
    
}
