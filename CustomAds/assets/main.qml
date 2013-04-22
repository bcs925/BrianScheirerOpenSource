// Default empty project template
import bb.cascades 1.0


// creates one page with a label
Page {
    Container{
        layout: DockLayout {
        }
        background: Color.create("#ffffff82")
        MyAds{
            horizontalAlignment: HorizontalAlignment.Center
            topPadding: 15.0

        }
        
        Container {
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            Label {
                text: "TITLE OF MY GAME"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.XXLarge

            }
            Button {
                text: "Play"
                horizontalAlignment: HorizontalAlignment.Center

            }
            Button {
                text: "Options"
                horizontalAlignment: HorizontalAlignment.Center

            }
        }
    }
    
}
