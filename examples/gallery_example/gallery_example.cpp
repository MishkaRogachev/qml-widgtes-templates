#include <QtGui/QGuiApplication>
#include <QQuickView>
#include <QFont>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QFont font;
    font.setFamily( "Roboto" );
    font.setWeight(25);
    app.setFont( font );
    QQuickView view;
    view.setSource(QUrl("qrc:/qml/gallery_example.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setMinimumSize(QSize(1280, 800));
    view.show();
    return app.exec();
}
