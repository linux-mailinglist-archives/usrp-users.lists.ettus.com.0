Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F846779C
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 13:48:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BC023854BE
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 07:48:50 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B98EB384974
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 07:47:25 -0500 (EST)
Date: Fri, 3 Dec 2021 12:47:25 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTRgrR7n1Ek7Y9aVwE-TCo=WkAe91fQwbZ7qx1hum+EFrQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: OTC5HFY3SJUBWLWJLNCJAEAZBHTQBXVL
X-Message-ID-Hash: OTC5HFY3SJUBWLWJLNCJAEAZBHTQBXVL
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OTC5HFY3SJUBWLWJLNCJAEAZBHTQBXVL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1919173146091155477=="

This is a multi-part message in MIME format.

--===============1919173146091155477==
Content-Type: multipart/alternative;
 boundary="b1_lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY
Content-Type: text/plain; charset=us-ascii

This is what I obtain from the two commands. In the image loader command, if I do not specify the image it takes automatically the XG, which is the same I used to program the FPGA with Vivado (2x10G).

```
abusso@ttclabsdr:~$ uhd_usrp_probe
```

```
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
```

```
-- X300 initialization sequence...
```

```
-- Determining maximum frame size... 8000 bytes.
```

```
-- Setup basic communication...
```

```
-- Loading values from EEPROM...
```

```
-- Setup RF frontend clocking...
```

```
-- Radio 1x clock:200
```

```
-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1302.6MB/s)
```

```
-- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1304.5MB/s)
```

```
-- [RFNoC Radio] Performing register loopback test... pass
```

```
-- [RFNoC Radio] Performing register loopback test... pass
```

```
-- [RFNoC Radio] Performing register loopback test... pass
```

```
-- [RFNoC Radio] Performing register loopback test... pass
```

```
-- Performing timer loopback test... pass
```

```
-- Performing timer loopback test... pass
```

```
  _____________________________________________________
```

```
 /
```

```
|       Device: X-Series Device
```

```
|     _____________________________________________________
```

```
|    /
```

```
|   |       Mboard: X310
```

```
|   |   revision: 11
```

```
|   |   revision_compat: 7
```

```
|   |   product: 30818
```

```
|   |   mac-addr0: 00:80:2f:30:8e:01
```

```
|   |   mac-addr1: 00:80:2f:30:8e:02
```

```
|   |   gateway: 192.168.10.1
```

```
|   |   ip-addr0: 192.168.10.2
```

```
|   |   subnet0: 255.255.255.0
```

```
|   |   ip-addr1: 192.168.20.2
```

```
|   |   subnet1: 255.255.255.0
```

```
|   |   ip-addr2: 192.168.30.2
```

```
|   |   subnet2: 255.255.255.0
```

```
|   |   ip-addr3: 192.168.40.2
```

```
|   |   subnet3: 255.255.255.0
```

```
|   |   serial: 31D7872
```

```
|   |   name: TTC_X310
```

```
|   |   FW Version: 5.1
```

```
|   |   FPGA Version: 33.0
```

```
|   |   RFNoC capable: Yes
```

```
|   |
```

```
|   |   Time sources:  internal, external, gpsdo
```

```
|   |   Clock sources: internal, external, gpsdo
```

```
|   |   Sensors: ref_locked
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Dboard: A
```

```
|   |   |   ID: UBX-160 v2 (0x007e)
```

```
|   |   |   Serial: 31D5853
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       RX Frontend: 0
```

```
|   |   |   |   Name: UBX RX
```

```
|   |   |   |   Antennas: TX/RX, RX2, CAL
```

```
|   |   |   |   Sensors: lo_locked
```

```
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
```

```
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
```

```
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
```

```
|   |   |   |   Connection Type: IQ
```

```
|   |   |   |   Uses LO offset: No
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       RX Codec: A
```

```
|   |   |   |   Name: ads62p48
```

```
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RX Dboard: B
```

```
|   |   |   ID: UBX-160 v2 (0x007e)
```

```
|   |   |   Serial: 31D5807
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       RX Frontend: 0
```

```
|   |   |   |   Name: UBX RX
```

```
|   |   |   |   Antennas: TX/RX, RX2, CAL
```

```
|   |   |   |   Sensors: lo_locked
```

```
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
```

```
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
```

```
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
```

```
|   |   |   |   Connection Type: IQ
```

