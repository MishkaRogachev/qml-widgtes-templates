#include <QtGui/QGuiApplication>
#include <QQuickView>
#include <QFont>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QFont font;
    font.setFamily( "Roboto Condensed" );
    font.setWeight(25);
    app.setFont( font );
    QQuickView view;
    view.setSource( QUrl( "qrc:/qml/gallery_example.qml" ) );
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setMinimumSize(QSize(1024, 768));
    view.show();
    return app.exec();
}
