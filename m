Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 951D3178636
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:17:14 +0100 (CET)
Received: from [::1] (port=46268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Gmm-00071i-Ab; Tue, 03 Mar 2020 18:17:12 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:38501)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9Gmi-0006g1-BJ
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:17:08 -0500
Received: by mail-lf1-f51.google.com with SMTP id x22so3206342lff.5
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yW8iSjv5kQeaYm/spkPFeXsVG6loTE6GbDVmPj1r38k=;
 b=m4yUg80VDzuwjH2AC1OWMUJv8HyMoHqte2KQx05iQ0wcLPtiOjGglIR7HkOFU9JHjH
 mBWPiAwQKzi4r0/BFd8M1762e6O/b0GjCar9awQvmcaaQLPA2NgHDahKhEabxTesUOcv
 gs+xzdFLd4O+LfBz1+uSSYYNE8OBwRB1xbm92q0CSBUG/lnGPWjuKXnnPUYiwTV1M27h
 OF4bveja8EhDsls1hED22wVjRlghTdkZHOGEFaERRou+qysXK4Rgb6s9SUkAY659CBFl
 60IkwhujFmCH3wOruXl+mJsgnqb/EIs1UgKWnmFjbdpQh18njW6YrO5zHlCeNEfOLf1v
 qzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yW8iSjv5kQeaYm/spkPFeXsVG6loTE6GbDVmPj1r38k=;
 b=q7fR+XTU/MP4CiTYiOapu+TvrCJ8RBK10Yq0luHbWMH1vCqMcclMUc9IOSYnb/o7v0
 lzrIHzPLWgsLaBWwShoeCj+vZ+iotHDnBDOh1LkREcjCmvTbD9BPn5qB+txy4kpBR2QM
 W1AMQpttkHwU3lygwlIzQau3AHDsQl25BzVZLtiLq/n14OQ4cFQnj7tR8UgcZeeSNonZ
 E5bgjt2Frc2qt91Dk/nGSNK6SixAEH4/gd9xkpkvcWxNMq7MErIknifX3yWI9BdkW1Gj
 hRbJHHPm2HYbU0sut43zjKJPhBitpPE2BZaH+20Vd4gF5BttaJ//vSt61H/ezhkVNEN9
 loGA==
X-Gm-Message-State: ANhLgQ2evkkkrBXIChdtewrkC3xpOi/Xw8feVxftpZRDr8jCz4B6FnNN
 3EL4xTkIIXC68IF4QlmgCJaCJHEUzuHdymCZEXUvtjs0
X-Google-Smtp-Source: ADFU+vsozYPPW6bPMicA2Rmo10geM7cP4P1hT+EhLCXmvrJwVkhzMDtBxmU1xvge8XeERRAT7zYDVFUlqC5SifUa/H4=
X-Received: by 2002:a19:878a:: with SMTP id j132mr169943lfd.83.1583277387029; 
 Tue, 03 Mar 2020 15:16:27 -0800 (PST)
MIME-Version: 1.0
References: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
In-Reply-To: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
Date: Tue, 3 Mar 2020 17:16:26 -0600
Message-ID: <CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com>
To: Francisco Albani <francisco.albani@gmail.com>
Subject: Re: [USRP-users] Can underflows in any way be bad for hardware in
 the long term?
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6786648558321512515=="
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

--===============6786648558321512515==
Content-Type: multipart/alternative; boundary="0000000000003c39f9059ffb7e62"

--0000000000003c39f9059ffb7e62
Content-Type: text/plain; charset="UTF-8"

Hey Francisco,

Interesting question. I remember reading this when it was initially posted,
giving it some thought, and promptly forgetting to respond. It's a question
that is difficult to give a "yes" or "no" to. Similar to statistics, I
think the answer to this question only comes by disproving the null
hypothesis that "no part of the signal chain is damaged with an underflow".
If you can't prove that damage will occur, then you're probably in the
clear, but you also can't be positive that the null hypothesis is true.
That being said, I don't think underflows are bad for the hardware in any
way.

An underflow is typically caused when a bottleneck on the host side
prevents data from filling USRP buffers quickly enough to be pushed through
the DAC at the requested rate. As I see it, the only place in the signal
chain that *might* exhibit unexpected behavior in the face of samples not
being present would be at the DAC (don't ask me why, but that would be my
best guess). The way UHD operates, the DAC and ADC are initialized and
running as soon as the streamer objects in UHD are initialized, and they
sit there processing nothing (similar to an underflow state) until a TX
stream command from the host tells the USRP radio core to release it's
queued samples to the converter(s).

Maybe that was all nonsense. In any case, I wouldn't worry about radio
damage, I'd worry about fixing your underflows :)

Best,

Sam Reiter

On Tue, Feb 11, 2020 at 6:32 AM Francisco Albani via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi!
>
> I've been using USRPs many years yet it never occurred to me to ask that
> question.
>
> Of course one should avoid using an application in a regime of many
> underflows, BUT, just for the sake of the question suppose I came up with a
> setup that does what I want while throwing a lot of them, are there any
> implications to the weariness of any piece of hardware? For example turning
> on and off the TX chain.
>
> Will a radiation environment change the conclusion?
>
> Bye and thanks for your help!
>
> Francisco.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003c39f9059ffb7e62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Francisco,<div><br></div><div><div>Interesting questio=
n. I remember reading this when it was initially posted, giving it some tho=
ught, and promptly forgetting to respond. It&#39;s a question that is diffi=
cult to give a &quot;yes&quot; or &quot;no&quot; to. Similar to statistics,=
 I think the answer to this question only comes by disproving the null hypo=
thesis that &quot;no part of the signal chain is damaged with an underflow&=
quot;. If you can&#39;t prove that damage will occur, then you&#39;re proba=
bly in the clear, but you also can&#39;t be positive that the null hypothes=
is is true. That being said, I don&#39;t think underflows are bad for the h=
ardware in any way.=C2=A0<br></div><div></div></div><div><br></div><div> An=
 underflow is typically caused when a bottleneck on the host side prevents =
data from filling USRP buffers quickly enough to be pushed through the DAC =
at the requested rate. As I see it, the only place in the signal chain that=
 <i>might</i> exhibit unexpected behavior in the face of samples not being =
present would be at the DAC (don&#39;t ask me why, but that would be my bes=
t guess). The way UHD operates, the DAC and ADC are initialized and running=
 as soon as the streamer objects in UHD are initialized, and they sit there=
 processing nothing (similar to an underflow state) until a TX stream comma=
nd from the host tells the USRP radio core to release it&#39;s queued sampl=
es to the converter(s).=C2=A0</div><div><br></div><div>Maybe that was all n=
onsense. In any case, I wouldn&#39;t worry about radio damage, I&#39;d worr=
y about fixing your underflows :)=C2=A0</div><div><br></div><div>Best,</div=
><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Rei=
ter=C2=A0</div></div></div></div></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 11, 2020 at 6:32 A=
M Francisco Albani via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi!</div><div><br>=
</div><div>I&#39;ve been using USRPs many years yet it never occurred to me=
 to ask that question.</div><div><br></div><div>Of course one should avoid =
using an application in a regime of many underflows, BUT, just for the sake=
 of the question suppose I came up with a setup that does what I want while=
 throwing a lot of them, are there any implications to the weariness of any=
 piece of hardware? For example turning on and off the TX chain.<br></div><=
div><br></div><div>Will a radiation environment change the conclusion?</div=
><div><br></div><div>Bye and thanks for your help!</div><div><br></div><div=
>Francisco.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003c39f9059ffb7e62--


--===============6786648558321512515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6786648558321512515==--

