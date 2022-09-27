//
//  MainTabViewModels.swift
//  Twitter Clone
//
//  Created by Leonardo Lazzari on 15/09/22.
//

import SwiftUI

enum MainTabViewModels: Int, CaseIterable {
	case home
	case explore
	case favourites
	case addRecipe
	
	var title: String {
		switch self {
		case .home:
			return "Home"
		case .explore:
			return "Explore"
		case .favourites:
			return "Favourites"
		case .addRecipe:
			return "Add Recipe"
		}
	}
	
	var imageName: String {
		switch self {
		case .home:
			return "house"
		case .explore:
			return "magnifyingglass"
		case .favourites:
			return "star"
		case .addRecipe:
			return "plus"
		}
	}
	
	var view: some View {
		switch self {
		case .home:
			return AnyView(HomeView())
        case .explore:
            return AnyView(ExploreView())
        case .favourites:
            return AnyView(Text("FAVOURITES"))
        case .addRecipe:
            return AnyView(Text("ADD RECIPE"))
//		case .explore:
//            return AnyView(ExploreView(destinationType: .profile))
//		case .favourites:
//			return AnyView(FavouritesView())
//		case .settings:
//			return AnyView(SettingsView())
		}
	}
	
}
