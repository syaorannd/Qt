import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Loader {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        id: load1
        source:  1 ? "loader.qml" : ""
    }
    Connections {
        id: connect
        target: load1.item
        onMessage: console.log(msg)
    }
}
