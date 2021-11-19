Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74089457556
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 18:20:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF8E6384350
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 12:20:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="690v2R+n";
	dkim-atps=neutral
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 99A36383EF1
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 12:19:41 -0500 (EST)
Received: by mail-il1-f178.google.com with SMTP id l19so10972767ilk.0
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 09:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hZMfl4pSsePjIO0AYIoJtMYAch9nmorc05pjI0Ay+LY=;
        b=690v2R+nhOuPIn8GsIsPPJ9iMFrTEVgPUvFWraJ10cNsQH/b+MSfNGJn315p2gTGRP
         naz3LwxZr5Nn8O0GhxG0s6oRtKN5hpqANgnirkeH7Nr8UBxCJZmvHxQpfHX9PBPaFUDv
         PKHdgGaBbMgttEajCbxxFDIsAeOOKxqnxtsx7eT3jDNdcSjx+zUiAAnIi0hinUfOFUit
         NuDYcrLOzHCoydM0baDVxa6YOra3WghLdSaHGSylKSddaXC+4U27njRsjYk180DMepyV
         09HJVSFSqGcUtZQMKVuass/70i/HoSxqt1GJM2WXZV80KMbZ4wz3tpRHFvEV9OUm5Kzy
         c2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hZMfl4pSsePjIO0AYIoJtMYAch9nmorc05pjI0Ay+LY=;
        b=mWqUqE9/mtuEAnsX7sfqX7Q2Xl+dBftEQSRU2RcLL3kkm1gtXVRnc3Eo96m3VBsk9M
         7KLdGD28uoj7hf+FdRYmM/e6KEwzmZAYvUm++xlJL9DKcPc/eJg2DEJd0e+IrhFl1MOF
         HTcFfB3ExSBDKGSvIZAXFGilk6draebjgMJo1JiUaiixsuKhDs0m6veNjv1QYCfG/Jye
         ookEGnHY7VcwGBL7xcKDPA08VN4X2n81b2X2IcxspbFiE1k9FL/OhzlKoGzWxYwNUqRE
         x/cc1R83yM0tSHwEWyKnSZn4/9kMUrAFWEQKSbXyDeN0ZRanVeUrcdneh9aoLhHP2EZG
         eucQ==
X-Gm-Message-State: AOAM531oZovd3hAuh8D5l1CqPpT3U4pP4Ik325+JJm2YSOiCJOMu3DMr
	GXuAQmNblrpt+tdp0KCefnPBFfgrTvUiVvMN6wGzEcO+
X-Google-Smtp-Source: ABdhPJymFE/Rv7Tkq42LPp4dkdA2oGSlJLo3VBOF/3Q/7J79vfaTz7vsnULorK8GvwEvYqRVIRiSw9VrKeHzFn0MRVU=
X-Received: by 2002:a05:6e02:1ba6:: with SMTP id n6mr6190002ili.254.1637342380896;
 Fri, 19 Nov 2021 09:19:40 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XmU9VLYFAGOoGPTTUcw_T1AHC75PrpYu3vOpwmHi5N+A@mail.gmail.com>
In-Reply-To: <CAKhiL6XmU9VLYFAGOoGPTTUcw_T1AHC75PrpYu3vOpwmHi5N+A@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 19 Nov 2021 11:19:04 -0600
Message-ID: <CACaXmv_gG+Ah4dvEuXxYa5Fkx5fE=zmvOar87RRiv7snjHNmtA@mail.gmail.com>
To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Message-ID-Hash: UUH4EKHY64ZBQK3BNLHQB734RJIUNM2I
X-Message-ID-Hash: UUH4EKHY64ZBQK3BNLHQB734RJIUNM2I
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x310 ERROR_CODE_OVERFLOW issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UUH4EKHY64ZBQK3BNLHQB734RJIUNM2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5872886817036788916=="

--===============5872886817036788916==
Content-Type: multipart/alternative; boundary="000000000000fd488b05d1277a60"

--000000000000fd488b05d1277a60
Content-Type: text/plain; charset="UTF-8"

Hello LoyCurtis Smith:

Thanks for the detailed information about your system configuration.
Everything looks fine at initial glance, and I would expect this to work.
I might say that the clock speed of your Dell Latitude E5570 i7-6820HQ CPU
might be too low, I would generally recommend a clock speed of 3.5 GHz or
higher, but it depends on what you're doing, what the sampling rate is, and
what the network traffic is, etc.

