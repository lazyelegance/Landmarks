//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ezra Bathini on 6/03/20.
//  Copyright © 2020 Ezra Bathini. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {

        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites only")
            }
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                    }
                }
            }
            
        }.navigationBarTitle(Text("Landmarks"))
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
