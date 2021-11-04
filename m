Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FE844542F
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 14:44:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 629F438448C
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 09:44:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gLC6y3UX";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 86E58383EA1
	for <USRP-users@lists.ettus.com>; Thu,  4 Nov 2021 09:43:35 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id i13so5266783qvm.1
        for <USRP-users@lists.ettus.com>; Thu, 04 Nov 2021 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=UW3sQcnQDCVoo0CkJ1LRVEcTEnCgO22y+uL/Ar/y4Tc=;
        b=gLC6y3UXRBRaJ0bysRS09dpNKLfE1UeQthxcyjxHeBrVI05S78Pv/IJjroofuom3MR
         wCcwWZzLOOxVR+9NBk8Tk7R5JsfsPEMfQ7KbqJSW+JAKxBz/OjPT8n4gTDTW8b+ZHK8X
         F9muoLlOTk5MSwPFMQgpF3431MoEsjWnh1gcE35GRW+ayouQGvjAIKgujw4mBEfikC9e
         TEhOTUAqfYqSZ7WVYbfbssVk4ron5rMP8EsY3D8/fSA9sOWw1OYJb0JtGg3PJ/LZ3TOn
         yvNanEy5vFulxXQ4CcQu61IVcudVYvcDySnMemIhMx2tv1GGN3j1+kUdrixitwcTILfJ
         TYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=UW3sQcnQDCVoo0CkJ1LRVEcTEnCgO22y+uL/Ar/y4Tc=;
        b=BF236xj2X3oGPB/n43C8J6IPxnkGctg2aGtDwwmUS0BzhyXckwtZTkhgYOBdszufQw
         i5Mf0R4wBpoF63rU9bluNqF6HIv9wxKH4/7DHc7xvPIZpd/j9TLz/0qXuHDhPkNsLMwA
         T1Z5bYd3Yqj6CwQgVKHK8lBPbO/PmxpE4WhU3ZNoKowLZq507BLKlocaXLaA7YUvth5h
         vm0M99fBb/1wCi1CzevQRSSTjoT7R0uuATI+sG+B/aOcncy48Ugat9aMP6RXD/3P1lyH
         3XOmwknM2cG3IPKWT/y9yRNC2RKYCeJ5PAnFRROdErzYKsecmOjpLutR/wheq8oEU3ve
         M1bQ==
X-Gm-Message-State: AOAM531arVsSO/3FF005qanA1VacBBTVExS4BUXAEQP355flQCgvMccE
	Bd22ips4dV0IbVLjrMLQwoH1NKvWHLk=
X-Google-Smtp-Source: ABdhPJxuP72/lN0YFlxuyvL0HCaxFTZcTDEW4lVBRJMCdpLIhfC38eafogFx0UJkK72bHzY6rH2uAg==
X-Received: by 2002:a05:6214:1c8a:: with SMTP id ib10mr50643319qvb.46.1636033414865;
        Thu, 04 Nov 2021 06:43:34 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id c14sm3905352qtd.97.2021.11.04.06.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 06:43:34 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 4 Nov 2021 09:43:33 -0400
Message-Id: <76091DB1-CBD2-4365-A7F3-C1FFA2F59ECA@gmail.com>
References: <79b89ffb765545ba9023f3475db937a2@gmv.com>
In-Reply-To: <79b89ffb765545ba9023f3475db937a2@gmv.com>
To: Guillermo Ortas Delgado <g.ortas@gmv.com>
X-Mailer: iPhone Mail (18H17)
Message-ID-Hash: MEN47MGJU7NSVMUFUGHB3ZJCM5KCCMEV
X-Message-ID-Hash: MEN47MGJU7NSVMUFUGHB3ZJCM5KCCMEV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com, Anabel Almodovar <anabel.almodovar@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MEN47MGJU7NSVMUFUGHB3ZJCM5KCCMEV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6013400725995323492=="


--===============6013400725995323492==
Content-Type: multipart/alternative; boundary=Apple-Mail-0F81C07F-7FF6-4B08-9AAE-D16F9348AB9F
Content-Transfer-Encoding: 7bit


--Apple-Mail-0F81C07F-7FF6-4B08-9AAE-D16F9348AB9F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The consensus from Ettus R&D is to build the required version from source.=20=


Sent from my iPhone

