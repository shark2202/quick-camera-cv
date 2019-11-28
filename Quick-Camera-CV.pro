QT += qml quick quickcontrols2

QT += multimedia

android:{
    QT += androidextras
    QMAKE_LINK += -nostdlib++
}

#QMAKE_HOST
message($$QMAKE_HOST.os)

CONFIG += c++11

HEADERS += \
    qcvimageprocessor.h


SOURCES += main.cpp \
    qcvimageprocessor.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32: {
    #include(d:/opencv/opencv.3.2.0.x86.mingw.pri)
    #include(d:/opencv/opencv.3.2.0.x64.tbb.vc14.pri)
    RC_ICONS = icon.ico
}


ios: {
    message("ios")
    QMAKE_INFO_PLIST += ios/Info.plist

    OBJECTIVE_SOURCES += ios/ocview.mm


    #QMAKE_LFLAGS    += -framework OpenGLES
    #QMAKE_LFLAGS    += -framework GLKit
    #QMAKE_LFLAGS    += -framework QuartzCore
    #QMAKE_LFLAGS    += -framework CoreVideo
    #QMAKE_LFLAGS    += -framework CoreAudio
    #QMAKE_LFLAGS    += -framework CoreImage
    #QMAKE_LFLAGS    += -framework CoreMedia
    #QMAKE_LFLAGS    += -framework AVFoundation
    #QMAKE_LFLAGS    += -framework AudioToolbox
    #QMAKE_LFLAGS    += -framework CoreGraphics
    #QMAKE_LFLAGS    += -framework UIKit



    IOS_OPENCV = "/Users/will/qt_codes"

#INCLUDEPATH += \
#$$IOS_OPENCV/Headers/opencv2 \
#$$IOS_OPENCV/Headers


    iphonesimulator {

      #message("iphonesimulator")

      #LIBS += -F $$IOS_OPENCV -framework opencv2

    }

    iphoneos{

      message("iphoneos")

      LIBS += -F  $$IOS_OPENCV -framework opencv2

    }

}

#ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-sources
linux: android: {
    #include(d:/opencv/opencv.3.2.0.android.armeabi-v7a.pri)
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
}

android: {
    #message(contains(QMAKE_HOST.os,Linux))

    contains(QMAKE_HOST.os,Linux):{

        ANDROID_OPENCV_LINUX = /home/z/cpp/opencv4/OpenCV-android-sdk/sdk/native

        exists($$ANDROID_OPENCV_LINUX):{
            ANDROID_OPENCV = $$ANDROID_OPENCV_LINUX
            message( "Configuring for ANDROID_OPENCV_LINUX" )
        }
    }

    contains(QMAKE_HOST.os,"windows"):{
        ANDROID_OPENCV_WINDOWS = F:/opencv4/OpenCV-android-sdk/sdk/native

        exists($$ANDROID_OPENCV_WINDOWS):{
            ANDROID_OPENCV = $$ANDROID_OPENCV_WINDOWS
            message( "Configuring for ANDROID_OPENCV_WINDOWS" )
        }
    }


    INCLUDEPATH += \
    $$ANDROID_OPENCV/jni/include/opencv2 \
    $$ANDROID_OPENCV/jni/include \


    LIBS += \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_ml.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_objdetect.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_calib3d.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_video.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_features2d.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_highgui.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_flann.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_imgproc.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_dnn.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_imgcodecs.a \
    $$ANDROID_OPENCV/staticlibs/armeabi-v7a/libopencv_core.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libcpufeatures.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libIlmImf.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibjasper.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibjpeg-turbo.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibpng.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibprotobuf.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibtiff.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/liblibwebp.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libquirc.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libtbb.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libtegra_hal.a \
    $$ANDROID_OPENCV/3rdparty/libs/armeabi-v7a/libittnotify.a \
    $$ANDROID_OPENCV/libs/armeabi-v7a/libopencv_java4.so

}

unix: macx: {
    ICON =
    #INCLUDEPATH += /usr/local/include
    #LIBS += -L/usr/local/lib \
    #    -lopencv_world
}

win32:{
    OPENCV_HEADER_SRC=C:/opencv/build/install
    OPENCV_LIB_SRC=C:/opencv/build/install/x64/mingw/lib

    ##
    INCLUDEPATH += $$OPENCV_HEADER_SRC/include \
                   $$OPENCV_HEADER_SRC/include/opencv2

    ##
    LIBS += $$OPENCV_LIB_SRC/libopencv_highgui410.dll.a \
            $$OPENCV_LIB_SRC/libopencv_core410.dll.a    \
            $$OPENCV_LIB_SRC/libopencv_imgproc410.dll.a \
            $$OPENCV_LIB_SRC/libopencv_imgcodecs410.dll.a

}


unix: !android : !macx:{
    #
    INCLUDEPATH += /usr/local/include \
                   /usr/local/include/opencv4

    #
    LIBS += /usr/local/lib/libopencv_highgui.so \
            /usr/local/lib/libopencv_core.so    \
            /usr/local/lib/libopencv_imgproc.so \
            /usr/local/lib/libopencv_imgcodecs.so
}

ios:{
    HEADERS += \
        ios\ocview.h

    SOURCES += \
        ios\ocview.mm
}

android: {
    DISTFILES += \
        android/AndroidManifest.xml \
        android/src/com/amin/classes/MainQtActivity.java
}

VERSION = 1.1

QMAKE_TARGET_COMPANY = "http://amin-ahmadi.com"
QMAKE_TARGET_DESCRIPTION = "This application helps you take a picture, apply Computer Vision algorithms and save it."
QMAKE_TARGET_PRODUCT = "Quick-Camera-CV"

DEFINES += APP_VERSION=\\\"$$VERSION\\\"

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_EXTRA_LIBS = \
        $$ANDROID_OPENCV/libs/armeabi-v7a/libopencv_java4.so
}

ios:{
    DISTFILES += \
        ios/Info.plist
}

