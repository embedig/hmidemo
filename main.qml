import QtQuick 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import QtQuick.Window 2.0
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Dialogs 1.1

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 480
    title: qsTr("Raspberry Pi 4 touchscreen demo")

    Page1Form {
        slider1.onValueChanged:
        {
            if(repeater1.itemAt(repeater1.count-slider1.value) !== null)
                repeater1.itemAt(repeater1.count-slider1.value).visible = !(repeater1.itemAt(repeater1.count-slider1.value).visible);
        }
        slider.onValueChanged:
        {
            if(repeater.itemAt(repeater.count-slider.value) !== null)
                repeater.itemAt(repeater.count-slider.value).visible = !(repeater.itemAt(repeater.count-slider.value).visible);
        }
    }

}
