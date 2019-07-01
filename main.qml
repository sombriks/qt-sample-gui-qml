import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainwindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Flow {
        id: element
        x: 0
        y: 0
        width: 640
        height: 480

        Rectangle {
            id: rectangle
            width: 200
            height: 46
            color: "#729fcf"

            Text {
                id: element1
                x: 88
                y: 16
                text: qsTr("Teste")
                font.pixelSize: 12
            }
        }
    }
}
