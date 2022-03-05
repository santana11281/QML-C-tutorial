#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QLocale>
#include <QTranslator>
#include <QQmlContext>
#include "someclass.h"



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    QTranslator translator;
    const QStringList uiLanguages = QLocale::system().uiLanguages();
    for (const QString &locale : uiLanguages) {
        const QString baseName = "tutorial02_" + QLocale(locale).name();
        if (translator.load(":/i18n/" + baseName)) {
            app.installTranslator(&translator);
            break;
        }
    }

 //   SomeClass testClass;


    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/tutorial02/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

//    QQmlContext *rootContext = engine.rootContext();
      //  rootContext -> setContextProperty("classA",&testClass);

    return app.exec();
}
