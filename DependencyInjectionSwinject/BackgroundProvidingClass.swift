//
//  BackgroundProvidingClass.swift
//  DependencyInjectionSwinject
//
//  Created by Bekir Geriş on 4.10.2023.
//

import Foundation
import SwiftUI

class BackgroundProvidingClass : BackgroundProviderProtocol {
    var backgroundColor: Color {
    let backgroundColors : [Color] = [Color.red,Color.blue,Color.brown,Color.green]
        return backgroundColors.randomElement()!
    }
 }
