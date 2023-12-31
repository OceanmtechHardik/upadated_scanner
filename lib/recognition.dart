import 'package:flutter/cupertino.dart';

/// Represents the recognition output from the model
class Recognition {
  /// Index of the result
  final int _id;

  /// Confidence [0.0, 1.0]
  final double _score;

    /// Label of the result
  final String _label;

  /// Location of bounding box rect
  ///
  /// The rectangle corresponds to the raw input image
  /// passed for inference
  final Rect _location;

  Recognition(this._id, this._score, this._location ,this._label);

  int get id => _id;

    String get label => _label;

  double get score => _score;

  Rect get location => _location;

  /// Returns bounding box rectangle corresponding to the
  /// displayed image on screen
  ///
  /// This is the actual location where rectangle is rendered on
  /// the screen

  @override
  String toString() {
    return 'Recognition(id: $id, score: $score, location: $location, label: $label)';
  }
}
