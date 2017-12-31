import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Change Color")
    Rectangle {
        width: 100
        height: 100
        color: "green"

        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton)
                    parent.color = 'blue';
                else
                    parent.color = 'red';
            }
        }
    }
}
