import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuRadio<T> extends StatelessWidget
    with NikuBuildMacro<NikuRadio>, FocusNodeMacro {
  NikuRadio(
    this.value, {
    this.key,
    this.groupValue,
    this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.fillColorState,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusColor,
    this.hoverColor,
    this.overlayColorState,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
    Color? fillColor,
    Color? overlayColor,
  }) : super(key: key) {
    if (fillColor != null) fillColorState = NikuState.all(fillColor);
    if (overlayColor != null) overlayColorState = NikuState.all(fillColor);
  }

  Key? key;
  T value;
  T? groupValue;
  ValueChanged<T?>? onChanged;
  MouseCursor? mouseCursor;
  bool? toggleable;
  Color? activeColor;
  NikuState<Color?>? fillColorState;
  MaterialTapTargetSize? materialTapTargetSize;
  VisualDensity? visualDensity;
  Color? focusColor;
  Color? hoverColor;
  NikuState<Color?>? overlayColorState;
  double? splashRadius;
  FocusNode? focusNode;
  bool? autofocus;

  set fillColor(Color color) => fillColorState = NikuState.all(color);
  set overlayColor(Color color) => overlayColorState = NikuState.all(color);

  void useFillColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      fillColorState = NikuState(
        all: all ?? fillColorState?.all,
        disabled: disabled ?? fillColorState?.disabled,
        dragged: dragged ?? fillColorState?.dragged,
        error: error ?? fillColorState?.error,
        focused: focused ?? fillColorState?.focused,
        hovered: hovered ?? fillColorState?.hovered,
        pressed: pressed ?? fillColorState?.pressed,
        scrolledUnder: scrolledUnder ?? fillColorState?.scrolledUnder,
        selected: selected ?? fillColorState?.selected,
        base: base ?? fillColorState?.base,
      );

  void useOverlayColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      overlayColorState = NikuState(
        all: all ?? fillColorState?.all,
        disabled: disabled ?? fillColorState?.disabled,
        dragged: dragged ?? fillColorState?.dragged,
        error: error ?? fillColorState?.error,
        focused: focused ?? fillColorState?.focused,
        hovered: hovered ?? fillColorState?.hovered,
        pressed: pressed ?? fillColorState?.pressed,
        scrolledUnder: scrolledUnder ?? fillColorState?.scrolledUnder,
        selected: selected ?? fillColorState?.selected,
        base: base ?? fillColorState?.base,
      );

  NikuRadio get self => this;

  set apply(NikuRadio? v) {
    if (v == null) return;

    value = v.value ?? value;
    groupValue = v.groupValue ?? groupValue;
    onChanged = v.onChanged ?? onChanged;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    toggleable = v.toggleable ?? toggleable;
    activeColor = v.activeColor ?? activeColor;
    fillColorState = v.fillColorState ?? fillColorState;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    visualDensity = v.visualDensity ?? visualDensity;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    overlayColorState = v.overlayColorState ?? overlayColorState;
    splashRadius = v.splashRadius ?? splashRadius;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;

    $parent..$merge(v.$parent);
  }

  NikuRadio get copied => NikuRadio<T>(
        value,
        key: key,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable,
        activeColor: activeColor,
        fillColorState: fillColorState,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColorState: overlayColorState,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
      )..$parent.$merge($parent);

  widget(context) => Radio<T>(
        key: key,
        value: value!,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        fillColor: fillColorState?.value,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColorState?.value,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
      );
}
