import QtQuick 2.0
import "Misk"

Item {
    id: basicItem

    property Palette palette: Palette {}

    property int absoluteX: functionsItem.absoluteXRecursive(basicItem)
    property int absoluteY: functionsItem.absoluteYRecursive(basicItem)

    Item {
        id: functionsItem

        function absoluteXRecursive(item) {
            var ret = 0;
            if (item) {
                 ret += absoluteXRecursive(item.parent);
                 if (item.x) ret += item.x;
            }
            return ret;
        }

        function absoluteYRecursive(item) {
            var ret = 0;
            if (item) {
                 ret += absoluteYRecursive(item.parent);
                 if (item.y) ret += item.y;
            }
            return ret;
        }
    }
}
