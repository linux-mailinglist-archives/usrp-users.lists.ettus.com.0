Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 768D9660ED
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 22:53:22 +0200 (CEST)
Received: from [::1] (port=57724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlg48-0001HF-LO; Thu, 11 Jul 2019 16:53:20 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:37409)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hlg45-000187-0l
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 16:53:17 -0400
Received: by mail-io1-f45.google.com with SMTP id q22so15650158iog.4
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 13:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5tli8isPdiMnBfKQzig1bpfZH0CYQzR9+rYC/ldqXEQ=;
 b=heEgQVSuji+Vibzz3eMcKmZOmdb8wCs90rZ9s0fY9ws9LFl30n5ES/T7J/LoiZCEhu
 FkAhkbRoPZGCLIcbTH1qQJkkW4AscvgWq/MnGYFmMCWVGeRdHUQhIwSKEkUR1Vw0yGCO
 ctUG5vhrMlx+wyXyjEuwKtgwDCQ8LnHsd84sl1/sDMIX4lmOvDMf52CQ2HajIFC2DqwS
 cEtlp7GtnZv0yq4ug4MocWn3znkCLa0PcUhrPx6in1zbZqhf9ZwMGTUwMwaR3iE/2fbt
 0sjP0W9ApZgY1tdTydn3C+qxV0XWjvwSel38A6DYwOvtzHx82vQyvzklNuH6hF0N/c3a
 PoTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5tli8isPdiMnBfKQzig1bpfZH0CYQzR9+rYC/ldqXEQ=;
 b=h4o7sDnMuzhv+g5VDwCfAQwEziKlBTEzapAEWrz7cuODJLiIMP1nsS3PnOWM4+6vI5
 paKDyp0RsrEwyuZchMQQrmgm187SG3DNShdiEG8eErhjr/Qx4vrwnZHvOAJu6W1fyj/l
 AHdlgOdnl8/U7Hs28W+pzs+lBZtHAyqS5CE8s4RYkYoeOen4pPOkh5NxFENTt1sBFgqI
 Q3moEFxQq+xXw/0vLQ++oec252bw9SJ3ipJhnnJ0Fx6QjVw1cCE1+9Ar2DLeo68Vv2ui
 YTuqpWt4gmKZ7+bpKrsw8nOBPZ3i0ILY4+3NEMF4Uzkr48anCTwQWVLo/oiIBtS/lQ84
 TyTQ==
X-Gm-Message-State: APjAAAXBzI628pCl4Z+pg5Vkb8J2vO2b6kfJBdO24ddAKs/0Sm1Hi07R
 AAUMJX1p/ORg4qmV/As4PqT1SWi7ArBEgLAF6yM=
X-Google-Smtp-Source: APXvYqxnxQV89QoP9J09KKlGHJq4L41+lmlJcBSGjOXd99sEmNtkVmmKz8JIX0xYo1pN8hpfZSyUr41NWfB3iFmTfTc=
X-Received: by 2002:a5d:9448:: with SMTP id x8mr7046607ior.102.1562878356269; 
 Thu, 11 Jul 2019 13:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAFTvvjP6==EsAqLiEW0RKE5j1-oADxQEGCKX=FNmss-Bq1jm5w@mail.gmail.com>
In-Reply-To: <CAFTvvjP6==EsAqLiEW0RKE5j1-oADxQEGCKX=FNmss-Bq1jm5w@mail.gmail.com>
Date: Thu, 11 Jul 2019 13:52:25 -0700
Message-ID: <CAKJyDk+epVdSDKshQ-t8asOy_WLq97xXBy=qwPE+4KOVKwUgOw@mail.gmail.com>
To: Michael Don <mikedon1@gmail.com>
Subject: Re: [USRP-users] rx error code: 1
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1779594012015962390=="
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

--===============1779594012015962390==
Content-Type: multipart/alternative; boundary="00000000000040c0b7058d6df9ec"

--00000000000040c0b7058d6df9ec
Content-Type: text/plain; charset="UTF-8"

Hi Mike.

Did you try putting the original (not the cloned) SD card in the 2nd unit?
Do you still observe the same error?  Doing so would eliminate an issue
with a corrupted SD card during duplication.

-Robin


On Thu, Jul 11, 2019 at 1:35 PM Michael Don via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have 2 E312 units.  On one I have a gnuradio script that works fine.
> I cloned the sd card from the first E312, and put it on the second
> E12, and am getting the following error:
>
> WARN: USRP Source Block caught rx error code: 1
>
> Is this some sort of hardware problem, since the 2 systems have
> identical software?  Anyone know what rx error code: 1 means?  Any
> suggestions on how to fix this?
>
> Also, while playing around to try to fix this I'm pretty sure I set
> the rx gain to 50 on one of the units, and got the "rx error code: 1"
> error, and reduced the gain, and the error went away.  On the unit
> that is currently failing, I set the gain to 0 and still get the
> error.  The unit that's working has the gain set to 25.  I thought the
> max gain of the E312 was 76, not sure what's going on here.
>
> -Mike
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000040c0b7058d6df9ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mike.=C2=A0=C2=A0</div><div><br></div>Did you try =
putting the original (not the cloned) SD card in the 2nd unit?=C2=A0 Do you=
 still observe the same error?=C2=A0 Doing so would eliminate an issue with=
 a corrupted SD card during duplication.<div><br></div><div>-Robin</div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Jul 11, 2019 at 1:35 PM Michael Don via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I h=
ave 2 E312 units.=C2=A0 On one I have a gnuradio script that works fine.<br=
>
I cloned the sd card from the first E312, and put it on the second<br>
E12, and am getting the following error:<br>
<br>
WARN: USRP Source Block caught rx error code: 1<br>
<br>
Is this some sort of hardware problem, since the 2 systems have<br>
identical software?=C2=A0 Anyone know what rx error code: 1 means?=C2=A0 An=
y<br>
suggestions on how to fix this?<br>
<br>
Also, while playing around to try to fix this I&#39;m pretty sure I set<br>
the rx gain to 50 on one of the units, and got the &quot;rx error code: 1&q=
uot;<br>
error, and reduced the gain, and the error went away.=C2=A0 On the unit<br>
that is currently failing, I set the gain to 0 and still get the<br>
error.=C2=A0 The unit that&#39;s working has the gain set to 25.=C2=A0 I th=
ought the<br>
max gain of the E312 was 76, not sure what&#39;s going on here.<br>
<br>
-Mike<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000040c0b7058d6df9ec--


--===============1779594012015962390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1779594012015962390==--

