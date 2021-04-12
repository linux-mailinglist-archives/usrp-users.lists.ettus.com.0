Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8604D35CF91
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 19:38:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6706B384F71
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 13:38:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="jd7bvjjm";
	dkim-atps=neutral
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 72A18384738
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 13:38:03 -0400 (EDT)
Received: by mail-io1-f46.google.com with SMTP id a9so3429811ioc.8
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 10:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yro8vhvg0fsNJXivBYQR8qjqcR4sWTqC9Xt4QJu6wS8=;
        b=jd7bvjjmY9DMwDpAVh+1uJpt0uJh4W5DJTVGBzVve2lZ4JHOlM11rxDPOeE6WiOWpy
         oImPC6p6cK9fmrX51cp+AMxFfdNGHntaDlVAPunfPkKarnRSXvhEOYZYWFXztVHADy5R
         POhXG4ffKjPqrHOARwwwmV1eOVX/MsZSx7UC+J0mlx/it7et2639ykKTNv0iVafaB3mq
         4o+rmfYNLdIKArfAU6w3pz1l5Umi6s/RuHC8NLbR2g8reLmUN4lTFSe1zgjt4lufT/9L
         WaUWbEbkC+zGSE4Y6VB2Oqli9iTCkQes2t4L8959D1fNlq4TpVJAvyet0OheYxjFrFOg
         nxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yro8vhvg0fsNJXivBYQR8qjqcR4sWTqC9Xt4QJu6wS8=;
        b=CZKxon0K+gOS1QKxnp96WVQaz7vfbr5TLeriSuzqJDNlJka6ntNcG28ZSAKoeSVi1E
         gDLOu256127c6CASHZEKHi30o2krS85iIqdf1Tvl5dGnKXMCHrwRX3tn+L5Be5gAZok4
         dfltvGdTfelruZcxX5LWfNmtHPOutNvd8l0gS924JPfZXQtqHEwA7S9m3Pqz1hjgi2to
         dRUtPVJaKvVdG05DO8hP/qzZbWkqJ9wgBmgX3yK1bcea8C3l8bhXekx63huvWaVd9vwP
         t/Ly+S+xM6J4y3IQLno8dhpPYYAW52FgQcP3r1q6U+vwuY67nh38lEBUtI51WdS1DvCw
         mrKg==
X-Gm-Message-State: AOAM530MP5EOc9QjQLXoQK7xvaRHuql8PMCYxp8tOj+7+wuI0uLd8Qh7
	LHx9ZjKdf0jWSxDVyBMf5/LIkRdvW7MWgmchiwauYA==
X-Google-Smtp-Source: ABdhPJwPsD1P2styEKrnBBklkyhL+zTI/MicYQfkq7kMQXGnCXI1sCT3+128mEZsuSlcxqp4ksz5JR3by+gQpjL2qcc=
X-Received: by 2002:a5d:9e09:: with SMTP id h9mr24770607ioh.178.1618249082758;
 Mon, 12 Apr 2021 10:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNeaqE-mLR7TboX=zdGbF59wiKOc3RdUO93EidTnW=AmWRvQ@mail.gmail.com>
 <CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=S6aXtwKee=LS1qg@mail.gmail.com> <60747CB5.9060709@gmail.com>
In-Reply-To: <60747CB5.9060709@gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Mon, 12 Apr 2021 13:37:52 -0400
Message-ID: <CANsNear0EaKDoE1nUUgSLV7CEHEgYMektmASV2SYcL4CGhfZPQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YMO4U4TBRMNMC74BR47YQLOQXPND3HQQ
X-Message-ID-Hash: YMO4U4TBRMNMC74BR47YQLOQXPND3HQQ
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help enabling CAN0 on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YMO4U4TBRMNMC74BR47YQLOQXPND3HQQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5754368800662898225=="

--===============5754368800662898225==
Content-Type: multipart/alternative; boundary="000000000000bc7c2a05bfc9f924"

