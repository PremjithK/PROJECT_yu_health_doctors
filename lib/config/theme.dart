import 'package:flutter/material.dart';
import 'package:yu_health_doctors/config/text_sizes.dart';

//! Custom Fonts
const String primaryFont = 'Wix';
const String secondaryFont = 'RedHat';
const String monospacedFont = 'OxygenMono';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF00696B),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF6FF6F8),
  onPrimaryContainer: Color(0xFF002020),
  secondary: Color(0xFF006B5D),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF74F8DF),
  onSecondaryContainer: Color(0xFF00201B),
  tertiary: Color(0xFF006C52),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF82F8CF),
  onTertiaryContainer: Color(0xFF002117),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFAFDFC),
  onBackground: Color(0xFF191C1C),
  surface: Color(0xFFFAFDFC),
  onSurface: Color(0xFF191C1C),
  surfaceVariant: Color(0xFFDAE5E4),
  onSurfaceVariant: Color(0xFF3F4948),
  outline: Color(0xFF6F7979),
  onInverseSurface: Color(0xFFEFF1F0),
  inverseSurface: Color(0xFF2D3131),
  inversePrimary: Color(0xFF4CDADC),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF00696B),
  outlineVariant: Color(0xFFBEC8C8),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF4CDADC),
  onPrimary: Color(0xFF003737),
  primaryContainer: Color(0xFF004F50),
  onPrimaryContainer: Color(0xFF6FF6F8),
  secondary: Color(0xFF53DBC4),
  onSecondary: Color(0xFF00382F),
  secondaryContainer: Color(0xFF005045),
  onSecondaryContainer: Color(0xFF74F8DF),
  tertiary: Color(0xFF64DBB4),
  onTertiary: Color(0xFF003829),
  tertiaryContainer: Color(0xFF00513D),
  onTertiaryContainer: Color(0xFF82F8CF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF191C1C),
  onBackground: Color(0xFFE0E3E2),
  surface: Color(0xFF191C1C),
  onSurface: Color(0xFFE0E3E2),
  surfaceVariant: Color(0xFF3F4948),
  onSurfaceVariant: Color(0xFFBEC8C8),
  outline: Color(0xFF899392),
  onInverseSurface: Color(0xFF191C1C),
  inverseSurface: Color(0xFFE0E3E2),
  inversePrimary: Color(0xFF00696B),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4CDADC),
  outlineVariant: Color(0xFF3F4948),
  scrim: Color(0xFF000000),
);

// Text Theme
const myTextTheme = TextTheme(
  labelMedium: TextStyle(
    fontSize: 12,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    fontFamily: primaryFont,
  ),
);

TooltipThemeData tooltipTheme = TooltipThemeData(
  decoration: BoxDecoration(
    color: Colors.grey.shade800,
    borderRadius: BorderRadius.circular(15),
  ),
  textStyle: const TextStyle(
    color: Colors.white,
    fontFamily: primaryFont,
  ),
);

AppBarTheme yuAppBarTheme = AppBarTheme(
  titleTextStyle: TextStyle(
    fontFamily: primaryFont,
    fontSize: TextSizes.h4,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  ),
  actionsIconTheme: const IconThemeData(
    size: 25,
    weight: 800,
  ),
  iconTheme: const IconThemeData(
    size: 25,
    weight: 800,
  ),
  titleSpacing: 10,
);


InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
  prefixIconColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.focused)) {
      return lightColorScheme.primary;
    } else if (states.contains(MaterialState.error))
      return lightColorScheme.error;
    else
      return lightColorScheme.onBackground.withOpacity(0.5);
  }),
);
InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
  prefixIconColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.focused)) {
      return darkColorScheme.primary;
    } else if (states.contains(MaterialState.error))
      return darkColorScheme.error;
    else
      return darkColorScheme.onBackground.withOpacity(0.5);
  }),
);

//& Theme Data variables
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: yuAppBarTheme,
  colorScheme: darkColorScheme,
  textTheme: myTextTheme,
  tooltipTheme: tooltipTheme,
  inputDecorationTheme: inputDecorationThemeLight,
);
ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: yuAppBarTheme,
  colorScheme: lightColorScheme,
  textTheme: myTextTheme,
  tooltipTheme: tooltipTheme,
  inputDecorationTheme: inputDecorationThemeLight,
);