```
|   |   |   |   Uses LO offset: No
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       RX Codec: B
```

```
|   |   |   |   Name: ads62p48
```

```
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Dboard: A
```

```
|   |   |   ID: UBX-160 v2 (0x007d)
```

```
|   |   |   Serial: 31D5853
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       TX Frontend: 0
```

```
|   |   |   |   Name: UBX TX
```

```
|   |   |   |   Antennas: TX/RX, CAL
```

```
|   |   |   |   Sensors: lo_locked
```

```
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
```

```
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
```

```
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
```

```
|   |   |   |   Connection Type: QI
```

```
|   |   |   |   Uses LO offset: No
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       TX Codec: A
```

```
|   |   |   |   Name: ad9146
```

```
|   |   |   |   Gain Elements: None
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       TX Dboard: B
```

```
|   |   |   ID: UBX-160 v2 (0x007d)
```

```
|   |   |   Serial: 31D5807
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       TX Frontend: 0
```

```
|   |   |   |   Name: UBX TX
```

```
|   |   |   |   Antennas: TX/RX, CAL
```

```
|   |   |   |   Sensors: lo_locked
```

```
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
```

```
|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
```

```
|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
```

```
|   |   |   |   Connection Type: QI
```

```
|   |   |   |   Uses LO offset: No
```

```
|   |   |     _____________________________________________________
```

```
|   |   |    /
```

```
|   |   |   |       TX Codec: B
```

```
|   |   |   |   Name: ad9146
```

```
|   |   |   |   Gain Elements: None
```

```
|   |     _____________________________________________________
```

```
|   |    /
```

```
|   |   |       RFNoC blocks on this device:
```

```
|   |   |
```

```
|   |   |   * DmaFIFO_0
```

```
|   |   |   * Radio_0
```

```
|   |   |   * Radio_1
```

```
|   |   |   * DDC_0
```

```
|   |   |   * DDC_1
```

```
|   |   |   * DUC_0
```

```
|   |   |   * DUC_1
```

```
abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2"
```

```
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
```

```
Unit: USRP X310 (31D7872, 192.168.30.2)
```

```
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
```

```
failed.
```

```
Error: RuntimeError: Device reported an error during initialization.
```

```
abusso@ttclabsdr:~$
```

--b1_lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>This is what I obtain from the two commands. In the image loader command=
, if I do not specify the image it takes automatically the XG, which is the=
 same I used to program the FPGA with Vivado (2x10G).</p><p><br></p><pre><c=
ode>abusso@ttclabsdr:~$ uhd_usrp_probe</code></pre><pre><code>linux; GNU C+=
+ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown</code></pre><p=
re><code>-- X300 initialization sequence...</code></pre><pre><code>-- Deter=
mining maximum frame size... 8000 bytes.</code></pre><pre><code>-- Setup ba=
sic communication...</code></pre><pre><code>-- Loading values from EEPROM..=
.</code></pre><pre><code>-- Setup RF frontend clocking...</code></pre><pre>=
<code>-- Radio 1x clock:200</code></pre><pre><code>-- [DMA FIFO] Running BI=
ST for FIFO 0... pass (Throughput: 1302.6MB/s)</code></pre><pre><code>-- [D=
MA FIFO] Running BIST for FIFO 1... pass (Throughput: 1304.5MB/s)</code></p=
re><pre><code>-- [RFNoC Radio] Performing register loopback test... pass</c=
ode></pre><pre><code>-- [RFNoC Radio] Performing register loopback test... =
pass</code></pre><pre><code>-- [RFNoC Radio] Performing register loopback t=
est... pass</code></pre><pre><code>-- [RFNoC Radio] Performing register loo=
pback test... pass</code></pre><pre><code>-- Performing timer loopback test=
... pass</code></pre><pre><code>-- Performing timer loopback test... pass</=
code></pre><pre><code>  ___________________________________________________=
__</code></pre><pre><code> /</code></pre><pre><code>|       Device: X-Serie=
s Device</code></pre><pre><code>|     _____________________________________=
________________</code></pre><pre><code>|    /</code></pre><pre><code>|   |=
       Mboard: X310</code></pre><pre><code>|   |   revision: 11</code></pre=
