import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {

    property string optionName
    property int myX
    property int myY
    property string myColor: "black"

    Image {
        id: item
        source: "qrc:/Image/Menu/cloud4.png"
        visible: false
        y: myY
        x: myX

        Behavior on y {
            NumberAnimation { duration: 2000 }
        }

        NumberAnimation on y {
            easing.period: Math.random() * 0.2 + 0.2
            easing.amplitude: (Math.random() * 0.2) + 1.5
            easing.type: Easing.InOutElastic
            from: -1400
            to: myY
            duration: 6000
        }
    }

    DropShadow {
        id: shadow
        anchors.fill: item
        horizontalOffset: 8
        verticalOffset: 8
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: item
        x: 0; y: 0
    }

    Text {
        text: optionName
        font.family: "Homestead"
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 15
        anchors.horizontalCenter: item.horizontalCenter
        y: item.y + 900
        color: myColor
    }
}