--000000000000bc7c2a05bfc9f924
Content-Type: text/plain; charset="UTF-8"

Unfortunately,  this is for an embedded application that we wouldn't be
able to use a USB CAN adapter with.


On Mon, Apr 12, 2021 at 1:09 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/12/2021 12:48 PM, Rich Gopstein wrote:
>
> Can anyone offer any suggestions?  I've been digging through TCL files
> looking for where I could enable the CAN0 controller, but nothing has
> worked so far.
>
> Thanks.
> Rich
>
> I'll point out that USB-to-CAN adapters aren't that expensive.  Might be a
> more-immediately-productive route.
>
>
>
> On Tue, Apr 6, 2021 at 10:00 AM Rich Gopstein <rich@ourowndomain.com>
> wrote:
>
>> I have an E310 (sg3) that I need to enable the CAN controller on and
>> route the signals out to the GPIO connector.  After that, I'll work on the
>> Linux driver.
>>
>> I'm a newbie to Vivado, so I could use some detailed help.  What I've
>> done so far:
>>
>>    - Built an Ubuntu 18.04 system
>>    - Installed Vivado 2018.3.1
>>    - Downloaded the EttusResearch/fpga.git repo
>>    - Tested "make E310_sg3" both with and without the "GUI=1" setting.
>>
>>
>> I tried going in to Vivado and enabling the CAN0 controller, but I wasn't
>> able to figure out how to rebuild the design (or route the signals to the
>> GPIO connector)
>>
>> Any help would be appreciated.
>>
>> Rich
>>
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bc7c2a05bfc9f924
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately,=C2=A0 this is for an embedded application t=
hat we wouldn&#39;t be able to use a USB CAN adapter with.<div class=3D"gma=
il-yj6qo gmail-ajU" style=3D"outline:none;padding:10px 0px;width:22px;margi=
n:2px 0px 0px"><br class=3D"gmail-Apple-interchange-newline"></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Apr 12, 2021 at 1:09 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/12/2021 12:48 PM, Rich Gopstein
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Can anyone offer any suggestions?=C2=A0 I&#39;ve bee=
n
        digging through TCL files looking for where I could enable the
        CAN0 controller, but nothing has worked so far.
        <div><br>
        </div>
        <div>Thanks.</div>
        <div>Rich</div>
      </div>
    </blockquote>
    I&#39;ll point out that USB-to-CAN adapters aren&#39;t that expensive.=
=C2=A0
    Might be a more-immediately-productive route.<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 10:00
          AM Rich Gopstein &lt;<a href=3D"mailto:rich@ourowndomain.com" tar=
get=3D"_blank">rich@ourowndomain.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">I have an E310 (sg3) that I need to enable the
            CAN controller on and route the signals out to the GPIO
            connector.=C2=A0 After that, I&#39;ll work on the Linux driver.
            <div><br>
            </div>
            <div>I&#39;m a newbie to Vivado, so I could use some detailed
              help.=C2=A0 What I&#39;ve done so far:</div>
            <div>
              <ul>
                <li>Built an Ubuntu 18.04 system</li>
                <li>Installed Vivado 2018.3.1</li>
                <li>Downloaded the=C2=A0EttusResearch/fpga.git repo</li>
                <li>Tested &quot;make E310_sg3&quot; both with and without =
the
                  &quot;GUI=3D1&quot; setting.</li>
              </ul>
            </div>
            <div><br>
            </div>
            <div>I tried going in to Vivado and enabling the CAN0
              controller, but I wasn&#39;t able to figure out how to rebuil=
d
              the design (or route the signals to the GPIO connector)</div>
            <div><br>
            </div>
            <div>Any help would be appreciated.</div>
            <div><br>
            </div>
            <div>Rich</div>
            <div><br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bc7c2a05bfc9f924--

--===============5754368800662898225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5754368800662898225==--
