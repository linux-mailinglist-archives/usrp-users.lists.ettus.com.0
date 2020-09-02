Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B05825B6FA
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 01:02:58 +0200 (CEST)
Received: from [::1] (port=48180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDbmH-0002PD-N8; Wed, 02 Sep 2020 19:02:53 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:34981)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vesathya@eng.ucsd.edu>)
 id 1kDbmB-0002EV-B8
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 19:02:47 -0400
Received: by mail-ot1-f46.google.com with SMTP id i4so858667ota.2
 for <usrp-users@lists.ettus.com>; Wed, 02 Sep 2020 16:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qDg68EZv7/BTTp1J7GwOdh08IqTeqkV3lmZZdKmZhyg=;
 b=JVc5fGcVkgkc5fPTnvEx1XJG4jvgHKZmm9EQu6boN5xz6APGh5PHv/UnVKopHx39Q2
 49oGT5NUNFd95PUzvtR/lwft4qnLcofTesd1rpm0er1BsaelYk2fOKCO0c4bTGwHwQom
 XNMjRt27vwFNtxCaneL+Zk6eJEHxCiYO+fHPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qDg68EZv7/BTTp1J7GwOdh08IqTeqkV3lmZZdKmZhyg=;
 b=dAVYLreq7gnTpNpRudPxYCtLsn9LPumJn7FC5SGV1tlNZJlMTa9NTBw0rdGdcd+dzB
 ck+XgbXZ+FrAERyCp3dZ+JEQpOCQfNKRkvE40LvPe90fbOixfDLvzFwliusSZJ2jv7P/
 S8WWL5vtIgRKuDRdMxj9JWiNMFj8fxLIz73BYKjFQkmK6o0mQh2BuAtg+EYYJNeZNmfF
 OwAHezG690S5W1jKHPPi7ilJGt8/dk6ZYpgpdibuKjGjrN47FF5u1YevNmsu49CKv4cY
 H54nb01tbj1MvW38hcSM78CKC79o/B5Y15S8TwopItHvJWnox4CdgCmk34hGItx3YDOh
 axDQ==
X-Gm-Message-State: AOAM531HKW86Kg0JPQvWEs6h+iwBGlDmDQWzYrQcbnVqEE2vHRDJl9lM
 1oWuu5eDzDbUfufAM0Q7ZXhWOfivEJKZgBPmgm6IF/z1rQbwaWdf
X-Google-Smtp-Source: ABdhPJz/1njbNvI4US1PRWxIWYKbHFB14PzmuA1CUU4uBj/96QI6pF94ff21x0Is1PP2zW4BDW0h8guEFAEGDvwDvCA=
X-Received: by 2002:a9d:758b:: with SMTP id s11mr399777otk.251.1599087726239; 
 Wed, 02 Sep 2020 16:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
In-Reply-To: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
Date: Wed, 2 Sep 2020 16:01:55 -0700
Message-ID: <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Cc: Ankush Jolly <ajolly@eng.ucsd.edu>
Subject: Re: [USRP-users] Link going up and down periodically every 45
 seconds on USRP N310
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
From: Venkatesh Sathyanarayanan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Venkatesh Sathyanarayanan <vesathya@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============1470123387668879737=="
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

--===============1470123387668879737==
Content-Type: multipart/alternative; boundary="000000000000e33d3105ae5c9f3c"

--000000000000e33d3105ae5c9f3c
Content-Type: text/plain; charset="UTF-8"

Hi,

Small correction:

*Questions:*
I notice that the test stops when the link goes down every 45 seconds. This
happens for all types of tests(with and without GUI).
Kindly let me know how to debug this - i.e. why the link goes down every 45
seconds?

Regards
Venkatesh

On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan <
vesathya@eng.ucsd.edu> wrote:

> Hi,
>
>
> *Setup details:*
> I am using an USRP N310 and I have the host computer connected to the USRP
> via SFP cable. I additionally have a serial connection between the two and
> have a screen session running.
>
> *Observation:*
> On the screen session, I noticed the following messages:
> [ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
> [ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
> [ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
> [ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
> [ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
> [ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
> [ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
> [ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
> [ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
> [ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
>
> ..........................................................................................................................................................................
>
> ..........................................................................................................................................................................
>
>
> ..........................................................................................................................................................................
>
> ..........................................................................................................................................................................
>
> *Questions:*
> When I have a GNU radio GRC running with an active GUI displaying the
> spectrum, I see that it halts at the time when the link goes down.
> When I run a file with no GUI active - say IQ samples saved to a file,
> things running in the background and I do not see any interruption.
>
>
>    1. Kindly let me know why I am seeing this issue of link going down
>    every 45 seconds and
>    2. also if this could potentially affect my tests (all my tests are
>    without any GUI.)
>
>
> Regards
> Venkatesh
>
>

--000000000000e33d3105ae5c9f3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Small correction:</div><div><br></d=
iv><div><div><font size=3D"4"><b>Questions:</b></font><br></div><div>I noti=
ce that the test stops when the link goes down every 45 seconds. This happe=
ns for all types of tests(with and without GUI).</div></div><div>Kindly let=
 me know how to debug this - i.e. why the link goes down every 45 seconds?<=
/div><div><br></div><div>Regards</div><div>Venkatesh</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 2, 20=
20 at 3:10 PM Venkatesh Sathyanarayanan &lt;<a href=3D"mailto:vesathya@eng.=
ucsd.edu">vesathya@eng.ucsd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></=
div><div><br></div><div><b>Setup details:</b></div><div>I am using an USRP =
N310 and I have the host computer connected to the USRP via SFP cable. I ad=
ditionally have a serial connection between the two and have a screen sessi=
on running.</div><div><br></div><div><b>Observation:</b><br></div><div>On t=
he screen session, I noticed the following messages:</div><div>[ 2151.04107=
9] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control of=
f<br>[ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2196.96=
1090] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control=
 off<br>[ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2242=
.881106] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow cont=
rol off<br>[ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2=
288.801114] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow c=
ontrol off<br>[ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down<br>=
[ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flo=
w control off<br>[ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down<=
br>[ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - =
flow control off<br>[ 2425.441143] nixge 40000000.ethernet sfp0: Link is Do=
wn<br>[ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full=
 - flow control off<br>[ 2471.361159] nixge 40000000.ethernet sfp0: Link is=
 Down<br>[ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/F=
ull - flow control off<br>[ 2517.281166] nixge 40000000.ethernet sfp0: Link=
 is Down<br>[ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up - 10Gbp=
s/Full - flow control off<br>..............................................=
...........................................................................=
.................................................</div><div>...............=
...........................................................................=
...........................................................................=
.....</div><div><br></div><div>............................................=
...........................................................................=
...................................................</div><div>.............=
...........................................................................=
...........................................................................=
.......</div><div><font size=3D"4"><br></font></div><div><font size=3D"4"><=
b>Questions:</b></font><br></div><div>When I have a GNU radio GRC running w=
ith an active GUI displaying the spectrum, I see that it halts at the time =
when the link goes down.</div><div>When I run a file with no GUI active - s=
ay IQ samples saved to a file, things running in the background and I do no=
t see any interruption.</div><div><br></div><ol><li>Kindly let me know why =
I am seeing this issue of link going down every 45 seconds and </li><li>als=
o if this could potentially affect my tests (all my tests are without any G=
UI.)</li></ol><div><br></div><div>Regards</div><div>Venkatesh<br></div><div=
><br></div></div>
</blockquote></div>

--000000000000e33d3105ae5c9f3c--


--===============1470123387668879737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1470123387668879737==--

