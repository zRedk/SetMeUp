//
//  ComponentDetailView.swift
//  PcBuilder
//
//  Created by Federica Mosca on 24/02/24.
//

import SwiftUI

struct ComponentDetailView: View {
    let component: PCComponent?

    var body: some View {
        VStack {
            Image(component!.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()

            Text(component!.name)
                .font(.title)
                .padding()

            Text(component!.description)
                .padding()
            
            Spacer()
        }
    }
}
