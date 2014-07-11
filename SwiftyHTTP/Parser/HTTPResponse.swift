//
//  HTTPResponse.swift
//  SwiftyHTTP
//
//  Created by Helge Heß on 6/25/14.
//  Copyright (c) 2014 Always Right Institute. All rights reserved.
//

class HTTPResponse : HTTPMessage {
  
  var status : HTTPStatus
  
  init(status: HTTPStatus, version: ( Int, Int ) = HTTPv11,
    headers: Dictionary<String, String> = [:] )
  {
    self.status = status
    
    super.init(version: version, headers: headers)
  }
  
  
  override func descriptionAttributes() -> String {
    var s = " \(status)"
    s += super.descriptionAttributes()
    return s
  }
}
