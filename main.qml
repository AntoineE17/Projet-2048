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
            case Qt.Key_Right:
                grilleQML.moveRight()
                break
            case Qt.Key_Left:
                grilleQML.moveLeft()
                break
            }}

        Rectangle {
            id: rectangle1
            x: 46
            y: 20
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.casesQML[0])
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
                text: grilleQML.casesQML[0]
                anchors.verticalCenterOffset: -1
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.weight: Font.Black
                font.family: "Verdana"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 26
                Keys.onPressed: {
                    switch (event.key) {
                    case Qt.Key_Up:
                        vueObjetCpt.increment();
                        break;
                    case Qt.Key_Down:
                        vueObjetCpt.decrement();
                        break;
                    }
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 50
            y: 24
            width: 70
            height: 70
            color: grilleQML.colorChoice(grilleQML.casesQML[1])
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
                text: grilleQML.casesQML[1]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[2])
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
                text: grilleQML.casesQML[2]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[3])
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
                text: grilleQML.casesQML[3]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[4])
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
                text: grilleQML.casesQML[4]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[5])
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
                text: grilleQML.casesQML[5]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[6])
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
                text: grilleQML.casesQML[6]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[7])
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
                text: grilleQML.casesQML[7]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[8])
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
                text: grilleQML.casesQML[8]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[9])
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
                text: grilleQML.casesQML[9]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[10])
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
                text: grilleQML.casesQML[10]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[11])
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
                text: grilleQML.casesQML[11]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[12])
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
                text: grilleQML.casesQML[12]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[13])
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
                text: grilleQML.casesQML[13]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[14])
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
                text: grilleQML.casesQML[14]
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
            color: grilleQML.colorChoice(grilleQML.casesQML[15])
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
                text: grilleQML.casesQML[15]
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
            id: bestscore
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
                width: 70
                height: 70
                text: grilleQML.bestscoreQML
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

            Text {
                id: text23
                x: -8
                y: -5
                width: 85
                height: 35
                text: "Best Score"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: -10
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
                height: 70
                text: grilleQML.scoreQML
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

            Text {
                id: text22
                x: -8
                y: -5
                width: 85
                height: 35
                text: "Score"
                font.weight: Font.Black
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                focus: true
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: -10
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                anchors.horizontalCenterOffset: 1
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
                    grilleQML.resetgrille()
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
    }
}



/*##^##
Designer {
    D{i:3;invisible:true}D{i:5;invisible:true}D{i:7;invisible:true}D{i:9;invisible:true}
D{i:11;invisible:true}D{i:13;invisible:true}D{i:15;invisible:true}D{i:17;invisible:true}
D{i:19;invisible:true}D{i:21;invisible:true}D{i:23;invisible:true}D{i:25;invisible:true}
D{i:27;invisible:true}D{i:29;invisible:true}D{i:31;invisible:true}D{i:33;invisible:true}
D{i:35;invisible:true}D{i:37;invisible:true}D{i:39;invisible:true}
}
##^##*/
