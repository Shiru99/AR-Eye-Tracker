//
//  ContentView.swift
//  Eye-Tracker
//
//  Created by Shriram Ghadge on 27/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var eyeGazeActive: Bool = false
    @State var lookAtPoint: CGPoint?
    @State var isWinking: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            CustomARViewContainer(eyeGazeActive: $eyeGazeActive, lookAtPoint: $lookAtPoint, isWinking: $isWinking)
            
            Button(action: {
                eyeGazeActive.toggle()
            }, label: {
                Text(eyeGazeActive ? "Stop" : "Start")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            .padding(.bottom, 50)
            
            if let lookAtPoint = lookAtPoint {
                Circle()
                    .fill(Color.blue)
                    .frame(width: isWinking ? 100 : 40, height: isWinking ? 100 : 40)
                    .position(lookAtPoint)
            }
        }
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