What channel bandwidth are you using?

Could you please run the "benchmark_rate" utility on both the gNB and nrUE
sides, using the same sampling rates that you're using for the gNB and
nrUE, and let me know your results?  This utility will test your interface
at the desired sampling rate and see if it can sustain the data streaming
rate.

./benchmark_rate --tx_rate 15.76e6 --rx_rate 15.76e6 --duration 600

--Neel Pandeya



On Wed, 17 Nov 2021 at 01:00, LoyCurtis Smith <ljsmith9@ncsu.edu> wrote:

> Hi,
>
> I am attempting to use two USRP x310 to deploy a 5G SA networking using
> the openairinterface5g open-source system. However, I am experiencing a
> receive overflow error when attempting to deploy both an OAI-nrUE and
> OAI-gNB.
>
>
> The nrUE gives an *ERROR_CODE_OVERFLOW (Overflow) *warning before failing
> and referencing a function in the OAI code.
>
>
> My gNB runs irregularly, constantly showing the
> *ERROR_CODE_OVERFLOW(Overflow) *message. In addition to multiple late or
> "L" messages.
>
>
> My system setting is as follows:
>
>    - *OAI-nrUE* - Latitude -E5570* (laptop)* - 16 GB RAM, i7-6820HQ with
>    4 cores, 8 threads @ 2.70 GHz running Ubuntu 18.04 with 5.40-90 low latency
>    kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UHD 3.15
>    - *OAI-gNB* - Optiplex-7040* (desktop)** - *16 GB RAM, i7-6700 with 4
>    cores, 8 threads @ 3.40 GHz- running Ubuntu 18.04 with 5.40-89 low latency
>    kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UHD 4.1
>
>
> I've made the following changes to both systems:
>
>    - Set the socket buffers (rmem_default, rmem_max, wmem_max,
>    wmem_default) to 33554432
>    - Set TX and RX ring buffers on the interface to max value of 4096.
>    - Set scaling_governor to "performance" mode for each CPU.
>    - Disabled C states.
>    - Performed self-calibration on OAI-nrUE USRP x310 using
>    uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance, and uhd_cal_tx_dc_offset.
>
>
> Do you have any recommendations for my overflow issues? Also, Is there a
> way to lower the number of samples transmitted?
>
> Additionally, I tried to run the UHD benchmark test in examples. However,
> I had issues converting the cpp file to an executable. It failed for some
> reason. Do you have any advice for this as well?
>
> --
>
> V/r
>
> LoyCurtis Smith
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fd488b05d1277a60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><=
font face=3D"verdana, sans-serif">Hello=C2=A0LoyCurtis Smith:</font></div><=
div class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"><=
br></font></div><div class=3D"gmail_default" style=3D""><font face=3D"verda=
na, sans-serif">Thanks for the detailed information about=C2=A0your system =
configuration.=C2=A0 Everything looks fine at=C2=A0initial glance, and I wo=
uld expect this to work.=C2=A0 I might say that the clock speed of your=C2=
=A0Dell Latitude E5570 i7-6820HQ CPU might be too low, I would generally=C2=
=A0recommend a clock speed of 3.5 GHz or higher, but it depends=C2=A0on wha=
t you&#39;re doing, what the sampling rate is, and what the network traffic=
 is, etc.</font></div><div class=3D"gmail_default" style=3D""><font face=3D=
"verdana, sans-serif"><br></font></div><div class=3D"gmail_default" style=
=3D""><span style=3D"font-family:verdana,sans-serif">What channel bandwidth=
 are you using?</span><br></div><div class=3D"gmail_default" style=3D""><fo=
nt face=3D"verdana, sans-serif"><br></font></div><div class=3D"gmail_defaul=
t" style=3D""><font face=3D"verdana, sans-serif">Could you please run the &=
quot;benchmark_rate&quot; utility on both the gNB and nrUE sides, using the=
 same sampling rates that you&#39;re using for the gNB and nrUE, and let me=
 know your results?=C2=A0 This utility will test your interface at the desi=
