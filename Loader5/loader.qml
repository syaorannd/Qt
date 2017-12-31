import QtQuick 2.0

Rectangle
{
    id: myItem
    signal message(string msg)
    width: 50
    height: 50
    color: "red"
    border.color: "black"
    radius: 10
    MouseArea
    {
        id: are_rec
        anchors.fill: parent
        onClicked: {
            myItem.message("ThinhNN2 Clicked!")
            myItem.color = (myItem.color == "red") ? "green" : "red"
        }
    }
}
