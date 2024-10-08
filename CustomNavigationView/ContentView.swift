//
//  ContentView.swift
//  CustomNavigationView
//
//  Created by mac on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Ekplorasi")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "envelope.fill")
                        Text("Kotak masuk")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
    }
}

#Preview {
    ContentView()
}

struct Home:View {
    var body: some View {
        NavigationView{
            Content()
            
                .navigationBarItems(
                    
                    leading:
                    HStack{
                        Button(action: {print("Button Risyad")}){
                            Image("youtube")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 90, height: 20)
                        }
                    },
                    trailing:
                    HStack(spacing: 10){
                        Button(action: {print("button 1")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("button 1")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("button 1")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("button 1")}){
                            Image("profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .clipShape(.circle)
                        }
                    }
                ).navigationBarTitle("", displayMode: .inline)
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }

struct Content:View {
    var body: some View {
        List{
            cellContent(imageContent: "content3", profileContent: "profile", title: "Boost your finances fast", description: "Get your finances fast from Youtube", duration: "08:12")
            
            cellContent(imageContent: "content1", profileContent: "profile", title: "Youtube Thumbnails", description: "Get your thumbnail from youtube and awesome hack for getting anggegment", duration: "10:11")
            
            cellContent(imageContent: "content3", profileContent: "profile", title: "Earn money Youtube", description: "Get your money from Youtube easy and fast", duration: "10:11")
        }
    }
}

struct cellContent:View {
    
    var imageContent: String
    var profileContent: String
    var title: String
    var description: String
    var duration: String
    
    var body: some View {
        //content 1
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(duration)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack(spacing: 20){
                Image(profileContent)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(.circle)
                
                VStack(alignment: .leading){
                    Text(title)
                        .font(.headline)
                    HStack{
                        Text(description)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
