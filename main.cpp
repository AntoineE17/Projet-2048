#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "grille.h"

/*
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
*/

/*
 * int main()
{
    grid T;
    T.printTab();
    T.setTab(0, 2);
    T.setTab(1, 2);
    T.setTab(2, 2);
    T.setTab(4, 2);
    T.setTab(5, 2);
    T.setTab(8, 2);
    T.printTab();
    T.moveUp();
    T.printTab();
    T.moveRight();
    T.printTab();
    T.moveDown();
    T.printTab();
    T.moveLeft();
    T.printTab();
    return 0;
}
*/
