#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "opencvimageprovider.h"
#include "videostreamer.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    VideoStreamer videoStreamer;

    OpencvImageProvider *liveImageProvider(new OpencvImageProvider);

    engine.rootContext()->setContextProperty("VideoStreamer",&videoStreamer);
    engine.rootContext()->setContextProperty("liveImageProvider",liveImageProvider);

    engine.addImageProvider("live",liveImageProvider);

    const QUrl url(u"qrc:/rtsp_con/main.qml"_qs);

    engine.load(url);

    QObject::connect(&videoStreamer,&VideoStreamer::newImage,liveImageProvider,&OpencvImageProvider::updateImage);

    return app.exec();
}
