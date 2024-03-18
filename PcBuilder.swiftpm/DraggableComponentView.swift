//
//  DraggableComponentView.swift
//  PcBuilder
//
//  Created by Federica Mosca on 24/02/24.
//

import SwiftUI

struct DraggableComponentView: View {
    
    let component: PCComponent
    @Binding var selectedComponent: PCComponent?
    @Binding var currentStage: Int
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Button(action: {
            selectedComponent = component
            isShowingDetail.toggle()
        })
        {
            Image(component.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .draggable(component.name)
        }
    }
}
