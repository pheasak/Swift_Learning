//
//  Settings.swift
//  learning
//
//  Created by IDG Mac Mini M4 2 on 18/10/25.
//
import SwiftUI

struct Settings: View {
    @State private var isDetailActive = false
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.tint)
                    
                    Image(systemName: "figure.2.and.child.holdinghands")
                        .font(.system(size: 70))
                        .foregroundStyle(.white)
                }
                
                Text("Welcome to My App")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                
                
                Text("Description text")
                    .font(.title2)
                
              
                                Button("Go to Detail") {
                                    isDetailActive = true
                                }
                                .navigationDestination(isPresented: $isDetailActive) {
                                    DetailView()
                                }
                         
                        
                
            }
            
            .padding()
        }}
}

#Preview {
    Settings()
}
