//
//  YoutubeService.swift
//  youtube-onedaybuild
//
//  Created by Elijah Edih on 09/08/2020.
//  Copyright © 2020 Elijah Edih. All rights reserved.
//

import Foundation

class YoutubeService {
    func getVideo() -> Void {
       //TODO
        // create a url object
        let url  =  URL(string: Constant.API_URL)
        guard url != nil else {
            return
        }
        
        let session  = URLSession.shared
        
        let dataTask  = session.dataTask(with: url!) { (data, response, error) in
            //check if there were any errors
            if error != nil || data == nil  { return }
         
        }
        //get a urlsession object
        //get a data task from urlsession object
        //kick off task
        
        dataTask.resume()
    }
}
