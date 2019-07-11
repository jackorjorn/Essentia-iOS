//
//  AppPresentaionAdapter.swift
//  EssCore
//
//  Created by user on 7/11/19.
//  Copyright © 2019 Pavlo Boiko. All rights reserved.
//

import Foundation
import UIKit
import EssDI

public class AppPresentaionAdapter: AppStateEventHandler {
    var blurEffectView: UIVisualEffectView?
    
    private lazy var eventProxy: AppStateEventProxyInterface = inject()
    private lazy var window = UIApplication.shared.keyWindow
    
    public init() {
        eventProxy.add(subscriber: self, for : [.willResignActive, .didBecomeActive])
    }
    
    public func receive(event: AppStates) {
        switch event {
        case .willResignActive:
            blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            blurEffectView?.frame = UIScreen.main.bounds
            window?.addSubview(blurEffectView ?? UIVisualEffectView())
        case .didBecomeActive:
            blurEffectView?.removeFromSuperview()
        default:
            break
        }
    }
}

