//
//  Model.swift
//  YouTubeApp
//
//  Created by Ko Htut on 25/07/2021.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(videos:[Video])
}


struct Model {
    
    var delegate:ModelDelegate?
    
    func getVideo()  {
      // Create a URL object
        let url = URL(string: Constants.API_URL)
        guard url != nil else {
            return
        }
        
      // Get a URLSession object
        
        let session = URLSession.shared
        
      // Get a data task from the URLSession object
        let dataTask  = session.dataTask(with: url!) { data, response, error in
            // Check if there were any errors
            if error != nil  || data == nil {
                return
            }
            do{
                // Parsing the data into the video object
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                // Cell the "videosReturned" method of the delegate
                if response.items != nil{
                    self.delegate?.videosFetched(videos: response.items!)
                    
                }
                
                
                dump(response)
            }catch{
                // Error
                
            }
            
        }
      // Kick off the task
        dataTask.resume()
    }
}
