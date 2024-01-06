//
//  CurrencyTip.swift
//  CurrencyConvertor
//
//  Created by Shoaib Ali on 06/01/24.
//

import Foundation
import TipKit

struct CurrencyTip:Tip{
    
    var title = Text("Chnage Currency.")
    
    var message: Text? = Text("You can tap the left and right currency to bring up the Select Currency Screen.")
    // could be nil (no value) not null
}
