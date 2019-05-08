// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Modeled after Android's ViewConfiguration:
// https://github.com/android/platform_frameworks_base/blob/master/core/java/android/view/ViewConfiguration.java

/// The time that must elapse before a tap gesture sends onTapDown, if there's
/// any doubt that the gesture is a tap.
const Duration kPressTimeout = const Duration(milliseconds: 100);

/// The time before a long press gesture attempts to win.
const Duration kLongPressTimeout = const Duration(milliseconds: 500);

/// The maximum time from the start of the first tap to the start of the second
/// tap in a double-tap gesture.
const Duration kDoubleTapTimeout = const Duration(milliseconds: 300);

/// The maximum distance that the first touch in a double-tap gesture can travel
/// before deciding that it is not part of a double-tap gesture.
/// DoubleTapGestureRecognizer also restricts the second touch to this distance.
const double kDoubleTapTouchSlop = kTouchSlop; // Logical pixels

/// Distance between the initial position of the first touch and the start
/// position of a potential second touch for the second touch to be considered
/// the second touch of a double-tap gesture.
const double kDoubleTapSlop = 100.0; // Logical pixels

/// The time for which zoom controls (e.g. in a map interface) are to be
/// displayed on the screen, from the moment they were last requested.
const Duration kZoomControlsTimeout = const Duration(milliseconds: 3000);

/// The distance a touch has to travel for the framework to be confident that
/// the gesture is a scroll gesture, or, inversely, the maximum distance that a
/// touch can travel before the framework becomes confident that it is not a
/// tap.
// This value was empirically derived. We started at 8.0 and increased it to
// 18.0 after getting complaints that it was too difficult to hit targets.
const double kTouchSlop = 18.0; // Logical pixels

/// The distance a touch has to travel for the framework to be confident that
/// the gesture is a paging gesture. (Currently not used, because paging uses a
/// regular drag gesture, which uses kTouchSlop.)
const double kPagingTouchSlop = kTouchSlop * 2.0; // Logical pixels

/// The distance a touch has to travel for the framework to be confident that
/// the gesture is a panning gesture.
const double kPanSlop = kTouchSlop * 2.0; // Logical pixels

/// The distance a touch has to travel for the framework to be confident that
/// the gesture is a scale gesture.
const double kScaleSlop = kTouchSlop; // Logical pixels

/// The minimum velocity for a touch to consider that touch to trigger a fling
/// gesture.
const double kMinFlingVelocity = 50.0; // Logical pixels / second
// const Velocity kMinFlingVelocity = const Velocity(pixelsPerSecond: 50.0);

/// Drag gesture fling velocities are clipped to this value.
const double kMaxFlingVelocity = 8000.0; // Logical pixels / second
