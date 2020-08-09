//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Elijah Edih on 08/08/2020.
//  Copyright © 2020 Elijah Edih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var youtubeService  = YoutubeService()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubeService.getVideo();
    }


}

