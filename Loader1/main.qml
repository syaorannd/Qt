import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Loader Component")
    Loader
    {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        sourceComponent: loadCom1
    }
    Component
    {
        id: loadCom1
        Rectangle
        {
            width: 50
            height: 50
            border.color: "black"
            color: "red"
            radius: 10
        }
    }
}
