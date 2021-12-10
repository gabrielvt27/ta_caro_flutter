import 'package:tacaro/shared/theme/app_colors.dart';
import 'package:tacaro/shared/theme/text_styles.dart';

export 'app_text.dart';

class AppTheme {
  // Singleton
  static final AppTheme instance = AppTheme();

  final _colors = AppColors();
  final _textStyles = AppTextStyles();

  // static para reduzir a chamada da função get
  // Ex:
  //    sem static: AppTheme.instance.colors;
  //    com static: AppTheme.colors;
  static AppColors get colors => instance._colors;
  static AppTextStyles get textStyles => instance._textStyles;
}
