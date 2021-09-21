Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B377412F1F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 09:12:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A44D13845F1
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 03:12:06 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92AD5383C28
	for <usrp-users@lists.ettus.com>; Tue, 21 Sep 2021 03:11:19 -0400 (EDT)
Date: Tue, 21 Sep 2021 07:11:19 +0000
To: usrp-users@lists.ettus.com
From: christophe.grimault@novagrid.com
Message-ID: <0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c1fa6123-3f27-153b-f254-003c719ce835@gmail.com
MIME-Version: 1.0
Message-ID-Hash: Y3TZJFZ4NFY4AKHID3S6ORDSY7GFXHHF
X-Message-ID-Hash: Y3TZJFZ4NFY4AKHID3S6ORDSY7GFXHHF
X-MailFrom: christophe.grimault@novagrid.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y3TZJFZ4NFY4AKHID3S6ORDSY7GFXHHF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8049629083363168336=="

This is a multi-part message in MIME format.

--===============8049629083363168336==
Content-Type: multipart/alternative;
 boundary="b1_0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk
Content-Type: text/plain; charset=us-ascii

uhd_config_info --version

UHD 4.1.0.HEAD-0-g96032d06

uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 10.3.1 20210422 (Red Hat 10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06

\[INFO\] \[USRP2\] Opening a USRP2/N-Series device...

\[INFO\] \[USRP2\] Current recv frame size: 1472 bytes

\[INFO\] \[USRP2\] Current send frame size: 1472 bytes

  _____________________________________________________

 /

|       Device: USRP2 / N-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: N210r4

|   |   hardware: 2577

|   |   mac-addr: 00:80:2f:0a:d6:80

|   |   ip-addr: 10.0.0.2

|   |   subnet: 255.255.255.0

|   |   gateway: 0.0.0.0

|   |   gpsdo: internal

|   |   serial: F396E8

|   |   name: N210 #1

|   |   FW Version: 12.4

|   |   FPGA Version: 11.1

|   |   

|   |   Time sources:  none, external, _external_, mimo

|   |   Clock sources: internal, external, mimo

|   |   Sensors: mimo_locked, ref_locked

|   |     _____________________________________________________

|   |    /

|   |   |       RX DSP: 0

|   |   |   

|   |   |   Freq range: -50.000 to 50.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       RX DSP: 1

|   |   |   

|   |   |   Freq range: -50.000 to 50.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       RX Dboard: A

|   |   |   ID: LF RX (0x000f)

|   |   |   Serial: 3071C6C

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: AB

|   |   |   |   Name: LFRX (AB)

|   |   |   |   Antennas: 

|   |   |   |   Sensors: 

|   |   |   |   Freq range: -32.000 to 32.000 MHz

|   |   |   |   Gain Elements: None

|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: BA

|   |   |   |   Name: LFRX (BA)

|   |   |   |   Antennas: 

|   |   |   |   Sensors: 

|   |   |   |   Freq range: -32.000 to 32.000 MHz

|   |   |   |   Gain Elements: None

|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz

|   |   |   |   Connection Type: QI

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: A

|   |   |   |   Name: LFRX (A)

|   |   |   |   Antennas: 

|   |   |   |   Sensors: 

|   |   |   |   Freq range: -32.000 to 32.000 MHz

|   |   |   |   Gain Elements: None

|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz

|   |   |   |   Connection Type: I

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: B

|   |   |   |   Name: LFRX (B)

|   |   |   |   Antennas: 

|   |   |   |   Sensors: 

|   |   |   |   Freq range: -32.000 to 32.000 MHz

|   |   |   |   Gain Elements: None

|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz

|   |   |   |   Connection Type: Q

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Codec: A

|   |   |   |   Name: ads62p44

|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB

|   |   |   |   Gain range fine: 0.0 to 0.5 step 0.1 dB

|   |     _____________________________________________________

|   |    /

|   |   |       TX DSP: 0

|   |   |   

|   |   |   Freq range: -200.000 to 200.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       TX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: 0

|   |   |   |   Name: Unknown (0xffff) - 0

|   |   |   |   Antennas: 

|   |   |   |   Sensors: 

|   |   |   |   Freq range: 0.000 to 0.000 MHz

|   |   |   |   Gain Elements: None

|   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Codec: A

|   |   |   |   Name: ad9777

|   |   |   |   Gain Elements: None

--b1_0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p><br></p><p>uhd_config_info --version</p><p>UHD 4.1.0.HEAD-0-g96032d06</p=
><p><br></p><p>uhd_usrp_probe</p><p>[INFO] [UHD] linux; GNU C++ version 10.=
3.1 20210422 (Red Hat 10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06</=
p><p>[INFO] [USRP2] Opening a USRP2/N-Series device...</p><p>[INFO] [USRP2]=
 Current recv frame size: 1472 bytes</p><p>[INFO] [USRP2] Current send fram=
e size: 1472 bytes</p><p>  ________________________________________________=
_____</p><p> /</p><p>|       Device: USRP2 / N-Series Device</p><p>|     __=
___________________________________________________</p><p>|    /</p><p>|   =
|       Mboard: N210r4</p><p>|   |   hardware: 2577</p><p>|   |   mac-addr:=
 00:80:2f:0a:d6:80</p><p>|   |   ip-addr: 10.0.0.2</p><p>|   |   subnet: 25=
5.255.255.0</p><p>|   |   gateway: 0.0.0.0</p><p>|   |   gpsdo: internal</p=
><p>|   |   serial: F396E8</p><p>|   |   name: N210 #1</p><p>|   |   FW Ver=
sion: 12.4</p><p>|   |   FPGA Version: 11.1</p><p>|   |   </p><p>|   |   Ti=
me sources:  none, external, _external_, mimo</p><p>|   |   Clock sources: =
internal, external, mimo</p><p>|   |   Sensors: mimo_locked, ref_locked</p>=
<p>|   |     _____________________________________________________</p><p>| =
  |    /</p><p>|   |   |       RX DSP: 0</p><p>|   |   |   </p><p>|   |   |=
   Freq range: -50.000 to 50.000 MHz</p><p>|   |     ______________________=
_______________________________</p><p>|   |    /</p><p>|   |   |       RX D=
SP: 1</p><p>|   |   |   </p><p>|   |   |   Freq range: -50.000 to 50.000 MH=
z</p><p>|   |     _____________________________________________________</p>=
<p>|   |    /</p><p>|   |   |       RX Dboard: A</p><p>|   |   |   ID: LF R=
X (0x000f)</p><p>|   |   |   Serial: 3071C6C</p><p>|   |   |     __________=
___________________________________________</p><p>|   |   |    /</p><p>|   =
|   |   |       RX Frontend: AB</p><p>|   |   |   |   Name: LFRX (AB)</p><p=
>|   |   |   |   Antennas: </p><p>|   |   |   |   Sensors: </p><p>|   |   |=
   |   Freq range: -32.000 to 32.000 MHz</p><p>|   |   |   |   Gain Element=
s: None</p><p>|   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 ste=
p 0.0 Hz</p><p>|   |   |   |   Connection Type: IQ</p><p>|   |   |   |   Us=
es LO offset: No</p><p>|   |   |     ______________________________________=
_______________</p><p>|   |   |    /</p><p>|   |   |   |       RX Frontend:=
 BA</p><p>|   |   |   |   Name: LFRX (BA)</p><p>|   |   |   |   Antennas: <=
/p><p>|   |   |   |   Sensors: </p><p>|   |   |   |   Freq range: -32.000 t=
o 32.000 MHz</p><p>|   |   |   |   Gain Elements: None</p><p>|   |   |   | =
  Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz</p><p>|   |   |   |=
   Connection Type: QI</p><p>|   |   |   |   Uses LO offset: No</p><p>|   |=
   |     _____________________________________________________</p><p>|   | =
  |    /</p><p>|   |   |   |       RX Frontend: A</p><p>|   |   |   |   Nam=
e: LFRX (A)</p><p>|   |   |   |   Antennas: </p><p>|   |   |   |   Sensors:=
 </p><p>|   |   |   |   Freq range: -32.000 to 32.000 MHz</p><p>|   |   |  =
 |   Gain Elements: None</p><p>|   |   |   |   Bandwidth range: 32000000.0 =
to 32000000.0 step 0.0 Hz</p><p>|   |   |   |   Connection Type: I</p><p>| =
  |   |   |   Uses LO offset: No</p><p>|   |   |     ______________________=
_______________________________</p><p>|   |   |    /</p><p>|   |   |   |   =
    RX Frontend: B</p><p>|   |   |   |   Name: LFRX (B)</p><p>|   |   |   |=
   Antennas: </p><p>|   |   |   |   Sensors: </p><p>|   |   |   |   Freq ra=
nge: -32.000 to 32.000 MHz</p><p>|   |   |   |   Gain Elements: None</p><p>=
|   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz</p><p=
>|   |   |   |   Connection Type: Q</p><p>|   |   |   |   Uses LO offset: N=
o</p><p>|   |   |     _____________________________________________________=
</p><p>|   |   |    /</p><p>|   |   |   |       RX Codec: A</p><p>|   |   |=
   |   Name: ads62p44</p><p>|   |   |   |   Gain range digital: 0.0 to 6.0 =
step 0.5 dB</p><p>|   |   |   |   Gain range fine: 0.0 to 0.5 step 0.1 dB</=
p><p>|   |     _____________________________________________________</p><p>=
|   |    /</p><p>|   |   |       TX DSP: 0</p><p>|   |   |   </p><p>|   |  =
 |   Freq range: -200.000 to 200.000 MHz</p><p>|   |     __________________=
___________________________________</p><p>|   |    /</p><p>|   |   |       =
TX Dboard: A</p><p>|   |   |     __________________________________________=
___________</p><p>|   |   |    /</p><p>|   |   |   |       TX Frontend: 0</=
p><p>|   |   |   |   Name: Unknown (0xffff) - 0</p><p>|   |   |   |   Anten=
nas: </p><p>|   |   |   |   Sensors: </p><p>|   |   |   |   Freq range: 0.0=
00 to 0.000 MHz</p><p>|   |   |   |   Gain Elements: None</p><p>|   |   |  =
 |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz</p><p>|   |   |   |   Connecti=
on Type: IQ</p><p>|   |   |   |   Uses LO offset: No</p><p>|   |   |     __=
___________________________________________________</p><p>|   |   |    /</p=
><p>|   |   |   |       TX Codec: A</p><p>|   |   |   |   Name: ad9777</p><=
p>|   |   |   |   Gain Elements: None</p>

--b1_0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk--

--===============8049629083363168336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8049629083363168336==--
