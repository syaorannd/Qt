import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Loader {
        id: myLoader
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "loader.qml"
    }
    Connections {
        target: myLoader.item
        onSendMess: console.log(msg);
    }
}
