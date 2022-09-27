//
//  MainTabView.swift
//  Twitter Clone
//
//  Created by Leonardo Lazzari on 15/09/22.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex: MainTabViewModels = .home
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                ForEach(MainTabViewModels.allCases, id: \.rawValue) { mainTabOption in
                    mainTabOption.view
                        .navigationTitle(mainTabOption.title)
                        .navigationBarTitleDisplayMode(.inline)
                        .onTapGesture {
                            self.selectedIndex = mainTabOption
                        }
                        .tabItem {
                            VStack {
                                Image(systemName: mainTabOption.imageName)
                                Text(mainTabOption.title)
                            }
                        }
                        .tag(mainTabOption)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Settings pressed")
                    } label: {
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("appLogo")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
            }
        }
//        if let user = viewModel.currentUser {
//            NavigationView {
//                SideBarStack(sidebarWidth: sideMenuWidth, offset: $offset) {
//                    SideMenuView(showProfileView: $showProfileView)
//                } content: {
//                    VStack {
//                        NavigationBar {
//                            Button {
//                                withAnimation(.easeInOut) {
//                                    offset = sideMenuWidth
//                                }
//                            } label: {
//                                UserProfileImageView(url: user.profileImageURL)
//                                    .frame(width: 40, height: 40)
//                            }
//                        } titleView: {
//                            Image("icon")
//                                .resizable()
//                                .renderingMode(.template)
//                                .foregroundColor(.primary)
//                                .frame(width: 30, height: 30)
//                        } trailingView: {
//                            Spacer()
//                                .frame(width: 30, height: 30)
//                        }
//
//                        NavigationLink(isActive: $showProfileView) {
//                            GeometryReader { proxy in
//                                ProfileView(userID: user.id!, topEdge: proxy.safeAreaInsets.top)
//                                    .navigationBarHidden(true)
//                            }
//                        } label: {
//                            EmptyView()
//                        }
//
//                        TabView(selection: $selectedIndex) {
//                            ForEach(MainTabViewModels.allCases, id: \.rawValue) { mainTabOption in
//                                mainTabOption.view
//                                    .navigationTitle("")
//                                    .navigationBarHidden(true)
//                                    .onTapGesture {
//                                        self.selectedIndex = mainTabOption
//                                    }
//                                    .tabItem {
//                                        Image(systemName: mainTabOption.imageName)
//                                    }
//                                    .tag(mainTabOption)
//                            }
//                        }
//                    }
//                }
//            }
//            .navigationViewStyle(.stack)
//        }
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainTabView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        }
    }
}
