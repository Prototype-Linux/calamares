import QtQuick 2.0

Presentation {
    id: presentation

    Slide {
        Image {
            id: background1
            source: "welcome.svg"
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectFit
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            text: "Welcome to Prototype Linux"
            color: "white"
            font.pixelSize: 24
        }
    }

    function nextSlide() {
        presentation.goToNextSlide()
    }

    Timer {
        interval: 5000
        running: true
        repeat: true
        onTriggered: presentation.nextSlide()
    }
}
