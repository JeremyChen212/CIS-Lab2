/*:
 Lab 2
 
 Group 9
 
 Jeremy Chen, David Solis
 
 10/18/22
*/
//
//  ContentView.swift
//  Lab2
//
//  Created by Jeremy Chen on 10/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
