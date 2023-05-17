Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8E9707067
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 20:05:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B75B3849E9
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 14:05:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684346701; bh=2XX/Mgl0CgP5CKT7/+EX8PKex6WgWDpeP0dDsG+Ln+Y=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j0mFi6L8x1CQpdGYyrsPYsKXFnJB2t91O0ZSbOEj5wVr3KqpuAThto3bcruJEvM1+
	 kLazzPrESyJ7AEyE7PDOIjc4hDgbaLTQNqfxGcvB3EOWbaAT+qq+b54Ha/Png+AKAE
	 dPmYVrRJ/LaIZxEUYIu1G0rFHzpA2JKuq6z+64f5BPDeLhCgSottKuB/kcUvbeUWeC
	 PNdrtRq0X++TUHB1tEskZ8kYCLMzqWrSrxAGCHFXS3mCT+6ij674VWa4Lcg8NSNiCg
	 zmIMHgRfUuPYFwETDGV9RYCRHeknWCUSu6MUM5cQUzIsGNVWNErD2XNR+N1XysPZli
	 QoLHd+9fwYZ8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD11F3849C6
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:03:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684346639; bh=g7UY9hf2DS/AYTV50FWXI/icypcoYSIkQC2Q4/TVx24=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Bh2PUOIjD2nx5jkWjT7Ka8AzTgu1TcePc6TC95jjDB4dKbxb88BEGXLy2y86HLRws
	 a906XD0Yr6XRp2Ofsru3pespecJIizd0rtCG5pqRQ4in34dU21O53bnjBZaPX5OzVV
	 NyQGExgxX1hdilLf91v2Ii6BPbl+GMfA1Jd2FRUCVxU8NbcbiDYrLubproKeRCgzuh
	 j4JmyL29V5gFMB282nHUbl20HnPU3Z8sWKc3AYp2WR/BjvzQe9/Lma/Id5kG6zEwq0
	 HBvlhbtVsb/xECAcy4ZKTfJsJ3wiN6jJqr0N2uvPyr+1MQtMaWtSgaVzU7obaAbNhx
	 8/GDCM4swBhKQ==
Date: Wed, 17 May 2023 18:03:59 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: DA093A6D-99FA-46D1-A5E7-1A1B100766B6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QV2VHQFPAJ44UCK5MTANWHDAHNXRLBD4
X-Message-ID-Hash: QV2VHQFPAJ44UCK5MTANWHDAHNXRLBD4
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QV2VHQFPAJ44UCK5MTANWHDAHNXRLBD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1730253037120356638=="

This is a multi-part message in MIME format.

--===============1730253037120356638==
Content-Type: multipart/alternative;
 boundary="b1_6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Better news.  In an attempt to get my system to match what you might be u=
sing, a =E2=80=9Cknown=E2=80=9D state, I updated the FPGA image.

So the =E2=80=9CRequested remote UDP streaming, but transport adapter sfp=
1 does not support it!" is gone, and I am at =E2=80=9CDevice was unable t=
o look up Ethernet (MAC) address for IP address 192.168.30.30. Make sure =
device is correctly connected, or provide MAC address manually.=E2=80=9D

Again, I saw no arps.  Added the mac, it starts up, but I don=E2=80=99t s=
ee any traffic to 192.168.30.30 using tcpdump, only a trickle of control =
between 192.168.30.1 and 192.168.30.2.

I went back and added all those parameters to my c++ code, with the same =
result, no remote streaming.

How can I demonstrate a KNOWN working version, including the stream recei=
ver (in my case 192.168.30.30).  What do you use along with =E2=80=9Cremo=
te_rx.py=E2=80=9D to validate proper behavior?

Thanks again,

=E2=80=94Cy

> ```
> cjohnson@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --r=
ate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --des=
t-port=3D54321 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjo=
hnson-fb-sdrx-68-g02558b69
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
> Requesting sampling rate 200.0 Msps...
> Using sampling rate: 200.0 Msps.
> Requesting center frequency 1223.0 MHz...
> Actual center frequency: 1223.0000032784735 MHz.
> Requesting gain 20.0 dB...
> Actual gain: 20.0 dB.
> Selected 0 RX channels.
> Generating RX streamer object...
> Starting stream...
> Stream started. Press Ctrl-C to stop.
> ```

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94- Message about add MAC address manually =E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

