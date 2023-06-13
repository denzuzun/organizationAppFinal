//
//  Router.swift
//  OrganizerApp
//


import Foundation
import UIKit

//helper-router
func push<T, E>(_ view: T, from source: E?) {
    guard let source = source as? UIViewController,
        let destination = view as? UIViewController else { return }
    DispatchQueue.main.async {
        source.navigationController?.pushViewController(destination, animated: true)
    }
}


func present<T, E>(_ view: T, on source: E?) {
    guard let source = source as? UIViewController,
          let destination = view as? UIViewController else { return }
    DispatchQueue.main.async {
        destination.modalPresentationStyle = .fullScreen
        destination.modalTransitionStyle = .coverVertical
        source.present(destination, animated: true, completion: nil)
    }
}