> On Nov 4, 2021, at 5:45 AM, Guillermo Ortas Delgado <g.ortas@gmv.com> wrot=
e:
>=20
> =EF=BB=BF
> Hi Marcus,
> =20
> I would also like to get DPDK running and I have tried in the past.
> Let me point out a problem: the latest release of UHD requires DPDK versio=
n 18.11, but in fact this version is not supported on Ubuntu 20.04. The olde=
st available version is 19.11, so what should I do to get it working?
> I tried editing the makefile when compiling UHD to accept DPDK version 19.=
11, but then the build fails mid-way. Could you provide a solution please?
> =20
> Best,
> Guillermo
> =20
> De: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
> Enviado el: 03 November 2021 16:17
> Para: Anabel Almodovar <anabel.almodovar@gmail.com>
> CC: usrp-users@lists.ettus.com
> Asunto: [USRP-users] Re: UHD 4.1 error
> =20
> On 2021-11-03 03:04, Anabel Almodovar wrote:
> Thank you for your explanation. So is there any kind of solution for my pr=
oblem with GNU Radio?
> =20
> Thanks in advance.
> Regards,
> Anabel
> I have suggested this in the past--look into using DPDK if you're running a=
t high sample rates over 10GiGe:
>=20
> https://files.ettus.com/manual/page_dpdk.html
>=20
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>=20
>=20
>=20
> =20
> El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech (<patchvonbraun@gmai=
l.com>) escribi=C3=B3:
> On 2021-10-27 11:37, Anabel Almodovar wrote:
> Hello,
> =20
> When I run a benchmark_rate example it indicates that there are no sample l=
osses even with 30s of acquisition.
> =20
> rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/host/examples/build=
$ sudo ./benchmark_rate --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.=
30.2,recv_buff_size=3D900000000" --channels=3D"0,1" --rx_rate 200e6 --durati=
on 30 --rx_subdev=3D"A:0 B:0"=20
>=20
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-=
gd21735d5
> [00:00:00.000677] Creating the usrp device with: addr=3D192.168.40.2,secon=
d_addr=3D192.168.30.2,recv_buff_size=3D900000000...
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: UBX TX
>=20
> [00:00:02.923799498] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [00:00:04.262875535] Testing receive rate 200.000000 Msps on 2 channels
> [00:00:34.313774651] Benchmark complete.
>=20
> Benchmark rate summary:
>   Num received samples:     12000000380
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  0
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>=20
> Done!
> =20
> However, when I run rx_samples_to_file I get overflows from 8 sec for a si=
ngle receiving channel.
> =20
> sudo ./rx_samples_to_file  --file=3D"/home/rack_2021/Escritorio/pruebas_co=
digos_agosto/usrp_samples.dat" --duration 8 --args=3D"addr=3D192.168.40.2,se=
cond_addr=3D192.168.30.2,recv_buff_size=3D900000000" --channel=3D"0" --subde=
v=3D"A:0" --rate 200e6 --bw 200e6 --gain 5 --freq 800e6
>=20
> Creating the usrp device with: addr=3D192.168.40.2,second_addr=3D192.168.3=
0.2,recv_buff_size=3D900000000...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-=
gd21735d5
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: UBX TX
>=20
> Setting RX Rate: 200.000000 Msps...
> Actual RX Rate: 200.000000 Msps...
>=20
> Setting RX Freq: 800.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 800.000000 MHz...
>=20
> Setting RX Gain: 5.000000 dB...
> Actual RX Gain: 5.000000 dB...
>=20
> Setting RX Bandwidth: 200.000000 MHz...
> Actual RX Bandwidth: 200.000000 MHz...
>=20
> Waiting for "lo_locked": ++++++++++ locked.
>=20
> Press Ctrl + C to stop streaming...
> O
> Done!
> =20
> I am using a native Ubuntu, not a VM and I have the CPU governor set to "p=
erformance".
> =20
> I have managed to patch the code that worked for me before updating the sy=
stem to the new versions of Ubuntu and UHD, so I ask for more samples than I=
 want since I have observed that the recv () reception buffer is not always c=
onstant and it does not always acquire the maximum number of samples as I re=
quest (1996 samples), at least not at the beginning. But I would like to kno=
w the cause of this so that I can fix it and why GNU Radio keeps giving me t=
he same error.
> =20
> Thanks in advance.
> Regards,
> Anabel
> =20
> The recv() call doesn't necessarily guarantee that you'll get all the samp=
les you asked for in that call, as far as I know. It isn't surprising that t=
here would be slight differences
>   in behavior across different versions of UHD and OS versions in this reg=
ard.  You always have to be prepared to receive fewer samples than you asked=
 for.
