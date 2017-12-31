import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("List View Example!")

    ListView {
        width: 180
        height: 200
        delegate: Text {
            text: name + ": " + number
        }
        model: ContactModel {}
    }
}
