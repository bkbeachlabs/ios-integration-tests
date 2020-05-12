//
//  WebpageChecker.swift
//  MyFramework
//
//  Created by Andrew King on 2020-05-12.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import Foundation

class WebpageChecker {
    let urlSession: URLSession
    
    
    init() {
        let configuration = URLSessionConfiguration.default
        urlSession = URLSession(configuration: configuration)
    }
    
    func checkWebpageAvailability(_ webpageUrl: String, complete: (Error?) -> Void) {
        guard let url = URL(string: webpageUrl) else {
            let error = NSError(domain: "MyFramework", code: 1)
            complete(error)
            return
        }
        urlSession.dataTask(with: <#T##URL#>)
    }
}
