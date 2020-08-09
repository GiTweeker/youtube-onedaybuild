//
//  YoutubeVideoResponse.swift
//  youtube-onedaybuild
//
//  Created by Elijah Edih on 09/08/2020.
//  Copyright © 2020 Elijah Edih. All rights reserved.
//

import Foundation

struct YoutubeVideoResponse: Decodable {
    
    var items: [YouTubeVideo]?
    
    enum CodingKeys:String, CodingKey {
        case items
    }
    
    init(from decoder: Decoder) throws{
        let itemContainer = try decoder.container(keyedBy: CodingKeys.self)
        print("about to decode in youtube service")
        self.items  = try itemContainer.decode([YouTubeVideo].self,forKey: .items)
        print("done decoding")
    }
}
