Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D10D424DA0
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 09:02:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28B77384EE3
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 03:02:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="LR/L088Z";
	dkim-atps=neutral
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id ACADA3840F3
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 03:01:33 -0400 (EDT)
Received: by mail-io1-f47.google.com with SMTP id 5so5604301iov.9
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 00:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=unI1uDc1BVMPnRNUMxXjHiUWB4iiGHUKWW/4lc2l/sU=;
        b=LR/L088ZmIdZFDr5UB1UaxnarrB4pW9wgBWJkydf1kuJDcTzxbu6vWpTnGC4OnftRz
         ov3ZcKcG7Q/MeMDh3BP35WzjIq14a6KhbY8unMYq8NKeoP0G3PsAXuHapnDJKQQqbZtz
         ubiNxt/XzMQUXyGZoMioho+8j8IQ8jRZMOpBzCf73QNF82AhT/ckpzkvh24xaPvV8O+n
         0hOpu4PC5XzEn4PcqKL6H8ysiGvvze5gqxwDC1adYF9Ybhd9A1rgl8tKnVEVcatKUf+G
         wVjYA5Io+Ww35Xfz7TuAyRSdZORYb6WJo7D4jJOKfFfhY0UQ9qExKh6ncm5qcLQZNPvb
         u0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=unI1uDc1BVMPnRNUMxXjHiUWB4iiGHUKWW/4lc2l/sU=;
        b=gaRcif/914Z2+bLVsLayb/BIeg0BFW45Jzv8VC/LF5g38BIT0NEhkb6sWIL4yG5qAb
         Utzhagq9e8rHUKdck3cZdJZvArXJ+VdUZZq9t20MqXNBx1fxZ81opfgQ7urM67heKcv5
         gx2bqjwJjNm4fMaC7Gdd1QSiuQ8w6fB9iWcv2ImNYHtrZDdQURbzMHUGchicdgR5ZJZd
         GSjiHHiwEsvcJqM89eIk5FrQ+N/owSGoqWWWRage22vUfE0iuYX94FXKJkNAWxVzj7M6
         TELu2k1CWigdZZQDR3RrlcU/vSDh7hupLdGHZ/yhbqcp7+yxk/ISveJEGmn4LErh0djw
         SKgQ==
X-Gm-Message-State: AOAM532S9gdD98z0LZxUnQWkpWpHIr2ppuiJeKqkrOKraPGhgzq9UgLH
	IHDV1fNFbu7aBN7F3g1dBIDpQPeSnGu+3hrditZFDF9iPYMmYg==
X-Google-Smtp-Source: ABdhPJx1zSnrvLq3XZ3bA9lRbXVBjzXf6498f6a4hQkKl0SnLtlifc0s4P9/92H7aYghV/ud1s7a8FUh0HYj/cF8/7A=
X-Received: by 2002:a6b:7104:: with SMTP id q4mr1853208iog.29.1633590092793;
 Thu, 07 Oct 2021 00:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
 <1607813094.1558445.1633542971951@mail.yahoo.com> <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
 <1086779613.13333.1633549973441@mail.yahoo.com> <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
 <762418874.31908.1633555033438@mail.yahoo.com> <8de7fad2-0f26-dd49-425a-e7517509f910@gmail.com>
In-Reply-To: <8de7fad2-0f26-dd49-425a-e7517509f910@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 7 Oct 2021 09:01:22 +0200
Message-ID: <CAFOi1A4pzis1G+N3315Vv8N3EnoV_WQ0CaiA=Ldm3kN1cF3sUg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: NVQDXKZLN5YF6T5LQMDCUACDBBDM3KCP
X-Message-ID-Hash: NVQDXKZLN5YF6T5LQMDCUACDBBDM3KCP
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NVQDXKZLN5YF6T5LQMDCUACDBBDM3KCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1844071965418823945=="

--===============1844071965418823945==
Content-Type: multipart/alternative; boundary="00000000000030a01105cdbdd5ba"

--00000000000030a01105cdbdd5ba
Content-Type: text/plain; charset="UTF-8"

Just to make sure we're talking abou the same things: To disable MPM, you
run

    systemctl stop usrp-hwd