>=20
> If Gnu Radio applications are producing overruns, that is firmly in the te=
rritory of Gnu Radio, and NOT UHD.   Clearly, on your machine, UHD is able t=
o sustain 200e6 SPS.
>   But as you add layers of application processing, the system is more heav=
ily loaded.  Gnu Radio actually "does things" with the samples, which means t=
he
>   instructions-per-sample is MUCH higher than your simple rx_samples_to_fi=
le test.
>=20
>=20
> =20
>=20
> P Please consider the environment before printing this e-mail.

--Apple-Mail-0F81C07F-7FF6-4B08-9AAE-D16F9348AB9F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The consensus from Ettus R&amp;D is to buil=
d the required version from source.&nbsp;<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 4, 2021,=
 at 5:45 AM, Guillermo Ortas Delgado &lt;g.ortas@gmv.com&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Hi Marcus,<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S">I would also like to get DPDK running and I have tried in the past.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S">Let me point out a problem: the latest release of UHD requires DPDK versi=
on 18.11, but in fact this version is not supported
 on Ubuntu 20.04. The oldest available version is 19.11, so what should I do=
 to get it working?<br>
I tried editing the makefile when compiling UHD to accept DPDK version 19.11=
, but then the build fails mid-way. Could you provide a solution please?<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S">Best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S">Guillermo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0=
cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif">De:</span></b><span style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Marcus D. Leech [mailto:patchvonbra=
un@gmail.com]
<br>
<b>Enviado el:</b> 03 November 2021 16:17<br>
<b>Para:</b> Anabel Almodovar &lt;anabel.almodovar@gmail.com&gt;<br>
<b>CC:</b> usrp-users@lists.ettus.com<br>
<b>Asunto:</b> [USRP-users] Re: UHD 4.1 error<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2021-11-03 03:04, Anabel Almodovar wrote:<o:p></o:=
p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">Thank you for your explanation.&nbsp;So is there any k=
ind of solution for my problem with GNU Radio?
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks in&nbsp;advance.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Anabel<o:p></o:p></p>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal">I have suggested this in the past--look into using DP=
DK if you're running at high sample rates over 10GiGe:<br>
<br>
<a href=3D"https://urldefense.com/v3/__https:/files.ettus.com/manual/page_dp=
dk.html__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4asgXNo56ml=
kCx8$">https://files.ettus.com/manual/page_dpdk.html</a><br>
<br>
<a href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/Getting_Started_w=
ith_DPDK_and_UHD__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4a=
sgXNo5jyS_8IE$">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a><b=
r>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech=
 (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>=
&gt;) escribi=C3=B3:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm=
 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal">On 2021-10-27 11:37, Anabel Almodovar wrote:<o:p></o:=
p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">When I run a benchmark_rate example it indicates that=
 there are no sample losses even with 30s of acquisition.
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><i>rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-=
uhd/uhd/host/examples/build$ sudo ./benchmark_rate --args=3D"addr=3D192.168.=
40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900000000" --channels=3D"0,=
1" --rx_rate 200e6 --duration 30 --rx_subdev=3D"A:0
 B:0" <br>
