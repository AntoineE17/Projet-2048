#ifndef GRILLE_H
#define GRILLE_H
#include <QList>
#include <QObject>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <QString>
using namespace std;

class grid : public QObject
{
    Q_OBJECT
public:
    explicit grid(QObject *parent = nullptr);    
    void setTab(int pos, int val);
    void resetTab();
    void resetGame();
    void generateNewTile();
    int generateRandom(int n);
    void setScore(int val);
    int getScore();
    void resetScore();
    void setRecord(int val);
    int getRecord();
    void resetRecord();
    void moveUp();
    void slideUp();
    void mergeUp();
    void moveDown();
    void slideDown();
    void mergeDown();
    void moveLeft();
    void slideLeft();
    void mergeLeft();
    void moveRight();
    void slideRight();
    void mergeRight();
    QString colorChoice(QString a);
    bool testBlocked(int x, int y);
    void testGameOver();

/*
    Q_INVOKABLE void boutonhaut();
    Q_INVOKABLE void boutonbas();
    Q_INVOKABLE void boutongauche();
    Q_INVOKABLE void boutondroite();
    Q_INVOKABLE void resetgrille();
*/
/*
    void printTab();
*/
/*
    Q_PROPERTY(int scoreQML READ readScore WRITE changeScore NOTIFY scoreChanged);
    Q_PROPERTY(int bestScoreQML READ readBestScore NOTIFY bestScoreChanged);
    Q_PROPERTY(bool gameOverQML READ readGameOver NOTIFY gameOverChanged);
    Q_PROPERTY(QList<QString> casesQML READ readCases NOTIFY casesChanged);
*/

private:
    int score;
    int record;
    QList<int> tab;
    bool gameOver;
    bool updated;

};

#endif // GRILLE_H
