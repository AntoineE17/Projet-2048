/* grille.cpp : Gestion de la grille de jeu
 * Auteurs : Antoine Gilot & Adrien Rulfo
 * Date de dernière modification : 14/04/2020
 */

#include "grille.h"
#include "cmath"
#include "ctime"
#include "cstdlib"
using namespace std;
// #include <iostream>

grid::grid(QObject *parent) : QObject(parent)
{
    srand(time(NULL));
    inProgress=false;
    color = 0;
    score = 0;
    record = 0;
    for (int i=0; i<16;i++) tab.append(0);
}

void grid::setTab(int pos, int val)
{
    tab[pos] = val;
    tabUpdated();
}

void grid::resetTab()
{
    for(int k=0; k<=15; k++) setTab(k, 0);
    tabUpdated();
}

QList<QString> grid::getTab()
{
    QList<QString> tabValuesStr;
    for(int k=0; k<=15; k++)
    {
        if(tab[k]!=0) tabValuesStr.append(QString::number(tab[k]));
        else if(tab[k]==0) tabValuesStr.append(QString::fromStdString(" "));
    }
    return tabValuesStr;
}

// SAUVEGARDE DU DERNIER MOUVEMENT
void grid::setTabSaved()
{
    tabSaved = tab;
    setScoreSaved();
}

QList<QString> grid::getTabSaved()
{
    QList<QString> tabSavedValuesStr;
    for(int k=0; k<=15; k++)
    {
        if(tab[k]!=0) tabSavedValuesStr.append(QString::number(tabSaved[k]));
        else if(tab[k]==0) tabSavedValuesStr.append(QString::fromStdString(" "));
    }
    return tabSavedValuesStr;
}
void grid::loadTabSaved()
{
    tab = tabSaved;
    tabUpdated();
    loadScoreSaved();
    testGameOver();
    gameOverUpdated();
}
void grid::resetGame()
{
    inProgress = true;
    updated = true;
    gameOver = false;
    resetTab();
    resetScore();
    generateNewTile();
    generateNewTile();
}


// GENERATION D'UNE NOUVELLE TUILE
void grid::generateNewTile()
{
    QList<int> free;
    for(int k=0; k<=15; k++)
    {
        if(tab[k]==0) free.append(k);
    }
    if(!free.isEmpty())
    {
         // whereToAdd indique l'indice dans free de la position de la tuile à générer
        int whereToAdd = generateRandom(free.length());

        // On génère une tuile de valeur 4 avec une probabilité de 0.2 et de valeur 2 avec une probabilité de 0.8
        int whatToAdd;
        int rd = generateRandom(5);
        if(rd==0) whatToAdd=4;
        else whatToAdd=2;

        tab[free[whereToAdd]]=whatToAdd;
    }
    tabUpdated();
    testGameOver();
}
int grid::generateRandom(int n)
{
    return rand()%n;
}

// SCORE & RECORD
void grid::setScore(int val)
{
    score = val;
}
void grid::updateScore(int val)
{
    score += val;
    updateRecord();
    scoreUpdated();
}
int grid::getScore()
{
    return score;
}
void grid::resetScore()
{
    setScore(0);
    scoreUpdated();
}

void grid::setScoreSaved()
{
    scoreSaved = score;
}
int grid::getScoreSaved()
{
    return scoreSaved;
}
void grid::loadScoreSaved()
{
    score = getScoreSaved();
    scoreUpdated();
}

void grid::setRecord(int val)
{
    record = val;
}
void grid::updateRecord()
{
    if(score>record) record=score;
    recordUpdated();
}
int grid::getRecord()
{
    return record;
}
void grid::resetRecord()
{
    setRecord(0);
}


// MOUVEMENTS
void grid::moveUp()
{
    if(inProgress && !gameOver)
    {
        setTabSaved();
        slideUp();
        mergeUp();
        slideUp();
        if(updated) generateNewTile();
        tabUpdated();
        updated = false;
    }
}

void grid::slideUp()
{
    for(int j=0; j<=3; j++)
    {
        int iMinFree=0;
        if(tab[4*iMinFree+j]!=0) iMinFree++;
        int i=1;
        while(i<=3)
        {
            if((tab[4*i+j]!=0)&&(iMinFree<i))
            {
                setTab(4*iMinFree+j, tab[4*i+j]);
                setTab(4*i+j, 0);
                updated = true;
                iMinFree++;
            }
            else if((tab[4*i+j]!=0)&&(iMinFree==i)) iMinFree++;
            i++;
        }
    }
}

void grid::mergeUp()
{
    for(int j=0; j<=3; j++)
    {
        int i=0;
        while(i<=2)
        {
            if(tab[4*i+j]==tab[4*(i+1)+j])
            {
                int created = tab[4*i+j]+tab[4*(i+1)+j];
                setTab(4*i+j, created);
                setTab(4*(i+1)+j, 0);
                updated = true;
                updateScore(created);
                i++;
                i++;
            }
            else i++;
        }
    }
}

