import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 320
    height: 528
    color: "#faf8ef"
    title: qsTr("FenetreJeu")


    Rectangle {
        id: fond
        x: 53
        y: 29
        width: 310
        height: 310
        color: "#bbada1"
        radius: 3
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenterOffset: 25
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0

        Keys.onPressed: {
            switch (event.key){
            case Qt.Key_Up:
                grilleQML.moveUp()
                break
            case Qt.Key_Down:
                grilleQML.moveDown()
                break
            case Qt.Key_Left:
                grilleQML.moveLeft()
                break
            case Qt.Key_Right:
                grilleQML.moveRight()
                break
            }}

        Rectangle {
            id: rectangle1
            x: 46
            y: 20
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[0],grilleQML.getColor())
            radius: 3
            border.width: 0
            anchors.verticalCenterOffset: -114
            anchors.horizontalCenterOffset: -114
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: text1
                x: 0
                y: 0
                focus: true
                width: 70
                height: 70
                text: grilleQML.tabQML[0]
                anchors.verticalCenterOffset: -1
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.weight: Font.Black
                font.family: "Verdana"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 26


            }
        }


        Rectangle {
            id: rectangle2
            x: 50
            y: 24
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[1],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -38
            anchors.verticalCenterOffset: -114
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text2
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[1]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle3
            x: 42
            y: 16
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[2],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 38
            anchors.verticalCenterOffset: -114
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text3
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[2]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle4
            x: 43
            y: 17
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[3],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 114
            anchors.verticalCenterOffset: -114
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text4
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[3]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle5
            x: 47
            y: 21
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[4],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -114
            anchors.verticalCenterOffset: -38
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text5
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[4]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: -1
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle6
            x: 51
            y: 25
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[5],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -39
            anchors.verticalCenterOffset: -38
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text6
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[5]
                anchors.horizontalCenterOffset: -1
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: -1
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle7
            x: 43
            y: 17
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[6],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 38
            anchors.verticalCenterOffset: -38
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text7
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[6]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: -1
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle8
            x: 44
            y: 18
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[7],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 114
            anchors.verticalCenterOffset: -38
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text8
                x: 38
                y: -2
                width: 70
                height: 70
                text: grilleQML.tabQML[7]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle9
            x: 47
            y: 21
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[8],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -114
            anchors.verticalCenterOffset: 38
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text9
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[8]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle10
            x: 51
            y: 25
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[9],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -38
            anchors.verticalCenterOffset: 39
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text10
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[9]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: -1
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle11
            x: 43
            y: 17
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[10],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 38
            anchors.verticalCenterOffset: 39
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text11
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[10]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle12
            x: 44
            y: 18
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[11],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 114
            anchors.verticalCenterOffset: 39
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text12
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[11]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle13
            x: 54
            y: 28
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[12],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -114
            anchors.verticalCenterOffset: 114
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text13
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[12]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle14
            x: 58
            y: 32
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[13],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: -38
            anchors.verticalCenterOffset: 115
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text14
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[13]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle15
            x: 50
            y: 24
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[14],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 38
            anchors.verticalCenterOffset: 115
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text15
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[14]
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: rectangle16
            x: 51
            y: 25
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.tabQML[15],grilleQML.getColor())
            radius: 3
            anchors.horizontalCenterOffset: 114
            anchors.verticalCenterOffset: 115
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text16
                x: 0
                y: 0
                width: 70
                height: 70
                text: grilleQML.tabQML[15]
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 26
            }
        }

        Rectangle {
            id: record
            x: 55
            y: 29
            width: 80
            height: 40
            color: "#c7bbb1"
            radius: 3
            anchors.horizontalCenterOffset: 114
            anchors.verticalCenterOffset: -251
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Text {
                id: text17
                x: 0
                y: -15
                width: 80
                height: 35
                text: grilleQML.recordQML
                anchors.horizontalCenterOffset: 1
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: 1
                verticalAlignment: Text.AlignBottom
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 16
            }

            Text {
                id: text23
                x: -8
                y: -5
                width: 85
                height: 35
                text: "Record"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                verticalAlignment: Text.AlignTop
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: score
            x: 64
            y: 38
            width: 70
            height: 40
            color: "#c7bbb1"
            radius: 3
            anchors.horizontalCenterOffset: 28
            anchors.verticalCenterOffset: -251
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0


            Text {
                id: text18
                x: 143
                y: 79
                width: 70
                height: 35
                text: grilleQML.scoreQML
                anchors.horizontalCenterOffset: 0
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Black
                anchors.verticalCenterOffset: 0
                focus: true
                verticalAlignment: Text.AlignBottom
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 15
            }

            Text {
                id: text22
                x: -8
                y: -5
                width: 70
                height: 35
                text: "Score"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignTop
                font.family: "Verdana"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }}

        Rectangle {
            id: newpartie
            x: 63
            y: 37
            width: 85
            height: 35
            color: "#8e7a66"
            radius: 3
            anchors.horizontalCenterOffset: 107
            anchors.verticalCenterOffset: -200
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 85
                height: 35
                anchors.topMargin: 0
                anchors.top: parent.top

                acceptedButtons: Qt.LeftButton
                onClicked: {
                    grilleQML.resetGame()
                }

            }


            Text {
                id: text19
                x: 142
                y: 78
                width: 85
                height: 35
                text: "Nouvelle"
                anchors.horizontalCenterOffset: 0
                font.weight: Font.Black
                horizontalAlignment: Text.AlignHCenter
                focus: true
                anchors.verticalCenterOffset: -7
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            Text {
                id: text21
                x: 132
                y: 69
                width: 85
                height: 35
                text: "partie"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 7
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Text {
            id: text20
            x: 6
            y: -117
            width: 82
            height: 64
            color: "#8a8178"
            text: "2048"
            font.pixelSize: 50
            font.bold: true
            font.family: "Helvetica"
        }

        Text {
            id: text26
            x: -5
            y: 319
            width: 320
            height: 29
            color: "#8a8178"
            text: "Choix d'un jeu de couleurs"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 23
            font.bold: true
            font.family: "Helvetica"
        }

        Rectangle {
            id: newpartie2
            x: 71
            y: 46
            width: 85
            height: 35
            color: "#8e7a66"
            radius: 3
            border.width: 0
            MouseArea {
                id: mouseArea8
                x: 0
                y: 0
                width: 85
                height: 35
                anchors.top: parent.top
                anchors.topMargin: 0
                acceptedButtons: Qt.LeftButton
                onClicked: {
                    grilleQML.loadBack()
                }
            }

            Text {
                id: text28
                x: 142
                y: 78
                width: 85
                height: 65
                text: "Précédent"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 0
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -192
            anchors.horizontalCenterOffset: -31
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: fond1
        x: 55
        y: 36
        width: 310
        height: 310
        color: "#bbada1"
        radius: 3
        border.width: 0
        opacity: (grilleQML.gameOverQML) ? 0.7 : 0

        Text {
            id: text46
            x: 0
            y: 123
            width: 310
            height: 64
            color: "#000000"
            text: "Game Over"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
            font.bold: true
            font.family: "Helvetica"
        }
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 25
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: rectangle17
        x: 46
        y: 20
        width: 30
        height: 30
        color: "#fe2c2c"
        radius: 3
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: -110
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(1)
            }
    }}

    Rectangle {
        id: rectangle18
        x: 46
        y: 17
        width: 30
        height: 30
        color: "#3cfc2a"
        radius: 3
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: -70
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea3
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(2)
            }
    }}

    Rectangle {
        id: rectangle19
        x: 41
        y: 24
        width: 30
        height: 30
        color: "#f6fd39"
        radius: 3
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: -30
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea4
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(3)
            }
    }}

    Rectangle {
        id: rectangle20
        x: 37
        y: 21
        width: 30
        height: 30
        color: "#0043f3"
        radius: 3
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: 10
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea5
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(4)
            }
    }}

    Rectangle {
        id: rectangle21
        x: 47
        y: 26
        width: 30
        height: 30
        color: "#f902f6"
        radius: 3
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: 50
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea6
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(5)
            }
    }}

    Rectangle {
        id: rectangle22
        x: 48
        y: 26
        width: 66
        height: 30
        color: "#faf8ef"
        radius: 3
        border.width: 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 237
        anchors.horizontalCenterOffset: 107
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea7
            x: 0
            y: 0
            width: 85
            height: 35
            anchors.topMargin: 0
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.setColor(0)
            }}

        Text {
            id: text27
            x: 0
            y: 0
            width: 66
            height: 30
            color: "#000000"
            text: "Reset"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.family: "Helvetica"
        }
    }

}



/*##^##
Designer {
    D{i:3;invisible:true}D{i:5;invisible:true}D{i:7;invisible:true}D{i:9;invisible:true}
D{i:11;invisible:true}D{i:13;invisible:true}D{i:15;invisible:true}D{i:17;invisible:true}
D{i:19;invisible:true}D{i:21;invisible:true}D{i:23;invisible:true}D{i:25;invisible:true}
D{i:27;invisible:true}D{i:29;invisible:true}D{i:31;invisible:true}D{i:33;invisible:true}
D{i:35;invisible:true}D{i:39;invisible:true}D{i:37;invisible:true}D{i:1;invisible:true}
D{i:51;invisible:true}D{i:53;invisible:true}
}
##^##*/
