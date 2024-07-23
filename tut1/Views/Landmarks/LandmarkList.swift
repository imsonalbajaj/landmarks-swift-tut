//
//  LandmarkList.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var selectedLandMark = false
    var selectedLandmarks : [Landmark] {
        return selectedLandMark ? modelData.landmarks.filter{$0.isFavorite} :  modelData.landmarks
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $selectedLandMark) {
                    Text("Favourites only :")
                }
                ForEach(selectedLandmarks) { landmark in
                    //                LandmarkRow(landmark: landmark)
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                        
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: selectedLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("details")
        }
    }
}

#Preview {
    LandmarkList()
}
