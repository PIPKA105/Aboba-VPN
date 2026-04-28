import Foundation

struct GhostRegion {
    let name: String
    let ip: String
}

// Список самых "пустых" локаций для Бравла
let ghostRegions = [
    GhostRegion(name: "Vatican City", ip: "193.43.102.1"), // Ватикан
    GhostRegion(name: "Greenland", ip: "194.177.224.1"),    // Гренландия
    GhostRegion(name: "Bermuda", ip: "1.2.16.2")          // Твой легендарный IP для тестов
]
