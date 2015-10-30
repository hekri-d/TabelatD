import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Window {
    id: root
    visible: true
    width: 340
    height: 460
    color: "lightgray"

    Loader {
        id: loader
        anchors.fill: parent
        z:1

        onLoaded:  mouseAreas = false
        onSourceChanged:  animacioni.running = true

    }

    NumberAnimation {
        id: animacioni
        target: loader.item
        property: "scale"

        from:0.8
        to: 1
        duration: 200
        easing.type: Easing.Linear
    }

    property bool mouseAreas: true;





    Grid {
        id: gridi
        columns: 2
        spacing: 2
        anchors.right: parent.right
        anchors.rightMargin: 7
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.bottom: parent.bottom

        Rectangle {
                    id:katrori1
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {
                text: qsTr("TABELA 2.1 \nTOLERANCAT")
                anchors.centerIn: parent
            }

            MouseArea {
                id: mous
                anchors.fill: parent
                enabled: mouseAreas

                onClicked: {
                    loader.setSource("Tabela2-1.qml")
                }
            }
        }

        Rectangle {
            id: katrori2
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {

                text: qsTr("TABELA 8.2 \nPERMASAT E FILE.")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                enabled: mouseAreas

                onClicked: loader.setSource("Tabela8-2.qml")
            }
        }

        Rectangle {
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {

                text: qsTr("TABELA 1")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent

                //onClicked:
            }
        }

        Rectangle {
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {

                text: qsTr("TABELA 1")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent

                //onClicked:
            }
        }

        Rectangle {
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {

                text: qsTr("TABELA 1")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent

                //onClicked:
            }
        }

        Rectangle {
            width: parent.width / 2
            height: parent.height / 6
            color: "lightsteelblue"

            Text {

                text: qsTr("TABELA 8.14 \nSIGMA T, SIGMA Z")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                enabled: mouseAreas

                onClicked: loader.setSource("Tabela8-14.qml")
            }
        }
    }




    Rectangle {
        id: fuck
        color: "lightsteelblue"
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height / 5
        z: 1

        Text {
            id: quit
            text: qsTr("MBYLL")
            anchors.centerIn: parent
            font.pixelSize: 23

        }
        MouseArea {
            anchors.fill: parent

            onClicked: Qt.quit()

        }
    }
}
