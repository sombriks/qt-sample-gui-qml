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
            y: 220
            text: "Change color!"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        TextField {
            id: nome
            x: 266
            y: 127
            text: localctx.nome
            anchors.verticalCenterOffset: -46
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Connections {
        target: nome
        onTextEdited: localctx.nome = nome.text
    }

    Connections {
        target: parent
        onClicked: print("clicked")
    }

    Connections {
        target: button
        onClicked: {
            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
            localctx.foo(x)
        }
    }
}









/*##^## Designer {
    D{i:2;anchors_y:220}
}
 ##^##*/
