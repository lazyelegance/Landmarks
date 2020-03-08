//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ezra Bathini on 8/03/20.
//  Copyright © 2020 Ezra Bathini. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    @Binding var selectedLandmark: Landmark?
    @Binding var filter: FilterType
    
    var body: some View {
        List(selection: $selectedLandmark) {
            ForEach(userData.landmarks) { landmark in
                if (!self.userData.showFavoritesOnly || landmark.isFavorite) && (self.filter == .all || self.filter.category == landmark.category || (self.filter.category == .featured && landmark.isFeatured)) {
                    LandmarkRow(landmark: landmark).tag(landmark)
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(selectedLandmark: .constant(landmarkData[0]), filter: .constant(.all)).environmentObject(UserData())
    }
}
