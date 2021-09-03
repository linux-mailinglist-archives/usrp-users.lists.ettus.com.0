Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C3D400804
	for <lists+usrp-users@lfdr.de>; Sat,  4 Sep 2021 00:55:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CF273848D1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 18:55:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nVFJ3CAv";
	dkim-atps=neutral
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 92DEA384105
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 18:55:03 -0400 (EDT)
Received: by mail-lj1-f179.google.com with SMTP id f2so1104920ljn.1
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 15:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g0xmKpCpJ8JuFV/KkpX5HNISo5HyPCa+6sdxOIf18Jw=;
        b=nVFJ3CAvwZU8SaY9lLCUO3gRc09Q4SLcrmQMuBjoWUdCxUI4U7GdV5w6tDUWZ0shxM
         rv26PcyxJkVyiHX87vzQYlzG4n4yItmcltY3leJDgdDdHHHqA+/WvctWbW87jt/hmLsV
         BpPZz4qnJlSm5+RlQv8xm2ZJcDK/llevfyuj7x81wKGKgvK4tqa9tI6fcapO0+sj86pg
         LGshRW23D+J2uO/aBrprP5q3ad7d0RkloNI0LOic4YDiLgAvfUVHLH+Gx9jmNSMikhKw
         vb07VpY3vBr8MOe0ZslxF93P6+C9jvq5nhcxSz09ltsQWG2+LI8Rbq+T1vgumNhyuTGu
         4pjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g0xmKpCpJ8JuFV/KkpX5HNISo5HyPCa+6sdxOIf18Jw=;
        b=YmogpVLCRK7tdjwyuYdNQkEBGH8XqiLLA3Qnd3GJ2X6ql2NWPScx/OwaVv7irrktFb
         ib4LcV3N+K1hE4W3JGKCP4cpF5D2vv6FRuMFIPhWRYEnykUAafxPtPsa7ZLE6Ju5niVg
         to8liYkpT7m7O8eGVZRE9HI+kywYm0GIwykyrBp7U1kreGAE7rLfqTvBRK7GtPI/kBli
         X/Faq5nXeAa/yZju9IKvtZ9YIfgA0qvLGYLjEL3qiljMljdYNOEFZhjC23a7lyjGY1lq
         c4md+28Whkx7/3GxKhQ0Fnhgqn3DCQS4XVdtK3/qPnnuxEzC5/KqDGr8ErNxF7FdJfKS
         D6Ug==
X-Gm-Message-State: AOAM531ZyowIliVAGzGwnCQxrdwUvmZpItiMLoN9qK2MDAZo8oqRdq4K
	xjjiCm8qXwHX+OZGscjPjschjHy0KnzPtMoJ/Aw=
X-Google-Smtp-Source: ABdhPJwORS7EY8YvQa4+7XiPI8jC6hgmatidkqbdvwhmNlpuoY8kvCFPPCQNeAB5gwzmkv+oOEktR3iOW/W0pLULx/M=
X-Received: by 2002:a2e:5708:: with SMTP id l8mr904559ljb.481.1630709702095;
 Fri, 03 Sep 2021 15:55:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
 <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com>
 <cdb81990-bb54-6aa9-33cb-2cbb77c3fe2c@gmail.com> <CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=PWkm2A@mail.gmail.com>
 <e47dc17c-0601-073f-2def-dd9f96dd1e68@gmail.com>
In-Reply-To: <e47dc17c-0601-073f-2def-dd9f96dd1e68@gmail.com>
From: Cameron Matson <ncmatson95@gmail.com>
Date: Fri, 3 Sep 2021 17:54:50 -0500
Message-ID: <CAGLr63t+FqTzNy7zq+DJhMNwTb41usqKf84zLXhWVDO8piSRtg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VKGXNPYJIVAX2QKNNQVYJZPOXEFY67DU
X-Message-ID-Hash: VKGXNPYJIVAX2QKNNQVYJZPOXEFY67DU
X-MailFrom: ncmatson95@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VKGXNPYJIVAX2QKNNQVYJZPOXEFY67DU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8708021135033936968=="

