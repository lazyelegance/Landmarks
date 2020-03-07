//
//  Profile.swift
//  Landmarks
//
//  Created by Ezra Bathini on 7/03/20.
//  Copyright © 2020 Ezra Bathini. All rights reserved.
//

import SwiftUI

struct Profile {
    var username: String
    var prefersNotifications: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(username: "ezra", prefersNotifications: true, seasonalPhoto: .winter)
    
    init(username: String, prefersNotifications: Bool = true, seasonalPhoto: Season = .winter) {
        self.username = username
        self.prefersNotifications = prefersNotifications
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    
     enum Season: String, CaseIterable {
           case spring = "🌷"
           case summer = "🌞"
           case autumn = "🍂"
           case winter = "☃️"
       }
}
