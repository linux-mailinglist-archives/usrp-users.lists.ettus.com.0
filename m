Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967311788E
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 22:37:10 +0100 (CET)
Received: from [::1] (port=53578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieQiE-0003Yf-V1; Mon, 09 Dec 2019 16:37:02 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:35005)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ieQiB-0003Uj-AO
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 16:36:59 -0500
Received: by mail-lj1-f175.google.com with SMTP id j6so17427709lja.2
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 13:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dk/9GfU/hTcplniqBVGlFCWwIUK9vUt2FrhCWAAns6o=;
 b=j6cgJv8t7bTFbtLCZI3oeETNUeu1SrFkYUc1OvYKuLHH5UqiTPDACAZJ6b4ZdQ5m7h
 jLYUR/ZNb/bvCj0f0lfghaM+T97NQhc9mU+XsGcW761LfiRj8aCKRTQXwozBM4MgQAaS
 aoN49/jckLXLMJ3YbNqqm8WVR51zanmB6iMWuRop0Mlrg8CrNhkZ853ly5D9R8t6vwMz
 zNbYZE74DL9BsO/Io96vdCJf/NxeOXMsx/LY30a1yNwbj9dOgj8TToBpmO/TgJaWBwxU
 /ZkhFiNIVOnfZ2xfsZM+KgqLwM9HYadZpRAQzEfI7umTfSiZj4J2f0edNEpD0Tyk2/E7
 sbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dk/9GfU/hTcplniqBVGlFCWwIUK9vUt2FrhCWAAns6o=;
 b=Jb8OweTks7BlTGGssNHqcDjbFMrK9OiVP3x9JahqphTzSrbK6B8KPfH0nJ+y6JKrMl
 v01FwWk3+IlgRapBgNNuKPe6kBoKTFRwfcH+2F6sPASTMcNAobke3OVk56UCeQA2i1wo
 n4YnEdXstWVhiHCryqVEbdqxqVeU4QHsoTkVCz7EdQ32E+neGF2uCSGcp4WT3dhd9G49
 yE2voBuS7XVnjLw7n7m+arf+Mlp3i3N1dEIbRqZ7h0JZfWh5qfR8VcsGHAXSy4VNz1yz
 FkFbueSHI4xnLIOLQfZ75YLS2l2ytA9iM9tAAHYJGtMilXmBYd9bJh8b09j0B46VLuZv
 CQ+w==
X-Gm-Message-State: APjAAAXgaN+7kUmAXxNh9LN1GaXH7KWuEoBcpPBiV1fiRNV7pP6oN+7V
 mKl1RmSpx1Jf61SGN9uxwfpOhlrFMDO5mQlw0pwX+6vv
X-Google-Smtp-Source: APXvYqzbemzk4Q38reQtUah0vkIEETAoNgeNEVudu4t1qrqN8WJSPRQ+LWpNF531ChLEGqFdSYOO1ec4z6AEcGuIZXg=
X-Received: by 2002:a2e:585e:: with SMTP id x30mr18944108ljd.141.1575927377938; 
 Mon, 09 Dec 2019 13:36:17 -0800 (PST)
MIME-Version: 1.0
References: <AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0@AM6PR0102MB3589.eurprd01.prod.exchangelabs.com>
In-Reply-To: <AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0@AM6PR0102MB3589.eurprd01.prod.exchangelabs.com>
Date: Mon, 9 Dec 2019 15:36:07 -0600
Message-ID: <CANf970ZkqEerJZ_xFg-jqh-_RY=zO-7+jq4SXEjm66x5Ky0dOw@mail.gmail.com>
To: Hasan Can Yildirim <Hasan.Can.Yildirim@vub.be>
Subject: Re: [USRP-users] Time Synchronized Transmit with 2 USRPs
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7847136245603866726=="
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

--===============7847136245603866726==
Content-Type: multipart/alternative; boundary="0000000000008dd76a05994c2ff2"

--0000000000008dd76a05994c2ff2
Content-Type: text/plain; charset="UTF-8"

Hasan,

Are the USRPs sharing any kind of timing / clocking signals? Typically we
would recommend that you share a reference clock and PPS clock across all
devices, and from there you'd just need to coordinate timed commands. With
timed commands in UHD, you can tell each USRP to reset its internal sense
of time to 0 on the next rising PPS edge. Once they have agreed upon this
time, you should see them stay locked together as a shared reference clock
with prevent drift. One obstacle is ensuring that each terminal (are these
separate computers?) needs to send the "time reset" command to its USRPs
within a single PPS cycle. If your reset commands came on different PPS
cycles, you'd see your radios offset by 1 second. Here is the manual page
with the list of timed commands that you can use for this:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html

Can you also let us know what USRPs and version of UHD you're using?

Sam Reiter
Ettus Research

