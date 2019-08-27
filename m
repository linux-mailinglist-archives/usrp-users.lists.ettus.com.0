Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F19DB6E
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 03:56:00 +0200 (CEST)
Received: from [::1] (port=54374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2QiD-0002sX-R3; Mon, 26 Aug 2019 21:55:57 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:46699)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i2QiA-0002nd-FX
 for usrp-users@lists.ettus.com; Mon, 26 Aug 2019 21:55:54 -0400
Received: by mail-ot1-f51.google.com with SMTP id z17so17124843otk.13
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 18:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AO2YFr1zN4qbWZKofn1fjsxj6ep1pTWYPgyd790rgmw=;
 b=ZV+ASlCrVcnfE8GBbu7T8fYw4JKpQz9m5AwfM/Q2KeIZtGkT27D4bXchEjTY+ddHVz
 p+2oPfkXarDJHIpnjyJ+HEXxGdm0N50z+VJ6PRJOT8Cw2JnbOLN9rsEaz1mO4HZuKmMB
 gY/FdGXoI/eTZgbsQ/dtXN/JzPvGaZry3zoztxHU7doaPVU8Bpg5yOZzAR+gpug9YM91
 NJHr4LWO+skGUj4pnGDh0/5YBGo7k18Wgt7KTJY4JfTeHzqfHqevRskJbG5J6K/HPxfH
 WDhwbwx+/XWIQMxtZ6zZXhTcsGGd+na2rQycqm4wz2VQJ/gcvs7Wz6NjjVVt/B6DrJ/j
 v08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AO2YFr1zN4qbWZKofn1fjsxj6ep1pTWYPgyd790rgmw=;
 b=pEXwZ6Zu584AtTK81b7QI1GPSeDAJOgzGfK+lTkG5//Bi7XnvZGtTPL39bS+/xuKgH
 2f97Jiz7L2pEFHzQbQfoDFzK7ff29tC8lSGzdz3eYHK2Bnx5GtZALc5OLSqYgVDWYkb6
 BI6XJdxasc7VrNBHv6f27NxaIl8f4nP/SU0UyCsNI7obAcazdnGCaetPiSX84DDLUJKG
 /e8br4bdm+eAh+417xZchcb51CFhhC6L7seyClRkhuSedqf7HLEgS9WDKFAQTArAv+fR
 JM8/7Zk3L4CWun3W+Gukvw1qlbFIOscgBIyg1eV5IIREq3sgjivJokv9NfXG3oNg0L6M
 B3pg==
X-Gm-Message-State: APjAAAXCpHwUvMXqbYWCGPPRiH1k8vjyU5x7+mQI2g6NiQQIiYMwqMKP
 PERX2xtqyWJNyVJTyiGbAzMiMWEqh6I8QzO3yPo2DA==
X-Google-Smtp-Source: APXvYqzl2828TR78ZyJpRfnzifvoi7+8RWp915nzL5ZLoio/KG0gtG5bgh63dX7h144Fhm46M7fiVKux/Zrt+fNTuB0=
X-Received: by 2002:a9d:7dc4:: with SMTP id k4mr18362533otn.171.1566870913517; 
 Mon, 26 Aug 2019 18:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT6CNq6nFT6heN6uT_rA3qz5FgRK+M4ZGLAiZANRB2bQg@mail.gmail.com>
 <CAL7q81uBKaR+SkoBZrRx2tS+FLCoJHRso-iOP40191XcAT9z8g@mail.gmail.com>
In-Reply-To: <CAL7q81uBKaR+SkoBZrRx2tS+FLCoJHRso-iOP40191XcAT9z8g@mail.gmail.com>
Date: Mon, 26 Aug 2019 21:55:02 -0400
Message-ID: <CAB__hTRKmYwp3wG07VsSCWEDxUNtr_6fCtqJwboPzGFRVYibXw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Subject: Re: [USRP-users] RFNoC ce_rst and clear_tx_seqnum
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4501911404652268165=="
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

--===============4501911404652268165==
Content-Type: multipart/alternative; boundary="00000000000035c19105910f90a2"

--00000000000035c19105910f90a2
Content-Type: text/plain; charset="UTF-8"

Thanks Jonathon.  How about if I re-wire an rfnoc graph?  Does that assert
clear_tx_seqnum?  Does the UHD device3->clear() function map directly or
indirectly to this signal?
Rob

On Mon, Aug 26, 2019 at 9:49 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Rob,
>
> Originally clear_tx_seqnum was only for resetting AXI Wrapper, but it
> evolved into a user reset as well since it is asserted every time your UHD
> app starts. ce_rst is only asserted at power up.
>
> Jonathon
>
> On Tue, Aug 27, 2019 at 2:29 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Can anyone explain the meaning of the signals ce_rst and
>> clear_tx_seqnum?  It is not clear to me what would cause either of them to
>> go High.  Should I expect ce_rst to be strobed each time I launch my C++
>> app that calls UHD?  I had previously thought so, but now I have reason to
>> doubt.
>>
>> Thanks.
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000035c19105910f90a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Jonathon.=C2=A0 How about if I re-wire an rfnoc gra=
ph?=C2=A0 Does that assert clear_tx_seqnum?=C2=A0 Does the UHD device3-&gt;=
clear() function map directly or indirectly to this signal?<div>Rob</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Aug 26, 2019 at 9:49 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonath=
on.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<di=
v><br></div><div>Originally clear_tx_seqnum was only for resetting AXI Wrap=
per, but it evolved into a user reset as well since it is asserted every ti=
me your UHD app starts. ce_rst is only asserted at power up.</div><div><br>=
</div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 2:29 AM Rob Kossler via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Can anyone explain the meaning=
 of the signals ce_rst and clear_tx_seqnum?=C2=A0 It is not clear to me wha=
t would cause either of them to go High.=C2=A0 Should I expect ce_rst to be=
 strobed each time I launch my C++ app that calls UHD?=C2=A0 I had previous=
ly thought so, but now I have reason to doubt.=C2=A0<br><div><br></div><div=
>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000035c19105910f90a2--


--===============4501911404652268165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4501911404652268165==--

