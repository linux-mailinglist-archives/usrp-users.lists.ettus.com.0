Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD1D5EF39F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Sep 2022 12:40:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49D2438408F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Sep 2022 06:40:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664448024; bh=8NdFR7poveX1cCQewK+LAe40ElMzikhsgfmVc4idFxg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YXTDji8zc4rEwR3Gmz3DjCFg+JBVK0h1Ti5O8mHDLTR4K6Df3D+FsTTV9FUCsAvc2
	 66gJgtqvmmtN5yqyFL0TDx0P/npIskPpIZ2HYoRc0ZIjDiX05IPn5ialPObul10psH
	 G3Q1K/v+IsK11I7UW3DlHG6nrZZVBN/grvZIN2mPxpWcfkhiwhGiIs4A3IW1kIzMdm
	 Rq/fr4H9cqdj3ZvChA4Eush8W39ogu2bQ2dN0YRo7k8IJ6rb4jA5TMwmwwggNX7JDl
	 J3+5rWOjO3QKQm10HQ/mUm15Wz5PzRW4mFjaKs5tsSHH3Uu2yhWwV8gveiU/TPhU0F
	 E1GnRt7SO6Qpw==
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 24595383064
	for <usrp-users@lists.ettus.com>; Thu, 29 Sep 2022 06:39:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FucdPrgd";
	dkim-atps=neutral
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-131de9fddbaso260573fac.5
        for <usrp-users@lists.ettus.com>; Thu, 29 Sep 2022 03:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=s+LRYITv4sg5nK+YgmC+PJmisxSRwXtFYOrFr34FCv8=;
        b=FucdPrgdbNEp/XiLlrZqMZnTl7MoUylREGZMZl/wgpQlLTl1ZrVffOHI7ZIwo0wEDK
         oZ7EzrS8Qymlg9z/sxqjiMObW2vRHJB/pc5zZE7jV6CfrPHEUJYqAqXZujmzZTxkEOZA
         Paoe5KEvjhjB55GN1TSLBFGcjCSPJUNZqwogeccrEHAInkiiVEcCJsVwOdL4CqD7134A
         R8rdw1sI5UpMrQjIGdqorHvu3e0ySoV22pwjJTBnjgVda3R465nXElfYOiNM2rvxDl9y
         M4MGg3sXbI3/uJDiD44SZpNJ+AqSrpsyPti/MJxMrHzoMA95gLp7RnijowodVlg2FVd7
         MYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=s+LRYITv4sg5nK+YgmC+PJmisxSRwXtFYOrFr34FCv8=;
        b=PqrAsejomq1KvdL5yDUktHXsau+9Azkl2VmqxlpFs4c/Vu/XIFt9qGRYwdlV7VX2VB
         Mc/3GV7zXSMXfi41aKFyiL6+dNJjBN2GdHBoDpf+uLGPGcGAF0HsqQcS+derXp/qGl64
         eu79GA7eDXyS6LGhEP0BriWgf2G0hyqcdOpwQkdhMyaRAhxHYuwEVVPNCMd0hn1NxIeq
         tAF6r6XccDiaepSFkZCJ0h3mhUfq/0Xr0xPkiREbIA4StNeTfyXwIUx9kI9VTqRjEG13
         2KmDl2hfl7GoNGqClKR3eb2ieVotGPUVS0dZZiLXPme8Ngqj4uIoUPgrjhk+ipOeW9YA
         ljoA==
X-Gm-Message-State: ACrzQf2kbWatEODNjJnKwe7RC9dZ2asbiC1KB3R4EGAvtvwlnQQqx72E
	pJY0bSk2zfEIXrLrAdu5rgH7aMpecYwIq/X3uwQ=
X-Google-Smtp-Source: AMsMyM6arEUrbAk28Z4rEgsjlA5rIxP4OUJMj44tW2vpLmRCXoXapBHPHzVcb9DpQG21kXbRdRhWV/LMqp24rCzNgBk=
X-Received: by 2002:a05:6870:96a0:b0:127:c03b:39c1 with SMTP id
 o32-20020a05687096a000b00127c03b39c1mr1375095oaq.78.1664447955220; Thu, 29
 Sep 2022 03:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <bFBy3jWM1DzU7ow6eKGnqIAMT4zW4he9qBkwhU9fro@lists.ettus.com>
 <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=bQ@mail.gmail.com> <CAFche=hVgtfh8+ThZT23p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com>
