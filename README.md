# Molex 7880x BUS TAP
Bus tap to fit between a Molex 78805 socket and a chip in a Molex 78802 carrier

![](Molex_7880x_28_BUS_TAP.jpg)

More pics: https://photos.app.goo.gl/PHQ1rTQFpPRF6NSh8

Provides a connection point for a logic analyzer or oscilloscope to tap the bus between a Molex 78805 socket and a mating Molex 78802 carrier module that would normally be in the socket.

## Parts

Carrier: https://github.com/bkw777/Molex78802_Module/blob/master/Carrier/Molex78802_PCB_28.stl  
  Some places to buy from. Select Material: Nylon, Process: SLS or MJF  
  https://www.sculpteo.com/en/print/molex78802_pcb_28-18/nC7YgK6X  
  https://www.pcbway.com/project/shareproject/Molex_7880x_28_PCB_Carrier_9419cd9c.html

FFC connector (x2): https://www.digikey.com/en/products/detail/amphenol-cs-fci/F52R-1A7H1-11028/11564624

FFC cable - 4" gold - Molex 0150390449 : https://www.digikey.com/en/products/detail/molex/0150390449/11581605  
FFC Cable - 6" gold - Molex 0150390453 : https://www.digikey.com/en/products/detail/molex/0150390453/11581883  
Other FFC Cables in other lengths, copper weight, plating options: https://www.digikey.com/short/pqq5pd04  

Molex 78805 socket: These are no longer made. Find me on the M100 mail list.  
Other options, none very good...  
* Once in a great while they turn up on ebay or other on-line parts supplier
* Use a standard DIP-28 socket, dupont wires, and a DIP-28 test clip. https://ebay.com/itm/403250810350  
* Solder long pins in place of the socket and wedge the module between the pins. https://www.digikey.com/en/products/detail/samtec-inc/ZW-16-15-F-S-225-175/6614101
The width of the module is a little wider than the width of the pins, so the pins need to bend out a little.  

TODO: Design a socket that can be printed and just needs plain wire for the contacts.

Machines with this socket:  
* TRS-80/TANDY Model 100, 102, 200, 600
* Kyotronic KC-85
* Epson PX-4, PX-8
* Intermec 9440, Telexon 710, and similar hand-held teriminals
* Allen-Bradley SLC 500 programmable controllers

Cable notes:  
4" is long enough to reach out from under the nearest side to the socket on all machines.  
6" is long enough to reach the left instead of the front on a Model 200.  
8" is long enough to reach the back on a Model 100, and does still work, but might be getting marginal at this length.  
10" untested  
12" does not work

Related:  
http://tandy.wiki/Molex78802_Module  
https://github.com/bkw777/M4ROM  
http://tandy.wiki/Teeprom  
http://tandy.wiki/REX  
