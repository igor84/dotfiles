#!/usr/bin/env bash

sed -i.bak '/rs: Serbian (Latin, Unicode, QWERTY)/a \  latinen         rs: Serbian (Latin, QWERTYEN)' /usr/share/X11/xkb/rules/base.lst

sed -i.bak '/<description>Serbian (Latin, Unicode, QWERTY)<\/description>/a \          <\/configItem>\n        <\/variant>\n        <variant>\n          <configItem>\n            <name>latinen<\/name>\n            <description>Serbian (LatinEn)<\/description>' /usr/share/X11/xkb/rules/base.xml

sed -i.bak '/rs: Serbian (Latin, Unicode, QWERTY)/a \  latinen         rs: Serbian (Latin, QWERTYEN)' /usr/share/X11/xkb/rules/evdev.lst

sed -i.bak '/<description>Serbian (Latin, Unicode, QWERTY)<\/description>/a \          <\/configItem>\n        <\/variant>\n        <variant>\n          <configItem>\n            <name>latinen<\/name>\n            <description>Serbian (LatinEn)<\/description>' /usr/share/X11/xkb/rules/evdev.xml

sed -i.bak 's/xkb_symbols "latinunicodeyz"/xkb_symbols "latinen" {\n    \/\/ For those who insist on using "english-position" everything\n\n    include "rs(latin)"\n    name[Group1]= "Serbian (Latin, ENQWERTY)";\n\n    key <AD06> { [ y,              Y             ] };\n    key <AB01> { [ z,              Z             ] };\n    key <AE02> { [ 2,              quotedbl,      at,          at           ] };\n    key <AE04> { [ 4,              dollar,        EuroSign,    EuroSign     ] };\n    key <AE05> { [ 5,              percent       ] };\n    key <AE06> { [ 6,              asciicircum   ] };\n    key <AE07> { [ 7,              ampersand     ] };\n    key <AE08> { [ 8,              asterisk      ] };\n    key <AE09> { [ 9,              parenleft     ] };\n    key <AE10> { [ 0,              parenright    ] };\n    key <AE11> { [ minus,          underscore    ] };\n    key <AE12> { [ equal,          plus          ] };\n\n    key <AD11>    { [scaron,         Scaron,        bracketleft,  braceleft   ] };\n    key <AD12>    { [dstroke,        Dstroke,       bracketright, braceright  ] };\n\n    key <AC11> { [ cacute,         Cacute,        apostrophe        ] };\n\n    key <BKSL> { [ zcaron,         Zcaron,        backslash,        bar     ] };\n    key <AB08> { [ comma,          semicolon,     less                      ] };\n    key <AB09> { [ period,         colon,         greater                   ] };\n    key <AB10> { [ slash,          question      ] };\n\n};\n\npartial alphanumeric_keys\nxkb_symbols "latinunicodeyz"/g' /usr/share/X11/xkb/symbols/rs