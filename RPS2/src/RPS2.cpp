// Default empty project template
#include "RPS2.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>


using namespace bb::cascades;

RPS2::RPS2(bb::cascades::Application *app)
: QObject(app)
{
    // create scene document from main.qml asset
    // set parent to created document to ensure it exists for the whole application lifetime
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
    qml->setContextProperty("app", this);

    // create root object for the UI
    AbstractPane *root = qml->createRootObject<AbstractPane>();
    // set created root object as a scene
    app->setScene(root);
}



int RPS2::clickedRock(int user1, int user2)
{
	int winner;

    if((user1 == 1) && (user2 == 2))
    winner=2;
    else if ((user1 == 1) && (user2 == 3))
    winner=1;
    else if ((user1 == 1) && (user2 == 1))
    winner=0;

	return (winner);

}

int RPS2::clickedPaper(int user1, int user2)
{
	int winner;

    if((user1 == 2) && (user2 == 2))
    winner=0;
    else if ((user1 == 2) && (user2 == 3))
    winner=2;
    else if ((user1 == 2) && (user2 == 1))
    winner=1;

	return (winner);

}

int RPS2::clickedScissors(int user1, int user2)
{
	int winner;

    if((user1 == 3) && (user2 == 2))
    winner=1;
    else if ((user1 == 3) && (user2 == 3))
    winner=0;
    else if ((user1 == 3) && (user2 == 1))
    winner=2;

	return (winner);

}

int RPS2::codeWinning(int record)
{
	int add1;
	add1 = record+1;
	return add1;
}


