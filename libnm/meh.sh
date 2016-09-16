dbus-send --session --print-reply=literal --dest=org.freedesktop.NetworkManager /org/freedesktop org.freedesktop.DBus.ObjectManager.GetManagedObjects
dbus-send --session --print-reply=literal --dest=org.freedesktop.NetworkManager /org/freedesktop/NetworkManager org.freedesktop.NetworkManager.LibnmGlibTest.AddWiredDevice string:eth0 string:12:34:56:78:90:ab array:string:
LIBNM_USE_SESSION_BUS=1 nmcli c add type ethernet ifname 'eth0'
LIBNM_USE_SESSION_BUS=1 nmcli --wait 0 c up ethernet-eth0 ifname eth0

dbus-send --session --print-reply=literal --dest=org.freedesktop.NetworkManager /org/freedesktop/NetworkManager org.freedesktop.NetworkManager.LibnmGlibTest.Restart
