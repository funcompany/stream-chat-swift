//
//  UIApplication+Rx.swift
//  StreamChatCore
//
//  Created by Alexey Bukhtin on 06/02/2020.
//  Copyright © 2020 Stream.io Inc. All rights reserved.
//

//import UIKit
import Cocoa
import StreamChatClient
import RxSwift

extension NSApplication {
    fileprivate static var rxApplicationStateKey: UInt8 = 0
}

extension Reactive where Base == NSApplication {

    /// An application state.
    public var state: Observable<State> {
        associated(to: base, key: &NSApplication.rxApplicationStateKey) {
            let center = NotificationCenter.default

            let notifications: [Observable<State>] =
                [center.rx.notification(NSApplication.willUnhideNotification).map({ _ in .inactive }),
                 center.rx.notification(NSApplication.didBecomeActiveNotification).map({ _ in .active }),
                 center.rx.notification(NSApplication.willResignActiveNotification).map({ _ in .inactive }),
                 center.rx.notification(NSApplication.didHideNotification).map({ _ in .background })]

            return Observable.merge(notifications)
                .subscribeOn(MainScheduler.instance)
                .startWith(.active)
                .share(replay: 1, scope: .forever)
        }
    }
}
