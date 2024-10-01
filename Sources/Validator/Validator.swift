//
//  Validator.swift
//  Validator
//
//  Created by Paulo Correa on 29/09/2024.
//

import Foundation

public struct PlaceLocationValidator {
    public static func isValidLatitude(_ latitudeInput: String) -> Bool {
        let latitudeRegex = #"^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?)$"#
        let latitudePredicate = NSPredicate(format: "SELF MATCHES %@", latitudeRegex)
        return latitudePredicate.evaluate(with: latitudeInput)
    }

    public static func isValidLongitude(_ longitudeInput: String) -> Bool {
        let longitudeRegex = #"^[-+]?((180(\.0+)?)|((\d{1,2}|1[0-7]\d)(\.\d+)?))$"#
        let longitudePredicate = NSPredicate(format: "SELF MATCHES %@", longitudeRegex)
        return longitudePredicate.evaluate(with: longitudeInput)
    }
}
