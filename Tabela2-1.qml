import QtQuick 2.3
import QtQuick.Controls 1.2
//import QtQuick.Controls.Styles 1.2

import "js/Tabela2.1.js" as Tabela2_1JS

Rectangle {
    color: "gray"
    anchors.fill: parent



    Text {
        id: tolerancaLabel
        text: qsTr("TOLERANCA (micro m): ")
        anchors.top: parent.top
        anchors.topMargin: parent.height/8
        font.pixelSize: parent.width/20
        anchors.left: parent.left
        anchors.leftMargin: parent.width/10
    }


    Text {
        id: toleranca
        text: qsTr("")
        anchors.top: parent.top
        anchors.topMargin: parent.height/8
        anchors.left: tolerancaLabel.right
        anchors.leftMargin: 10
        font.pixelSize: parent.width/20
    }

    Text {
        id: cilesiaLabel
        text: qsTr("CILESIA ")
        anchors.top: toleranca.bottom
        anchors.topMargin: parent.height/8
        font.pixelSize: parent.width/20
        anchors.left: parent.left
        anchors.leftMargin: parent.width/4
    }


    Text {
        id: diametriLabel
        text: qsTr("DIAMETRI")
        anchors.right: cilesiaLabel.right
        font.pixelSize: parent.width/20
        anchors.top: cilesiaLabel.bottom
        anchors.topMargin: 10
    }

    TextField {
        id: inputCilesia
        visible: true
        anchors.verticalCenter: cilesiaLabel.verticalCenter
        anchors.left: cilesiaLabel.right
        anchors.leftMargin: 20
        width: parent.width/6
        height: 30
    }

    TextField {
        id: inputDiametri
        visible: true
        anchors.verticalCenter: diametriLabel.verticalCenter
        anchors.left: inputCilesia.left
        width: inputCilesia.width
        height: 30
    }


    Rectangle {
        id: getValues
        anchors.top: inputDiametri.bottom
        anchors.topMargin: parent.height/20
        anchors.left: parent.left
        anchors.leftMargin: 6
        anchors.rightMargin: 3
        height: parent.height/8
        width: parent.width/2
        border.color: getValuesButton.pressed ?"yellow": "darkorange"

        color: "orange"

        MouseArea {
            id: getValuesButton
            anchors.fill: parent
            onClicked: Tabela2_1JS.getValues(inputCilesia.text, inputDiametri.text )
        }

        Text {
            text: qsTr("GET VALUES")
            color: "black"
            anchors.centerIn: parent
        }
    }



    Rectangle {
        id: back
        anchors.verticalCenter: getValues.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 6
        anchors.leftMargin: 3
        height: getValues.height
        color: "darkorange"
        border.color: back.pressed ?"yellow": "darkorange"
        width: parent.width/2
        border.width: 2

        MouseArea {
            anchors.fill: parent
            onClicked: { loader.setSource("")

            root.mouseAreas = true;

            }
        }

        Text {
            id: name
            text: qsTr("BACK")
            color: "black"
            anchors.centerIn: parent
        }
    }



}

