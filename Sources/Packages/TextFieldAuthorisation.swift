// TextFieldAuthorisation.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// AutorizationTextFields
public class AutorizationTextFields: UITextField {
    public struct Model {
        public var placeholder: String?
        public init(placeholder: String?) {
            self.placeholder = placeholder
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupField()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupField()
    }

    private func setupField() {
        backgroundColor = .white
        layer.borderWidth = 1
        layer.cornerRadius = 12
        leftViewMode = .always
    }

    public func models(model: Model) {
        placeholder = model.placeholder
    }
}
