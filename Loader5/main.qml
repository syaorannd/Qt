import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Loader
    {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        id: loadLoader
        source: "loader.qml"
    }
    Rectangle{
        id: button
        width: 50
        height: 50
        color: "red"
        MouseArea
        {
            anchors.fill: parent
            onClicked: {
                console.log("Clicked!")
                if(button.color == "red")
                {
                    button.color = "green"
                }
                else
                {
                    button.color = "red"
                }

            }
        }
    }

    Connections
    {
        target: loadLoader.item
        onMessage: console.log(msg)
    }
}
