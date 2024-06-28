//
//  LandmarkList.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var selectedLandMark = true
    var selectedLandmarks : [Landmark] {
        modelData.landmarks.filter{$0.isFavorite == selectedLandMark}
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $selectedLandMark) {
                    Text("Toogle :")
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
