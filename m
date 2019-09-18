Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5420B5A7D
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2019 06:44:04 +0200 (CEST)
Received: from [::1] (port=56364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iARoq-0001DH-9B; Wed, 18 Sep 2019 00:43:56 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:33375)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <anders.e.e.wallin@gmail.com>)
 id 1iARom-00019Y-Qj
 for usrp-users@lists.ettus.com; Wed, 18 Sep 2019 00:43:52 -0400
Received: by mail-io1-f43.google.com with SMTP id m11so13138603ioo.0
 for <usrp-users@lists.ettus.com>; Tue, 17 Sep 2019 21:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=yktc2e+3seL4myU1RTXwuPcKem5G1/0ts1usnHWJq4Q=;
 b=KoP41EC6jbA9PTUvJpDOLuMl0seAGnz87uOJhQnIUNx6rNgONagRy/ak0XWNTcktKG
 +9MTPBdO22IRiSbjShwYjd+wawS353ySXEZMiilhZxl5dOfbV9MvzcxeC0NO59Oom9s8
 Hsc7r9VWBNzv0e95HBoh3Bjisoi4dUE3Sdr4+j/orTtz/GDrqVOBFW7AvN3mZwwAvCtY
 XCTUN7nYkEoEOYlSa2JFcCxOlycuUgSEth2L4XV9IBFmWeX3V4QS0bFdqDgSqi6fr/vm
 hAJGQUpMSU2PVBG5vGrlCUJr3G+Leo0Wl71US9hQA2wTC5zz1jFse01tbBf5aHItz63O
 xBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=yktc2e+3seL4myU1RTXwuPcKem5G1/0ts1usnHWJq4Q=;
 b=GIk1BTBqxjK+rkU4hiU5lrGh0h4HBfLciWwILSNl/2bDhsBULuV7I2ZQY2VauTjUSR
 iLBXgL33CDO3XLuFaf7/EWeCkRfiTtCD7PSKbR8V/UlR8TEhYpljq0uG2hYjcNzeSqNq
 4mbGL9DJcwtQ31EnVgCm18QMpmt9LP0URkX8LJ7xQkNIj6f0vENHsaDDDH77r+wmUerv
 Z8FlMONVAZCEUsYoTjJzwJK6A+eHNnLT0auizBbLWmJasFM1Duz+tkPnNUuFqqtRBwKK
 PzSMq5Kac0e9UZIZxdIwDI+xIELvwg3IQYYD5uE4jRWrekGJ1YLgD0CPcYnb4jPpGbZH
 X6YA==
X-Gm-Message-State: APjAAAWbnTqXQCWXWB1RZW8L6fuQcI3P8YmcKWUuN6PwIIvA0HSox8hv
 yoVJQSw6CvRM9kOfCVPtY6FQYvRdtf34bTV3k1KooG33
X-Google-Smtp-Source: APXvYqyocP2pKWOSL1dV4EFL/LSoM62IN7n2p0mGRS6XSc3fH0S8TLqD34KkS539e/JTfeb/bC1sD6tr0JAJvcW2cA4=
X-Received: by 2002:a02:6601:: with SMTP id k1mr2800970jac.47.1568781791734;
 Tue, 17 Sep 2019 21:43:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAFGMRUATp9FjkDGctvOFqjyh7EEgEaVFSgcf_jUdwsSFe3FLvg@mail.gmail.com>
 <caa9b984bd17d4029187d88077594ec6397104b0.camel@ettus.com>
 <CAFGMRUBVtRxObbLv4sNG1jYNMNKkLM1SVuyLjm0BtwVEXHjV4w@mail.gmail.com>
In-Reply-To: <CAFGMRUBVtRxObbLv4sNG1jYNMNKkLM1SVuyLjm0BtwVEXHjV4w@mail.gmail.com>
Date: Wed, 18 Sep 2019 07:43:00 +0300
Message-ID: <CAPnVNRU=e+sYFgBTTmoYJn4=cn2U=9KA35W92aL_Q_LhD5VDvA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] University of Saskatchewan N200 Rack
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Anders Wallin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anders Wallin <anders.e.e.wallin@gmail.com>
Content-Type: multipart/mixed; boundary="===============2547840623013856881=="
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

