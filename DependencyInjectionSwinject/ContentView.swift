//
//  ContentView.swift
//  DependencyInjectionSwinject
//
//  Created by Bekir Geriş on 4.10.2023.
//

import SwiftUI
import Swinject

struct ContentView: View {
    
    //Swinject
    let container : Container = {
        let container = Container()
        container.register(BackgroundProvidingClass.self) { resolver in
            return BackgroundProvidingClass()
        }
        container.register(AnotherView.self) { resolver in
            return AnotherView(providerProtocol: resolver.resolve(BackgroundProvidingClass.self))
        }
        
        return container
    }()
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: self.container.resolve(AnotherView.self)) {
                Text("Go another view")
            }
        }
    }
}

#Preview {
    ContentView()
}
