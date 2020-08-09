//
//  YouTubeVideo.swift
//  youtube-onedaybuild
//
//  Created by Elijah Edih on 09/08/2020.
//  Copyright © 2020 Elijah Edih. All rights reserved.
//

import Foundation

struct YouTubeVideo : Decodable {
    
    var videoId  = ""
    var title  = ""
    var description  = ""
    var thumbnail  = ""
    var published  = Date()
    
    enum Codingkeys: String, CodingKey {
        case snippet
        case thumbnails
        case high
        case resourceId
        case published  = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId = "id"
    }
    init(from decoder: Decoder) throws {
        let itemContainer  =
            try decoder.container(keyedBy: Codingkeys.self)
        
        let snippetContainer  = try itemContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .snippet)

        self.title = try  snippetContainer.decode(String.self, forKey: .title)

        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        let thumbnailContainer  = try snippetContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .thumbnails)
        
        let highContainer  = try thumbnailContainer.nestedContainer(keyedBy:Codingkeys.self, forKey: .high)
  
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
    
        /*let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self,forKey: .videoId)
        
    */
              
        self.videoId = try itemContainer.decode(String.self,forKey: .videoId)
    
    }
}
