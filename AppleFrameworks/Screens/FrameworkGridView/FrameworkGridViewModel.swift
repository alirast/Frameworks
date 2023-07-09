//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by N S on 08.07.2023.
//

import SwiftUI

//observable object - to publish information when changes and views will get this
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    //when changes it's gonna publish that change
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
