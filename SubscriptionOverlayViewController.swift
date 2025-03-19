//
//  SubscriptionOverlayViewController.swift
//  GolfPro
//
//  Created by Serdar Senol on 19/03/2025.
//  Copyright © 2025 Trackman. All rights reserved.
//

import Foundation
import K2
import UIKit
import SwiftUI
import GolfProFoundation

class SubscriptionOverlayViewController: UIViewController {
    var supportFormView: UIView!
    var subscriptionOverlayModule: SubscriptionOverlayModule!

    override func viewDidLoad() {
        super.viewDidLoad()

        var viewForPresenting = NEventModeModule.getOnboardingView()
        viewForPresenting.backgroundColor = .clear
        subscriptionOverlayModule = SubscriptionOverlayModule(viewToPresent: viewForPresenting)
        supportFormView = subscriptionOverlayModule.view

        supportFormView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(supportFormView)
        NSLayoutConstraint.activate([
            supportFormView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            supportFormView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            supportFormView.topAnchor.constraint(equalTo: view.topAnchor),
            supportFormView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

    }
}

#Preview {
    SendToSupportViewController()
}



// MARK: - SwiftUI wrapper
struct SubscriptionOverlayView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> SubscriptionOverlayViewController {
        SubscriptionOverlayViewController()
    }

    func updateUIViewController(_ uiViewController: SubscriptionOverlayViewController, context: Context) {
        // Not needed
    }

}
