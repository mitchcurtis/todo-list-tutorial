import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Frame {
    ListView {
        implicitWidth: 250
        implicitHeight: 250
        model: 100
        delegate: RowLayout {
            CheckBox {}
            TextField {}
        }
    }
}
