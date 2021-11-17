Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4D454186
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 08:00:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A819383E07
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 02:00:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="OfxXDgnU";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E9D23837DE
	for <USRP-users@lists.ettus.com>; Wed, 17 Nov 2021 02:00:05 -0500 (EST)
Received: by mail-yb1-f173.google.com with SMTP id v138so4477334ybb.8
        for <USRP-users@lists.ettus.com>; Tue, 16 Nov 2021 23:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=oNB6hVy9Z/qVEJGkaH89sNcf4itqkpiWsusnhhUiqrs=;
        b=OfxXDgnUs+HoxhFkjvQP0MuJIheuOZcJR6sY+BkEbYTa5/Jml5yxAc/BuAroOll8UF
         saN8uLfDjmxzznjoDDX7JRoCT18Q9GABLiC24IbJ9rYmOyM1dBMfzPfVY+eHRbh/3QS+
         QLG9eBjLoCE6nSrrWHH8LwUF7pU9sNofybL5Vn4S9gSX6g8G2qtsaYkkUSl+YcaU2Owb
         UT/RHuzq8pi3rs9xZ8N1nzqALYqC9i52pkYDzcVzkdj03IllEnDxr46c15OTAEEN3vuj
         7BTB9qBqHzN9/VRI0Df4JTPnvO1TIOu4MFb59MO1Nt4DhAt19E0Vm8fy9T2OJT9LekE8
         JdCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oNB6hVy9Z/qVEJGkaH89sNcf4itqkpiWsusnhhUiqrs=;
        b=tIrhajuDfMCKOeJ3+TkFEarcqC90BfdR5NhGWYCxTtH7UiQeI9kQWv7lzM/aY6bIn7
         UiWk4XVhpfe8cHbb6EwlsRhva23gQfk78I1/ciUnkLBVoCOHV3fzVDpdcrNGf7EWOeks
         XKhHxVPsdPNKCZQMepBhQlGIfHoEioaPbl3fozLix5GufNRWF4sgdc7OUQU3bytiBm54
         DNu0nM9yZXKhDoroMsFvANkEAyvp742dP/1rylOnrp9G1ydkD7ubulvFRgEW2yVivb8S
         nztaOMJOy3fnJDnRIg/VEXId22s3vH/tUMXt3AM1Gqa/3RvNtTtJX++CJJkPf6REeiKS
         4ZXg==
X-Gm-Message-State: AOAM5318G/VGH43O1ybz5I0JK7W44aM/S+t+wyJMrZ83cSF2KvFMWtJ6
	lxLR2zp3EKweZYrevkAwyqV9Kvq/tzunO9r3A5F/AP/PAAA=
X-Google-Smtp-Source: ABdhPJwcsVAmtkSWO7Li8WYsnXrzAmxea8CGsgGvhLua9li2sen61m/wblVIo4w8Jnzn7ypyvDxx+FXmrZ62cAlmfVY=
X-Received: by 2002:a25:db04:: with SMTP id g4mr14767916ybf.196.1637132404628;
 Tue, 16 Nov 2021 23:00:04 -0800 (PST)
MIME-Version: 1.0
From: LoyCurtis Smith <ljsmith9@ncsu.edu>
Date: Wed, 17 Nov 2021 01:59:54 -0500
Message-ID: <CAKhiL6XmU9VLYFAGOoGPTTUcw_T1AHC75PrpYu3vOpwmHi5N+A@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: T4TGDAOFWIC2ZNLBPDD2QIUOV6WWRVHA
X-Message-ID-Hash: T4TGDAOFWIC2ZNLBPDD2QIUOV6WWRVHA
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP x310 ERROR_CODE_OVERFLOW issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T4TGDAOFWIC2ZNLBPDD2QIUOV6WWRVHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0795664424216374097=="

--===============0795664424216374097==
Content-Type: multipart/alternative; boundary="0000000000006dc58105d0f697a3"

--0000000000006dc58105d0f697a3
Content-Type: text/plain; charset="UTF-8"

Hi,

I am attempting to use two USRP x310 to deploy a 5G SA networking using the
openairinterface5g open-source system. However, I am experiencing a receive
overflow error when attempting to deploy both an OAI-nrUE and OAI-gNB.


The nrUE gives an *ERROR_CODE_OVERFLOW (Overflow) *warning before failing
and referencing a function in the OAI code.


