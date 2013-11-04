#include <QtGui/QGuiApplication>
#include <QQuickView>
#include <QFont>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QFont font;
    font.setFamily( "Roboto" );
    app.setFont( font );
    QQuickView view;
    view.setSource( QUrl( "qrc:/qml/basic_widgets_example.qml" ) );
    view.show();
    return app.exec();
}