--===============2547840623013856881==
Content-Type: multipart/alternative; boundary="0000000000006d34c90592cc79db"

--0000000000006d34c90592cc79db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could you use a MIMO-cable between pairs of USRPs and avoid half of the
1PPS/10MHz (I'm guessing..) wiring in your rack?

FWIW I tested some distribution amps a while ago, the OctoClock (I'm
guessing this is what you use) is economical but not high performance in
terms of phase-noise.
http://www.anderswallin.net/wp-content/uploads/2016/09/fda_2016-09-12_PN.pn=
g

Anders


On Tue, Sep 17, 2019 at 8:19 PM Keith k via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey Marcus
>
> The additional connector on the front is so that we can connect both RX
> channels and a TX channel. The ones in the back are for GPIO breakouts.
>
> Vertical, tool-less mount is the way to go.
>
> On Tue, Sep 17, 2019 at 4:54 PM Marcus M=C3=BCller <marcus.mueller@ettus.=
com>
> wrote:
>
>> Hey Keith,
>>
>> I quite enjoyed your email :) May I ask what the individual added SMAs
>> do?
>>
>> I like the vertical mounting, and the additional LEDs :)
>>
>> Best regards,
>> Marcus
>>
>> On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:
>> > Hey all
>> >
>> > I thought I would offer a break from the endless bugs and dev
>> > questions to share what our N200 rack looks like. These N200s are
>> > going to be used for a radar installation. We've made some custom
>> > modifications to each N200, such as adding brighter and more detailed
>> > ATR status LEDs, adding more SMA connector ports(1 in front, 4 in
>> > back with a dsub as well).
>> >
>> > The Ettus N200 rackmount is quite frankly not very well designed, so
>> > we designed our own. It allows for tool-less fasteners for quick
>> > install/release of the devices, vertical mount to allow for more room
>> > between devices, and several holes for better cable routing and
>> > management.
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>
> --
> -Keith Kotyk
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006d34c90592cc79db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Could you use a MIMO-cable between pairs of USRPs and avoi=
d half of the 1PPS/10MHz (I&#39;m guessing..) wiring in your rack?<div><br>=
</div><div>FWIW I tested some distribution amps a while ago, the OctoClock =
(I&#39;m guessing this is what you use) is economical but not high performa=
nce in terms of phase-noise.</div><div><a href=3D"http://www.anderswallin.n=
et/wp-content/uploads/2016/09/fda_2016-09-12_PN.png">http://www.anderswalli=
n.net/wp-content/uploads/2016/09/fda_2016-09-12_PN.png</a><br></div><div><b=
r></div><div>Anders</div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 17, 2019 at 8:19 PM Kei=
th k via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hey Marcus</div><div><br></div><=
div>The additional connector on the front is so that we can connect both RX=
 channels and a TX channel. The ones in the back are for GPIO breakouts.</d=
iv><div><br></div><div>Vertical, tool-less mount is the way to go. <br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Sep 17, 2019 at 4:54 PM Marcus M=C3=BCller &lt;<a href=3D"mailto:=
marcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hey Kei=
th,<br>
<br>
I quite enjoyed your email :) May I ask what the individual added SMAs<br>
do?<br>
<br>
I like the vertical mounting, and the additional LEDs :)<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:<br>
&gt; Hey all<br>
&gt; <br>
&gt; I thought I would offer a break from the endless bugs and dev<br>
&gt; questions to share what our N200 rack looks like. These N200s are<br>
&gt; going to be used for a radar installation. We&#39;ve made some custom<=
br>
&gt; modifications to each N200, such as adding brighter and more detailed<=
br>
&gt; ATR status LEDs, adding more SMA connector ports(1 in front, 4 in<br>
&gt; back with a dsub as well). <br>
&gt; <br>
&gt; The Ettus N200 rackmount is quite frankly not very well designed, so<b=
r>
&gt; we designed our own. It allows for tool-less fasteners for quick<br>
&gt; install/release of the devices, vertical mount to allow for more room<=
br>
&gt; between devices, and several holes for better cable routing and<br>
&gt; management. <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail-m_1429741422317319278gmail_signature"><div dir=3D"ltr">-Keith Kotyk</d=
iv></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d34c90592cc79db--


--===============2547840623013856881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2547840623013856881==--

