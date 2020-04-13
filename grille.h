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
    Q_INVOKABLE QList<QString> getTab();
    void setBack();
    Q_INVOKABLE QList<QString> getBack();
    Q_INVOKABLE void resetGame();
    void generateNewTile();
    int generateRandom(int n);
    Q_INVOKABLE void setScore(int val);
    Q_INVOKABLE int getScore();
    void resetScore();
    Q_INVOKABLE void setRecord(int val);
    Q_INVOKABLE int getRecord();
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
    Q_INVOKABLE QString colorChoice(QString a);
    bool testBlocked(int x, int y);
    void testGameOver();
    
/*
    void printTab();
*/

    Q_PROPERTY(int scoreQML READ getScore WRITE setScore NOTIFY scoreUpdated);
    Q_PROPERTY(int recordQML READ getRecord NOTIFY recordUpdated);
    // Q_PROPERTY(bool gameOverQML READ getGameOver NOTIFY gameOverUpdated);
    Q_PROPERTY(QList<QString> tabQML READ getTab NOTIFY tabUpdated);


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
    QList<int> back;

};

#endif // GRILLE_H
