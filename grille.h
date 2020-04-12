#ifndef GRILLE_H
#define GRILLE_H

#include <QObject>
#include <Qlist>

class grid : public QObject
{
    Q_OBJECT
public:
    explicit grid(QObject *parent = nullptr);

    void setTab(int pos, int val);
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
/*
    void printTab();
*/

private:
    int score;
    int record;
    QList<int> tab;
    bool didTabChanged;

};

#endif // GRILLE_H
