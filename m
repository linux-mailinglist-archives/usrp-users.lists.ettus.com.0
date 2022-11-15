Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC96662990C
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 13:40:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88432383EB2
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 07:40:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668516033; bh=9nYNtnPB+dxM+yJKo6xLLtmZAliIUz7N1OOxEJXj2DE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cdqNJGIzePe0r9fv+SFyb8UpJu4bgGLIuBQ04oCxJqGp92/9mfNXikyGaUO7kcZu0
	 EffH9BFE8LqvuKiZ0yezk0UbtcOo8tzjNvyXe33xAAMwON1r6BCPpo8xrLlqrxFYgq
	 l+mP+Id1pZXn0qv2VOIxUhKclC/QXSvFB+NSzTnFV1dz6v+OoVuF4vntzBNM1S+J9g
	 yN4fXF+9uL/mYfGfJEk4gnkPSC7x3JrlH0mwR3vqG74et97BoUzdlYl4/FfHBA7CX3
	 B+mXLdzCEO0/pexrU0nw+xhucmO3OvZGdEdO/o5qw1Os1ulzem5QHc8y2TyaX0MZJc
	 SXD4rYOIlbAIQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5CF9383AD9
	for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 07:39:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668515955; bh=paV58B8oTKe0LyLpSF+eAQnR6e2WFIo/6BVLf6GR9Ig=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HqB2tG2hdaNK9h8Ua9OLno9YeoivpqdtkGOxdhodmcnWT6X04gxAG/O24UZwOM4tW
	 am1SbEI1M/GamR2vWwU+XL8f75Jb7XqgiPi7wFJA9xWiLCPaoYWA3OAznjuJ1kRt+W
	 9x30AYcQVNFWyNgPjEtrwVYq55z6KaIBNVWqlLc02X514isZ4tAsiMzFS0OeHXzseD
	 yOqfeFbt+oCnOyhnxMEIdbqaw8tdiyy4sBW8gwLN0RvE1h38GnZ0UvYvY5G5h3T7XK
	 0Wdn3L3qCfdR4oHt4ZxjvMK/KFB1wQw3DtsJPEqeVGj+U3pFU1sJSbGqVK7FyjCV68
	 3KrQPq94a6sqQ==
Date: Tue, 15 Nov 2022 12:39:15 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4G26gEqZDm=Vup2O=umL+g7LnKYmseoHt4YL1mghG4xw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2U6J2J2RTBHDIZV5LZQADJCRZOTF3ETW
X-Message-ID-Hash: 2U6J2J2RTBHDIZV5LZQADJCRZOTF3ETW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Sample Rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2U6J2J2RTBHDIZV5LZQADJCRZOTF3ETW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2582958826693532552=="

This is a multi-part message in MIME format.

--===============2582958826693532552==
Content-Type: multipart/alternative;
 boundary="b1_BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Brian,

Yes, it=E2=80=99s LMK04832 chip that generates clock on X410 and it is ma=
naged by the file that you found.

I don=E2=80=99t have USRP X410 but I=E2=80=99m trying to achieve somethin=
g similar on ZCU111 running ported X410 code.

I don=E2=80=99t know the answer regarding ZBX as I haven=E2=80=99t analyz=
ed that. ZCU111 doesn=E2=80=99t have analog front-end so I implemented tu=
ning on digital side, controlled in a similar way as ZBX.

You won=E2=80=99t find schematics online for USRPs produced after \~2017.=
 National Instruments doesn=E2=80=99t publish them anymore. The date coin=
cides a bit with Ettus leaving =E2=80=98Ettus Research=E2=80=99, which is=
 basically just NI brand currently.

In this regard ZCU111 is more =E2=80=98free=E2=80=99 device than current =
USRPs as Xilinx published schematics and even PCB design files. Open sour=
ce driver is still a very big advantage of USRPs though. X410 code is pro=
bably the most advanced and complete openly available project for RFSoC.

Going back to transition to 3686.4 MHz - ZCU111 has a bit different clock=
ing chips: LMK04208 driving three LMX2594 chips. So I won=E2=80=99t be ab=
le to give you ready-made solution but some instructions based on what I =
did:

For sure you will need to add to master_to_sample_clk dict from [x4xx_rfd=
c_ctrl.py](https://github.com/ptrkrysik/uhd/commit/6d4d4437a6e8ebf3aba0cd=
ddc68876f80eff79b6#diff-512da83981e88a61c70b093f36b15628ec086f429613f79ab=
c25234548a6cfdc "mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py") s=
omething like:

2\*153.6e6: (3.68640e9, 2, False, True),\
\
You=E2=80=99ll also need to modify x4xx_clk_mgr.py by adding\
3\.6864e9:    76.8e6,\
to prc_clock_map.

Then you=E2=80=99ll have to modify LMK04832 configuration. I would do tha=
t by:

* dumping values of LMK04832 registers in default state (for clock 2949.1=
2MHz),

