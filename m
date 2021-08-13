Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EF73EAE3F
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 03:46:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27F12384B22
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 21:46:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student.nmt.edu header.i=@student.nmt.edu header.b="RqEhoAyQ";
	dkim-atps=neutral
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 11796383F31
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 21:46:02 -0400 (EDT)
Received: by mail-oi1-f182.google.com with SMTP id bi32so13694112oib.2
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 18:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student.nmt.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hWnIMl9d7X1jGxOOCWy/pV5oaAksGCUpp+Uij4B28s4=;
        b=RqEhoAyQg6m/rPPyV44gMeboqkgdSj8uIyLsXDy0IMqN0z5+Q4dYmnic61KqEmymce
         xCrKUN7YYXfl8VyEKJC9nAusHwr8smS+7+G2/dxiVGxcCIbUHTLMngv/WV7rU278HShB
         NKLh6yLBTG70fdM1Fr36SyuC0N0yvEwlNcbtmwAglZ40HRXbhbNRlc6LFaI8YNinuLsg
         kGai46qk4roeq6e1uJ9bfxJCjHxWlmyqoq7vIXvfsLmITAbe1jxdBHTHsJhJeFkUVsEG
         Uxvla20Pq6JDEzxHHnCe0wI0RWYxB9YHn7KAfV0pPQ8fcRnoG9fI4RaZwfpNQ5v7Pr7B
         ptpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hWnIMl9d7X1jGxOOCWy/pV5oaAksGCUpp+Uij4B28s4=;
        b=uCA0RC6ODENm7Uo/R75y1O5rnxnTkceES6YQ4OwfuP9TlL6ntVyLlwRmv0bdFDNxS7
         98VWD1GtvuYYtlVQnuDtUUtkZrkGxK2c3zYMnQ8qo7vwZNHgp83qYF1L/Omho3j5TPh5
         H6CU0nsL/SG/mIa2TuBBCma33XNdZW5DRUqE+byFs4uil/88XsFiT90znAYeSAQV+cBg
         iVDoR7vxIuc3jClXeo/qePtVBs941iu7ls8ZzkLdvdcBzKCFmBNqYOh05zrGBhPKnJWG
         YRe7MuytYqbtWfovcOJ4c8t9BXLf2kvi0K9CouAkcBxgsv+nrv45P0vxDfZXes2W4tBw
         1v5g==
X-Gm-Message-State: AOAM531Z6FKXpjS50jB4VuYSzENZf7w7pMmwLXC/ECL8mHkGyoxk7wEe
	pUv3jo6be1K7hhPr7upAb91BnTEbZXs2SnXZ2t0a5w==
X-Google-Smtp-Source: ABdhPJy6IXZHE4HHWLpIBUB4OrMqJ9zPRiqJgxusP+RSjjxisu8uJYbPCYsjpixcsTv/k/UxbUEwvRH+sown7Bs4sgI=
X-Received: by 2002:aca:f089:: with SMTP id o131mr164954oih.37.1628819162266;
 Thu, 12 Aug 2021 18:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <6115BD3E.6020403@gmail.com> <EF9340E6-7FB6-4EF7-9A01-BAE6D553CF31@gmail.com>
 <6115C7C6.5040202@gmail.com>
In-Reply-To: <6115C7C6.5040202@gmail.com>
From: Bobbi Taylor <bobbi.taylor@student.nmt.edu>
Date: Thu, 12 Aug 2021 21:45:26 -0400
Message-ID: <CABnzEf7VVK0TeiVaYrRCatXUjtqADH839xryDyhxecAPE7RF3A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 736ROWPDXL3ULEINUWIFUP3DOJ6KHJFN
X-Message-ID-Hash: 736ROWPDXL3ULEINUWIFUP3DOJ6KHJFN
X-MailFrom: bobbi.taylor@student.nmt.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Paul Atreides <maud.dib1984@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/736ROWPDXL3ULEINUWIFUP3DOJ6KHJFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6964753041922246554=="

--===============6964753041922246554==
Content-Type: multipart/alternative; boundary="0000000000009210e405c9670353"

--0000000000009210e405c9670353
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've attempted this in Ubuntu 20.04 and 18.04.

I had not previously checked that the ports were open, but after disabling
the firewall ("ufw disable") and opening the ports, it still isn't able to
detect the radios.

The nice bold font on the outer casing has convinced me that they are in
fact N210s :)

I'm just about to try an older version of UHD, but that may not be the
issue if Paul was able to get it working with UHD v4.0.0.0

Similar to Paul, fresh install of Ubuntu 18.04
gigabit ethernet port
have set ip address of host computer to 192.168.10.1, netmask to 24
(255.255.255.0)

Could it be an error with how I installed UHD? No errors were given during
installation, but all three radios appear to be working correctly so I'm
starting to doubt it's an issue with the radios. I have tried installing
UHD three ways:
1.) Binary installation
2.) Installing from source
3.) Pybombs

