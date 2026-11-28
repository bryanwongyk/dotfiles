---
version: alpha
name: Example design system
colors:
  canvas: "#F9FAFB"
  ink: "#18181B"
  muted-ink: "#52525B"
  primary: "#1D4ED8"
  on-primary: "#FFFFFF"
typography:
  body:
    fontFamily: system-ui
    fontSize: 1rem
    fontWeight: 400
    lineHeight: 1.5
components:
  page-body:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
  secondary-text:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted-ink}"
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
---

## Overview

Describe the audience, main tasks, visual character, and what should stay consistent across screens.

## Colors

Use ink for body text on canvas and muted ink for secondary text on canvas. Use on-primary for labels on primary buttons. When changing a token, check its foreground and background together.

## Typography

Specify font families, weights, sizes, and hierarchy.

## Layout

Describe spacing, content widths, and how the layout adapts on phones and larger screens.

## Motion

Describe motion where it helps communicate a change. Keep content visible and interactions understandable with reduced motion enabled.

## Components

Describe components and states needed for the main flows, including keyboard focus, loading, empty, error, and disabled states as applicable.