> ```
> cjohnson@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --r=
ate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --des=
t-port=3D54321 --adapter=3Dsfp1
> ```
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0=
.cjohnson-fb-sdrx-68-g02558b69
>
> \[INFO\] \[X300\] X300 initialization sequence...
>
> \[INFO\] \[X300\] Maximum frame size: 8000 bytes.
>
> \[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>
> \[INFO\] \[X300\] Radio 1x clock: 200 MHz
>
> Requesting sampling rate 200.0 Msps...
>
> Using sampling rate: 200.0 Msps.
>
> Requesting center frequency 1223.0 MHz...
>
> Actual center frequency: 1223.0000032784735 MHz.
>
> Requesting gain 20.0 dB...
>
> Actual gain: 20.0 dB.
>
> Selected 0 RX channels.
>
> Generating RX streamer object...
>
> \[ERROR\] \[X300::SFP1::TA_CTL\] Device was unable to look up Ethernet =
(MAC) address for IP address 192.168.30.30. Make sure device is correctly=
 connected, or provide MAC address manually.
>
> Traceback (most recent call last):
>
>   File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.=
py", line 122, in <module>
>
>     sys.exit(main())
>
>   File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_rx.=
py", line 102, in main
>
>     rx_streamer =3D usrp.get_rx_stream(stream_args)
>
> RuntimeError: LookupError: Device was unable to look up Ethernet (MAC) =
address for IP address 192.168.30.30. Make sure device is correctly conne=
cted, or provide MAC address manually.

Here is the fpga image info using probe:

> |   |   FW Version: 6.1
>
> |   |   FPGA Version: 39.1
>
> |   |   FPGA git hash: 92c09f7
>
> |   |   RFNoC capable: Yes

--b1_6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Better news.  In an attempt to get my system to match w=
hat you might be using, a =E2=80=9Cknown=E2=80=9D state, I updated the FPGA=
 image.</p><p>So the =E2=80=9CRequested remote UDP streaming, but transport=
 adapter sfp1 does not support it!" is gone, and I am at =E2=80=9CDevice wa=
s unable to look up Ethernet (MAC) address for IP address 192.168.30.30. Ma=
ke sure device is correctly connected, or provide MAC address manually.=
=E2=80=9D</p><p>Again, I saw no arps.  Added the mac, it starts up, but I d=
on=E2=80=99t see any traffic to 192.168.30.30 using tcpdump, only a trickle=
 of control between 192.168.30.1 and 192.168.30.2.</p><p>I went back and ad=
ded all those parameters to my c++ code, with the same result, no remote st=
reaming.</p><p>How can I demonstrate a KNOWN working version, including the=
 stream receiver (in my case 192.168.30.30).  What do you use along with =
=E2=80=9Cremote_rx.py=E2=80=9D to validate proper behavior?</p><p>Thanks ag=
ain,</p><p>=E2=80=94Cy</p><p><br></p><blockquote><pre><code>cjohnson@demo:~=
/ettus_repo/uhd/host/examples/python$ ./remote_rx.py --rate=3D200e6 --freq=
=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321 --ada=
pter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.cjohnso=
n-fb-sdrx-68-g02558b69
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Requesting sampling rate 200.0 Msps...
Using sampling rate: 200.0 Msps.
Requesting center frequency 1223.0 MHz...
Actual center frequency: 1223.0000032784735 MHz.
Requesting gain 20.0 dB...
Actual gain: 20.0 dB.
Selected 0 RX channels.
Generating RX streamer object...
Starting stream...
Stream started. Press Ctrl-C to stop.</code></pre></blockquote><p><br></p><=
p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94- Message about add MAC address manually =
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><blockquote><pre=
><code>cjohnson@demo:~/ettus_repo/uhd/host/examples/python$ ./remote_rx.py =
--rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --de=
st-port=3D54321 --adapter=3Dsfp1</code></pre><p>[INFO] [UHD] linux; GNU C++=
 version 11.3.0; Boost_107400; UHD_4.4.0.cjohnson-fb-sdrx-68-g02558b69</p><=
p>[INFO] [X300] X300 initialization sequence...</p><p>[INFO] [X300] Maximum=
 frame size: 8000 bytes.</p><p>[INFO] [GPS] Found an internal GPSDO: LC_XO,=
 Firmware Rev 0.929a</p><p>[INFO] [X300] Radio 1x clock: 200 MHz</p><p>Requ=
esting sampling rate 200.0 Msps...</p><p>Using sampling rate: 200.0 Msps.</=
p><p>Requesting center frequency 1223.0 MHz...</p><p>Actual center frequenc=
y: 1223.0000032784735 MHz.</p><p>Requesting gain 20.0 dB...</p><p>Actual ga=
in: 20.0 dB.</p><p>Selected 0 RX channels.</p><p>Generating RX streamer obj=
ect...</p><p>[ERROR] [X300::SFP1::TA_CTL] Device was unable to look up Ethe=
rnet (MAC) address for IP address 192.168.30.30. Make sure device is correc=
tly connected, or provide MAC address manually.</p><p>Traceback (most recen=
t call last):</p><p>  File "/home/cjohnson/ettus_repo/uhd/host/examples/pyt=
hon/./remote_rx.py", line 122, in &lt;module&gt;</p><p>    sys.exit(main())=
</p><p>  File "/home/cjohnson/ettus_repo/uhd/host/examples/python/./remote_=
rx.py", line 102, in main</p><p>    rx_streamer =3D usrp.get_rx_stream(stre=
am_args)</p><p>RuntimeError: LookupError: Device was unable to look up Ethe=
rnet (MAC) address for IP address 192.168.30.30. Make sure device is correc=
tly connected, or provide MAC address manually.</p></blockquote><p><br></p>=
<p>Here is the fpga image info using probe:</p><blockquote><p>|   |   FW Ve=
rsion: 6.1</p><p>|   |   FPGA Version: 39.1</p><p>|   |   FPGA git hash: 92=
c09f7</p><p>|   |   RFNoC capable: Yes</p></blockquote>

--b1_6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM--

--===============1730253037120356638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1730253037120356638==--