On Wed, Dec 4, 2019 at 4:03 AM Hasan Can Yildirim via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> *Here is the summary of my experimental setup:*
>
> 4 data receiving channels with 2 USRPs. Sampling rates are 100 Msps.
> 1 data transmitter with 1 USRP. Sampling rate is 100 Msps.
> 1 calibration transmitter with 1 USRP. Sampling rate is 50 Msps (or
> smaller, say 33.3 Msps).
>
> All the daughterboards are UBX160.
> The USRPs are connected through the 10Gbit/s ethernet connections.
> I am using a modified version of the C/C++ code with the uhd libraries.
> So, no gnu-radio etc.
>
> *The question in one sentence:*
>
> How can I start transmitting at the same time with 2 USRPs, that has two
> different sampling rates, and 'invoked' at two different terminals?
>
> *Here is the detailed explanation about what I want to achieve with this
> setup:*
>
> I want to use the calibration signal, to estimate the unknown
> delays/phases (introduced by the hardwares) on the receiver side, then use
> this calibration to apply angle-of-arrival algorithms on the received data.
> I know that I could transmit the calibration signal and the data signal,
> at the same time. Then apply a high-pass filter to separate the calibration
> signal, do the calibration, and so on...
> Instead, I would like to synchronize the data and calibration
> transmitters, so that they start transmitting at the same time. Receiver
> will receive continuously, for a long enough duration.
> In other words, the calibration signal will be a signal of N samples and M
> zeros. Mean while, the data will be N zeros, M data samples. So, during the
> first N samples, I will receive only the calibration signal, then during
> the next M samples, I will receive the data signal. To achieve this, the
> two transmitters have to start transmitting at the same time (maybe a small
> error with a few samples is acceptable). How can I achieve this?
>
>
> Thanks a lot for your advices.
>
> Cheers,
> Hasan
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008dd76a05994c2ff2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hasan,</div><div><br></div><div>Are the USRPs sharing=
 any kind of timing / clocking signals? Typically we would recommend that y=
ou share a reference clock and PPS clock across all devices, and from there=
 you&#39;d just need to coordinate timed commands. With timed commands in U=
HD, you can tell each USRP to reset its internal sense of time to 0 on the =
next rising PPS edge. Once they have agreed upon this time, you should see =
them stay locked together as a shared reference clock with prevent drift. O=
ne obstacle is ensuring that each terminal (are these separate computers?) =
needs to send the &quot;time reset&quot; command to its USRPs within a sing=
le PPS cycle. If your reset commands came on different PPS cycles, you&#39;=
d see your radios offset by 1 second. Here is the manual page with the list=
 of timed commands that you can use for this:</div><div><br></div><div><a h=
ref=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html"=
>https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html</a></d=
iv><div><br></div><div>Can you also let us know what USRPs and version of U=
HD you&#39;re using?<br></div><div><br></div><div><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr">Sam Reiter <br><div>Ettus Research<br></div></div></d=
iv></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Dec 4, 2019 at 4:03 AM Hasan Can Yildiri=
m via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi all,</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<u>Here is the summary of my experimental setup:</u></div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
4 data receiving channels with 2 USRPs. Sampling rates are 100 Msps.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
1 data transmitter with 1 USRP. Sampling rate is 100 Msps.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
1 calibration transmitter with 1 USRP. Sampling rate is 50 Msps (or smaller=
, say 33.3 Msps).=C2=A0</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
All the daughterboards are UBX160.=C2=A0</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The USRPs are connected through the 10Gbit/s ethernet connections.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am using a modified version of the C/C++ code with the uhd libraries. So,=
 no gnu-radio etc.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<u>The question in one sentence:</u></div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
How can I start transmitting at the same time with 2 USRPs, that has two di=
fferent sampling rates, and &#39;invoked&#39; at two different terminals?</=
div>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<u>Here is the detailed explanation about what I want to achieve with this =
setup:</u></div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I want to use the calibration signal, to estimate the unknown delays/phases=
 (introduced by the hardwares) on the receiver side, then use this calibrat=
ion to apply angle-of-arrival algorithms on the received data.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I know that I could transmit the calibration signal and the data signal, at=
 the same time. Then apply a high-pass filter to separate the calibration s=
ignal, do the calibration, and so on...=C2=A0</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Instead, I would like to synchronize the data and calibration transmitters,=
 so that they start transmitting at the same time. Receiver will receive co=
ntinuously, for a long enough duration.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
In other words, the calibration signal will be a signal of N samples and M =
zeros. Mean while, the data will be N zeros, M data samples. So, during the=
 first N samples, I will receive only the calibration signal, then during t=
he next M samples, I will receive
 the data signal. To achieve this, the two transmitters have to start trans=
mitting at the same time (maybe a small error with a few samples is accepta=
ble). How can I achieve this?</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks a lot for your advices.</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Cheers,</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hasan</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:&quot;Times New Roman&quot;,Times,serif;font-size=
:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008dd76a05994c2ff2--


--===============7847136245603866726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7847136245603866726==--

