# ✨ Gradient Radio Button

A highly customizable radio button widget for Flutter with support for **gradients, custom colors,
and dynamic sizing**.

## Features

- 🎨 Customizable colors and gradients
- 📏 Adjustable size and padding
- 🔘 Toggle between active/inactive states
- 🖌️ Solid colors or gradient fills
- 🏗️ Simple and intuitive API

## Installation

Add this to your `pubspec.yaml`:

``` yaml
dependencies:
gradient_radio_button: ^1.1.0
```

## Usage

```` dart
import 'package:gradient_radio_button/gradient_radio_button.dart';

GradientRadioButton(
  isActive: true,
  size: 25,
  borderColor: Colors.black,
  activeColor: Colors.white,
  activeGradient: const LinearGradient(colors: [AppColors.black, AppColors.white]),
  borderGradient: const LinearGradient(colors: [Colors.black, Colors.white]),
)
````




