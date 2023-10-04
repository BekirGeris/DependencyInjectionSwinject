//
//  AnotherView.swift
//  DependencyInjectionSwinject
//
//  Created by Bekir Geriş on 4.10.2023.
//

import SwiftUI

struct AnotherView: View {
    
    let providerProtocol : BackgroundProviderProtocol?
    
    var body: some View {
        ZStack {
            Text("AnotherView")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.background(providerProtocol?.backgroundColor ?? .white)
    }
}

#Preview {
    AnotherView(providerProtocol: BackgroundProvidingClass())
}
