import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13

Window {
    id: mainwindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        x: 0
        y: 0
        width: mainwindow.width
        height: mainwindow.height

        Button {
            id: button
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Change color!"
        }

        Connections {
            target: button
            onClicked: {
                rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
            }
        }
    }
}