In-Reply-To: <CAFche=hVgtfh8+ThZT23p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com>
From: Adrian CR <adri96roll@gmail.com>
Date: Thu, 29 Sep 2022 12:39:04 +0200
Message-ID: <CALq0fFyroYYvrvwHBxj=L3=nBzm+R-VU_fhtQ65uQ2NGLPNBTg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: W6N64EYV35QYADCGXRGNVFPE3VSCZYP4
X-Message-ID-Hash: W6N64EYV35QYADCGXRGNVFPE3VSCZYP4
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset Timing Violation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W6N64EYV35QYADCGXRGNVFPE3VSCZYP4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8297523718650296307=="

--===============8297523718650296307==
Content-Type: multipart/alternative; boundary="0000000000001e3ebb05e9ce7d3e"

--0000000000001e3ebb05e9ce7d3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much! You were right. I made a mistake with the clock in my
module.



El mi=C3=A9, 28 sept 2022 a las 4:19, Wade Fife (<wade.fife@ettus.com>) esc=
ribi=C3=B3:

> There's not enough information in the screen shot, but I think the output
> of the double synchronizer is on a different clock domain than flop flop
> (dato_entrada) being reset by it.
>
> The reset signal needs to be driven by the same clock as the flip flop
> being reset, otherwise Vivado can't ensure that the requirements of the F=
F
> will be met, resulting in this timing violation.
>
> Make sure you're using the right clock and reset signal for your
> dato_entrada register.
>
> Wade
>
> On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:
>>
>>> Hi every one!
>>>
>>>
>>> I am facing some problems with reset timing violations. This is is one
>>> for example, and i have a fews. I tried to instantiate the reset signal=
 but
>>> it didn work. I don know how to fix it. On the other side, i have seen =
a
>>> reset generation in a noc shell and i was wondering if i have to genera=
te a
>>> new one from a previous one.
>>>
>> I can't see much other than the names of the signals and the negative
>> slack, but the hierarchy seems to indicate it's part of a synchronizer
>> that's been double flopped, so maybe there should be a false path
>> associated with it in your constraints?
>>
>> Brian
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000001e3ebb05e9ce7d3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much! You were right. I made a mistake with=
 the clock in my module.<div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 28 sept=
 2022 a las 4:19, Wade Fife (&lt;<a href=3D"mailto:wade.fife@ettus.com">wad=
e.fife@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>There&#39;s not enough infor=
mation in the screen shot, but I think the output of the double synchronize=
r is on a different clock domain than flop flop (dato_entrada) being reset =
by it.<br></div><div><br></div><div>The reset signal needs to be driven by =
the same clock as the flip flop being reset, otherwise Vivado can&#39;t ens=
ure that the requirements of the FF will be met, resulting in this timing v=
iolation.</div><div><br></div><div>Make sure you&#39;re using the right clo=
ck and reset signal for your dato_entrada register.<br></div><div><br></div=
><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino &lt;<a h=
ref=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr">On Tue, Sep 27, 2022 at 7:21 AM &lt;<a href=
=3D"mailto:adri96roll@gmail.com" target=3D"_blank">adri96roll@gmail.com</a>=
&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><p>Hi every one!</p><p><br></p><p>I am facing some p=
roblems with reset timing violations. This is is one for example, and i hav=
e a fews. I tried to instantiate the reset signal but it didn work. I don k=
now how to fix it. On the other side, i have seen a reset generation in a n=
oc shell and i was wondering if i have to generate a new one from a previou=
s one.</p></blockquote><div>I can&#39;t see much other than the names of th=
e signals and the negative slack, but the hierarchy seems to indicate it&#3=
9;s part of a synchronizer that&#39;s been double flopped, so maybe there s=
hould be a false path associated with it in your constraints?</div><div><br=
></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000001e3ebb05e9ce7d3e--

--===============8297523718650296307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8297523718650296307==--
