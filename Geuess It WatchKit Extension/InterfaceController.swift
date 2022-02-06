//
//  InterfaceController.swift
//  Geuess It WatchKit Extension
//
//  Created by Юрий Альт on 06.02.2022.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var mainLabel: WKInterfaceLabel!
    @IBOutlet weak var mainButton: WKInterfaceButton!
    
    let movies = FilmModel.getFilms()
    var element: FilmModel?
    private var timer: Timer?
    
    override func awake(withContext context: Any?) {
        element = movies.randomElement()
        mainLabel.setText("")
        mainButton.setTitle(element?.emojis)
        
    }

    @IBAction func refreshAction() {
        mainLabel.setText(element?.name)
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { _ in
            self.element = self.movies.randomElement()
            self.mainButton.setTitle(self.element?.emojis)
            self.mainLabel.setText("")
        })
    }
    
    
}
