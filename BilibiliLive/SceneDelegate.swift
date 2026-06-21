//
//  SceneDelegate.swift
//  BilibiliLive
//
//  Created by Regulus on 2026/6/21.
//

import AVFoundation
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = AppDelegate.shared.makeRootViewController()
        self.window = window
        AppDelegate.shared.window = window
        window.makeKeyAndVisible()
        WebRequest.requestIndex()
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .moviePlayback)
    }
}
