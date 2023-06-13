//
//  Date+.swift
//  OrganizerApp
//
//

import Foundation
import UIKit

extension UIViewController {
    func formatingDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let modelDate = formatter.string(from: date)
        return modelDate
    }
}
