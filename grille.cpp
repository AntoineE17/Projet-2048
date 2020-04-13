/* grille.cpp : Gestion de la grille de jeu
 * Auteurs : Antoine Gilot & Adrien Rulfo
 * Date de dernière modification : 13/04/2020
 */

#include "grille.h"
#include "cmath"
#include "ctime"
#include "cstdlib"
using namespace std;
// #include <iostream>

grid::grid(QObject *parent) : QObject(parent)
{
    score = 0;
    record = 0;
    for (int i=0; i<16;i++)
    {
        tab.append(0);
    }
}

void grid::setTab(int pos, int val)
{
    tab[pos] = val;
}

void grid::resetTab()
{
    for(int k=0; k<=15; k++)
    {
        setTab(k, 0);
    }
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

void grid::resetGame()
{
    resetTab();
    generateNewTile();
    generateNewTile();
    resetScore();
}

// Generation d'une nouvelle tuile
void grid::generateNewTile()
{
    int countFree=0;
    for(int k=0; k<=15; k++)
    {
        if(tab[k]==0)
        {
            countFree++;
        }
    }
    if(countFree >0)
    {
         // whereToAdd indique la position de la tuile à générer
        int whereToAdd = generateRandom(countFree);

        // On génère une tuile de valeur 4 avec une probabilité de 0.2 et de valeur 2 avec une probabilité de 0.8
        int whatToAdd;
        int rd = generateRandom(5);
        if(rd==0) whatToAdd=4;
        else whatToAdd=2;

        // On a un numéro de tuile libre, reste à la trouver parmi toutes les tuiles
        countFree = -1; // whereToAdd est un indice entre 0 et countFree-1
        for(int k=0; k<=15; k++)
        {
            if(tab[k]==0)
            {
                countFree++;
                if(countFree==whereToAdd) tab[whereToAdd]=whatToAdd;
            }
        }
    }
    testGameOver();
}

int grid::generateRandom(int n)
{
    srand(time(NULL));
    return rand()%n;
}

// Gestion du score
void grid::setScore(int val)
{
    score = val;
}

int grid::getScore()
{
    return score;
}

void grid::resetScore()
{
    setScore(0);
}

// Gestion du score
void grid::setRecord(int val)
{
    record = val;
}

int grid::getRecord()
{
    return record;
}

void grid::resetRecord()
{
    setRecord(0);
}


//Gestion des commandes
void grid::moveUp()
{
    slideUp();
    mergeUp();
    slideUp();
    generateNewTile();
}

void grid::slideUp()
{
    for(int j=0; j<=3; j++)
    {
        int iMinFree=0;
        if(tab[4*iMinFree+j]!=0)
        {
            iMinFree++;
        }
        int i=1;
        while(i<=3)
        {
            if((tab[4*i+j]!=0)&&(iMinFree<i))
            {
                tab[4*iMinFree+j]=tab[4*i+j];
                tab[4*i+j]=0;
                iMinFree++;
            }
            i++;
        }
    }
}

void grid::mergeUp()
{
    for(int j=0; j<=3; j++)
    {
        for(int i=0; i<3; i++)
        {
            if(tab[4*i+j]==tab[4*(i+1)+j])
            {
                int created = tab[4*i+j]+tab[4*(i+1)+j];
                setTab(4*i+j, created);
                setTab(4*(i+1)+j, 0);
                score += created;
                i++;
                i++;
            }
            else
            {
                i++;
            }
        }
    }
}

void grid::moveDown()
{
    slideDown();
    mergeDown();
    slideDown();
    generateNewTile();
}

void grid::slideDown()
{
    for(int j=0; j<=3; j++)
    {
        int iMinFree=3;
        if(tab[4*iMinFree+j]!=0)
        {
            iMinFree--;
        }
        int i=3;
        while(i>=0)
        {
            if((tab[4*i+j]!=0)&&(iMinFree>i))
            {
                tab[4*iMinFree+j]=tab[4*i+j];
                tab[4*i+j]=0;
                iMinFree--;
            }
            i--;
        }
    }
}

void grid::mergeDown()
{
    for(int j=0; j<=3; j++)
    {
        for(int i=3; i>0; i--)
        {
            if(tab[4*i+j]==tab[4*(i-1)+j])
            {
                int created = tab[4*i+j]+tab[4*(i-1)+j];
                setTab(4*i+j, created);
                setTab(4*(i-1)+j, 0);
                score += created;
                i--;
                i--;
            }
            else
            {
                i--;
            }
        }
    }
}

void grid::moveLeft()
{
    slideLeft();
    mergeLeft();
    slideLeft();
    generateNewTile();
}

void grid::slideLeft()
{
    for(int i=0; i<=3; i++)
    {
        int jMinFree=0;
        if(tab[4*i+jMinFree]!=0)
        {
            jMinFree++;
        }
        int j=1;
        while(j<=3)
        {
            if((tab[4*i+j]!=0)&&(jMinFree<j))
            {
                tab[4*i+jMinFree]=tab[4*i+j];
                tab[4*i+j]=0;
                jMinFree++;
            }
            j++;
        }
    }
}

void grid::mergeLeft()
{
    for(int i=0; i<=3; i++)
    {
        for(int j=0; j<3; j++)
        {
            if(tab[4*i+j]==tab[4*i+(j+1)])
            {
                int created = tab[4*i+j]+tab[4*i+(j+1)];
                setTab(4*i+j, created);
                setTab(4*i+(j+1), 0);
                score += created;
                j++;
                j++;
            }
            else
            {
                j++;
            }
        }
    }
}

void grid::moveRight()
{
    slideRight();
    mergeRight();
    slideRight();
    generateNewTile();
}

void grid::slideRight()
{
    for(int i=0; i<=3; i++)
    {
        int jMinFree=3;
        if(tab[4*i+jMinFree]!=0)
        {
            jMinFree--;
        }
        int j=3;
        while(j>=0)
        {
            if((tab[4*i+j]!=0)&&(jMinFree>j))
            {
                tab[4*i+jMinFree]=tab[4*i+j];
                tab[4*i+j]=0;
                jMinFree--;
            }
            j++;
        }
    }
}

void grid::mergeRight()
{
    for(int i=0; i<=3; i++)
    {
        for(int j=3; j>0; j--)
        {
            if(tab[4*i+j]==tab[4*i+(j-1)])
            {
                int created = tab[4*i+j]+tab[4*i+(j-1)];
                setTab(4*i+j, created);
                setTab(4*i+(j-1), 0);
                score += created;
                j--;
                j--;
            }
            else
            {
                j++;
            }
        }
    }
}

// Gestion des couleurs
QString grid::colorChoice(QString a)
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
            if(!tempGameOver)
            {
                break;
            }
        }
        if(!tempGameOver)
        {
            break;
        }
    }
    gameOver = true;
}

/*
void grid::printTab()
{
    for(int i=0; i<=3; i++)
    {
        cout<<tab[4*i]<<tab[4*i+1]<<tab[4*i+2]<<tab[4*i+3]<<endl;
    }
}
*/
