Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F511208F2
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2019 15:54:46 +0100 (CET)
Received: from [::1] (port=39748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1igrlj-0003ub-3p; Mon, 16 Dec 2019 09:54:43 -0500
Received: from sonic308-56.consmr.mail.ne1.yahoo.com ([66.163.187.31]:33426)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1igrle-0003qt-Ux
 for usrp-users@lists.ettus.com; Mon, 16 Dec 2019 09:54:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1576508037; bh=3kND56dnCxA+QGGzl3uHQpqDomO71jgnzenz8yy0jBE=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=cWlBFmpp1QgLTHU3AuUD664twGDzLoggyRz19B7YvmgOIqCN8e/UmF8iWjqPq8CkT4BjJgfIvwUbX9E6W0aqTt9wltc2EkJKTgR2W9E7ZzfulQKNG9ChQdg21txrKgpfNiMP6B3PSXAhrmTNdEKC3yX2rAaYjytzvPj9w4BLVJZ5DoRa165UaLMeCrhSuOrmqB0qZ9kXANhwNONsZCOiMhKoJq0//0vNh0y+aQYiEJEY/I/qTdGOAibzS/OU66DkXAj/4KC8xvdODw2YC85b/sqImfjEVGYrTeqz+p4OLePr9ZR/U2BztiH4aAJlQ9H1KLs3P2jx3yZ/FlZSdGJPbA==
X-YMail-OSG: DQ3RVQoVM1l1tRSFHX8JiNlneRFFxk40BITeQjS27P9H2TSted6VJ61d_QfekPm
 6GTNwcm9oUn1fvKblBRdEEyPWVbZwWAeIi14NJ4ihCwbeCVqu69vpZgSHBQsbnHdWYfVWsNovW2v
 5hrlw4jGpJJtj3JuOSqGckPj6w3fxASkxQEGrrUJtTrr1ki1kYQotxSvsE69ckfpMbp9isMSXx4i
 mujr_jkr8EhMaUlpIWaE3seBlXPhQWPcCrJxhCZuLSAcK3XJg7oKEP3kqrRGgssXnq8Ast9tZ3eO
 9Fy_.PWGPDactzg_I_Fg.pz_UZQC_dtcUQ6kJqTzDOjyaXUsHo2haXV1._BQiXZqCOuQZpQ4p34g
 0WYcRJ7NQxixx3wnCLG.WhqKvFg1QOwQKkCHuxdFwtdVAs1vusV6FzdiXiREJnnM9b2Q4fNsbqxA
 mVFuo0Ju_ksqD4LSZyoTlbAfehtDXanXR3upN_r0eNjBZ4SPYq8zDo4sc08c2WvtU0Uq4snhLxBf
 Upy9mkP4cyimjxnx1ClMJ5l9.bslpAZ5A8XrtEd3kQJ1BbTCmoBtSRPDNby3lyFXd.UaE5AHp_tR
 dVDwYIpyIIB8xerRJtFDkXf5BGiOp6QLA21oT0ujq3Ufn8aQrjFA56amXddb651_AX2VPbuxpJd_
 Zsz25fWc6i0Fe7.JsIPJL_R6FkYrdbWrzuEfALKQW1NEY8I.MA5pUfgZpC6duXqtMubZ622k4RMp
 o2FY2mqXErUl7wX9kJJZPOM4KQ0oe9xeLMjrRW2q5OHfjpR88j9.5aX2GA.PPgRpukJaY4.DjB5j
 elniY7OAW27t1w6ghLxSVPJ3GJJ7dJ7EP3Qc7UCQk6UWHByd6..QaXkCzvgmZ3HBDsaoRRWXtcNz
 RQZyRCw4LUotN8aCBJJX2doDndR3CZsUOR4V0EUGMxrU.KJhlSVIJymRDT6zMebmHZpJLXSMCbkZ
 2Ccc8sPWGPec3biWefhnAILPEvC1Zjpu5lDF958_7CRFnopC5ZV4d9HDN3JnMIU9ddjNOQxdPiFK
 vyx22ieEEoTfxo6_5gke5vO58YetWiE9xmM_V_IEx0sJY4APlacu.Xrdruc.m_kDpKQQp_KzsMwx
 3WC35hrSbIBXawH4qz74b_bQl1aK0.uX.713D.INmwZj9EcRMx981VDEtmR5yfSBvCzzUPOnXrQ8
 .IgDaQbpfOuPj_ulSnGZ5p2qE3RPUKhgjy.92R7sFdr3bsu6Ps9BWlCuFWZosyE1SoeneTGh.bjg
 ilHeCC6mvJRBrC7ONqMIQviKzHVLQckuMBOkcLXhUjGRIXSisC.TrzVv4F8E.r5D8OvPIvn4bIok
 608mSbmAmaL7aSA9S9_sPM8UDcLNGN8kk2CvArQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Mon, 16 Dec 2019 14:53:57 +0000
Date: Mon, 16 Dec 2019 14:53:52 +0000 (UTC)
To: Nate Temple <nate.temple@ettus.com>
Message-ID: <353391907.8218403.1576508032726@mail.yahoo.com>
In-Reply-To: <CAL263iwu3ubhXNt9PcmwZRRwQ9=x+_Mja-1-0royAyDijcGHyg@mail.gmail.com>
References: <1027805479.3576226.1574357685417.ref@mail.yahoo.com>
 <1027805479.3576226.1574357685417@mail.yahoo.com>
 <CAL263iwu3ubhXNt9PcmwZRRwQ9=x+_Mja-1-0royAyDijcGHyg@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: Re: [USRP-users] X300 underflows with tx_rate 100Msps
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3782363140683797326=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3782363140683797326==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8218402_1279853456.1576508032725"
Content-Length: 10723

------=_Part_8218402_1279853456.1576508032725
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Nate,=C2=A0=C2=A0 Sorry for the delayed reply. I found the issue and it=
 is because of the low power CPU.=20
Thanks and Regards=C2=A0=C2=A0=20

    On Monday, November 25, 2019, 8:23:47 PM GMT, Nate Temple <nate.temple@=
ettus.com> wrote: =20
=20
 Hi Voonna,

What is your CPU frequency?=20

What kind of NIC are you using?

If your NIC supports DPDK, I would recommend trying to use the DPDK transpo=
rt, but you will need to update to UHD 3.14.1.1 to support DPDK with the X3=
10.


https://files.ettus.com/manual/page_dpdk.html

Regards,
Nate Temple
On Thu, Nov 21, 2019 at 9:35 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

Hi Michael,
=C2=A0=C2=A0=C2=A0 I am experiencing lots of underflows when I use benchmar=
k_rate example app. Following is the configuration:
=C2=A0=C2=A0 =C2=A0
Host processor=C2=A0=C2=A0 =C2=A0: Intel=C2=AE Xeon=C2=AE Processor D-1500 =
System on Chip (SoC)
Host OS: Centos 7
UHD: release_003_010_001_000
SDR HW: X300 with UBX-160 (Calibration done as documented)
Eth link: SFP
=C2=A0- Maximum socket buffer sizes (wmem_max, rmem_max)
=C2=A0- MTU 9000
=C2=A0- Tx/Rx descriptors (sudo ethtool -G <interface> tx 4096 rx 4096)
=C2=A0- thread priority set to 1
CPU usage: Only two CPUs are being used, but rest of the cores are free and=
 the host is headless(No CPU consuming apps).

=C2=A0 If I test rx_rate with 200Msps, it works well. But when I use tx_rat=
e with 100Msps, I could see lots of underflows (Us).

./benchmark_rate --args=3D"addr=3D192.168.40.2" --tx_rate=3D100e6=C2=A0 --c=
hannels=3D"0" --duration 200
linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_105800; UHD=
_003.010.001.HEAD-0-g929e3b32


Creating the usrp device with: addr=3D192.168.40.2...
-- X300 initialization sequence...
-- Determining maximum frame size... 8000 bytes.
-- Setup basic communication...
-- Loading values from EEPROM...
-- Setup RF frontend clocking...
-- Radio 1x clock:200
-- Detecting internal GPSDO.... Found an internal GPSDO: LC_XO, Firmware Re=
v 0.929b
-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1179.5MB/s)
-- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1184.4MB/s)
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- Performing timer loopback test... pass
-- Performing timer loopback test... pass
Using Device: Single USRP:
=C2=A0 Device: X-Series Device
=C2=A0 Mboard 0: X300
=C2=A0 RX Channel: 0
=C2=A0=C2=A0=C2=A0 RX DSP: 0
=C2=A0=C2=A0=C2=A0 RX Dboard: A
=C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
=C2=A0 RX Channel: 1
=C2=A0=C2=A0=C2=A0 RX DSP: 0
=C2=A0=C2=A0=C2=A0 RX Dboard: B
=C2=A0=C2=A0=C2=A0 RX Subdev: Unknown (0xffff) - 0
=C2=A0 TX Channel: 0
=C2=A0=C2=A0=C2=A0 TX DSP: 0
=C2=A0=C2=A0=C2=A0 TX Dboard: A
=C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
=C2=A0 TX Channel: 1
=C2=A0=C2=A0=C2=A0 TX DSP: 0
=C2=A0=C2=A0=C2=A0 TX Dboard: B
=C2=A0=C2=A0=C2=A0 TX Subdev: Unknown (0xffff) - 0

