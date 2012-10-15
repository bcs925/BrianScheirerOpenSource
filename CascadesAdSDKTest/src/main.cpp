// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/advertisement/Banner>

#include <QLocale>
#include <QTranslator>
#include "CascadesAdSDKTest.hpp"

using namespace bb::cascades;

int main(int argc, char **argv)
{
    // this is where the server is started etc
	qmlRegisterType<bb::cascades::advertisement::Banner>("bb.cascades.advertisement", 1, 0, "Banner");
    Application app(argc, argv);

    // localization support
    QTranslator translator;
    QString locale_string = QLocale().name();
    QString filename = QString( "CascadesAdSDKTest_%1" ).arg( locale_string );
    if (translator.load(filename, "app/native/qm")) {
        app.installTranslator( &translator );
    }

    new CascadesAdSDKTest(&app);


    // we complete the transaction started in the app constructor and start the client event loop here
    return Application::exec();
    // when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}
