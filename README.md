# Eye Gaze Tracking with ARKit and ARFaceAnchor

This project demonstrates eye gaze tracking on a mobile screen using the front camera and ARKit's ARFaceAnchor feature. By utilizing ARFaceAnchor and the lookAtPoint property, we can accurately determine the user's eye gaze direction on their device's screen.

[![Eye Tracking Demo Will be added soon](eye-tracking.png)](demo-video-link)

## Prerequisites

* Xcode 12 or later
* iOS device with TrueDepth camera support (iPhone X or newer)

## Logic Explanation

Code utilizes the face anchor and camera transformations to convert the user's gaze direction from the local coordinate space to the world coordinate system. Then, by applying the inverse of the camera transformation, the gaze direction is mapped onto the screen plane. The resulting coordinates are scaled and clamped to obtain the focus point, indicating where the user is looking on their mobile screen.

## Acknowledgements

* [eye-tracking-ios-prototype](https://github.com/virakri/eye-tracking-ios-prototype) by [virakri](https://github.com/virakri) for the calculation of screenX and screenY.


## Contact

For any inquiries or suggestions, please feel free to reach out to [Shiru99](https://www.linkedin.com/in/shriram-ghadge)