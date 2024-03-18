import SwiftUI

struct ContentView: View {
    @State var selectedComponent: PCComponent?
    @State var currentStage = 1
    @State var currentRiddle = "The heart of the machine, where all roads meet. What am I?"
    
    
    var body: some View {
        HStack {
            VStack {
                
                Text("Component Riddle:")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.993, brightness: 0.561))

                Text(currentRiddle)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
                
                
                CaseView(currentStage: $currentStage, selectedComponent: $selectedComponent)
                    .padding(.all, 25.0)
                    .frame(width: 550, height: 700)
             

                Text("Hold and drag the right component inside the case.")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 0.417, saturation: 0.932, brightness: 0.425))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Press on the components to learn more.")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 0.417, saturation: 0.932, brightness: 0.425))
                    .multilineTextAlignment(.center)
            }
            
            ComponentListView(selectedComponent: $selectedComponent,currentStage: $currentStage, currentRiddle: $currentRiddle)
        }
    }
}
