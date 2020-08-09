//
//  Constant.swift
//  youtube-onedaybuild
//
//  Created by Elijah Edih on 09/08/2020.
//  Copyright © 2020 Elijah Edih. All rights reserved.
//

import Foundation

struct Constant {
    
    static var API_KEY = "AIzaSyCsculkAZv7sDJiDdw_Iga_anPvNXZqV0U"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlists?part=snippet&id=\(Constant.PLAYLIST_ID)&key=\(Constant.API_KEY)"
}
