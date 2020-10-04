Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB7A282BE2
	for <lists+usrp-users@lfdr.de>; Sun,  4 Oct 2020 19:02:28 +0200 (CEST)
Received: from [::1] (port=60468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kP7P0-0004p1-10; Sun, 04 Oct 2020 13:02:26 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:38609)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kP7Ow-0004ix-Vb
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 13:02:23 -0400
Received: by mail-vs1-f52.google.com with SMTP id 5so2996577vsu.5
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 10:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pWTD83osauLadlwfVzmOJjjNHtIBb+yUaNmsXgyRPFg=;
 b=INJNnHOXkJ5DR9++9ZO/NKk3CMHl/C988pQ1ugkHWk9LEZt8nNLXDghYY9FPydbiY3
 G3WIbNKus8znCp+rL62IC+qzC3ha2Tm5vT4Hu9hxnBQ8LAiiElS4WAPrWEr2ODaf6cDX
 IxUYdWce8T2Z6HzKP10V7uGNmZ7OoObIoDi3ruWxJxgHr3n4ZxEjXetbS7944VY3UU6Y
 5OPe3YV/9/Er9OX9dhV9o76KDiKVDo9SfZFp8UsB0RrthqA0tNL3QbJXTk1MzNkyM3HD
 SFu/n+102jbUkj54QDXXlDutOEZdOqESDPHAm+yOIPIm7Dlr/wH0JAZSMKG7Es8LxBR3
 WIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pWTD83osauLadlwfVzmOJjjNHtIBb+yUaNmsXgyRPFg=;
 b=s6ldbjddNbSnDoMS8yfpfUXqtOVvW5R5FPSx3PDf/Ea7jHFKWmXcM6/OTngy2JvZBY
 LEYsxk49KULOahY0PzkPR1Zii//Y+pvnt/tC98XNEPrw/qe1F7duyFh/aFuBu+BmYuLu
 b6bs46jsVIJxrjl75NA8tLVZjXohfKOhs70xED3t9dR7LaJzqdUj0pTPg3K42K9SDp/a
 tjW+lYrvIfWsVJNFWO/qApptSpw/pPf6Y/YajJTPnKJXERQSda8YHR0rGF7dE0NGJXKp
 jV5VVCY/a7HISEWnl6oomBUsY6Vl4hKOss2DOdidZc9Zid+mYqnkyAHezR5+9AF45jee
 s2NA==
X-Gm-Message-State: AOAM533p48M0wJDWReIkaH9rWYn3JUM+zw0WFKIF6XKJoO1JEUxqFy6l
 6DTZr+3SIoj6G5gsONTH5jq6QhR2vfeLIdpPCeH3fC1E
X-Google-Smtp-Source: ABdhPJw51/OmMebFh4ZefIxuvEfRZOQpL7PQWiBXpfigKr7siijxgT1OuLl8cM7DDKILc9JgKtV9IzZVSLHKSsPaiFo=
X-Received: by 2002:a05:6102:1cb:: with SMTP id
 s11mr4630027vsq.7.1601830902336; 
 Sun, 04 Oct 2020 10:01:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk54ZCgr=aPjNnUZ6wrygAMZWO5D=wUgqc0zoH7cEQRmO+A@mail.gmail.com>
In-Reply-To: <CAE_Rk54ZCgr=aPjNnUZ6wrygAMZWO5D=wUgqc0zoH7cEQRmO+A@mail.gmail.com>
Date: Sun, 4 Oct 2020 13:01:06 -0400
Message-ID: <CAL7q81vffhBJgyj=QbB73ir7ogQn_w_A1tVP=i487eNa5rR3kA@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] reading from ddr3 - high latency
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3017534918388381835=="
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

--===============3017534918388381835==
Content-Type: multipart/alternative; boundary="000000000000eca67005b0db519d"

--000000000000eca67005b0db519d
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

The latency will be dominated by Xilinx's MIG IP that interfaces with the
DDR RAM. You can try looking at Xilinx's documentation and see what
parameters you can change to improve latency.

Jonathon

On Sat, Oct 3, 2020 at 9:10 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
> I'm working on usrp x310 .
> I create my own version of the replay block .
> I almost didn't change anything in the 2 state  machines in the
> axi_replay.v .
> everything worked fine  but then i saw in the chipscope that my replay
> block got data after 110 clks. (although the read ctrl ports indicate that
> the ddr start processing my read request )
> Is there any reason it takes 110clks to get the first data from a burst ?
> How can I lower this high latency ?
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000eca67005b0db519d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Daniel,<div><br></div><div>The latency will be dominate=
d by Xilinx&#39;s MIG IP that interfaces with the DDR RAM. You can try look=
ing at Xilinx&#39;s documentation and see what parameters you can change to=
 improve latency.</div><div><br></div><div>Jonathon</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 3, 202=
0 at 9:10 AM Daniel Ozer via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div style=3D"dir=
ection:ltr">Hi everyone,</div><div style=3D"direction:ltr">I&#39;m working=
=C2=A0on usrp x310 .</div><div dir=3D"ltr">I create my own version of the r=
eplay block .</div><div dir=3D"ltr">I almost didn&#39;t=C2=A0change anythin=
g in the 2 state=C2=A0 machines in the axi_replay.v .</div><div dir=3D"ltr"=
>everything=C2=A0worked fine=C2=A0 but then i saw in the chipscope that my =
replay block got data after 110 clks. (although the read ctrl ports indicat=
e that the ddr start processing my read request )</div><div dir=3D"ltr">Is =
there any reason it takes 110clks to get the first data from a burst ?</div=
><div dir=3D"ltr">How can I lower this high latency=C2=A0?</div><br><div st=
yle=3D"direction:ltr">=C2=A0=C2=A0</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000eca67005b0db519d--


--===============3017534918388381835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3017534918388381835==--