void grid::moveDown()
{   if(inProgress && !gameOver)
    {
        setTabSaved();
        slideDown();
        mergeDown();
        slideDown();
        if(updated) generateNewTile();
        tabUpdated();
        updated = false;
    }
}

void grid::slideDown()
{
    for(int j=0; j<=3; j++)
    {
        int iMinFree=3;
        if(tab[4*iMinFree+j]!=0) iMinFree--;
        int i=2;
        while(i>=0)
        {
            if((tab[4*i+j]!=0)&&(iMinFree>i))
            {
                tab[4*iMinFree+j]=tab[4*i+j];
                tab[4*i+j]=0;
                updated = true;
                iMinFree--;
            }
            else if((tab[4*i+j]!=0)&&(iMinFree==i)) iMinFree--;
            i--;
        }
    }
}

void grid::mergeDown()
{
    for(int j=0; j<=3; j++)
    {
        int i=3;
        while(i>=1)
        {
            if(tab[4*i+j]==tab[4*(i-1)+j])
            {
                int created = tab[4*i+j]+tab[4*(i-1)+j];
                setTab(4*i+j, created);
                setTab(4*(i-1)+j, 0);
                updated = true;
                updateScore(created);
                i--;
                i--;
            }
            else i--;
        }
    }
}

void grid::moveLeft()
{
    if(inProgress && !gameOver)
    {
        setTabSaved();
        slideLeft();
        mergeLeft();
        slideLeft();
        if(updated) generateNewTile();
        tabUpdated();
        updated = false;
    }
}

void grid::slideLeft()
{
    for(int i=0; i<=3; i++)
    {
        int jMinFree=0;
        if(tab[4*i+jMinFree]!=0) jMinFree++;
        int j=1;
        while(j<=3)
        {
            if((tab[4*i+j]!=0)&&(jMinFree<j))
            {
                setTab(4*i+jMinFree, tab[4*i+j]);
                setTab(4*i+j, 0);
                updated = true;
                jMinFree++;
            }
            else if((tab[4*i+j]!=0)&&(jMinFree==j)) jMinFree++;
            j++;
        }
    }
}

void grid::mergeLeft()
{
    for(int i=0; i<=3; i++)
    {
        int j=0;
        while(j<=2)
        {
            if(tab[4*i+j]==tab[4*i+(j+1)])
            {
                int created = tab[4*i+j]+tab[4*i+(j+1)];
                setTab(4*i+j, created);
                setTab(4*i+(j+1), 0);
                updated = true;
                updateScore(created);
                j++;
                j++;
            }
            else j++;
        }
    }
}

void grid::moveRight()
{
    if(inProgress && !gameOver)
    {
        setTabSaved();
        slideRight();
        mergeRight();
        slideRight();
        if(updated) generateNewTile();
        tabUpdated();
        updated = false;
    }
}

void grid::slideRight()
{
    for(int i=0; i<=3; i++)
    {
        int jMinFree=3;
        if(tab[4*i+jMinFree]!=0) jMinFree--;
        int j=2;
        while(j>=0)
        {
            if((tab[4*i+j]!=0)&&(jMinFree>j))
            {
                setTab(4*i+jMinFree, tab[4*i+j]);
                setTab(4*i+j, 0);
                updated = true;
                jMinFree--;
            }
            else if((tab[4*i+j]!=0)&&(jMinFree==j)) jMinFree--;
            j--;
        }
    }
}

void grid::mergeRight()
{
    for(int i=0; i<=3; i++)
    {
        int j=3;
        while(j>=1)
        {
            if(tab[4*i+j]==tab[4*i+(j-1)])
            {
                int created = tab[4*i+j]+tab[4*i+(j-1)];
                setTab(4*i+j, created);
                setTab(4*i+(j-1), 0);
                updated = true;
                updateScore(created);
                j--;
                j--;
            }
            else j--;
        }
    }
}

