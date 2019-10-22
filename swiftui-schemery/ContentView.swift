//
//  ContentView.swift
//  swiftui-schemery
//
//  Created by Derrick Showers on 10/22/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import SwiftUI

struct Item {
    let name: String
}

struct PlaygroundChooser: View {
    let items = {
        return [
            Item(name: "Picker"),
            Item(name: "Image View")
        ]
    }()

    var body: some View {
        List {
            ForEach(items, id: \.name) { item in
                Text(item.name)
            }
        }
    }
}

#if DEBUG
struct PlaygroundChooser_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundChooser()
    }
}
#endif
