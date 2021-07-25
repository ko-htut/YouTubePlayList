//
//  Constants.swift
//  YouTubeApp
//
//  Created by Ko Htut on 25/07/2021.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyAzTrMqq3vjufafP-LLnJqf3VvVp0ilHeE"
    static var PLAYLIST_ID = "RDc5NF8xVTPzI"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    static var VIDEOCELL_ID = "VideoCell"
}
