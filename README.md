# flutter_application_1

Flutter Hero Animation App:

A simple Flutter app showing hero animation with local images (Sunset, Mountain, River). Tap an image in the list to see it bigger with a smooth transition.

Features:

1. List of images with titles.
2. Hero animation for image transition.
3. Uses local images from assets/images/.

Setup:

1. Clone the repo:

git clone https://github.com/asma-a01/MobDevLab.git

2. Go to the folder:

cd MobDevLab

3. Install dependencies:

flutter pub get

How to Run:
1. Add images (img1.jpg, img2.jpg, img3.jpg) to assets/images/.

2. Update pubspec.yaml:

flutter:
  assets:
    - assets/images/

3. Run the app:

flutter run

Files:

1. lib/lab07.dart: Main app code.

2. assets/images/: Folder for images.