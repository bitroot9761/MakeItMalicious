# MakeItMalicious
MakeItMalicious is a tool which creats a malicious apk or exe for you. You can either give an apk or exe to the tool and it will build the malicious apk or exe of the same using msfvenom. If you dont not want to give any apk or exe just press enter and move forward and the tool will make a defualt apk or exe accordingly. You need to give your host IP address and a port number on which you will listen back to. The apk or exe will be created on Desktop in an directory called "MakeItMalicious".

To run the tool navigate to the directory where you have saved it ,from the terminal first type chmod +x MakeItMalicious.sh and then type ./MakeItMalicious.sh and you are in.

After the apk/exe is created you can get a reverse tcp connection using msfconsole.

***IMP: Please note that the apk or exe should be as following:-
1.The size of apk or exe should be small.
2.The version of apk or exe should be old the tool might not be able to make apk or exe of the latest version.

***IMP: If you are giving an apk or exe as an input the permissions will be set according to them only . And if you are not giving any apk or exe all permissions will be set on by default.
