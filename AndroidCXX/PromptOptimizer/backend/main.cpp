#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include<QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    // engine.addImportPath(QCoreApplication::applicationDirPath() + "/../frontend");
    // qDebug() << (QCoreApplication::applicationDirPath() + "/../frontend/main.qml");

    // Load the main QML file
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    // const QUrl url(QUrl::fromLocalFile(QCoreApplication::applicationDirPath() + "/../frontend/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
