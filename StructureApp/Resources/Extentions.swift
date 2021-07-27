//
//  Extentions.swift
//  StructureApp
//
//  Created by Joh_Macbook on 26/07/2021.
//

import UIKit

extension UIView {
    
    public var width: CGFloat {
        return frame.size.width
    }
    
    public var height: CGFloat {
        return frame.size.height
    }
    
    public var top: CGFloat {
        return frame.origin.x
    }
    
    public var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    
    public var left: CGFloat {
        return frame.origin.y
    }
    
    public var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
}

extension String {
    func safeDatabaseKey() -> String {
        
        return self.replacingOccurrences(of: "@", with: "-").replacingOccurrences(of: ".", with: "-")
    }
}
