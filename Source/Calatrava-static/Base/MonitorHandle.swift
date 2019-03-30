//
//  MonitorHandle.swift
//  Calatrava-static
//
//  Created by enum on 2019/3/30.
//

import Foundation
import Pjango

func monitorHandle() -> PCUrlHandle {
    return pjangoHttpResponse { req, res in
        pjangoHttpResponse("1")(req, res)
    }
}