<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-gd=
21735d5<br>
[00:00:00.000677] Creating the usrp device with: addr=3D192.168.40.2,second_=
addr=3D192.168.30.2,recv_buff_size=3D900000000...<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp; &nbsp; RX DSP: 0<br>
&nbsp; &nbsp; RX Dboard: A<br>
&nbsp; &nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp; &nbsp; RX DSP: 1<br>
&nbsp; &nbsp; RX Dboard: B<br>
&nbsp; &nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp; &nbsp; TX DSP: 0<br>
&nbsp; &nbsp; TX Dboard: A<br>
&nbsp; &nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp; &nbsp; TX DSP: 1<br>
&nbsp; &nbsp; TX Dboard: B<br>
&nbsp; &nbsp; TX Subdev: UBX TX<br>
<br>
[00:00:02.923799498] Setting device timestamp to 0...<br>
[INFO] [MULTI_USRP] &nbsp; &nbsp; 1) catch time transition at pps edge<br>
[INFO] [MULTI_USRP] &nbsp; &nbsp; 2) set times next pps (synchronously)<br>
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.<br>
[00:00:04.262875535] Testing receive rate 200.000000 Msps on 2 channels<br>
[00:00:34.313774651] Benchmark complete.<br>
<br>
Benchmark rate summary:<br>
&nbsp; Num received samples: &nbsp; &nbsp; 12000000380<br>
&nbsp; Num dropped samples: &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num overruns detected: &nbsp; &nbsp;0<br>
&nbsp; Num transmitted samples: &nbsp;0<br>
&nbsp; Num sequence errors (Tx): 0<br>
&nbsp; Num sequence errors (Rx): 0<br>
&nbsp; Num underruns detected: &nbsp; 0<br>
&nbsp; Num late commands: &nbsp; &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp; &nbsp;0<br>
<br>
Done!</i></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">However, when I run rx_samples_to_file I get overflow=
s from 8 sec for a single receiving channel.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><i>sudo ./rx_samples_to_file &nbsp;--file=3D"/home=
/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_samples.dat" --duration 8 -=
-args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900=
000000" --channel=3D"0" --subdev=3D"A:0" --rate 200e6
 --bw 200e6 --gain 5 --freq 800e6<br>
<br>
Creating the usrp device with: addr=3D192.168.40.2,second_addr=3D192.168.30.=
2,recv_buff_size=3D900000000...<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-gd=
21735d5<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp; &nbsp; RX DSP: 0<br>
&nbsp; &nbsp; RX Dboard: A<br>
&nbsp; &nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp; &nbsp; TX DSP: 0<br>
&nbsp; &nbsp; TX Dboard: A<br>
&nbsp; &nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp; &nbsp; TX DSP: 1<br>
&nbsp; &nbsp; TX Dboard: B<br>
&nbsp; &nbsp; TX Subdev: UBX TX<br>
<br>
Setting RX Rate: 200.000000 Msps...<br>
Actual RX Rate: 200.000000 Msps...<br>
<br>
Setting RX Freq: 800.000000 MHz...<br>
Setting RX LO Offset: 0.000000 MHz...<br>
Actual RX Freq: 800.000000 MHz...<br>
<br>
Setting RX Gain: 5.000000 dB...<br>
Actual RX Gain: 5.000000 dB...<br>
<br>
Setting RX Bandwidth: 200.000000 MHz...<br>
Actual RX Bandwidth: 200.000000 MHz...<br>
<br>
Waiting for "lo_locked": ++++++++++ locked.<br>
<br>
Press Ctrl + C to stop streaming...<br>
O<br>
Done!</i></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I am using a native Ubuntu, not a VM and I have the C=
PU governor set to "performance".<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I have managed to patch the code that worked for me b=
efore updating the system to the new versions of Ubuntu and UHD, so I ask fo=
r more samples than I want since I have observed that the recv () reception b=
uffer is not always constant and
 it does not always acquire the maximum number of samples as I request (1996=
 samples), at least not at the beginning. But I would like to know the cause=
 of this so that I can fix it and why GNU Radio keeps giving me the same err=
or.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks in advance.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Regards, <o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Anabel<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The recv() call doesn'=
t necessarily guarantee that you'll get all the samples you asked for in tha=
t call, as far as I know. It isn't surprising that there would be slight dif=
ferences<br>
&nbsp; in behavior across different versions of UHD and OS versions in this r=
egard.&nbsp; You always have to be prepared to receive fewer samples than yo=
u asked for.<br>
<br>
If Gnu Radio applications are producing overruns, that is firmly in the terr=
itory of Gnu Radio, and NOT UHD.&nbsp;&nbsp; Clearly, on your machine, UHD i=
s able to sustain 200e6 SPS.<br>
&nbsp; But as you add layers of application processing, the system is more h=
eavily loaded.&nbsp; Gnu Radio actually "does things" with the samples, whic=
h means the<br>
&nbsp; instructions-per-sample is MUCH higher than your simple rx_samples_to=
_file test.<br>
<br>
<o:p></o:p></p>
</div>
</blockquote>
</div>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdin=
gs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><s=
pan style=3D""></span>


</div></blockquote></body></html>=

--Apple-Mail-0F81C07F-7FF6-4B08-9AAE-D16F9348AB9F--

--===============6013400725995323492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6013400725995323492==--