><pre><code>|   |   revision_compat: 7</code></pre><pre><code>|   |   produ=
ct: 30818</code></pre><pre><code>|   |   mac-addr0: 00:80:2f:30:8e:01</code=
></pre><pre><code>|   |   mac-addr1: 00:80:2f:30:8e:02</code></pre><pre><co=
de>|   |   gateway: 192.168.10.1</code></pre><pre><code>|   |   ip-addr0: 1=
92.168.10.2</code></pre><pre><code>|   |   subnet0: 255.255.255.0</code></p=
re><pre><code>|   |   ip-addr1: 192.168.20.2</code></pre><pre><code>|   |  =
 subnet1: 255.255.255.0</code></pre><pre><code>|   |   ip-addr2: 192.168.30=
.2</code></pre><pre><code>|   |   subnet2: 255.255.255.0</code></pre><pre><=
code>|   |   ip-addr3: 192.168.40.2</code></pre><pre><code>|   |   subnet3:=
 255.255.255.0</code></pre><pre><code>|   |   serial: 31D7872</code></pre><=
pre><code>|   |   name: TTC_X310</code></pre><pre><code>|   |   FW Version:=
 5.1</code></pre><pre><code>|   |   FPGA Version: 33.0</code></pre><pre><co=
de>|   |   RFNoC capable: Yes</code></pre><pre><code>|   |</code></pre><pre=
><code>|   |   Time sources:  internal, external, gpsdo</code></pre><pre><c=
ode>|   |   Clock sources: internal, external, gpsdo</code></pre><pre><code=
>|   |   Sensors: ref_locked</code></pre><pre><code>|   |     _____________=
________________________________________</code></pre><pre><code>|   |    /<=
/code></pre><pre><code>|   |   |       RX Dboard: A</code></pre><pre><code>=
|   |   |   ID: UBX-160 v2 (0x007e)</code></pre><pre><code>|   |   |   Seri=
al: 31D5853</code></pre><pre><code>|   |   |     __________________________=
___________________________</code></pre><pre><code>|   |   |    /</code></p=
re><pre><code>|   |   |   |       RX Frontend: 0</code></pre><pre><code>|  =
 |   |   |   Name: UBX RX</code></pre><pre><code>|   |   |   |   Antennas: =
TX/RX, RX2, CAL</code></pre><pre><code>|   |   |   |   Sensors: lo_locked</=
code></pre><pre><code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</c=
ode></pre><pre><code>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 =
dB</code></pre><pre><code>|   |   |   |   Bandwidth range: 160000000.0 to 1=
60000000.0 step 0.0 Hz</code></pre><pre><code>|   |   |   |   Connection Ty=
pe: IQ</code></pre><pre><code>|   |   |   |   Uses LO offset: No</code></pr=
e><pre><code>|   |   |     ________________________________________________=
_____</code></pre><pre><code>|   |   |    /</code></pre><pre><code>|   |   =
|   |       RX Codec: A</code></pre><pre><code>|   |   |   |   Name: ads62p=
48</code></pre><pre><code>|   |   |   |   Gain range digital: 0.0 to 6.0 st=
ep 0.5 dB</code></pre><pre><code>|   |     ________________________________=
_____________________</code></pre><pre><code>|   |    /</code></pre><pre><c=
ode>|   |   |       RX Dboard: B</code></pre><pre><code>|   |   |   ID: UBX=
-160 v2 (0x007e)</code></pre><pre><code>|   |   |   Serial: 31D5807</code><=
/pre><pre><code>|   |   |     _____________________________________________=
________</code></pre><pre><code>|   |   |    /</code></pre><pre><code>|   |=
   |   |       RX Frontend: 0</code></pre><pre><code>|   |   |   |   Name: =
UBX RX</code></pre><pre><code>|   |   |   |   Antennas: TX/RX, RX2, CAL</co=
de></pre><pre><code>|   |   |   |   Sensors: lo_locked</code></pre><pre><co=
de>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre><pre><cod=
e>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre><pre=
><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0=
 Hz</code></pre><pre><code>|   |   |   |   Connection Type: IQ</code></pre>=
<pre><code>|   |   |   |   Uses LO offset: No</code></pre><pre><code>|   | =
  |     _____________________________________________________</code></pre><=
pre><code>|   |   |    /</code></pre><pre><code>|   |   |   |       RX Code=
c: B</code></pre><pre><code>|   |   |   |   Name: ads62p48</code></pre><pre=
><code>|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB</code></p=
re><pre><code>|   |     ___________________________________________________=
__</code></pre><pre><code>|   |    /</code></pre><pre><code>|   |   |      =
 TX Dboard: A</code></pre><pre><code>|   |   |   ID: UBX-160 v2 (0x007d)</c=
