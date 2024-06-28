//
//  LandmarkList.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(landmarks) { landmark in
                    //                LandmarkRow(landmark: landmark)
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                        
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("details")
        }
    }
}

#Preview {
    LandmarkList()
}
