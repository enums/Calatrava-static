//
//  AppDelegate.swift
//  Calatrava
//
//  Created by 郑宇琦 on 2017/6/24.
//  Copyright © 2017年 郑宇琦. All rights reserved.
//

import Foundation
import SwiftyJSON
import PerfectHTTP
import Pjango

class AppDelegate: PjangoDelegate {
    
    func setSettings() {
        
        // Pjango
        #if os(macOS)
            PJANGO_WORKSPACE_PATH = APP_CONFIG.string(forKey: "macos_workspace_path") ?? "/Calatrava-static"
        #else
            PJANGO_WORKSPACE_PATH = APP_CONFIG.string(forKey: "workspace_path") ?? "/Calatrava-static"
        #endif
        
        PJANGO_SERVER_PORT = UInt16(APP_CONFIG.int(forKey: "port") ?? 80)
        
        
        // Django
        
        PJANGO_BASE_DIR = APP_CONFIG.string(forKey: "base_dir") ?? ""
        
        PJANGO_STATIC_URL = APP_CONFIG.string(forKey: "static") ?? "static"
    }
    
}