None gave me errors, but none have worked either. Currently using the
version installed from source.


On Thu, Aug 12, 2021 at 9:15 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/12/2021 09:12 PM, Paul Atreides wrote:
> > In an attempt to help out with this I just fired up my old N210 and it
> shows up in uhd_find_devices with UHD v4.0.0.0
> >
> > I have a fresh install of Ubuntu 20.04
> > Usb3 to Ethernet dongle
> Those aren't really recommended for actual use (USB3 to 1GiGe dongles).
> Many of them arbitrarily re-order
>    packets.  But for quick sanity tests, seem to work OK.
>
> > Default network settings except for setting my up address to
> 192.168.10.1 (my radio is 192.168.10.4) and the netmask to 24
> >
> >
> >
> > <end transmission>
> >
> >> On Aug 12, 2021, at 20:32, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
> >>
> >> =EF=BB=BF
> >> On 08/12/2021 07:50 PM, Bobbi Taylor wrote:
> >>> I just reset it again, the IP address was correct, the CPLD and
> firmware lights were on, and I could ping it. But as soon as I try to loa=
d
> an image, I still get the No UHD devices found error.
> >>>
> >>>
> >>> <mime-attachment.png>
> >>>
> >>>
> >>>
> >> Is this inside a VM or on a "bare metal" Linux system?
> >>
> >> Is port 49152 and 49153 "open" for UDP?
> >>
> >> Are you sure that these are N210 devices?
> >>
> >> If you revert to UHD 3.15 or even 3.14, does the behavior change?
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000009210e405c9670353
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve attempted this in Ubuntu 20.04 and 18.04.<br=
></div><div><br></div><div>I had not previously checked that the ports were=
 open, but after disabling the firewall (&quot;ufw disable&quot;) and openi=
ng the ports, it still isn&#39;t able to detect the radios.</div><div><br><=
/div><div>The nice bold font on the outer casing has convinced me that they=
 are in fact N210s :)<br></div><div><br></div><div>I&#39;m just about to tr=
y an older version of UHD, but that may not be the issue if Paul was able t=
o get it working with UHD v4.0.0.0</div><div><br></div><div>Similar to Paul=
, fresh install of Ubuntu 18.04</div><div>gigabit ethernet port</div><div>h=
ave set ip address of host computer to 192.168.10.1, netmask to 24 (255.255=
.255.0)</div><div><br></div><div>Could it be an error with how I installed =
UHD? No errors were given during installation, but all three radios appear =
to be working correctly so I&#39;m starting to doubt it&#39;s an issue with=
 the radios. I have tried installing UHD three ways:</div><div>1.) Binary i=
nstallation</div><div>2.) Installing from source</div><div>3.) Pybombs</div=
><div><br></div><div>None gave me errors, but none have worked either. Curr=
ently using the version installed from source.<br></div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Aug 12, 2021 at 9:15 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On 08/12/2021 09:1=
2 PM, Paul Atreides wrote:<br>
&gt; In an attempt to help out with this I just fired up my old N210 and it=
 shows up in uhd_find_devices with UHD v4.0.0.0<br>
&gt;<br>
&gt; I have a fresh install of Ubuntu 20.04<br>
&gt; Usb3 to Ethernet dongle<br>
Those aren&#39;t really recommended for actual use (USB3 to 1GiGe dongles).=
=C2=A0 <br>
Many of them arbitrarily re-order<br>
=C2=A0 =C2=A0packets.=C2=A0 But for quick sanity tests, seem to work OK.<br=
>
<br>
&gt; Default network settings except for setting my up address to 192.168.1=
0.1 (my radio is 192.168.10.4) and the netmask to 24<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &lt;end transmission&gt;<br>
&gt;<br>
&gt;&gt; On Aug 12, 2021, at 20:32, Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BF<br>
&gt;&gt; On 08/12/2021 07:50 PM, Bobbi Taylor wrote:<br>
&gt;&gt;&gt; I just reset it again, the IP address was correct, the CPLD an=
d firmware lights were on, and I could ping it. But as soon as I try to loa=
d an image, I still get the No UHD devices found error.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &lt;mime-attachment.png&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt; Is this inside a VM or on a &quot;bare metal&quot; Linux system?<b=
r>
&gt;&gt;<br>
&gt;&gt; Is port 49152 and 49153 &quot;open&quot; for UDP?<br>
&gt;&gt;<br>
&gt;&gt; Are you sure that these are N210 devices?<br>
&gt;&gt;<br>
&gt;&gt; If you revert to UHD 3.15 or even 3.14, does the behavior change?<=
br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
<br>
</blockquote></div>

--0000000000009210e405c9670353--

--===============6964753041922246554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6964753041922246554==--
