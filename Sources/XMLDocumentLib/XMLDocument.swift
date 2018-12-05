import Foundation
import CBacktrace

//
// For the test
//

public func parseData(fromString: String) throws -> XMLDocument {
    return try XMLDocument(xmlString: fromString)
}

//
// From here on down is just for the backtrace
//

#if os(Linux)
public func backtrace() -> String {
    var retval = String()

    var callstack = [UnsafeMutableRawPointer?](repeating: nil, count: 128)

    let frames = backtrace(&callstack, Int32(callstack.count))

    if let symbols = backtrace_symbols(&callstack, frames) {
        for frame in 0..<Int(frames) where symbols[frame] != nil {
            retval += "\t" + String(cString: symbols[frame]!) + "\n"
        }
        free(symbols)
    }

    return retval
}

#else

public func backtrace() -> String {
    var retval = String()

    Thread.callStackSymbols.forEach { retval += "\t" + $0 + "\n" }

    return retval
}

#endif

private var callback: ((String) -> Void)? = nil

private func signalHandler(_ signal: Int32) {
    callback?(backtrace())

    exit(signal)
}

public func registerSignals(_ cb: @escaping (String) -> Void) {

    callback = cb

    signal(SIGHUP )  { s in signalHandler(s) }
    signal(SIGINT )  { s in signalHandler(s) }
    signal(SIGKILL)  { s in signalHandler(s) }
    signal(SIGPIPE)  { s in signalHandler(s) }
    signal(SIGALRM)  { s in signalHandler(s) }
    signal(SIGTERM)  { s in signalHandler(s) }
    signal(SIGXCPU)  { s in signalHandler(s) }
    signal(SIGXFSZ)  { s in signalHandler(s) }
    signal(SIGPROF)  { s in signalHandler(s) }
    signal(SIGUSR2)  { s in signalHandler(s) }
    signal(SIGQUIT)  { s in signalHandler(s) }
    signal(SIGILL )  { s in signalHandler(s) }
    signal(SIGTRAP)  { s in signalHandler(s) }
    signal(SIGABRT)  { s in signalHandler(s) }
    signal(SIGIOT )  { s in signalHandler(s) }
    signal(SIGFPE )  { s in signalHandler(s) }
    signal(SIGBUS )  { s in signalHandler(s) }
    signal(SIGSEGV)  { s in signalHandler(s) }
    signal(SIGSYS )  { s in signalHandler(s) }
    signal(SIGSTOP)  { s in signalHandler(s) }
    signal(SIGTSTP)  { s in signalHandler(s) }
    signal(SIGTTIN)  { s in signalHandler(s) }
    signal(SIGTTOU)  { s in signalHandler(s) }
    signal(SIGUSR1)  { s in signalHandler(s) }
}
