//
//  ContentView.swift
//  XLIFF Localizer Testcases
//
//  Created by Leen van der Bent on 09/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let numberOfStrings = 3
        let totalStrings = 9
        let numberOfCatalogs = 3
        let deviceType = "iPhone"
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, developers!")
                .font(.headline)
                .padding(.bottom)
            Text("second_key")
                .padding(.bottom)
            Text(LocalizedStringResource("interpolation_key", defaultValue: "There are \(numberOfStrings) strings in the default catalog.", comment: "mind the pluralization"))
    
            Divider()
            
            Text("A localizeable string in the second string catalog", tableName: "SecondCatalog", comment: "translate with care")
                .padding(.bottom)
            Text("string_variant_per_device", tableName: "SecondCatalog")
                .padding(.bottom)
            Text(LocalizedStringResource("multiple_interpolations_key", defaultValue: "This test app has \(totalStrings) localizable strings in \(numberOfCatalogs) separate String Catalogs!", table: "SecondCatalog"))
            
            Divider()
            
            Text("""
Multiline text for third string catalog.
Second line starts here on this \(deviceType).
And this is the third line.
""", tableName: "ThirdCatalog", comment: "multiline text for iOS app")
            .padding(.bottom)
            Text("manual_key_3rd", tableName: "ThirdCatalog", comment: "not automatic")
                .padding(.bottom)
            Text(LocalizedStringResource("lsr_key", defaultValue: "default value of key", table: "ThirdCatalog"))
        }
        .padding()
    }
}

#Preview("English") {
    ContentView()
    // base language of this app: English (U.S.)
}

#Preview("German") {
    ContentView()
        .environment(\.locale, Locale(identifier: "DE"))
}

#Preview("Ukrainian") {
    ContentView()
        .environment(\.locale, Locale(identifier: "UK"))
    
}
