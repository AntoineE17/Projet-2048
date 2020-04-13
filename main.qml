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
        anchors.verticalCenterOffset: 35
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Rectangle {
        id: rectangle1
        x: 46
        y: 20
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        border.width: 0
        anchors.verticalCenterOffset: -78
        anchors.horizontalCenterOffset: -114
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: text1
        x: 125
        y: 61
        focus: true
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.verticalCenterOffset: -78
        anchors.horizontalCenterOffset: -114
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

    Rectangle {
        id: rectangle2
        x: 50
        y: 24
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -38
        anchors.verticalCenterOffset: -78
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text2
        x: 129
        y: 65
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -38
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -78
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle3
        x: 42
        y: 16
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 38
        anchors.verticalCenterOffset: -78
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text3
        x: 121
        y: 57
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 38
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: -78
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle4
        x: 43
        y: 17
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 114
        anchors.verticalCenterOffset: -78
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text4
        x: 122
        y: 58
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 114
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -78
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle5
        x: 47
        y: 21
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -114
        anchors.verticalCenterOffset: -2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text5
        x: 126
        y: 62
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -114
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -2
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle6
        x: 51
        y: 25
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -38
        anchors.verticalCenterOffset: -2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text6
        x: 130
        y: 66
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -38
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: -2
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle7
        x: 43
        y: 17
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 38
        anchors.verticalCenterOffset: -2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text7
        x: 122
        y: 58
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 38
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -2
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle8
        x: 44
        y: 18
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 114
        anchors.verticalCenterOffset: -2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text8
        x: 123
        y: 59
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 114
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: -2
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle9
        x: 47
        y: 21
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -114
        anchors.verticalCenterOffset: 74
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text9
        x: 126
        y: 62
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -114
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: 74
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle10
        x: 51
        y: 25
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -38
        anchors.verticalCenterOffset: 74
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text10
        x: 130
        y: 66
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -38
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: 74
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle11
        x: 43
        y: 17
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 38
        anchors.verticalCenterOffset: 74
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text11
        x: 122
        y: 58
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 38
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: 74
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle12
        x: 44
        y: 18
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 114
        anchors.verticalCenterOffset: 74
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text12
        x: 123
        y: 59
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 114
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: 74
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle13
        x: 54
        y: 28
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -114
        anchors.verticalCenterOffset: 150
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text13
        x: 133
        y: 69
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -114
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: 150
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle14
        x: 58
        y: 32
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: -38
        anchors.verticalCenterOffset: 150
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text14
        x: 137
        y: 73
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: -38
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: 150
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle15
        x: 50
        y: 24
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 38
        anchors.verticalCenterOffset: 150
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text15
        x: 129
        y: 65
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 38
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: 150
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: rectangle16
        x: 51
        y: 25
        width: 70
        height: 70
        color: "#ccc0b4"
        radius: 3
        anchors.horizontalCenterOffset: 114
        anchors.verticalCenterOffset: 150
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text16
        x: 130
        y: 66
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 114
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: 150
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: bestscore
        x: 55
        y: 29
        width: 70
        height: 40
        color: "#c7bbb1"
        radius: 3
        anchors.horizontalCenterOffset: 114
        anchors.verticalCenterOffset: -212
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text17
        x: 134
        y: 70
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 114
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -212
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: score
        x: 64
        y: 38
        width: 70
        height: 40
        color: "#c7bbb1"
        radius: 3
        anchors.horizontalCenterOffset: 38
        anchors.verticalCenterOffset: -212
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }

    Text {
        id: text18
        x: 143
        y: 79
        width: 70
        height: 70
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 38
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Black
        anchors.verticalCenterOffset: -212
        focus: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Rectangle {
        id: newpartie
        x: 63
        y: 37
        width: 85
        height: 35
        color: "#8e7a66"
        radius: 3
        anchors.horizontalCenterOffset: 107
        anchors.verticalCenterOffset: -163
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0

        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 90
            height: 60
            anchors.top: parent.top

            acceptedButtons: Qt.LeftButton
            onClicked: {
                grilleQML.resetgrille()
            }

        }
    }

    Text {
        id: text19
        x: 142
        y: 78
        width: 85
        height: 35
        text: vueObjetCpt.cptQML
        anchors.horizontalCenterOffset: 107
        font.weight: Font.Black
        horizontalAlignment: Text.AlignHCenter
        focus: true
        anchors.verticalCenterOffset: -163
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 26
    }

    Text {
        id: text20
        x: 23
        y: 32
        color: "#8a8178"
        text: "2048"
        font.bold: true
        font.pointSize: 40
        font.family: "Helvetica"
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
