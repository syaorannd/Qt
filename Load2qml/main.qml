import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Loader {
        id: loader
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea {
        id: mouse_1
        anchors.fill: parent
        onClicked: {
        loader.sourceComponent =  (loader.sourceComponent == btn_green) ? btn_red : btn_green
        }
    }

    Component {
        id: btn_red
        Rectangle {
            width: 100
            height: 100
            color: "red"
        }
    }
    Component {
        id: btn_green
        Rectangle {
            width: 100
            height: 100
            color: "green"
        }
    }
}
