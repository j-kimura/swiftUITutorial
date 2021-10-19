//
//  CiecleImage.swift
//  Landmarks
//
//  Created by Jui Kimura on 2021/10/17.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Ellipse())
            .overlay(Ellipse().stroke(Color.white,lineWidth: 1))
            .shadow(radius: 3)
            .frame(width: 200, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct CiecleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
