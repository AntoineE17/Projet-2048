#include "grille.h"
using namespace std;
#include <iostream>

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

/*
void grid::printTab()
{
    for(int i=0; i<=3; i++)
    {
        cout<<tab[4*i]<<tab[4*i+1]<<tab[4*i+2]<<tab[4*i+3]<<endl;
    }
}
*/
