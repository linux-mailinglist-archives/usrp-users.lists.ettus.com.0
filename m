Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37B706078
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 08:52:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98A0338499B
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 02:52:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684306345; bh=HM4A1RPuouhABZQTeUu/D1cdEN+FvquggFKXk6lLjNU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iveno72OK0zmRzapa7AcDoDhrebQiPROhwjVXg/KYQ60+2Pmt3FSooigE+fYcUCbU
	 KUciKSkFJI0RYVvDL4S9ehP33wgzKTmXmOVwqpSvPCzvmkyOYMW5TI9YpUd3ClQ9HZ
	 e4aYdgvXeyWY10ZiQIL18CJlPO5uevfdKd6NeT8beyXqPsKylkz7NUKdEgTSS23p9N
	 82jKQ4XaRGV9Oj7HqubFJEEV5uCiP2gOHe1+33IWWK9KHGWxCcL+YCdNcG6fMt62fW
	 TGZWCE+faD3OFmXqgjeC/BsroEt8keO7QrxX8glDvKTcSixMje5/TiNwvwW2lBtyD8
	 MrGrEuDW281Aw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B5DB384C36
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 02:51:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684306282; bh=+7a7ijSOnejEDs5JxyOyFFo2FyQrnwACHdWtxo1+rPo=;
	h=Date:To:From:Subject:From;
	b=fhs+4ZYHH0jaqzmhur0ETIam7gLrpZNjpC4LbkdZ6fHf77ngu6Uf8+xcFybIa1gA4
	 vbkOnriokI8l+07rpzMukewo2mFAJcg1OAW4Ec7hqHWDg9gVwvml7/aC3/XAw+CZn9
	 SwBYmNvSdNvny6Glw12t+Qgh3byLYkWSTqMHHZtAsOoNrR6c2KfaFQ3lUYE/3QHXHv
	 p2ouiaXiEISjMuVUHxQxSez52Dn9NeX3IRXP/PB5rJKjUIPZS1qB6vvGLkFujwcbdm
	 apWPqDTF2P2vN+zceCi4GtCYaA7vOzKaBvSmeYp+Fd1tAE5g5jLz34r6P2byKczYm/
	 o7P7ZQLVFkGxg==
Date: Wed, 17 May 2023 06:51:22 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <lYGlv83MtFWb2pGpSo3ZpEOVySuIlvzc3TdybnlJXY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CEJBT2DWOZAYHDXJ5CEM6H632PRB6VVL
X-Message-ID-Hash: CEJBT2DWOZAYHDXJ5CEM6H632PRB6VVL
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CEJBT2DWOZAYHDXJ5CEM6H632PRB6VVL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6931156550074317968=="

This is a multi-part message in MIME format.

--===============6931156550074317968==
Content-Type: multipart/alternative;
 boundary="b1_lYGlv83MtFWb2pGpSo3ZpEOVySuIlvzc3TdybnlJXY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lYGlv83MtFWb2pGpSo3ZpEOVySuIlvzc3TdybnlJXY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

My understanding is that remote streaming is available in UHD>=3D4.3 via:

https://files.ettus.com/manual/page_stream.html#stream_remote

However, I can not get it working using the example python scripts provid=
ed, and also programmatically via C++.

I am using USRP-2974 with UHD host @ 192.168.30.1, USRP @ 192.168.30.2, a=
nd I created a secondary ethernet interface (linux) with address 192.168.=
30.30 on the same interface (network) as UHD host.

Ultimately I want to do this with C++, but I tried it with the example =E2=
=80=9Cremote_rx.py=E2=80=9D to rule out problems with my code.

Can you help me figure out why this doesn=E2=80=99t work?

Thanks,

=E2=80=94Cy

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Below using python scripts =
1st attempt:=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

cjohnson@demo:\~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --ra=
te=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest=
-port=3D54321

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.c=
johnson-fb-sdrx-68-g02558b69

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 8000 bytes.

\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

Requesting sampling rate 200.0 Msps...

Using sampling rate: 200.0 Msps.

Requesting center frequency 1223.0 MHz...

Actual center frequency: 1223.0000032784735 MHz.

Requesting gain 20.0 dB...

Actual gain: 20.0 dB.

Selected 0 RX channels.

Generating RX streamer object...

\[ERROR\] \[RFNOC::LSM\] Cannot identify transport adapter 0 on route to =
EPID 3

Traceback (most recent call last):

  File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.py=
", line 122, in <module>

    sys.exit(main())

  File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.py=
", line 102, in main

    rx_streamer =3D usrp.get_rx_stream(stream_args)