ode></pre><pre><code>|   |   |   Serial: 31D5853</code></pre><pre><code>|  =
 |   |     _____________________________________________________</code></pr=
e><pre><code>|   |   |    /</code></pre><pre><code>|   |   |   |       TX F=
rontend: 0</code></pre><pre><code>|   |   |   |   Name: UBX TX</code></pre>=
<pre><code>|   |   |   |   Antennas: TX/RX, CAL</code></pre><pre><code>|   =
|   |   |   Sensors: lo_locked</code></pre><pre><code>|   |   |   |   Freq =
range: 10.000 to 6000.000 MHz</code></pre><pre><code>|   |   |   |   Gain r=
ange PGA0: 0.0 to 31.5 step 0.5 dB</code></pre><pre><code>|   |   |   |   B=
andwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</code></pre><pre><co=
de>|   |   |   |   Connection Type: QI</code></pre><pre><code>|   |   |   |=
   Uses LO offset: No</code></pre><pre><code>|   |   |     ________________=
_____________________________________</code></pre><pre><code>|   |   |    /=
</code></pre><pre><code>|   |   |   |       TX Codec: A</code></pre><pre><c=
ode>|   |   |   |   Name: ad9146</code></pre><pre><code>|   |   |   |   Gai=
n Elements: None</code></pre><pre><code>|   |     _________________________=
____________________________</code></pre><pre><code>|   |    /</code></pre>=
<pre><code>|   |   |       TX Dboard: B</code></pre><pre><code>|   |   |   =
ID: UBX-160 v2 (0x007d)</code></pre><pre><code>|   |   |   Serial: 31D5807<=
/code></pre><pre><code>|   |   |     ______________________________________=
_______________</code></pre><pre><code>|   |   |    /</code></pre><pre><cod=
e>|   |   |   |       TX Frontend: 0</code></pre><pre><code>|   |   |   |  =
 Name: UBX TX</code></pre><pre><code>|   |   |   |   Antennas: TX/RX, CAL</=
code></pre><pre><code>|   |   |   |   Sensors: lo_locked</code></pre><pre><=
code>|   |   |   |   Freq range: 10.000 to 6000.000 MHz</code></pre><pre><c=
ode>|   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</code></pre><p=
re><code>|   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0=
.0 Hz</code></pre><pre><code>|   |   |   |   Connection Type: QI</code></pr=
e><pre><code>|   |   |   |   Uses LO offset: No</code></pre><pre><code>|   =
|   |     _____________________________________________________</code></pre=
><pre><code>|   |   |    /</code></pre><pre><code>|   |   |   |       TX Co=
dec: B</code></pre><pre><code>|   |   |   |   Name: ad9146</code></pre><pre=
><code>|   |   |   |   Gain Elements: None</code></pre><pre><code>|   |    =
 _____________________________________________________</code></pre><pre><co=
de>|   |    /</code></pre><pre><code>|   |   |       RFNoC blocks on this d=
evice:</code></pre><pre><code>|   |   |</code></pre><pre><code>|   |   |   =
* DmaFIFO_0</code></pre><pre><code>|   |   |   * Radio_0</code></pre><pre><=
code>|   |   |   * Radio_1</code></pre><pre><code>|   |   |   * DDC_0</code=
></pre><pre><code>|   |   |   * DDC_1</code></pre><pre><code>|   |   |   * =
DUC_0</code></pre><pre><code>|   |   |   * DUC_1</code></pre><pre><code>abu=
sso@ttclabsdr:~$ uhd_image_loader --args "type=3Dx300,addr=3D192.168.30.2"<=
/code></pre><pre><code>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.=
010.003.000-0-unknown</code></pre><pre><code>Unit: USRP X310 (31D7872, 192.=
168.30.2)</code></pre><pre><code>FPGA Image: /usr/share/uhd/images/usrp_x31=
0_fpga_XG.bit</code></pre><pre><code>failed.</code></pre><pre><code>Error: =
RuntimeError: Device reported an error during initialization.</code></pre><=
pre><code>abusso@ttclabsdr:~$</code></pre>

--b1_lCGsct4RCOZWgE6Dmd9IcKXI2ftf6IAZQDVPMRJuyY--

--===============1919173146091155477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1919173146091155477==--
