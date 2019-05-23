//
// Copyright (c) ZeroC, Inc. All rights reserved.
//

import Ice
import Foundation

func run() -> Int32 {
    do {
        let communicator = try Ice.initialize(CommandLine.arguments)
        defer {
            communicator.destroy()
        }

        guard let obj = try communicator.stringToProxy("SimplePrinter:default -h localhost -p 10000") else {
            print("Invalid proxy")
            return 1
        }
        guard let printer = try checkedCast(prx: obj, type: PrinterPrx.self) else {
            print("Invalid proxy")
            return 1
        }

        try printer.printString("Hello World!")
        return 0
    } catch {
        print("Error: \(error)")
        return 1
    }
}

exit(run())