* importing the regs in TICSPro (https://www.ti.com/tool/TICSPRO-SW) for =
LMK04832,

* modifying them so you get the right sample rate (3.6864GHz), PRC (pll r=
ef clock =3D 76.8MHz) and sysref clock (probably PRC/24 =3D 3.2MHz for X4=
10),

* export registers values,

* make diff with original configuration,

* from that figure out what you need to change in =E2=80=98config=E2=80=99=
 function in x4xx_sample_pll.py.

=E2=80=A6or you can modify that function to just send your config if 3.68=
64e9 output frequency is requested.

I don=E2=80=99t know what changes would be needed in ZBX code. At least n=
ew sample rate should be read automatically, provided you set it correctl=
y in the =E2=80=98config=E2=80=99 function. So the ZBX=E2=80=99es expert =
code code will know what rfdc_rate is and from that what is current Nyqui=
st rate.

On my side I=E2=80=99m at the stage when streaming works for 307.2MS/s. H=
owever the signal looks =E2=80=98strange=E2=80=99 i.e. the band is invert=
ed and I see something on the spectrum that looks like effect IQ imbalanc=
e. I tried to fix that by building FPGA code with increased clocks associ=
ated in any way with buses carrying samples but I=E2=80=99m not there yet=
.

Best Regards,\
Piotr Krysik

--b1_BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Brian,</p><p>Yes, it=E2=80=99s LMK04832 chip that generates clock =
on X410 and it is managed by the file that you found.</p><p>I don=E2=80=
=99t have USRP X410 but I=E2=80=99m trying to achieve something similar on =
ZCU111 running ported X410 code.</p><p>I don=E2=80=99t know the answer rega=
rding ZBX as I haven=E2=80=99t analyzed that. ZCU111 doesn=E2=80=99t have a=
nalog front-end so I implemented tuning on digital side, controlled in a si=
milar way as ZBX.</p><p>You won=E2=80=99t find schematics online for USRPs =
produced after ~2017. National Instruments doesn=E2=80=99t publish them any=
more. The date coincides a bit with Ettus leaving =E2=80=98Ettus Research=
=E2=80=99, which is basically just NI brand currently.</p><p>In this regard=
 ZCU111 is more =E2=80=98free=E2=80=99 device than current USRPs as Xilinx =
published schematics and even PCB design files. Open source driver is still=
 a very big advantage of USRPs though. X410 code is probably the most advan=
ced and complete openly available project for RFSoC.</p><p>Going back to tr=
ansition to 3686.4 MHz - ZCU111 has a bit different clocking chips: LMK0420=
8 driving three LMX2594 chips. So I won=E2=80=99t be able to give you ready=
-made solution but some instructions based on what I did:</p><p>For sure yo=
u will need to add to master_to_sample_clk dict from <a href=3D"https://git=
hub.com/ptrkrysik/uhd/commit/6d4d4437a6e8ebf3aba0cdddc68876f80eff79b6#diff-=
512da83981e88a61c70b093f36b15628ec086f429613f79abc25234548a6cfdc" title=3D"=
mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py">x4xx_rfdc_ctrl.py</a>=
 something like:</p><p>2*153.6e6: (3.68640e9, 2, False, True),<br><br>You=
=E2=80=99ll also need to modify x4xx_clk_mgr.py by adding<br>3.6864e9:    7=
6.8e6,<br>to prc_clock_map.</p><p>Then you=E2=80=99ll have to modify LMK048=
32 configuration. I would do that by:</p><ul><li><p>dumping values of LMK04=
832 registers in default state (for clock 2949.12MHz),</p></li><li><p>impor=
ting the regs in TICSPro (https://www.ti.com/tool/TICSPRO-SW) for LMK04832,=
</p></li><li><p>modifying them so you get the right sample rate (3.6864GHz)=
, PRC (pll ref clock =3D 76.8MHz) and sysref clock (probably PRC/24 =3D 3.2=
MHz for X410),</p></li><li><p>export registers values,</p></li><li><p>make =
diff with original configuration,</p></li><li><p>from that figure out what =
you need to change in =E2=80=98config=E2=80=99 function in x4xx_sample_pll.=
py.</p></li></ul><p>=E2=80=A6or you can modify that function to just send y=
our config if 3.6864e9 output frequency is requested.</p><p>I don=E2=80=
=99t know what changes would be needed in ZBX code. At least new sample rat=
e should be read automatically, provided you set it correctly in the =
=E2=80=98config=E2=80=99 function. So the ZBX=E2=80=99es expert code code w=
ill know what rfdc_rate is and from that what is current Nyquist rate.</p><=
p>On my side I=E2=80=99m at the stage when streaming works for 307.2MS/s. H=
owever the signal looks =E2=80=98strange=E2=80=99 i.e. the band is inverted=
 and I see something on the spectrum that looks like effect IQ imbalance. I=
 tried to fix that by building FPGA code with increased clocks associated i=
n any way with buses carrying samples but I=E2=80=99m not there yet.</p><p>=
Best Regards,<br>Piotr Krysik</p>

--b1_BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4--

--===============2582958826693532552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2582958826693532552==--
