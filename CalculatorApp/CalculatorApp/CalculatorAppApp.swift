//
//  CalculatorAppApp.swift
//  CalculatorApp
//
//  Created by Mark Pashukevich on 7.08.24.
//

import SwiftUI

@main
struct CalculatorAppApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