RuntimeError: RuntimeError: Cannot identify transport adapter 0 on route =
to EPID 3

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Below using python scripts =
2nd attempt:=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

cjohnson@demo:\~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --ra=
te=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest=
-port=3D54321 --adapter=3Dsfp1

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.c=
johnson-fb-sdrx-68-g02558b69

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 8000 bytes.

\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

Requesting sampling rate 200.0 Msps...

Using sampling rate: 200.0 Msps.

Requesting center frequency 1223.0 MHz...

Actual center frequency: 1223.0000032784735 MHz.

Requesting gain 20.0 dB...

Actual gain: 20.0 dB.

Selected 0 RX channels.

Generating RX streamer object...

\[ERROR\] \[RFNOC::LSM\] Requested remote UDP streaming, but transport ad=
apter sfp1 does not support it!

Traceback (most recent call last):

  File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.py=
", line 122, in <module>

    sys.exit(main())

  File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.py=
", line 102, in main

    rx_streamer =3D usrp.get_rx_stream(stream_args)

RuntimeError: RuntimeError: Requested remote UDP streaming, but transport=
 adapter sfp1 does not support it!

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Below using c++ attempt:=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94-

Got the following errors after setting some variables and running on the =
command line.  Below is the code and the associated error.

stream_args.args =3D "dest_addr=3D192.168.30.30"; // Gives error "Error: =
ValueError: Missing \`dest_port' argument for remote streaming destinatio=
n!"

stream_args.args =3D "dest_addr=3D192.168.30.30,dest_port=3D12345"; // Se=
tup second interface on host. Gives error "\[ERROR\] \[RFNOC::LSM\] Canno=
t identify transport adapter 0 on route to EPID 3"

stream_args.args =3D "adapter=3Dsfp1,dest_addr=3D192.168.30.30,dest_port=3D=
12345"; // Gives error "\[ERROR\] \[RFNOC::LSM\] Requested remote UDP str=
eaming, but transport adapter sfp1 does not support it!"

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Configuration using probe:=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94-

/usr/bin/uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.c=
johnson-fb-sdrx-68-g02558b69

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 8000 bytes.

\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

  _____________________________________________________

 /

|       Device: X-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: X310

|   |   revision: 12

|   |   revision_compat: 7

|   |   product: 30810

|   |   mac-addr0: 00:80:2f:22:72:89

|   |   mac-addr1: 00:80:2f:22:72:8a

|   |   gateway: 192.168.10.1

|   |   ip-addr0: 192.168.10.2

|   |   subnet0: 255.255.255.0

|   |   ip-addr1: 192.168.40.2

|   |   subnet1: 255.255.255.0

|   |   ip-addr2: 192.168.30.2

|   |   subnet2: 255.255.255.0

|   |   ip-addr3: 255.255.255.255

|   |   subnet3: 255.255.255.0

|   |   serial: 3166635

|   |   FW Version: 6.0

|   |   FPGA Version: 39.0

|   |   FPGA git hash: fffffff-dirty

|   |   RFNoC capable: Yes

|   |  =20

|   |   Time sources:  internal, external, gpsdo

|   |   Clock sources: internal, external, gpsdo

|   |   Sensors: gps_servo, gps_time, gps_locked, gps_gprmc, gps_gpgga, r=
ef_locked

|     _____________________________________________________

|    /

|   |       RFNoC blocks on this device:

|   |  =20

|   |   \* 0/DDC#0

|   |   \* 0/DDC#1

|   |   \* 0/DUC#0

|   |   \* 0/DUC#1

|   |   \* 0/Radio#0

|   |   \* 0/Radio#1

|   |   \* 0/Replay#0

|     _____________________________________________________

|    /

|   |       Static connections on this device:

|   |  =20

|   |   \* 0/SEP#0:0=3D=3D>0/DUC#0:0

|   |   \* 0/DUC#0:0=3D=3D>0/Radio#0:0

|   |   \* 0/Radio#0:0=3D=3D>0/DDC#0:0

|   |   \* 0/DDC#0:0=3D=3D>0/SEP#0:0

|   |   \* 0/Radio#0:1=3D=3D>0/DDC#0:1

|   |   \* 0/DDC#0:1=3D=3D>0/SEP#1:0

|   |   \* 0/SEP#2:0=3D=3D>0/DUC#1:0

|   |   \* 0/DUC#1:0=3D=3D>0/Radio#1:0

|   |   \* 0/Radio#1:0=3D=3D>0/DDC#1:0

|   |   \* 0/DDC#1:0=3D=3D>0/SEP#2:0

|   |   \* 0/Radio#1:1=3D=3D>0/DDC#1:1

|   |   \* 0/DDC#1:1=3D=3D>0/SEP#3:0

|   |   \* 0/SEP#4:0=3D=3D>0/Replay#0:0

|   |   \* 0/Replay#0:0=3D=3D>0/SEP#4:0

|   |   \* 0/SEP#5:0=3D=3D>0/Replay#0:1

|   |   \* 0/Replay#0:1=3D=3D>0/SEP#5:0

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#0

|   |   ID: UBX-TDD (0x0202)

|   |   Serial: 3167155

|   |   Revision: 2

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: UBX TX

|   |   |   Antennas: TX/RX, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 10.000 to 6000.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz

|   |   |   Connection Type: QI

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#0

|   |   ID: UBX-TDD (0x0203)

|   |   Serial: 3167155

|   |   Revision: 2

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: UBX RX

|   |   |   Antennas: TX/RX, RX2, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 10.000 to 6000.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#1

|   |   ID: UBX-TDD (0x0202)

|   |   Serial: 3167159

|   |   Revision: 2

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: UBX TX

|   |   |   Antennas: TX/RX, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 10.000 to 6000.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz

|   |   |   Connection Type: QI

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#1

|   |   ID: UBX-TDD (0x0203)

|   |   Serial: 3167159

|   |   Revision: 2

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: UBX RX

|   |   |   Antennas: TX/RX, RX2, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 10.000 to 6000.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

--b1_lYGlv83MtFWb2pGpSo3ZpEOVySuIlvzc3TdybnlJXY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>My understanding is that remote streaming is available in UHD&=
gt;=3D4.3 via:</p><p>https://files.ettus.com/manual/page_stream.html#stream=
_remote</p><p>However, I can not get it working using the example python sc=
ripts provided, and also programmatically via C++.</p><p>I am using USRP-29=
74 with UHD host @ 192.168.30.1, USRP @ 192.168.30.2, and I created a secon=
dary ethernet interface (linux) with address 192.168.30.30 on the same inte=
rface (network) as UHD host.</p><p>Ultimately I want to do this with C++, b=
ut I tried it with the example =E2=80=9Cremote_rx.py=E2=80=9D to rule out p=
roblems with my code.</p><p>Can you help me figure out why this doesn=
=E2=80=99t work?</p><p>Thanks,</p><p>=E2=80=94Cy</p><p>=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94-Below using python scripts 1st attempt:=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p>cjohnson@demo:~/ettus_repo/uhd/=
host/examples/python$ ./remote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=
=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321</p><p>[INFO] [UHD] li=
nux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohnson-fb-sdrx-68-g0=
2558b69</p><p>[INFO] [X300] X300 initialization sequence...</p><p>[INFO] [X=
300] Maximum frame size: 8000 bytes.</p><p>[INFO] [GPS] Found an internal G=
PSDO: LC_XO, Firmware Rev 0.929a</p><p>[INFO] [X300] Radio 1x clock: 200 MH=
z</p><p>Requesting sampling rate 200.0 Msps...</p><p>Using sampling rate: 2=
00.0 Msps.</p><p>Requesting center frequency 1223.0 MHz...</p><p>Actual cen=
ter frequency: 1223.0000032784735 MHz.</p><p>Requesting gain 20.0 dB...</p>=
<p>Actual gain: 20.0 dB.</p><p>Selected 0 RX channels.</p><p>Generating RX =
streamer object...</p><p>[ERROR] [RFNOC::LSM] Cannot identify transport ada=
pter 0 on route to EPID 3</p><p>Traceback (most recent call last):</p><p>  =
File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.py", l=
ine 122, in &lt;module&gt;</p><p>    sys.exit(main())</p><p>  File "/home/c=
johnson/ettus_repo/uhd/host/examples/python/./remote_rx.py", line 102, in m=
ain</p><p>    rx_streamer =3D usrp.get_rx_stream(stream_args)</p><p>Runtime=
Error: RuntimeError: Cannot identify transport adapter 0 on route to EPID 3=
</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Below using python scr=
ipts 2nd attempt:=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p>cjohnson@demo=
:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --rate=3D200e6 --fre=
q=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321 --ad=
apter=3Dsfp1</p><p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400=
; UHD_4.4.0.cjohnson-fb-sdrx-68-g02558b69</p><p>[INFO] [X300] X300 initiali=
zation sequence...</p><p>[INFO] [X300] Maximum frame size: 8000 bytes.</p><=
p>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</p><p>[I=
NFO] [X300] Radio 1x clock: 200 MHz</p><p>Requesting sampling rate 200.0 Ms=
ps...</p><p>Using sampling rate: 200.0 Msps.</p><p>Requesting center freque=
ncy 1223.0 MHz...</p><p>Actual center frequency: 1223.0000032784735 MHz.</p=
><p>Requesting gain 20.0 dB...</p><p>Actual gain: 20.0 dB.</p><p>Selected 0=
 RX channels.</p><p>Generating RX streamer object...</p><p>[ERROR] [RFNOC::=
LSM] Requested remote UDP streaming, but transport adapter sfp1 does not su=
pport it!</p><p>Traceback (most recent call last):</p><p>  File "/home/cjoh=
nson/ettus_repo/uhd/host/examples/python/./remote_rx.py", line 122, in &lt;=
module&gt;</p><p>    sys.exit(main())</p><p>  File "/home/cjohnson/ettus_re=
po/uhd/host/examples/python/./remote_rx.py", line 102, in main</p><p>    rx=
_streamer =3D usrp.get_rx_stream(stream_args)</p><p>RuntimeError: RuntimeEr=
ror: Requested remote UDP streaming, but transport adapter sfp1 does not su=
pport it!</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Below using c=
++ attempt:=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p>Got the following e=
rrors after setting some variables and running on the command line.  Below =
is the code and the associated error.</p><p>stream_args.args =3D "dest_addr=
=3D192.168.30.30"; // Gives error "Error: ValueError: Missing `dest_port' a=
rgument for remote streaming destination!"</p><p>stream_args.args =3D "dest=
_addr=3D192.168.30.30,dest_port=3D12345"; // Setup second interface on host=
. Gives error "[ERROR] [RFNOC::LSM] Cannot identify transport adapter 0 on =
route to EPID 3"</p><p>stream_args.args =3D "adapter=3Dsfp1,dest_addr=3D192=
.168.30.30,dest_port=3D12345"; // Gives error "[ERROR] [RFNOC::LSM] Request=
ed remote UDP streaming, but transport adapter sfp1 does not support it!"</=
p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-Configuration using prob=
e:=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p>/usr/bin/uhd_usrp_probe</p><=
p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohn=
son-fb-sdrx-68-g02558b69</p><p>[INFO] [X300] X300 initialization sequence..=
.</p><p>[INFO] [X300] Maximum frame size: 8000 bytes.</p><p>[INFO] [GPS] Fo=
und an internal GPSDO: LC_XO, Firmware Rev 0.929a</p><p>[INFO] [X300] Radio=
 1x clock: 200 MHz</p><p>  ________________________________________________=
