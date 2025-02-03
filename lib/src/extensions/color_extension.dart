import 'dart:ui';

extension ColorExtension on Color {
  // Vraća alpha vrijednost između 0.0 i 1.0
  double get aValue => alpha / 255.0;
  int get rValue => red;
  int get gValue => green;
  int get bValue => blue;

  // Zamijenite withValues metodom koja radi slično
  Color withValues({double? alpha}) {
    return Color.fromARGB(
      alpha != null ? (alpha * 255).round() : this.alpha,
      red,
      green,
      blue,
    );
  }
}
