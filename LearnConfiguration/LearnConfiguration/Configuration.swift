//
//  Configuration.swift
//  LearnConfiguration
//
//  Created by yiqiwang(王一棋) on 2017/9/4.
//  Copyright © 2017年 melody5417. All rights reserved.
//

/**
 https://cocoacasts.com/switching-environments-with-configurations/
 */

import Foundation
import UIKit

enum Environment: String {
    case DailyBuild = "DailyBuild"
    case Debug = "Debug"
    case Release = "Release"

    var baseURL: String {
        switch self {
        case .Debug: return "debug:https://v.qq.com"
        case .DailyBuild: return "db:https://v.qq.com"
        case .Release: return "release:https://v.qq.com"
        }
    }

    var token: String {
        switch self {
        case .Debug: return "debug:FEWJPFJ23T4NO4390NO"
        case .DailyBuild: return "db:FWEJPOUPGE238038R023"
        case .Release: return "release:R2UR03U2FIFFJEOUNNGW"
        }
    }
}

struct Configuration {
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            switch configuration {
            case Environment.DailyBuild.rawValue: return Environment.DailyBuild
            case Environment.Debug.rawValue: return Environment.Debug
            default: return Environment.Release
            }
        }

        return Environment.Release
    }()
}
