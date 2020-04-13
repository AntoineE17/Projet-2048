#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "grille.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    grid agrille;
    engine.rootContext()->setContextProperty("grilleQML", &agrille);

    const QUrl mainQml(QStringLiteral("qrc:/main.qml"));
    engine.load(mainQml);

    return app.exec();
}
