//
//  DiceView.swift
//  Nad's Dice
//
//  Created by Nadia Ahmadian on 2021-04-12.
//

import SwiftUI

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}


struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(number: 6)
    }
}
