//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jui Kimura on 2021/10/17.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
            }
            }
            .navigationTitle("Landmarks")
        }
        //NavigationViewで画面遷移
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