Setting device timestamp to 0...
Testing transmit rate 100.000000 Msps on 1 channels
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU ....... Lots of under=
flows

Thanks in advance.
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_8218402_1279853456.1576508032725
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcd40d245yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Nate,</div><div dir=3D"lt=
r" data-setdir=3D"false">&nbsp;&nbsp; Sorry for the delayed reply. I found =
the issue and it is because of the low power CPU. <br></div><div dir=3D"ltr=
" data-setdir=3D"false">Thanks and Regards</div><div dir=3D"ltr" data-setdi=
r=3D"false">&nbsp;&nbsp; <br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_6865481631" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, November 25, 2019, 8:23:47 PM GMT, Nate Temp=
le &lt;nate.temple@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv4800384824"><div><div dir=3D"ltr"><div c=
lass=3D"yiv4800384824gmail_default" style=3D"font-family:arial, helvetica, =
sans-serif;">Hi Voonna,<br clear=3D"none"><br clear=3D"none">What is your C=
PU frequency? <br clear=3D"none"><br clear=3D"none">What kind of NIC are yo=
u using?<br clear=3D"none"><br clear=3D"none">If your NIC supports DPDK, I =
would recommend trying to use the DPDK transport, but you will need to upda=
te to UHD 3.14.1.1 to support DPDK with the X310.<br clear=3D"none"><br cle=
ar=3D"none"><br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" target=3D=
"_blank" href=3D"https://files.ettus.com/manual/page_dpdk.html">https://fil=
es.ettus.com/manual/page_dpdk.html</a><br clear=3D"none"><br clear=3D"none"=
>Regards,<br clear=3D"none">Nate Temple</div></div><br clear=3D"none"><div =
class=3D"yiv4800384824gmail_quote"><div class=3D"yiv4800384824yqt1589403498=
" id=3D"yiv4800384824yqt19742"><div class=3D"yiv4800384824gmail_attr" dir=
=3D"ltr">On Thu, Nov 21, 2019 at 9:35 AM voonna santosh via USRP-users &lt;=
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=
=3D"yiv4800384824gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex;"><div><div style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr"><div>Hi Michael,<br clear=3D"none">&nbsp;&nbsp;&nbsp; I am experie=
ncing lots of underflows when I use benchmark_rate example app. Following i=
s the configuration:<br clear=3D"none">&nbsp;&nbsp; &nbsp;<br clear=3D"none=
">Host processor&nbsp;&nbsp; &nbsp;: Intel=C2=AE Xeon=C2=AE Processor D-150=
0 System on Chip (SoC)<br clear=3D"none">Host OS: Centos 7<br clear=3D"none=
">UHD: release_003_010_001_000<br clear=3D"none">SDR HW: X300 with UBX-160 =
(Calibration done as documented)<br clear=3D"none">Eth link: SFP<br clear=
=3D"none">&nbsp;- Maximum socket buffer sizes (wmem_max, rmem_max)<br clear=
=3D"none">&nbsp;- MTU 9000<br clear=3D"none">&nbsp;- Tx/Rx descriptors (sud=
o ethtool -G &lt;interface&gt; tx 4096 rx 4096)<br clear=3D"none">&nbsp;- t=
hread priority set to 1<br clear=3D"none">CPU usage: Only two CPUs are bein=
g used, but rest of the cores are free and the host is headless(No CPU cons=
uming apps).<br clear=3D"none"><br clear=3D"none">&nbsp; If I test rx_rate =
with 200Msps, it works well. But when I use tx_rate with 100Msps, I could s=
ee lots of underflows (Us).<br clear=3D"none"><br clear=3D"none">./benchmar=
k_rate --args=3D"addr=3D192.168.40.2" --tx_rate=3D100e6&nbsp; --channels=3D=
"0" --duration 200<br clear=3D"none">linux; GNU C++ version 4.8.5 20150623 =
(Red Hat 4.8.5-39); Boost_105800; UHD_003.010.001.HEAD-0-g929e3b32<br clear=
=3D"none"><br clear=3D"none"><br clear=3D"none">Creating the usrp device wi=
th: addr=3D192.168.40.2...<br clear=3D"none">-- X300 initialization sequenc=
e...<br clear=3D"none">-- Determining maximum frame size... 8000 bytes.<br =
clear=3D"none">-- Setup basic communication...<br clear=3D"none">-- Loading=
 values from EEPROM...<br clear=3D"none">-- Setup RF frontend clocking...<b=
