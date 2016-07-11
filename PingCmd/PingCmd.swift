//
//  PingCmd.swift
//  PingCmd
//
//  Created by hnw on 2016/07/07.
//  Copyright © 2016年 hnw. All rights reserved.
//

import Foundation
import UnixyCmd

public class PingCmd: UnixyCmd {
    override public func spawn_cmd(thread: UnsafeMutablePointer<pthread_t>, _ thread_arg: VoidPtrArray) -> () {
        pthread_create(thread, nil, {_arg in
            let arg = unsafeBitCast(_arg, VoidPtrArray.self)
            let argc = Int32(unsafeBitCast(arg[0], Int.self))
            let argv = unsafeBitCast(arg[1], CharPtrArray.self)
            let retval = unsafeBitCast(Int(ping_main(argc, argv)), VoidPtr.self)
            close(STDOUT_FILENO)
            close(STDERR_FILENO)
            return retval
            }, unsafeBitCast(thread_arg, VoidPtr.self))
    }
}
