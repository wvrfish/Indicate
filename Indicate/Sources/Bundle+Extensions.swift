//
//  Bundle+Extensions.swift
//  Indicate
//
//  Created by Jan Krukowski on 2021-09-29.
//  Copyright © 2021 Philip Kluz. All rights reserved.
//

#if os(iOS)
import UIKit

extension Bundle {
    internal static var indicate: Bundle = {
        let podBundle = Bundle(for: Indicate.View.self)
        guard let url = podBundle.url(forResource: "Indicate", withExtension: "bundle"), let bundle = Bundle(url: url) else {
            return podBundle
        }
        return bundle
    }()
}

#endif
