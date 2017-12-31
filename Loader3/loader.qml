import QtQuick 2.0

Rectangle {
    id: load1
    signal sendMess(int msg)
    width: 50
    height: 50
    color: "red"
    MouseArea {
        anchors.fill: parent
        onClicked: load1.sendMess(1)
    }
}
