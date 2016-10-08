import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

Item {

    Image {
        source: "qrc:/Image/Menu/background.jpg";
        anchors.centerIn: parent
    }

    /* TITLE */
    Text {
        id: gameTitle
        text: qsTr("Platform Game 2D")
        font.family: "Homestead"
        font.pointSize: 48
        y: parent.height - 100
        anchors.horizontalCenter: parent.horizontalCenter
    }

    DropShadow {
        anchors.fill: gameTitle
        horizontalOffset: 8
        verticalOffset: 8
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: gameTitle
        x: 0; y: 0
    }

    /* MENU ITEMS */
    MyMenuItem {
        id: itemStart
        myX: 80
        myY: -700
        optionName: "Start"
    }

    MyMenuItem {
        id: itemMenu
        myX: 350
        myY: -500
        optionName: "Menu"
    }

    MyMenuItem {
        id: itemExit
        myX: 650
        myY: -580
        optionName: "Exit"
    }

    MyMenuParticleSystem {
        anchors.fill: parent
    }

    property variant arrayItems: [itemExit, itemMenu, itemStart]
    property int index: 0
    property int counter: 0
    property int previous

    function moveUP() {
        previous = index
        index++
        if(index > arrayItems.length - 1) index = 0
        arrayItems[index].myY += 30
        arrayItems[index].myColor = "green"
        if(counter > 0) {
            arrayItems[previous].myColor = "black"
            arrayItems[previous].myY -= 30
        }
        counter++
    }

    function moveDown() {
        previous = index
        index--
        if(index < 0) index = arrayItems.length - 1
        arrayItems[index].myY += 30
        arrayItems[index].myColor = "green"
        if(counter > 0) {
            arrayItems[previous].myColor = "black"
            arrayItems[previous].myY -= 30
        }
        counter++
    }

    /* KEY EVENTS */
    Item {
        focus: true

        Keys.onPressed: {

            if (event.key === Qt.Key_D) {
                console.log("Next");
                moveDown()
            }

            if (event.key === Qt.Key_A) {
                console.log("Previous");
                moveUP()
            }
        }
    }
}
