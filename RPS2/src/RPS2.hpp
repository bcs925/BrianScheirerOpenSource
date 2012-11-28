// Default empty project template
#ifndef RPS2_HPP_
#define RPS2_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class RPS2 : public QObject
{
    Q_OBJECT
public:
    RPS2(bb::cascades::Application *app);

    Q_INVOKABLE int clickedRock(int user1, int user2);
    Q_INVOKABLE int clickedPaper(int user1, int user2);
    Q_INVOKABLE int clickedScissors(int user1, int user2);
    Q_INVOKABLE int codeWinning(int record);


};


#endif /* RPS2_HPP_ */
