# StreamFlix Pro

<div align="center">

**A Premium iOS Streaming Application Built with Swift & UIKit**

[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Architecture](https://img.shields.io/badge/Architecture-MVVM-green.svg)](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel)

*A Netflix-inspired streaming app optimized for iPhone and iPad*

</div>

---

## 📱 Overview

StreamFlix Pro is a sophisticated iOS streaming application that delivers a Netflix-like experience through modern iOS design principles and powerful streaming capabilities. Built entirely in Swift using UIKit and the MVVM architectural pattern, this project demonstrates professional-grade iOS development practices for content-rich applications.

### ✨ Key Features

- **🎬 Content Discovery** - Browse trending movies, popular TV shows, upcoming releases, and top-rated content
- **🔍 Smart Search** - Real-time search functionality with dynamic results
- **📺 Trailer Playback** - In-app YouTube trailer viewing using WKWebView
- **💾 Offline Access** - Download and save content locally with Core Data
- **🎨 Netflix-Inspired UI** - Beautiful interface with hero headers and horizontal scrolling carousels
- **📱 Optimized for iOS** - Responsive design for both iPhone and iPad

---

## 🏗️ Architecture

StreamFlix Pro implements the **MVVM (Model-View-ViewModel)** architectural pattern, ensuring clean separation of concerns and enhanced testability.

```
┌─────────────────────────────────────────────────────────────┐
│                         VIEW LAYER                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │    Home      │  │    Search    │  │  Downloads   │     │
│  │ ViewController│  │ ViewController│  │ ViewController│     │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘     │
│         │                  │                  │             │
└─────────┼──────────────────┼──────────────────┼─────────────┘
          │                  │                  │
          ▼                  ▼                  ▼
┌─────────────────────────────────────────────────────────────┐
│                      VIEWMODEL LAYER                        │
│         ┌─────────────────┐  ┌──────────────────┐          │
│         │  TitleViewModel │  │ TitlePreviewVM   │          │
│         └────────┬────────┘  └────────┬─────────┘          │
└──────────────────┼──────────────────────┼──────────────────┘
                   │                      │
                   ▼                      ▼
┌─────────────────────────────────────────────────────────────┐
│                       MODEL LAYER                           │
│  ┌──────────┐  ┌──────────────┐  ┌──────────────────┐     │
│  │  Title   │  │  APICaller   │  │ DataPersistence  │     │
│  │  Model   │  │   Manager    │  │    Manager       │     │
│  └──────────┘  └──────────────┘  └──────────────────┘     │
└─────────────────────────────────────────────────────────────┘
```

### 📁 Project Structure

```
StreamFlixPro/
├── Controllers/
│   ├── Core/
│   │   ├── MainTabBarViewController.swift    # Root tab navigation
│   │   ├── HomeViewController.swift          # Home feed with sections
│   │   ├── SearchViewController.swift        # Search & discovery
│   │   ├── UpcomingViewController.swift      # Upcoming releases
│   │   └── DownloadsViewController.swift     # Offline content
│   └── General/
│       └── TitlePreviewViewController.swift  # Movie detail view
├── Managers/
│   ├── APICaller.swift                       # Network layer
│   └── DataPersistenceManager.swift          # Core Data operations
├── Models/
│   └── Title.swift                           # Data models
├── ViewModels/
│   ├── TitleViewModel.swift                  # Display data formatting
│   └── TitlePreviewViewModel.swift           # Preview data
├── Views/
│   ├── HeroHeaderUIView.swift                # Featured content header
│   ├── CollectionViewTableViewCell.swift     # Horizontal carousels
│   └── TitleTableViewCell.swift              # List cells
└── Resources/
    ├── Assets.xcassets                       # Images & colors
    └── Info.plist                            # App configuration
```

---

## 🛠️ Technical Stack

| Category | Technology |
|----------|-----------|
| **Language** | Swift 5 |
| **UI Framework** | UIKit |
| **Architecture** | MVVM (Model-View-ViewModel) |
| **Networking** | URLSession (native) |
| **Data Persistence** | Core Data |
| **Image Loading** | SDWebImage |
| **Video Playback** | WKWebView (WebKit) |
| **APIs** | TMDB API, YouTube Data API v3 |

---

## 🚀 Getting Started

### Prerequisites

- macOS 12.0+ (Monterey or later)
- Xcode 13.0+
- iOS 14.0+ deployment target
- Active internet connection for API access

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/TJeyesh/StreamFlixProByTJeyesh.git
   cd StreamFlixProByTJeyesh/StreamFlixPro
   ```

2. **Open in Xcode**
   ```bash
   open "Netflix Clone.xcodeproj"
   ```

3. **Install Dependencies**
   
   The project uses SDWebImage for image loading. If using CocoaPods:
   ```bash
   pod install
   ```

4. **Configure API Keys**
   
   Open `Managers/APICaller.swift` and add your API keys:
   ```swift
   struct Constants {
       static let API_KEY = "YOUR_TMDB_API_KEY"
       static let YoutubeAPI_KEY = "YOUR_YOUTUBE_API_KEY"
   }
   ```

5. **Build and Run**
   - Select your target device or simulator
   - Press `Cmd + R` or click the Run button
   - The app will launch on your selected device

### Getting API Keys

**TMDB API Key:**
1. Visit [The Movie Database](https://www.themoviedb.org/)
2. Create a free account
3. Navigate to Settings → API
4. Request an API key (free for non-commercial use)

**YouTube Data API Key:**
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project
3. Enable YouTube Data API v3
4. Create credentials (API Key)

---

## 📸 Features Walkthrough

### 🏠 Home Screen
- **5 Content Sections:** Trending Movies, Trending TV, Popular, Upcoming, Top Rated
- **Hero Header:** Large featured content with Play and Download buttons
- **Horizontal Carousels:** Smooth scrolling movie collections
- **Dynamic Navigation:** Auto-hiding navigation bar on scroll

### 🔎 Search & Discovery
- **Real-time Search:** Live results as you type (minimum 3 characters)
- **Discover Mode:** Browse popular content before searching
- **Comprehensive Results:** Search across movies and TV shows
- **Instant Navigation:** Tap any result to view details

### 📺 Movie Details
- **Embedded Trailers:** Watch YouTube trailers without leaving the app
- **Full Information:** Title, overview, ratings, and release date
- **Download Option:** Save content for offline viewing
- **Responsive Layout:** Adapts to different screen sizes

### 💾 Downloads
- **Offline Access:** View downloaded content without internet
- **Core Data Powered:** Persistent local storage
- **Swipe to Delete:** Easy content management
- **Auto-sync:** Real-time updates across the app

---

## 🔌 API Integration

### TMDB API Endpoints

| Endpoint | Purpose | Usage |
|----------|---------|-------|
| `/3/trending/movie/day` | Daily trending movies | Home screen |
| `/3/trending/tv/day` | Trending TV shows | Home screen |
| `/3/movie/upcoming` | Upcoming releases | Home & Upcoming tabs |
| `/3/movie/popular` | Popular movies | Home screen |
| `/3/movie/top_rated` | Top-rated content | Home screen |
| `/3/discover/movie` | Discover by criteria | Search screen |
| `/3/search/movie` | Search query | Search results |

### YouTube Data API
- **Search Endpoint:** `/youtube/v3/search`
- **Purpose:** Fetch movie/TV show trailers
- **Implementation:** Embedded in `WKWebView` for seamless playback

---

## 💡 Key Implementation Highlights

### 🎯 MVVM Benefits

- **✅ Enhanced Testability:** ViewModels can be unit tested without UI
- **✅ Loose Coupling:** Components can be modified independently
- **✅ Clear Data Flow:** Unidirectional data binding
- **✅ Reusability:** ViewModels can be shared across views

### 🔄 Async Networking

```swift
APICaller.shared.getTrendingMovies { [weak self] result in
    switch result {
    case .success(let titles):
        // Update UI on main thread
        DispatchQueue.main.async {
            self?.updateUI(with: titles)
        }
    case .failure(let error):
        // Handle error gracefully
        self?.showError(error)
    }
}
```

### 💾 Core Data Best Practices

- Single persistent container throughout app lifecycle
- Main queue context for UI operations
- NotificationCenter observers for real-time updates
- Proper error handling and thread safety

### 🎨 Custom UI Components

- **Gradient Overlays:** `CAGradientLayer` for hero header
- **Nested Collection Views:** Horizontal scrolling in table cells
- **Auto Layout:** Programmatic constraints for responsive design
- **Image Caching:** SDWebImage for optimized loading

---

## 📱 Screenshots

The app features a polished, Netflix-inspired interface with:
- Immersive full-screen headers
- Smooth horizontal scrolling carousels
- Clean typography and spacing
- Dark theme optimized for content viewing
- Responsive layouts for all iOS devices

---

## 🔒 Security Considerations

### ⚠️ Important Notes

- **API Keys:** The current implementation includes API keys in source code for demonstration purposes
- **Production Use:** Store sensitive credentials using:
  - Environment variables
  - `.xcconfig` files (excluded from git)
  - Keychain Services
  - Backend proxy services

### 🛡️ Recommended Improvements

1. Move API keys to configuration files
2. Implement certificate pinning for network security
3. Add API rate limiting and error retry logic
4. Encrypt Core Data storage for sensitive data
5. Implement user authentication and authorization

---

## 🚧 Future Enhancements

### Planned Features

- [ ] **User Profiles:** Account creation and authentication
- [ ] **Watchlist:** Save favorite content across devices
- [ ] **Recommendations:** AI-powered content suggestions
- [ ] **Viewing History:** Track watched content
- [ ] **Multiple Quality Options:** SD, HD, 4K video selection
- [ ] **Download Progress:** Real-time download tracking
- [ ] **Social Features:** Share recommendations with friends
- [ ] **SwiftUI Integration:** Gradual migration to modern UI framework
- [ ] **iPad Optimization:** Split-view and multitasking support
- [ ] **Accessibility:** VoiceOver and Dynamic Type support

### Technical Improvements

- [ ] Implement Combine framework for reactive programming
- [ ] Add unit and UI tests for core functionality
- [ ] Set up CI/CD pipeline (GitHub Actions)
- [ ] Implement dependency injection for better testability
- [ ] Add analytics and crash reporting
- [ ] Optimize image loading and caching strategies
- [ ] Implement offline mode with background sync

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

### Code Style Guidelines

- Follow Swift API Design Guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Ensure proper error handling
- Write unit tests for new features
- Update documentation as needed

---

## 📝 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2025 T Jeyesh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

## 🙏 Acknowledgments

- **[The Movie Database (TMDB)](https://www.themoviedb.org/)** - Movie and TV show data
- **[YouTube Data API](https://developers.google.com/youtube/v3)** - Trailer video content
- **[SDWebImage](https://github.com/SDWebImage/SDWebImage)** - Efficient image loading
- **Netflix** - UI/UX inspiration
- **iOS Development Community** - Tutorials and best practices

---

## 📧 Contact

**T Jeyesh**
- GitHub: [@TJeyesh](https://github.com/TJeyesh)
- Repository: [StreamFlixProByTJeyesh](https://github.com/TJeyesh/StreamFlixProByTJeyesh)

---

## 📊 Project Stats

- **Language:** Swift (100%)
- **Total Commits:** 9
- **License:** MIT
- **Stars:** ⭐ (Star this repo if you find it useful!)
- **Watchers:** 👀
- **Forks:** 🍴

---

<div align="center">

**Built with ❤️ by T Jeyesh**

*If you found this project helpful, please consider giving it a ⭐!*

</div>