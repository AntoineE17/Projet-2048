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
    Q_INVOKABLE void resetGame();
    void generateNewTile();
    int generateRandom(int n);
    void setScore(int val);
    int getScore();
    void resetScore();
    void setRecord(int val);
    int getRecord();
    void resetRecord();
    Q_INVOKABLE void moveUp();
    void slideUp();
    void mergeUp();
    Q_INVOKABLE void moveDown();
    void slideDown();
    void mergeDown();
    Q_INVOKABLE void moveLeft();
    void slideLeft();
    void mergeLeft();
    Q_INVOKABLE void moveRight();
    void slideRight();
    void mergeRight();
    QString colorChoice(QString a);
    bool testBlocked(int x, int y);
    void testGameOver();
/*
    Q_PROPERTY(int scoreQML READ getScore WRITE changeScore NOTIFY scoreChanged);
    Q_PROPERTY(int bestScoreQML READ getRecord NOTIFY bestScoreChanged);
    Q_PROPERTY(bool gameOverQML READ readGameOver NOTIFY gameOverChanged);
    Q_PROPERTY(QList<QString> tabQML READ getTab NOTIFY casesChanged);
*/

signals:
    void scoreChanged();
    void RecordChanged();
    void gameOverChanged();
    void casesChanged();

private:
    int score;
    int record;
    QList<int> tab;
    bool gameOver;
    bool updated;

};

#endif // GRILLE_H