My gNB runs irregularly, constantly showing the
*ERROR_CODE_OVERFLOW(Overflow) *message. In addition to multiple late or
"L" messages.


My system setting is as follows:

   - *OAI-nrUE* - Latitude -E5570* (laptop)* - 16 GB RAM, i7-6820HQ with 4
   cores, 8 threads @ 2.70 GHz running Ubuntu 18.04 with 5.40-90 low latency
   kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UHD 3.15
   - *OAI-gNB* - Optiplex-7040* (desktop)** - *16 GB RAM, i7-6700 with 4
   cores, 8 threads @ 3.40 GHz- running Ubuntu 18.04 with 5.40-89 low latency
   kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UHD 4.1


I've made the following changes to both systems:

   - Set the socket buffers (rmem_default, rmem_max, wmem_max,
   wmem_default) to 33554432
   - Set TX and RX ring buffers on the interface to max value of 4096.
   - Set scaling_governor to "performance" mode for each CPU.
   - Disabled C states.
   - Performed self-calibration on OAI-nrUE USRP x310 using
   uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance, and uhd_cal_tx_dc_offset.


Do you have any recommendations for my overflow issues? Also, Is there a
way to lower the number of samples transmitted?

Additionally, I tried to run the UHD benchmark test in examples. However, I
had issues converting the cpp file to an executable. It failed for some
reason. Do you have any advice for this as well?

-- 

V/r

LoyCurtis Smith

--0000000000006dc58105d0f697a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><div style=3D"border-color:rgb(49,49,49);color:rgb(49,49,49)"><p style=
=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(1=
4,16,26)" dir=3D"auto"><span style=3D"font-size:1rem;border-color:rgb(14,16=
,26)">I am attempting to use two USRP x310 to deploy a 5G SA networking usi=
ng the openairinterface5g open-source system. However, I am experiencing a =
receive overflow error when attempting to deploy both an OAI-nrUE and OAI-g=
NB.=C2=A0</span><br></p><p style=3D"margin-top:0pt;margin-bottom:0pt;border=
-color:rgb(14,16,26);color:rgb(14,16,26)"><br></p><p style=3D"margin-top:0p=
t;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(14,16,26)" dir=3D"=
auto"><span style=3D"margin-top:0pt;margin-bottom:0pt;font-size:1rem;border=
-color:rgb(14,16,26)">The nrUE gives an=C2=A0<b style=3D"font-size:1rem;bor=
der-color:rgb(14,16,26)">ERROR_CODE_OVERFLOW (Overflow)=C2=A0</b>warning be=
fore failing and referencing a function in the OAI code.</span></p><p style=
=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(1=
4,16,26)"><br></p><p style=3D"margin-top:0pt;margin-bottom:0pt;border-color=
:rgb(14,16,26);color:rgb(14,16,26)" dir=3D"auto"><span style=3D"margin-top:=
0pt;margin-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">My gNB run=
s irregularly, constantly showing the=C2=A0<b style=3D"font-size:1rem;borde=
r-color:rgb(14,16,26)">ERROR_CODE_OVERFLOW(Overflow)=C2=A0</b>message. In a=
ddition to multiple late or &quot;L&quot; messages.</span></p><p style=3D"m=
argin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(14,16,=
26)"><br></p><p style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(=
14,16,26);color:rgb(14,16,26)"><span style=3D"margin-top:0pt;margin-bottom:=
0pt;font-size:1rem;border-color:rgb(14,16,26)">My system setting is as foll=
ows:=C2=A0</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;border-c=
olor:rgb(14,16,26);color:rgb(14,16,26)" dir=3D"auto"><li style=3D"margin-to=
p:0pt;margin-bottom:0pt;list-style-type:disc;border-color:rgb(14,16,26)"><s=
trong style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)"=
>OAI-nrUE</strong><span style=3D"margin-top:0pt;margin-bottom:0pt;font-size=
:1rem;border-color:rgb(14,16,26)">=C2=A0- Latitude -E5570</span><strong sty=
le=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)"><em styl=
e=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)"><u style=
=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)"><span styl=
e=3D"margin-top:0pt;margin-bottom:0pt;font-size:1rem;border-color:rgb(14,16=
,26)">=C2=A0(laptop)</span></u></em></strong><span style=3D"margin-top:0pt;=
margin-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">=C2=A0- 16 GB =
RAM, i7-6820HQ with 4 cores, 8 threads @ 2.70 GHz running Ubuntu 18.04 with=
 5.40-90 low latency kernel; 1-GigE connection to USRP x310 with CBX-120 da=
