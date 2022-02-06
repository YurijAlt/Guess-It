//
//  FilmModel.swift
//  Geuess It WatchKit Extension
//
//  Created by Юрий Альт on 06.02.2022.
//

import Foundation

struct FilmModel {
    var emojis: String
    var name: String
    
    static func getFilms() -> [FilmModel] {
        return [
            FilmModel(emojis: "💎✋", name: "Бриллиантовая рука"),
            FilmModel(emojis: "🎩🍀", name: "Джентельмены удачи"),
            FilmModel(emojis: "🔨☁️☁️☁️", name: "Достучаться до небес"),
            FilmModel(emojis: "🧳🐻👨‍👩‍👦", name: "Кристофер Робин"),
            FilmModel(emojis: "🌎🐒🐒🐒", name: "Планета обезьян")
        ]
    }
}
