//
//  FactoryAssembly.swift
//  OrganizerApp
//sayfaların nesneleri oluşturulur 
import Foundation
import Swinject

class ViewControllerFactoryAssembly: Assembly{
    private let assembler : Assembler
    
    init(assembler: Assembler){
        self.assembler = assembler
    }
    
    func assemble(container: Container) {
        container.register(ViewControllerFactory.self) { _ in
            ViewControllerFactory(assembler: self.assembler)
        }
    }
}
