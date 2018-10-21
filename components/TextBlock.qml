import QtQuick 2.0

import "../components" as SaroniteComponents

TextEdit {
    color: SaroniteComponents.Style.defaultFontColor
    font.family: SaroniteComponents.Style.fontRegular.name
    selectionColor: SaroniteComponents.Style.dimmedFontColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
