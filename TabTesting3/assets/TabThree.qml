import bb.cascades 1.0

Page {
    property alias tab3title: tab3title
    property alias maincontainer: maincontainer
    Container {
        id: maincontainer
        background: {
            var blah = app.getValueFor("tog5", "true")
            if (blah == true) {
                maincontainer.background = Color.create(0.9, 0.9, 0.9);
            } else {
                maincontainer.background = Color.create(0.7, 0.8, 0.9);
            }
        }

        Label {
            id: tab3title
            text: "Tab 3 Title"
            
        }

        /*          ToggleButton {
         * id: tog6
         * objectName: "tog6"
         * checked: app.getValueFor(objectName, "true")
         * onCheckedChanged: {
         * 
         * app.saveValueFor(objectName, checked)
         * 
         * if (checked == true) {
         * maincontainer.background = Color.create(0.6,0.6,0.6);
         * } else {
         * maincontainer.background = Color.create(0.8,0.8,0.8);
         * }
         * 
         * }
         * 
         * }
         */
        Container {
            id: page1
            Label {
                text: "Feet?"
                textStyle.fontSizeValue: 10.0
            }
            ToggleButton {
                id: tog
                objectName: "tog"
                checked: app.getValueFor(objectName, "true")
                onCheckedChanged: {
                    app.saveValueFor(tog.objectName, checked)
                    var dropvalue = dd1.at(dd1.selectedIndex).value;
                    if (checked == true) {
                        label1.text = "ft = " + dropvalue;
                        label2.text = "m = " + dropvalue / 3.28084;
                    } else {
                        label1.text = "ft = " + dropvalue * 3.28084;
                        label2.text = "m = " + dropvalue;
                    }
                }
            }
            DropDown {
                id: dd1
                title: "measure"
                onSelectedIndexChanged: {
                    var dropvalue = dd1.at(dd1.selectedIndex).value;
                    if (tog.checked == true) {
                        label1.text = "ft = " + dropvalue;
                        label2.text = "m = " + dropvalue / 3.28084;
                    } else {
                        label1.text = "ft = " + dropvalue * 3.28084;
                        label2.text = "m = " + dropvalue;
                    }
                }
                Option {
                    text: {
                        if (tog.checked == true) "12 ft"; else "12 m";
                    }
                    value: 12
                }
                Option {
                    text: {
                        if (tog.checked == true) "15 ft"; else "15 m";
                    }
                    value: 15
                }
                Option {
                    text: {
                        if (tog.checked == true) "40 ft"; else "40 m";
                    }
                    value: 40
                }
                Option {
                    text: {
                        if (tog.checked == true) "50 ft"; else "50 m";
                    }
                    value: 50
                }
            }
            Label {
                id: label1
                text: ""
            }
            Label {
                id: label2
                text: ""
            }
        }
    }
}
