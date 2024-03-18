//
//  ComponentListView.swift
//  PcBuilder
//
//  Created by Federica Mosca on 24/02/24.
//

import SwiftUI

struct ComponentListView: View {
    @State private var isShowingDetail = false
    @Binding var selectedComponent: PCComponent?
    @Binding var currentStage: Int
    @Binding var currentRiddle: String
 
    
    var body: some View {
        VStack {
            ForEach(PCComponent.all.shuffled()) { component in
                DraggableComponentView(component: component, selectedComponent: $selectedComponent, currentStage: $currentStage, isShowingDetail: $isShowingDetail)
            }
        }
        
        .sheet(isPresented: $isShowingDetail) {
            if let _ = selectedComponent {
                ComponentDetailView(component: selectedComponent)
            }
        }
        .onChange(of: currentStage) { newStage in
            switch newStage {
            case 1:
                currentRiddle = "The heart of the machine, where all roads meet. What am I?"
            case 2:
                currentRiddle = "I turn your machine alive, providing the energy drive. What component am I?"
            case 3:
                currentRiddle = "I compute and process, the engine's main fortress. Identify me."
            case 4:
                currentRiddle = "I keep things chilly, your computer's best ally. What component is this?"
            case 5:
                currentRiddle = " I paint your screen with hues, essential for gaming views. What am I?"
            case 6:
                currentRiddle = "I transfer swiftly, ensuring no lag. Find and drag. What's my tag?"
            case 7:
                currentRiddle = "Assembly complete! I'm ready for action. Let the digital journey begin!"
            default:
                break
            }
        }
    }
}
