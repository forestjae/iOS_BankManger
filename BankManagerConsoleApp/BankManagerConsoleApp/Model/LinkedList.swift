import Foundation

struct LinkedList<Element> {
    class Node<Element> {
        var data: Element?
        var next: Node?
        
        init(data: Element?, next: Node? = nil) {
            self.data = data
            self.next = next
        }
    }
    
    private var head: Node<Element>?
    private var tail: Node<Element>?
    var isEmpty: Bool {
        return head == nil
    }
    var first: Element? {
        return head?.data
    }
    
    init() { }
    
    init(data: Element?) {
        self.head = Node(data: data, next: nil)
        self.tail = head
    }
    
    mutating func append(data: Element) {
        let nextNode = Node(data: data, next: nil)
        if isEmpty {
            head = nextNode
            tail = head
            return
        }
        tail?.next = nextNode
        tail = nextNode
    }
    
    mutating func removeFirst() -> Element? {
        guard isEmpty else {
            let first = head?.data
            head = head?.next
            return first
        }
        return nil
    }
    
    mutating func removeAll() {
        head = nil
        tail = nil
    }
}