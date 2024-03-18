//
//  CaseView.swift
//  PcBuilder
//
//  Created by Federica Mosca on 24/02/24.
//

import SwiftUI

struct CaseView: View {
    
    @Binding var currentStage: Int
    @Binding var selectedComponent: PCComponent?
    @State var currentCase: String
    @State private var caseImage: Image
    
    init(currentStage: Binding<Int>, selectedComponent: Binding<PCComponent?>) {
        let pcCase = computerCase[currentStage.wrappedValue] ?? "stage0"
        
        self._selectedComponent = selectedComponent
        self._currentStage = currentStage
        self._currentCase = State(initialValue: pcCase)
        self._caseImage = State(initialValue: Image(pcCase))
    }
    
    var body: some View {
        ZStack {
            caseImage
                .resizable()
                .scaledToFit()
                .frame(width: 700,height: 700)
                .dropDestination(for: String.self) { items,location in
                    guard let item = items.first else {
                        return false
                    }
                    
                    if item == PCComponent.all[currentStage - 1].name {
                        currentStage += 1
                        return true
                    }
                    
                    return false
                }
        }
        .onChange(of: currentStage) { newStage in
            currentCase = computerCase[newStage] ?? "stage0"
            caseImage = Image(currentCase)
        }
    }
}