You can also run

    systemctl disable usrp-hwd

which does not stop MPM, but will avoid it being started on reboot.

It seems you know what you're doing, but for the record: when MPM is not
running, your USRP is a heavy piece of metal running Linux (at least, until
you've ported OpenCPI or some other custom software). That's why we have
designed MPM to keep running at all times, even when some kind of fatal
error occurred, so UHD can at least see some kind of device. We use systemd
watchdogs to reboot it when it's gone.

--M

On Wed, Oct 6, 2021 at 11:45 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-10-06 5:17 p.m., Tellrell White wrote:
>
>
> So, just to clarify, if its "required" is there no way of disabling it or
> removing??
>
> The project I'm working on is based on using the Open CPI framework, which
> is basically an opensource framework for developing and executing component
> based apps on embedded platforms. With that being said, my task isn't
> tightly bound to using UHD, therefore, I would like to disable or remove
> MPM for a custom application.
>
> After killing MPM, you can use "ps" to check to see if it has come back,
> and if it hasn't and "something else" still owns the I2C devices, you can
> use
>   "lsof" to see which processes have which devices open.  I think the i2C
> devices will manifest in the /dev filesystem.  For example, on my *laptop*,
> there's:
>
> rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0
> crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1
> crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2
> crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3
> crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4
> crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000030a01105cdbdd5ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just to make sure we&#39;re talking abou the same thi=
ngs: To disable MPM, you run</div><div><br></div><div>=C2=A0=C2=A0=C2=A0 sy=
stemctl stop usrp-hwd</div><div><br></div><div>You can also run</div><div><=
br></div><div>=C2=A0=C2=A0=C2=A0 systemctl disable usrp-hwd</div><div><br><=
/div><div>which does not stop MPM, but will avoid it being started on reboo=
t.</div><div><br></div><div>It seems you know what you&#39;re doing, but fo=
r the record: when MPM is not running, your USRP is a heavy piece of metal =
running Linux (at least, until you&#39;ve ported OpenCPI or some other cust=
om software). That&#39;s why we have designed MPM to keep running at all ti=
mes, even when some kind of fatal error occurred, so UHD can at least see s=
ome kind of device. We use systemd watchdogs to reboot it when it&#39;s gon=
e.<br></div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 6, 2021 at 11:45 P=
M Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbr=
aun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-06 5:17 p.m., Tellrell White
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div><br>
        </div>
        <div dir=3D"ltr">So, just to clarify, if its
          &quot;required&quot; is there no way of disabling it or removing?=
? <br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"> The project I&#39;m working on
          is based on using the Open CPI framework, which is basically
          an opensource framework for developing and executing component
          based apps on embedded platforms. With that being said, my
          task isn&#39;t tightly bound to using UHD, therefore, I would lik=
e
          to disable or remove MPM for a custom application.=C2=A0 <br>
        </div>
      </div>
      <div id=3D"gmail-m_-2172980616365166026yahoo_quoted_4426225589">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px;color:rgb(38,40,42)"><br>
        </div>
      </div>
    </blockquote>
    After killing MPM, you can use &quot;ps&quot; to check to see if it has=
 come
    back, and if it hasn&#39;t and &quot;something else&quot; still owns th=
e I2C
    devices, you can use<br>
    =C2=A0 &quot;lsof&quot; to see which processes have which devices open.=
=C2=A0 I think
    the i2C devices will manifest in the /dev filesystem.=C2=A0 For example=
,
    on my *laptop*, there&#39;s:<br>
    <br>
    rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0<br>
    crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1<br>
    crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2<br>
    crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3<br>
    crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4<br>
    crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div id=3D"gmail-m_-2172980616365166026yahoo_quoted_4426225589">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px;color:rgb(38,40,42)">
          <div>
            <div id=3D"gmail-m_-2172980616365166026yiv5351896031">
              <div>
                <div id=3D"gmail-m_-2172980616365166026yiv5351896031yqtfd56=
378"><br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000030a01105cdbdd5ba--

--===============1844071965418823945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1844071965418823945==--