_____</p><p> /</p><p>|       Device: X-Series Device</p><p>|     __________=
___________________________________________</p><p>|    /</p><p>|   |       =
Mboard: X310</p><p>|   |   revision: 12</p><p>|   |   revision_compat: 7</p=
><p>|   |   product: 30810</p><p>|   |   mac-addr0: 00:80:2f:22:72:89</p><p=
>|   |   mac-addr1: 00:80:2f:22:72:8a</p><p>|   |   gateway: 192.168.10.1</=
p><p>|   |   ip-addr0: 192.168.10.2</p><p>|   |   subnet0: 255.255.255.0</p=
><p>|   |   ip-addr1: 192.168.40.2</p><p>|   |   subnet1: 255.255.255.0</p>=
<p>|   |   ip-addr2: 192.168.30.2</p><p>|   |   subnet2: 255.255.255.0</p><=
p>|   |   ip-addr3: 255.255.255.255</p><p>|   |   subnet3: 255.255.255.0</p=
><p>|   |   serial: 3166635</p><p>|   |   FW Version: 6.0</p><p>|   |   FPG=
A Version: 39.0</p><p>|   |   FPGA git hash: fffffff-dirty</p><p>|   |   RF=
NoC capable: Yes</p><p>|   |   </p><p>|   |   Time sources:  internal, exte=
rnal, gpsdo</p><p>|   |   Clock sources: internal, external, gpsdo</p><p>| =
  |   Sensors: gps_servo, gps_time, gps_locked, gps_gprmc, gps_gpgga, ref_l=
