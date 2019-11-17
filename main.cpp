#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTimer>

#if defined(Q_OS_ANDROID)
#include <QAndroidService>
#include <QtAndroid>
#endif

#include "qcvimageprocessor.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

//    #if defined(Q_OS_ANDROID)
//    QAndroidService app(argc, argv);
//    #else
////    QGuiApplication app(argc, argv);
//    QGuiApplication app(argc, argv);

//    #endif


    //

    #if defined(Q_OS_ANDROID)
        QTimer::singleShot(3000,[=](){
            QtAndroid::hideSplashScreen(500);
        });
    #endif


    qmlRegisterType<QCvImageProcessor>("com.amin.classes", 1, 0, "CvImageProcessor");

    QQmlApplicationEngine qmlEngine;
    qmlEngine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