red sampling rate and see if it can sustain the data streaming rate.</font>=
</div><div class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-s=
erif"><br></font></div><div class=3D"gmail_default" style=3D""><font face=
=3D"monospace">./benchmark_rate --tx_rate 15.76e6 --rx_rate 15.76e6 --durat=
ion 600</font><font face=3D"verdana, sans-serif"><br></font></div><div clas=
s=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"><br></fon=
t></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel =
Pandeya</font></div><div dir=3D"ltr"><font face=3D"verdana, sans-serif"><br=
></font></div><div dir=3D"ltr"><font face=3D"verdana, sans-serif"><br></fon=
t></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, 17 Nov 2021 at 01:00, LoyCurtis Smith &lt;<a hr=
ef=3D"mailto:ljsmith9@ncsu.edu">ljsmith9@ncsu.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi,=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div style=3D"border=
-color:rgb(49,49,49);color:rgb(49,49,49)"><p style=3D"margin-top:0pt;margin=
-bottom:0pt;border-color:rgb(14,16,26);color:rgb(14,16,26)" dir=3D"auto"><s=
pan style=3D"font-size:1rem;border-color:rgb(14,16,26)">I am attempting to =
use two USRP x310 to deploy a 5G SA networking using the openairinterface5g=
 open-source system. However, I am experiencing a receive overflow error wh=
en attempting to deploy both an OAI-nrUE and OAI-gNB.=C2=A0</span><br></p><=
p style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);colo=
r:rgb(14,16,26)"><br></p><p style=3D"margin-top:0pt;margin-bottom:0pt;borde=
r-color:rgb(14,16,26);color:rgb(14,16,26)" dir=3D"auto"><span style=3D"marg=
in-top:0pt;margin-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">The=
 nrUE gives an=C2=A0<b style=3D"font-size:1rem;border-color:rgb(14,16,26)">=
ERROR_CODE_OVERFLOW (Overflow)=C2=A0</b>warning before failing and referenc=
ing a function in the OAI code.</span></p><p style=3D"margin-top:0pt;margin=
-bottom:0pt;border-color:rgb(14,16,26);color:rgb(14,16,26)"><br></p><p styl=
e=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(=
14,16,26)" dir=3D"auto"><span style=3D"margin-top:0pt;margin-bottom:0pt;fon=
t-size:1rem;border-color:rgb(14,16,26)">My gNB runs irregularly, constantly=
 showing the=C2=A0<b style=3D"font-size:1rem;border-color:rgb(14,16,26)">ER=
ROR_CODE_OVERFLOW(Overflow)=C2=A0</b>message. In addition to multiple late =
or &quot;L&quot; messages.</span></p><p style=3D"margin-top:0pt;margin-bott=
om:0pt;border-color:rgb(14,16,26);color:rgb(14,16,26)"><br></p><p style=3D"=
margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:rgb(14,16=
,26)"><span style=3D"margin-top:0pt;margin-bottom:0pt;font-size:1rem;border=
-color:rgb(14,16,26)">My system setting is as follows:=C2=A0</span></p><ul =
style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);color:=
rgb(14,16,26)" dir=3D"auto"><li style=3D"margin-top:0pt;margin-bottom:0pt;l=
ist-style-type:disc;border-color:rgb(14,16,26)"><strong style=3D"margin-top=
:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)">OAI-nrUE</strong><span s=
tyle=3D"margin-top:0pt;margin-bottom:0pt;font-size:1rem;border-color:rgb(14=
,16,26)">=C2=A0- <span class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif"></span>Latitude -E5570</span><strong style=3D"margin-top:0pt;m=
argin-bottom:0pt;border-color:rgb(14,16,26)"><em style=3D"margin-top:0pt;ma=
rgin-bottom:0pt;border-color:rgb(14,16,26)"><u style=3D"margin-top:0pt;marg=
in-bottom:0pt;border-color:rgb(14,16,26)"><span style=3D"margin-top:0pt;mar=
gin-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">=C2=A0(laptop)</s=
pan></u></em></strong><span style=3D"margin-top:0pt;margin-bottom:0pt;font-=
size:1rem;border-color:rgb(14,16,26)">=C2=A0- 16 GB RAM, <span class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"></span>i7-6820HQ with =
4 cores, 8 threads @ 2.70 GHz running Ubuntu 18.04 with 5.40-90 low latency=
 kernel; 1-GigE connection to USRP x310 with CBX-120 daughterboard. UHD 3.1=