--===============8708021135033936968==
Content-Type: multipart/alternative; boundary="0000000000008676f705cb1f3072"

--0000000000008676f705cb1f3072
Content-Type: text/plain; charset="UTF-8"

Okay so I did the equivalent of "turning it off and on again" for the
entire system.  Shut it all down, unplugged, replugged this through a
switch this time, turned it back on and now we're working.  Sorry for
spamming the list, but thanks for being my rubber duck.

Thank you!
Cameron

On Fri, Sep 3, 2021 at 3:44 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-03 4:29 p.m., Cameron Matson wrote:
>
> Pinging from n310 to server yes. From server to n310 no.
>
>
> Cameron
>
> This increasingly sounds like a PHY-layer issue of some sort to me.
>
> When you plug/unplug the cable between your computer and the radio, what
> does "dmesg" have to say (I assume LInux) about it?
>   Are there any untoward comments in the kernel/driver log?
>
>
>
>
> On Fri, Sep 3, 2021 at 1:11 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-09-03 2:01 p.m., Cameron Matson wrote:
>> > Thanks for the tip Ming.  I have heard that there are some
>> > compatibility issues out there.  We are using the Finsair when trying
>> > copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber (which is
>> > how it was set and working.)
>> >
>> > One thing I've noticed is that when using fiber, there is no link LED
>> > if I use sfp0, but there is in sfp1.  The opposite is true when I'm
>> > using copper (led on when plugged into sfp0, off sfp1.)  This is true
>> > on multiple FPGA flavors (WX and HG).
>> >
>> > I'm really at a loss here...
>> >
>> > Thanks for your help,
>> >
>> > Cameron
>> >
>> When you're pinging, do you get an blinky lights on the N310, indicating
>> that it has seen your traffic?
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--0000000000008676f705cb1f3072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay so I did the equivalent of &quot;turning it off and o=
n again&quot; for the entire system.=C2=A0 Shut it all down, unplugged, rep=
lugged this through a switch this time, turned it back on and now we&#39;re=
 working.=C2=A0 Sorry for spamming the list, but thanks for being my rubber=
 duck.<br><div><br></div><div>Thank you!</div><div>Cameron</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep=
 3, 2021 at 3:44 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-03 4:29 p.m., Cameron Matson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">Pinging from n310 to server yes. From server to
        n310 no.</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Cameron</div>
    </blockquote>
    This increasingly sounds like a PHY-layer issue of some sort to me.<br>
    <br>
    When you plug/unplug the cable between your computer and the radio,
    what does &quot;dmesg&quot; have to say (I assume LInux) about it?<br>
    =C2=A0 Are there any untoward comments in the kernel/driver log?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"auto"><br>
      </div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 3, 2021 at 1:11
            PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,=
204,204);padding-left:1ex">On
            2021-09-03 2:01 p.m., Cameron Matson wrote:<br>
            &gt; Thanks for the tip Ming.=C2=A0 I have heard that there are
            some <br>
            &gt; compatibility=C2=A0issues out there.=C2=A0 We are using th=
e
            Finsair when trying <br>
            &gt; copper (ethernet) and 10Gtek AXS85-192-M3 when trying
            fiber (which is <br>
            &gt; how it was set and working.)<br>
            &gt;<br>
            &gt; One thing I&#39;ve noticed is that when using fiber, there
            is no link LED <br>
            &gt; if I use sfp0, but there is in sfp1.=C2=A0 The opposite is
            true when I&#39;m <br>
            &gt; using copper (led on when plugged into sfp0, off sfp1.)
            =C2=A0This is true <br>
            &gt; on multiple FPGA flavors (WX and HG).<br>
            &gt;<br>
            &gt; I&#39;m really at a loss here...<br>
            &gt;<br>
            &gt; Thanks for your help,<br>
            &gt;<br>
            &gt; Cameron<br>
            &gt;<br>
            When you&#39;re pinging, do you get an blinky lights on the
            N310, indicating <br>
            that it has seen your traffic?<br>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>=
<br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000008676f705cb1f3072--

--===============8708021135033936968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8708021135033936968==--
