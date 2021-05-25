library metro_button;

import 'package:flutter/material.dart';

/// Class used to generate the command button
class CommandButton extends StatelessWidget {
  /// Widget for title
  final Widget? title;

  /// Widget for subtitle
  final Widget? subtitle;

  /// String for tooltip
  final String? tooltip;

  /// Function to handle on tap
  final Function()? onTap;

  /// Function to handle on long tap
  final Function()? onLongTap;

  /// Boolean to disabled the button
  final bool? disabled;

  /// Boolean value to indicate when icon is used as leading or trailing
  final bool? reverse;

  /// Double value to indicate button width
  final double? width;

  /// Double value to indicate button height
  final double? height;

  /// Double value to indicate elevation
  final double? elevation;

  /// Color to indicate button background color
  final Color? backgroundColor;

  /// Color to indicate button border color
  final Color? borderColor;

  /// Double value to indicate button corner radius
  final double? radius;

  /// Widget for icon
  final Widget? icon;

  const CommandButton(
      {Key? key,
      @required this.title,
      @required this.onTap,
      this.onLongTap,
      this.tooltip,
      this.subtitle,
      this.disabled = false,
      this.width,
      this.height,
      this.elevation = 0,
      this.reverse = false,
      this.backgroundColor,
      this.borderColor,
      this.radius = 5.0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? _baseColor =
        disabled! ? Colors.grey[300] : borderColor ?? Colors.grey;
    return SizedBox(
      width: this.width ?? MediaQuery.of(context).size.width * 0.9,
      child: ButtonTheme(
        height: this.height ?? 80.0,
        child: ElevatedButton(
            child: Tooltip(
                message: this.tooltip ?? '',
                child: this.reverse!
                    ? ListTile(
                        title: this.title,
                        subtitle: this.subtitle,
                        trailing: this.icon,
                      )
                    : ListTile(
                        title: this.title,
                        subtitle: this.subtitle,
                        leading: this.icon,
                      )),
            onPressed: disabled! ? null : this.onTap,
            onLongPress: this.onLongTap,
            style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: _baseColor!)),
                elevation: MaterialStateProperty.all<double>(this.elevation!),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius ?? 0)),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(_baseColor),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(8.0)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.grey[50]!))),
      ),
    );
  }
}

/// Class used to generate the shortcut button
class ShortcutButton extends StatelessWidget {
  /// Widget for title
  final Widget? title;

  /// Widget for badge
  final Widget? badge;

  /// String for tooltip
  final String? tooltip;

  /// Function to handle on tap
  final Function()? onTap;

  /// Function to handle on long tap
  final Function()? onLongTap;

  /// Boolean to disabled the button
  final bool? disabled;

  /// Double value to indicate button width and height
  final double? size;

  /// Double value to indicate elevation
  final double? elevation;

  /// Color to indicate button background color
  final Color? backgroundColor;

  /// Color to indicate button border color
  final Color? borderColor;

  /// Double value to indicate button corner radius
  final double? radius;

  /// Widget for icon
  final Widget? icon;

  const ShortcutButton(
      {Key? key,
      @required this.title,
      @required this.onTap,
      this.onLongTap,
      this.badge,
      this.tooltip,
      this.disabled = false,
      this.size,
      this.elevation = 0,
      this.backgroundColor,
      this.borderColor,
      this.radius = 5.0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? _baseColor =
        disabled! ? Colors.grey[300] : borderColor ?? Colors.grey;
    Color? _backgroundColor =
        disabled! ? Colors.grey[300] : backgroundColor ?? Colors.grey;
    return SizedBox(
      width: this.size ?? 150,
      height: this.size ?? 150,
      child: ElevatedButton(
          child: Tooltip(
              message: this.tooltip ?? '',
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [this.icon!, this.title!],
                    ),
                  ),
                  Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: this.badge != null
                          ? Container(
                              padding: EdgeInsets.all(1.0),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(3)),
                              child: this.badge,
                            )
                          : Container()),
                ],
              )),
          onPressed: disabled! ? null : this.onTap,
          onLongPress: this.onLongTap,
          style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: _baseColor!)),
              elevation: MaterialStateProperty.all<double>(this.elevation!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius ?? 0)),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(_backgroundColor!),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(8.0)),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.grey[50]!))),
    );
  }
}
