//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Tan Li Yuan on 2/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Button instance with closure
            Button("Click Me", action: {
                print("Hello World")
            })
            
            // Button instance with closure
            Button("Click Me") {
                print("Hello World")
            }

            Button(action: {
                print("Hello World")
            }, label: {
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
