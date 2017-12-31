import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        width: 100; height: 100

        Loader {
           id: myLoader
           source: "loader.qml"
        }

        Connections {
            target: myLoader.item
            onMessage: console.log(msg)
        }
    }
}