r clear=3D"none">-- Radio 1x clock:200<br clear=3D"none">-- Detecting inter=
nal GPSDO.... Found an internal GPSDO: LC_XO, Firmware Rev 0.929b<br clear=
=3D"none">-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1179.5=
MB/s)<br clear=3D"none">-- [DMA FIFO] Running BIST for FIFO 1... pass (Thro=
ughput: 1184.4MB/s)<br clear=3D"none">-- [RFNoC Radio] Performing register =
loopback test... pass<br clear=3D"none">-- [RFNoC Radio] Performing registe=
r loopback test... pass<br clear=3D"none">-- [RFNoC Radio] Performing regis=
ter loopback test... pass<br clear=3D"none">-- [RFNoC Radio] Performing reg=
ister loopback test... pass<br clear=3D"none">-- Performing timer loopback =
test... pass<br clear=3D"none">-- Performing timer loopback test... pass<br=
 clear=3D"none">Using Device: Single USRP:<br clear=3D"none">&nbsp; Device:=
 X-Series Device<br clear=3D"none">&nbsp; Mboard 0: X300<br clear=3D"none">=
&nbsp; RX Channel: 0<br clear=3D"none">&nbsp;&nbsp;&nbsp; RX DSP: 0<br clea=
r=3D"none">&nbsp;&nbsp;&nbsp; RX Dboard: A<br clear=3D"none">&nbsp;&nbsp;&n=
bsp; RX Subdev: UBX RX<br clear=3D"none">&nbsp; RX Channel: 1<br clear=3D"n=
one">&nbsp;&nbsp;&nbsp; RX DSP: 0<br clear=3D"none">&nbsp;&nbsp;&nbsp; RX D=
board: B<br clear=3D"none">&nbsp;&nbsp;&nbsp; RX Subdev: Unknown (0xffff) -=
 0<br clear=3D"none">&nbsp; TX Channel: 0<br clear=3D"none">&nbsp;&nbsp;&nb=
sp; TX DSP: 0<br clear=3D"none">&nbsp;&nbsp;&nbsp; TX Dboard: A<br clear=3D=
"none">&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br clear=3D"none">&nbsp; TX Cha=
nnel: 1<br clear=3D"none">&nbsp;&nbsp;&nbsp; TX DSP: 0<br clear=3D"none">&n=
bsp;&nbsp;&nbsp; TX Dboard: B<br clear=3D"none">&nbsp;&nbsp;&nbsp; TX Subde=
v: Unknown (0xffff) - 0<br clear=3D"none"><br clear=3D"none">Setting device=
 timestamp to 0...<br clear=3D"none">Testing transmit rate 100.000000 Msps =
on 1 channels<br clear=3D"none">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUU ....... Lots of underflows<br clear=3D"none"><br clear=3D"none">=
Thanks in advance.</div><div><br clear=3D"none"></div></div></div></div>___=
____________________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_8218402_1279853456.1576508032725--


--===============3782363140683797326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3782363140683797326==--

