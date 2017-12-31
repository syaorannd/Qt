import QtQuick 2.0

Rectangle {
    id: rec
    signal message(string msg);
    width: 50
    height: 50
    color: "red"
    MouseArea {
        anchors.fill: parent
        onClicked:
        {
            rec.message("Thinh clicked!")
        }
    }
}
