//
//  ContentView.swift
//  Slots
//
//  Created by Tan Li Yuan on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var creditNum = 1000
    @State var chosenPictArray = ["apple", "apple", "apple"]
    var pictArray = ["apple", "cherry", "star"]
    
    func genImage() -> String {
        let rand = Int.random(in: 0...2)
        return pictArray[rand]
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("Credits: " + String(creditNum))
            Spacer()
            HStack {
                Spacer()
                Image(chosenPictArray[0])
                    .resizable()
                    .scaledToFit()
                Spacer()
                Image((chosenPictArray[1]))
                    .resizable()
                    .scaledToFit()
                Spacer()
                Image(chosenPictArray[2])
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            Spacer()
            Button("Spin", action: {
                var point = 45
                for i in 0...2 {
                    chosenPictArray[i] = genImage()
                }
                let pict = chosenPictArray[0]
                for i in 1...2 {
                    print(chosenPictArray[i], pict)
                    if chosenPictArray[i] != pict {
                        point = -5
                        break
                    }
                }
                creditNum += point
            })
                .padding(.vertical, 10.0)
                .padding(.horizontal, 40.0)
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.pink)
                )
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
