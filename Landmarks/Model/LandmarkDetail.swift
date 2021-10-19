//
//  ContentView.swift
//  Landmarks
//
//  Created by Jui Kimura on 2021/10/16.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image:landmark.image)
                .offset(y: -100)

            VStack(alignment:.leading){
                Text(landmark.name)
                    .font(.title)

                HStack{
                    Text(landmark.park)
                        .font(.subheadline)

                    Spacer(minLength: 10)

                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .offset(y: -120)
            .padding()
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
