Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 607B81DD70D
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 21:19:23 +0200 (CEST)
Received: from [::1] (port=52366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbqiw-0007Dj-A3; Thu, 21 May 2020 15:19:22 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:46287)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <derekste@gmail.com>) id 1jbqis-00070r-R9
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 15:19:18 -0400
Received: by mail-lf1-f44.google.com with SMTP id r125so5083668lff.13
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 12:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0yZWaFRGmH1UFVpDdwY1E3efYs2l5lkuCDe2IGMUS4k=;
 b=CVTRpkJ5KOej8iDeR1kgWYyBeacwwJyisjkmCu2lcnDx/lpDdY0MwDHPRgrIAbhTZv
 j2erunVTOq2KTJwO3+FX3ERE6r7C9znIAgHCmDPkXudk/N5f0KWlFXr80nZIwi9grYrv
 lWMWdA/HOvoHQF309ioAJPgC5oReHCC7ZMLNjOOEXPdQr56Z4/WFknYQ88LcrlsKrYWC
 ToG1mf7DL/ztgjf/cMobiS/PcPFLuHGIaQIn3Zsck0514QdmIKp252pj2T4tw0coC5TL
 XdSJ8PkdlJlVfGxhyjot791xuP1a/E8eCgnEtZgGZiTNTS+eh09oAxra2mlTwQKrAmek
 k5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0yZWaFRGmH1UFVpDdwY1E3efYs2l5lkuCDe2IGMUS4k=;
 b=YotkHco27TlSmII7+iBZOi9vtxOBKboRqWUh7y4XCPTt4h9Ioycba8qZUDvvHHs9Sj
 eHjG/UuUAZ2CfEivuh/ZdMDonXu6/jp9ktY+pEucuZ4qA/S7Tl4B731RqNwBBihYwaeC
 m/0fdtw2QWsJsGDdyMF70t6i1Ji+2lasiZuD/iqFWjtH3E86zlvE3Ak0+wngm99r5boY
 46aOAcmbsWTQrRN3DYAvtI3o2C4+BLLkTpK3gkpZIDF/BGvTX9WVbqWMBc2Fah6cSXl/
 7TQxC4ifz0mBL3vgbTswNufZe0fcsJNHhtXl7jKL/KkSSVGZ85qmV8iq4xwPpnQy+KzE
 T5Dw==
X-Gm-Message-State: AOAM530dOQic5lvW8uZak9zSw5fNo057pY6LzmNOy9KfMdh4IYBFeOcP
 QaPDcT+1vxkqBJXRgdCeHuKY1XHdMva68wQCAK4=
X-Google-Smtp-Source: ABdhPJxgUOMjafl2fzFRFW0h1TpsH+5uPLPtxfJC54nP1OXbIY1ajmHLKGI9j01CUZwe+HFw/gXKEEaGyfOBUI8az48=
X-Received: by 2002:ac2:4823:: with SMTP id 3mr5635079lft.194.1590088717536;
 Thu, 21 May 2020 12:18:37 -0700 (PDT)
MIME-Version: 1.0
References: <1659313211.1951845.1590081096295.ref@mail.yahoo.com>
 <1659313211.1951845.1590081096295@mail.yahoo.com>
 <CAGp1hYqBDLg2dz+u8R_hVT7H2zYa+jQyvbygCjd9GsYkXJA=gg@mail.gmail.com>
 <1097641633.1970274.1590083415325@mail.yahoo.com>
 <CAB__hTRvsssOB4Gc6SyAYw0qggR4Bd1UL+4gGcL1zmOsybrr4g@mail.gmail.com>
In-Reply-To: <CAB__hTRvsssOB4Gc6SyAYw0qggR4Bd1UL+4gGcL1zmOsybrr4g@mail.gmail.com>
Date: Thu, 21 May 2020 14:18:26 -0500
Message-ID: <CAGp1hYqu7C30+Nqih7q3R1+8mnkfTgmohpC8tJ+sLLLmS0wFMQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] N310 MIMO Configuration Help Required !
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
From: Derek Steinkamp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Derek Steinkamp <derekste@gmail.com>
Cc: Farhan Naeem <farhan_uet08@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3594356864604036683=="
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

--===============3594356864604036683==
Content-Type: multipart/alternative; boundary="0000000000002b91c605a62d6127"

--0000000000002b91c605a62d6127
Content-Type: text/plain; charset="UTF-8"

streaming one channel at 125Msps on my N300 sustains 500 MByte/sec of speed
on my 10Gb SFP link. Extrapolate from that.

On Thu, May 21, 2020 at 1:40 PM Rob Kossler <rkossler@nd.edu> wrote:

