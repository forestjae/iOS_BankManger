//
//  Queue.swift
//  BankManagerConsoleApp
//
//  Created by 이승재 on 2021/12/20.
//

import Foundation

struct Queue<Element> {
    var items: LinkedList<Element>
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    init() {
        self.items = LinkedList()
    }
    
    mutating func enqueue(_ data: Element) {
        items.append(data: data)
    }
    
    mutating func dequeue() -> Element? {
        return items.removeFirst()
    }
    
    func peek() -> Element? {
        return items.first
    }
    
    mutating func clear() {
        items.removeAll()
    }
}