ughterboard. UHD 3.15</span></li><li style=3D"margin-top:0pt;margin-bottom:=
0pt;list-style-type:disc;border-color:rgb(14,16,26)"><strong style=3D"margi=
n-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)">OAI-gNB</strong><sp=
an style=3D"margin-top:0pt;margin-bottom:0pt;font-size:1rem;border-color:rg=
b(14,16,26)">=C2=A0- Optiplex-7040</span><strong style=3D"margin-top:0pt;ma=
rgin-bottom:0pt;border-color:rgb(14,16,26)"><em style=3D"margin-top:0pt;mar=
gin-bottom:0pt;border-color:rgb(14,16,26)"><u style=3D"margin-top:0pt;margi=
n-bottom:0pt;border-color:rgb(14,16,26)"><span style=3D"margin-top:0pt;marg=
in-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">=C2=A0(desktop)</s=
pan></u></em></strong><em style=3D"margin-top:0pt;margin-bottom:0pt;border-=
color:rgb(14,16,26)">=C2=A0-=C2=A0</em><span style=3D"margin-top:0pt;margin=
-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">16 GB RAM, i7-6700 w=
ith 4 cores, 8 threads @ 3.40 GHz- running Ubuntu 18.04 with 5.40-89 low la=
tency kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UH=
D 4.1</span></li></ul><p style=3D"margin-top:0pt;margin-bottom:0pt;border-c=
olor:rgb(14,16,26);color:rgb(14,16,26)"></p></div><div style=3D"border-colo=
r:rgb(49,49,49);color:rgb(49,49,49)"><div dir=3D"ltr" data-smartmail=3D"gma=
il_signature" style=3D"word-spacing:1px;border-color:rgb(49,49,49)"><div di=
r=3D"ltr" style=3D"border-color:rgb(49,49,49)"><div dir=3D"ltr" style=3D"bo=
rder-color:rgb(49,49,49)"><br></div><div style=3D"font-size:1rem;border-col=
or:rgb(49,49,49)">I&#39;ve made the following changes to both systems:=C2=
=A0</div><div style=3D"border-color:rgb(49,49,49)"><ul style=3D"border-colo=
r:rgb(49,49,49)" dir=3D"auto"><li style=3D"font-size:1rem;border-color:rgb(=
49,49,49)">Set the socket buffers (rmem_default, rmem_max,=C2=A0wmem_max, w=
mem_default) to 33554432</li><li style=3D"font-size:1rem;border-color:rgb(4=
9,49,49)">Set TX and RX ring buffers on the interface to max value of 4096.=
</li><li style=3D"font-size:1rem;border-color:rgb(49,49,49)">Set=C2=A0scali=
ng_governor to &quot;performance&quot; mode for each CPU.</li><li style=3D"=
font-size:1rem;border-color:rgb(49,49,49)">Disabled C states.</li><li style=
=3D"font-size:1rem;border-color:rgb(49,49,49)">Performed self-calibration o=
n OAI-nrUE USRP x310 using uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance, an=
d uhd_cal_tx_dc_offset.</li></ul></div><div style=3D"border-color:rgb(49,49=
,49)"><font style=3D"border-color:rgb(7,55,99);color:rgb(7,55,99)"><br></fo=
nt></div><div style=3D"font-size:1rem;border-color:rgb(49,49,49)" dir=3D"au=
to">Do you have any recommendations for my overflow issues? Also, Is there =
a way to lower the number of samples transmitted?=C2=A0</div><div style=3D"=
font-size:1rem;border-color:rgb(49,49,49)" dir=3D"auto"><br></div><div styl=
e=3D"font-size:1rem;border-color:rgb(49,49,49)" dir=3D"auto">Additionally, =
I tried to run the UHD benchmark test in examples. However, I had issues co=
nverting the cpp file to an executable. It failed for some reason. Do you h=
ave any advice for this as well?=C2=A0</div></div></div></div><br class=3D"=
Apple-interchange-newline" style=3D"color:rgb(0,0,0)"></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763"><br></font></div>=
<div dir=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=3D"back=
ground-color:rgb(255,255,255)"><font color=3D"#073763"><br></font></span></=
div><div><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#=
073763">LoyCurtis Smith</font></span></div></div></div></div></div>

--0000000000006dc58105d0f697a3--

--===============0795664424216374097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0795664424216374097==--
