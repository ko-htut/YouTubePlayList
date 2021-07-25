//
//  ViewController.swift
//  YT
//
//  Created by Ko Htut on 25/07/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource ,UITableViewDelegate ,ModelDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
        override func viewDidLoad(){
            super.viewDidLoad()
            // Do any additional setup after loading the view
            
            // Set itseflt as the datasource and the delegate
            tableView.dataSource = self
            tableView.delegate = self
            
            // Set itstlf as the delgate
            
            model.getVideo()
        }
    
    // Mark : - TableView Methods
    
    func videosFetched(videos: [Video]) {
        // set the returned videos to our video property
        self.videos = videos
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        // Configure the cell with the data
        let title = self.videos[indexPath.row].title
        cell.textLabel?.text = title
        // Return the cell
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}


