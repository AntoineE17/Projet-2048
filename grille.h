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
    QList<QString> getTab();
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
    void printTab();
*/
/*
    Q_PROPERTY(int scoreQML READ getScore WRITE setScore NOTIFY scoreUpdated);
    Q_PROPERTY(int recordQML READ getRecord NOTIFY recordUpdated);
    Q_PROPERTY(bool gameOverQML READ getGameOver NOTIFY gameOverUpdated);
    Q_PROPERTY(QList<QString> tabQML READ getTab NOTIFY tabUpdated);
*/

signals:
    void tabUpdated();
    void scoreUpdated();
    void recordUpdated();
    void gameOverUpdated();

private:
    int score;
    int record;
    QList<int> tab;
    bool gameOver;
    bool updated;

};

#endif // GRILLE_H