ocked</p><p>|     _____________________________________________________</p>=
<p>|    /</p><p>|   |       RFNoC blocks on this device:</p><p>|   |   </p>=
<p>|   |   * 0/DDC#0</p><p>|   |   * 0/DDC#1</p><p>|   |   * 0/DUC#0</p><p>=
|   |   * 0/DUC#1</p><p>|   |   * 0/Radio#0</p><p>|   |   * 0/Radio#1</p><p=
>|   |   * 0/Replay#0</p><p>|     _________________________________________=
____________</p><p>|    /</p><p>|   |       Static connections on this devi=
ce:</p><p>|   |   </p><p>|   |   * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0</p><p>|   |=
   * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</p><p>|   |   * 0/Radio#0:0=3D=3D&gt;0/=
DDC#0:0</p><p>|   |   * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</p><p>|   |   * 0/Radi=
o#0:1=3D=3D&gt;0/DDC#0:1</p><p>|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0</p><p=
>|   |   * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0</p><p>|   |   * 0/DUC#1:0=3D=3D&gt;=
0/Radio#1:0</p><p>|   |   * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0</p><p>|   |   * =
0/DDC#1:0=3D=3D&gt;0/SEP#2:0</p><p>|   |   * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1=
</p><p>|   |   * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0</p><p>|   |   * 0/SEP#4:0=3D=
=3D&gt;0/Replay#0:0</p><p>|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0</p><p>|=
   |   * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1</p><p>|   |   * 0/Replay#0:1=3D=3D=
