// Tabbed pane project template
#ifndef TabTesting3_HPP_
#define TabTesting3_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class TabTesting3 : public QObject
{
    Q_OBJECT
public:
    TabTesting3(bb::cascades::Application *app);
    ~TabTesting3();


    Q_INVOKABLE
    QString getValueFor(const QString &objectName, const QString &defaultValue);


    Q_INVOKABLE
    void saveValueFor(const QString &objectName, const QString &inputValue);

};

#endif /* TabTesting3_HPP_ */