> This should work using a 4-port card.  I use an Intel XL710 card with 4
> 10G ports.  But, back to the external 10Gb switch question, I haven't used
> one, but it depends upon what streaming rates you need.  If your streaming
> rates are slow enough, it may work for you.  But, if you are trying to
> stream 8 ports simultaneously, you would be limited to 31.25MS/s since it
> would all be going over the same 10Gb link. And, the switch may add other
> issues.
>
> On Thu, May 21, 2020 at 1:51 PM Farhan Naeem via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>>
>> Having a 10Gbit switch in between would not significantly impact the
>> streaming would it? Also is there a requirement for the 10Gb LAN card, It
>> would be expensive to purchase 2 of those cards that is available on Ettus
>> webpage. Maybe purchasing a 4 port one would work.
>> Is the following connection good enough to achieve 8x8 MIMO system?
>> Anything I am missing here?
>>
>> -Farhan
>> On Thursday, May 21, 2020, 01:25:53 PM EDT, Derek Steinkamp <
>> derekste@gmail.com> wrote:
>>
>>
>> You cannot run your streaming ports through a switch like that, since the
>> host PC to switch link becomes a bottleneck...
>>
>> Streaming ports should go to NICs directly on the host system. So, to
>> stream from two radios, each having a 10gig SFP link, the host would need
>> two 10gb interfaces plus an additional LAN interface for the
>> control/management network(sometimes this will even be OK if you are going
>> wifi to where the management port is plugged in)
>>
>> On Thu, May 21, 2020 at 12:12 PM Farhan Naeem via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hello,
>>
>> I am trying to understand how to connect two N310 devices to get a MIMO
>> configuration.
>>
>> 1. I connect two of the SFP+ 10G Ethernet ports on each N310 device to a
>> 10Gbit Ethernet switch. And connect the other end of this Ethernet switch
>> to my host system.
>> 2. I need additional 1Gb Ethernet switch to connect to the management
>> Ethernet port of the N310 devices from my host system.
>> 3. A common clock reference.
>>
>> I have attached a block diagram here. Thanks.
>>
>> Best Regards,
>> Farhan
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002b91c605a62d6127
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">streaming one channel at 125Msps on my N300 sustains 500 M=
Byte/sec of speed on my 10Gb SFP link. Extrapolate from that.</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 21=
, 2020 at 1:40 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossl=
er@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">This should work using a 4-port card.=C2=A0 I u=
se an Intel XL710 card with 4 10G ports.=C2=A0 But, back to the external 10=
Gb switch question, I haven&#39;t used one, but it depends upon what stream=
ing rates you need.=C2=A0 If your streaming rates are slow enough, it may w=
ork for you.=C2=A0 But, if you are trying to stream 8 ports simultaneously,=
 you would be limited to 31.25MS/s since it would all be going over the sam=
e 10Gb link. And, the switch may add other issues.</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 1=
:51 PM Farhan Naeem via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"fo=
nt-family:verdana,helvetica,sans-serif;font-size:13px"><div></div>
        <div><br></div><div dir=3D"ltr">Having a 10Gbit switch in between w=
ould not significantly impact the streaming would it? Also is there a requi=
rement for the 10Gb LAN card, It would be expensive to purchase 2 of those =
cards that is available on Ettus webpage. Maybe purchasing a 4 port one wou=
ld work.<br>Is the following connection good enough to achieve 8x8 MIMO sys=
tem? Anything I am missing here?</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">-Farhan</div>
       =20
        </div><div id=3D"gmail-m_-8152669689761026571gmail-m_-7680348740419=
949002yahoo_quoted_0646510325">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Thursday, May 21, 2020, 01:25:53 PM EDT, Derek Stein=
kamp &lt;<a href=3D"mailto:derekste@gmail.com" target=3D"_blank">derekste@g=
mail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_-8152669689761026571gmail-m_-768034=
8740419949002yiv0887370064"><div><div dir=3D"ltr">You cannot run your strea=
ming ports through a switch like that, since the host PC to switch link bec=
omes a bottleneck...<div><br clear=3D"none"></div><div>Streaming ports shou=
ld go to NICs directly on the host system. So, to stream from two radios, e=
ach having a 10gig SFP link, the host would need two 10gb interfaces plus a=
n additional LAN interface for the control/management network(sometimes thi=
s will even be OK if you are going wifi to where the management port is plu=
gged in)</div></div><br clear=3D"none"><div><div id=3D"gmail-m_-81526696897=
61026571gmail-m_-7680348740419949002yiv0887370064yqt16031"><div dir=3D"ltr"=
>On Thu, May 21, 2020 at 12:12 PM Farhan Naeem via USRP-users &lt;<a rel=3D=
"nofollow" shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></d=
iv><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(=
204,204,204);padding-left:1ex"><div><div style=3D"font-family:verdana,helve=
tica,sans-serif;font-size:13px"><div dir=3D"ltr">Hello,</div><div dir=3D"lt=
r"><br clear=3D"none"></div><div dir=3D"ltr">I am trying to understand how =
to connect two N310 devices to get a MIMO configuration.</div><div dir=3D"l=
tr"><br clear=3D"none"></div><div dir=3D"ltr">1. I connect two of the SFP+ =
10G Ethernet ports on each N310 device to a 10Gbit Ethernet switch. And con=
nect the other end of this Ethernet switch to my host system.<br clear=3D"n=
one">2. I need additional 1Gb Ethernet switch to connect to the management =
Ethernet port of the N310 devices from my host system.</div><div dir=3D"ltr=
">3. A common clock reference.</div><div dir=3D"ltr"><br clear=3D"none"></d=
iv><div dir=3D"ltr">I have attached a block diagram here. Thanks.<br clear=
=3D"none"><br clear=3D"none">Best Regards,<br clear=3D"none">Farhan</div></=
div></div>_______________________________________________<br clear=3D"none"=
>
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002b91c605a62d6127--


--===============3594356864604036683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3594356864604036683==--

