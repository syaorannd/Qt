import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 180
    height: 400
    title: qsTr("Hello World")

    Rectangle {
        id: homescr
        width: 180; height: 200
        Component {
            id: component_1
            Item {
                width: 180; height: 40
                Column {
                    Text { text: '<b>Name:</b> ' + name }
                    Text { text: '<b>Number:</b> ' + number }
                }
            }
        }
        Component {
            id: highlight
            Rectangle {
                width: 180
                height: 40
                color: "lightsteelblue"; radius: 10
                y: list_1.currentItem.y
                Behavior on y {
                    SpringAnimation {
                        spring: 3
                        damping: 0.2
                    }
                }
            }
        }

        ListView {
            id: list_1
            anchors.fill: parent
            model: ComponentModel {}
            delegate: component_1
            highlight: highlight
            highlightFollowsCurrentItem: false
            focus: true

        }

    }
}