// COULEURS
QString grid::colorChoice(QString a, int b)
{   if(b==0)
    {
        if(a=="2") return("#e6d8d3");
        else if(a=="4") return("#f0deca");
        else if(a=="8") return("#f2b179");
        else if(a=="16") return("#f79266");
        else if(a=="32") return("#f97a62");
        else if(a=="64") return("#fa5c3f");
        else if(a=="128") return("#f55c3f");
        else if(a=="256") return("#efca64");
        else if(a=="512") return("#e3bb51");
        else if(a=="1024") return("#e4b93f");
        else if(a=="2048") return("#eec032");
        else if(a=="4096") return("#f1646e");
        else if(a=="8192") return("#ef4c5c");
        else if(a=="16384") return("#e34239");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else if(b==1)
    {
        if(a=="2") return("#CD5C5C");
        else if(a=="4") return("#F08080");
        else if(a=="8") return("#FA8072");
        else if(a=="16") return("#E9967A");
        else if(a=="32") return("#FFA07A");
        else if(a=="64") return("#BB0B0B");
        else if(a=="128") return("#E73E01");
        else if(a=="256") return("#FF00FF");
        else if(a=="512") return("#91283B");
        else if(a=="1024") return("#FF5E4D");
        else if(a=="2048") return("#FF0000");
        else if(a=="4096") return("#E0115F");
        else if(a=="8192") return("#ef4c5c");
        else if(a=="16384") return("#e34239");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else if(b==2)
    {
        if(a=="2") return("#00FF00");
        else if(a=="4") return("#79F8F8");
        else if(a=="8") return("#18391E");
        else if(a=="16") return("#7BA05B");
        else if(a=="32") return("#83A697");
        else if(a=="64") return("#80D0D0");
        else if(a=="128") return("#649B88");
        else if(a=="256") return("#1B4F08");
        else if(a=="512") return("#87E990");
        else if(a=="1024") return("#94812B");
        else if(a=="2048") return("#16B84E");
        else if(a=="4096") return("#25FDE9");
        else if(a=="8192") return("#7FDD4C");
        else if(a=="16384") return("#9EFD38");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else if(b==3)
    {
        if(a=="2") return("#FFFF00");
        else if(a=="4") return("#F0C300");
        else if(a=="8") return("#FFCB60");
        else if(a=="16") return("#F0E36B");
        else if(a=="32") return("#AD4F09");
        else if(a=="64") return("#CDCD0D");
        else if(a=="128") return("#EF9B0F");
        else if(a=="256") return("#808000");
        else if(a=="512") return("#808000");
        else if(a=="1024") return("#F4C430");
        else if(a=="2048") return("#E7A854");
        else if(a=="4096") return("#C7CF00");
        else if(a=="8192") return("#DFFF00");
        else if(a=="16384") return("#e34239");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else if(b==4)
    {
        if(a=="2") return("#0000FF");
        else if(a=="4") return("#79F8F8");
        else if(a=="8") return("#007FFF");
        else if(a=="16") return("#1E7FCB");
        else if(a=="32") return("#74D0F1");
        else if(a=="64") return("#A9EAFE");
        else if(a=="128") return("#22427C");
        else if(a=="256") return("#003366");
        else if(a=="512") return("#6050DC");
        else if(a=="1024") return("#03224C");
        else if(a=="2048") return("#DFF2FF");
        else if(a=="4096") return("#6600FF");
        else if(a=="8192") return("#2BFAFA");
        else if(a=="16384") return("#e34239");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else if(b==5)
    {
        if(a=="2") return("#660099");
        else if(a=="4") return("#884DA7");
        else if(a=="8") return("#F9429E");
        else if(a=="16") return("#6600FF");
        else if(a=="32") return("#BD33A4");
        else if(a=="64") return("#DE3163");
        else if(a=="128") return("#6A455D");
        else if(a=="256") return("#C9A0DC");
        else if(a=="512") return("#D2CAEC");
        else if(a=="1024") return("#AC1E44");
        else if(a=="2048") return("#FD3F92");
        else if(a=="4096") return("#9E0E40");
        else if(a=="8192") return("#ef4c5c");
        else if(a=="16384") return("#e34239");
        else if(a=="32768") return("#72b2d6");
        else if(a=="65536") return("#5f9ee2");
        else if(a=="131072") return("#0374b4");
        else return("#cdc1b4");
    }
    else return("#cdc1b4");
}

int grid::getColor()
{
    return color;
}

void grid::setColor(int a)
{
    color = a;
    colorUpdated();
    tabUpdated();
}


// GAMEOVER
bool grid::testBlocked(int x, int y)
{
    for(int i=0; i<=3; i++)
    {
        for(int j=0; j<=3; j++)
        {
            if((abs(i-x)==1 && (j-y)==0) || (abs(j-y)==1 && (i-x)==0))
            {
                if(tab[4*x+y]==tab[4*i+j] || tab[4*x+y]==0 || tab[4*i+j]==0)
                {
                    // La tuile est vide ou peut-être fusionnée
                    return false;
                }
            }
        }
    }
    return true;
}

void grid::testGameOver()
{
    bool tempGameOver = true;
    for(int i=0; i<=3; i++)
    {
        for(int j=0; j<=3; j++)
        {
            tempGameOver = testBlocked(i, j);
            if(!tempGameOver) break;
        }
        if(!tempGameOver) break;
    }
    gameOver = tempGameOver;
    gameOverUpdated();
}

bool grid::getGameOver()
{
    return gameOver;
}
