// This sample shows how to remap the PrtSc key to F13
// F13, for example, could then be mapped to one of the image capture functions
// via SysPrefs->Keyboard->Shortcuts

DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0)
{
    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        // overrides for VoodooPS2 configuration...
        "Keyboard", Package()
        {
            "Custom PS2 Map", Package()
            {
                Package(){},
                "e037=64" // PrtSc=F13
            },
            "Custom ADB Map", 
            Package ()
            {
                Package () {}, 
                "e077=6b", // Fix Brightness up/down Keys
                "e078=71"
            }
        }
    })
}