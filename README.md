# TicTacToe Game (Tictx)

A fun and interactive TicTacToe game built for iOS using Swift and SwiftUI. This app follows the MVVM architecture, making it a clean and scalable project. It includes a basic AI for single-player mode, alerts for game results, and a well-designed UI using `ZStack` and state management.

---

## Features

- **MVVM Architecture**: Clean separation of concerns for better code maintainability.
- **State Management**: Manage the game state effectively with `@State` and `@Published` variables.
- **Single Page Design**: Simple and user-friendly single-page interface.
- **Alerts**: Show game results and prompts using SwiftUI alerts.
- **Basic AI**: Challenge yourself against a basic AI opponent.
- **Custom Layouts**: Leverage `ZStack` for creative and responsive design.

---

## Getting Started

### Prerequisites

- Xcode 14.0 or later
- iOS 16.0 or later
- Basic knowledge of Swift, SwiftUI, and MVVM architecture

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/raox1/Tictx.git
   ```
2. Open the project in Xcode:
   ```bash
   cd Tictx
   open Tictx.xcodeproj
   ```
3. Build and run the app on a simulator or a physical device.

---

## Code Highlights

### State Management
State variables and published properties are used to manage the game state dynamically.
```swift
@State private var board: [[String]] = Array(repeating: Array(repeating: "", count: 3), count: 3)
@State private var currentPlayer: String = "X"
```

### MVVM Architecture
The app is structured with separate models, views, and view models for a clean architecture.
```swift
class GameViewModel: ObservableObject {
    @Published var board: [[String]]
    @Published var currentPlayer: String
    
    init() {
        self.board = Array(repeating: Array(repeating: "", count: 3), count: 3)
        self.currentPlayer = "X"
    }
    
    func makeMove(row: Int, col: Int) {
        // Logic for making a move
    }
}
```

### Alerts for Game Results
SwiftUI alerts are used to notify players of the game's outcome.
```swift
.alert(isPresented: $showAlert) {
    Alert(
        title: Text("Game Over"),
        message: Text(alertMessage),
        dismissButton: .default(Text("OK"))
    )
}
```

### Basic AI
Implement basic AI logic for single-player mode.
```swift
func aiMove() {
    // Simple AI logic to choose a move
}
```

### ZStack for Layouts
Create visually appealing layouts using `ZStack`.
```swift
ZStack {
    Color.blue.edgesIgnoringSafeArea(.all)
    VStack {
        // Game board and controls
    }
}
```

---

## Demo Video

Here's the app video:





https://github.com/user-attachments/assets/5aa5ada1-ee13-49f5-a190-576161973ae9





---

## Learnings

This project helped us understand:

- Implementing the MVVM architecture in SwiftUI.
- Managing game state with `@State` and `@Published`.
- Designing layouts with `ZStack` and `VStack`.
- Using SwiftUI alerts for user interaction.
- Implementing a basic AI for single-player mode.

---

## Contributing

Contributions are welcome! If you'd like to enhance this project, please:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add feature-name'`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## Contact

For any questions or feedback, feel free to reach out:

- Email: [lalitkumaryadav9090@gmail.com](mailto:lalitkumaryadav9090@gmail.com)
- GitHub: [raox1](https://github.com/raox1)
- Website: [lalit.pro](https://lalit.pro)
