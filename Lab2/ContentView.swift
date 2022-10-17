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
        Grid(alignment: .bottomTrailing) {
            GridRow {
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
            }
            GridRow {
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
            }
            GridRow {
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
            }
            GridRow {
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
                Image(systemName: "house.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
