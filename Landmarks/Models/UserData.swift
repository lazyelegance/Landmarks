//
//  UserData.swift
//  Landmarks
//
//  Created by Ezra Bathini on 6/03/20.
//  Copyright © 2020 Ezra Bathini. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
