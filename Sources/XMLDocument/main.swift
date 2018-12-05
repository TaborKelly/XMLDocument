import XMLDocumentLib

registerSignals({
    print("Got backtrace: \n\($0)")
})

do {
    let document = try parseData(fromString: "")
    print("document: \(document)")
} catch {
    print("error: \(error)")
}