5</span></li><li style=3D"margin-top:0pt;margin-bottom:0pt;list-style-type:=
disc;border-color:rgb(14,16,26)"><strong style=3D"margin-top:0pt;margin-bot=
tom:0pt;border-color:rgb(14,16,26)">OAI-gNB</strong><span style=3D"margin-t=
op:0pt;margin-bottom:0pt;font-size:1rem;border-color:rgb(14,16,26)">=C2=A0-=
 Optiplex-7040</span><strong style=3D"margin-top:0pt;margin-bottom:0pt;bord=
er-color:rgb(14,16,26)"><em style=3D"margin-top:0pt;margin-bottom:0pt;borde=
r-color:rgb(14,16,26)"><u style=3D"margin-top:0pt;margin-bottom:0pt;border-=
color:rgb(14,16,26)"><span style=3D"margin-top:0pt;margin-bottom:0pt;font-s=
ize:1rem;border-color:rgb(14,16,26)">=C2=A0(desktop)</span></u></em></stron=
g><em style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26)"=
>=C2=A0-=C2=A0</em><span style=3D"margin-top:0pt;margin-bottom:0pt;font-siz=
e:1rem;border-color:rgb(14,16,26)">16 GB RAM, i7-6700 with 4 cores, 8 threa=
ds @ 3.40 GHz- running Ubuntu 18.04 with 5.40-89 low latency kernel; 1-GigE=
 connection to USRP x310 with CBX-120 daughterboard. UHD 4.1</span></li></u=
l><p style=3D"margin-top:0pt;margin-bottom:0pt;border-color:rgb(14,16,26);c=
olor:rgb(14,16,26)"></p></div><div style=3D"border-color:rgb(49,49,49);colo=
r:rgb(49,49,49)"><div dir=3D"ltr" style=3D"word-spacing:1px;border-color:rg=
b(49,49,49)"><div dir=3D"ltr" style=3D"border-color:rgb(49,49,49)"><div dir=
=3D"ltr" style=3D"border-color:rgb(49,49,49)"><br></div><div style=3D"font-=
size:1rem;border-color:rgb(49,49,49)">I&#39;ve made the following changes t=
o both systems:=C2=A0</div><div style=3D"border-color:rgb(49,49,49)"><ul st=
yle=3D"border-color:rgb(49,49,49)" dir=3D"auto"><li style=3D"font-size:1rem=
;border-color:rgb(49,49,49)">Set the socket buffers (rmem_default, rmem_max=
,=C2=A0wmem_max, wmem_default) to 33554432</li><li style=3D"font-size:1rem;=
border-color:rgb(49,49,49)">Set TX and RX ring buffers on the interface to =
max value of 4096.</li><li style=3D"font-size:1rem;border-color:rgb(49,49,4=
9)">Set=C2=A0scaling_governor to &quot;performance&quot; mode for each CPU.=
</li><li style=3D"font-size:1rem;border-color:rgb(49,49,49)">Disabled C sta=
tes.</li><li style=3D"font-size:1rem;border-color:rgb(49,49,49)">Performed =
self-calibration on OAI-nrUE USRP x310 using uhd_cal_rx_iq_balance, uhd_cal=
_tx_iq_balance, and uhd_cal_tx_dc_offset.</li></ul></div><div style=3D"bord=
er-color:rgb(49,49,49)"><font style=3D"border-color:rgb(7,55,99);color:rgb(=
7,55,99)"><br></font></div><div style=3D"font-size:1rem;border-color:rgb(49=
,49,49)" dir=3D"auto">Do you have any recommendations for my overflow issue=
s? Also, Is there a way to lower the number of samples transmitted?=C2=A0</=
div><div style=3D"font-size:1rem;border-color:rgb(49,49,49)" dir=3D"auto"><=
br></div><div style=3D"font-size:1rem;border-color:rgb(49,49,49)" dir=3D"au=
to">Additionally, I tried to run the UHD benchmark test in examples. Howeve=
r, I had issues converting the cpp file to an executable. It failed for som=
e reason. Do you have any advice for this as well?=C2=A0</div></div></div><=
/div><br style=3D"color:rgb(0,0,0)"></div>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763"><br></font></div><di=
v dir=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=3D"backgro=
und-color:rgb(255,255,255)"><font color=3D"#073763"><br></font></span></div=
><div><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#073=
763">LoyCurtis Smith</font></span></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000fd488b05d1277a60--

--===============5872886817036788916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5872886817036788916==--