&gt;0/SEP#5:0</p><p>|     _________________________________________________=
____</p><p>|    /</p><p>|   |       TX Dboard: 0/Radio#0</p><p>|   |   ID: =
UBX-TDD (0x0202)</p><p>|   |   Serial: 3167155</p><p>|   |   Revision: 2</p=
><p>|   |     _____________________________________________________</p><p>|=
   |    /</p><p>|   |   |       TX Frontend: 0</p><p>|   |   |   Name: UBX =
TX</p><p>|   |   |   Antennas: TX/RX, CAL</p><p>|   |   |   Sensors: lo_loc=
ked</p><p>|   |   |   Freq range: 10.000 to 6000.000 MHz</p><p>|   |   |   =
Gain range PGA0: 0.0 to 31.5 step 0.5 dB</p><p>|   |   |   Bandwidth range:=
 160000000.0 to 160000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type: =
QI</p><p>|   |   |   Uses LO offset: No</p><p>|     _______________________=
______________________________</p><p>|    /</p><p>|   |       RX Dboard: 0/=
Radio#0</p><p>|   |   ID: UBX-TDD (0x0203)</p><p>|   |   Serial: 3167155</p=
><p>|   |   Revision: 2</p><p>|   |     ___________________________________=
__________________</p><p>|   |    /</p><p>|   |   |       RX Frontend: 0</p=
><p>|   |   |   Name: UBX RX</p><p>|   |   |   Antennas: TX/RX, RX2, CAL</p=
><p>|   |   |   Sensors: lo_locked</p><p>|   |   |   Freq range: 10.000 to =
6000.000 MHz</p><p>|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</p>=
<p>|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</p><=
p>|   |   |   Connection Type: IQ</p><p>|   |   |   Uses LO offset: No</p><=
p>|     _____________________________________________________</p><p>|    /<=
/p><p>|   |       TX Dboard: 0/Radio#1</p><p>|   |   ID: UBX-TDD (0x0202)</=
p><p>|   |   Serial: 3167159</p><p>|   |   Revision: 2</p><p>|   |     ____=
_________________________________________________</p><p>|   |    /</p><p>| =
  |   |       TX Frontend: 0</p><p>|   |   |   Name: UBX TX</p><p>|   |   |=
   Antennas: TX/RX, CAL</p><p>|   |   |   Sensors: lo_locked</p><p>|   |   =
|   Freq range: 10.000 to 6000.000 MHz</p><p>|   |   |   Gain range PGA0: 0=
.0 to 31.5 step 0.5 dB</p><p>|   |   |   Bandwidth range: 160000000.0 to 16=
0000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type: QI</p><p>|   |   |=
   Uses LO offset: No</p><p>|     _________________________________________=
____________</p><p>|    /</p><p>|   |       RX Dboard: 0/Radio#1</p><p>|   =
|   ID: UBX-TDD (0x0203)</p><p>|   |   Serial: 3167159</p><p>|   |   Revisi=
on: 2</p><p>|   |     _____________________________________________________=
</p><p>|   |    /</p><p>|   |   |       RX Frontend: 0</p><p>|   |   |   Na=
me: UBX RX</p><p>|   |   |   Antennas: TX/RX, RX2, CAL</p><p>|   |   |   Se=
nsors: lo_locked</p><p>|   |   |   Freq range: 10.000 to 6000.000 MHz</p><p=
>|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</p><p>|   |   |   Ban=
dwidth range: 160000000.0 to 160000000.0 step 0.0 Hz</p><p>|   |   |   Conn=
ection Type: IQ</p><p>|   |   |   Uses LO offset: No</p>

--b1_lYGlv83MtFWb2pGpSo3ZpEOVySuIlvzc3TdybnlJXY--

--===============6931156550074317968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6931156550074317968==--
