Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DAFAFFF14
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 12:19:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63DE2386402
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 06:19:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752142786; bh=xKGF+SSfhjH3LxY94zYi852KtuXPqAywePpLzOOTdhY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TTvstxqkzuEtMpRp/5cNh3OYGqrKYdGct1nuymIiTuQ2VW+F5gRJcbQ7HBeo/ULqw
	 2C64AnPfwEimi1i5c1Fx/RZzeepNqyB1WZywiCMULa8JqPz1PqRwr/P9/+wvXZDQaY
	 BgLn2QkMghnvzfSXfNYvcpUfyvI9cGZTCRmO+4rMaJUWHYUQF+KaRcB8qvvQp/LzX+
	 M3ySZfxcIHHqwcSV6bfcxB57XfrditggsaBTVZFtQ+nqMOXj6dIPLe++e/AqxqF7+k
	 75kRxntL3EL3Kv9zLReLkus4Ffz6Zg0sinIjxYq3oyMYQ+Izse/cJRRMyCDAzqMste
	 rZ4GUREZJVrEg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 7616A385203
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 06:18:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="cvzih6iA";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-607cf70b00aso1497444a12.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 03:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752142716; x=1752747516; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w61cYUjFVTh2m7fZv8tTrKidvBdF9Nh7w/TM5Mirkuo=;
        b=cvzih6iA4op6E8gtFuGs/JnuCW5ruET4zsUJy5Mxt7681ZSNRzk8Yq/sz0osZ12U5O
         4advsjFc1kvy+p1XEsJH9DMyRHjg4JWd8dNy5KH9qlWzWHEHydSJ53JqmRxSCjjM3/wv
         p83YNLho19GrdFBikqTSrqscZ0K/CeXNvOSVt0IeoUkcrtRes3bouZCM2s/1HFUhy93V
         ZqrzIajZ0VY2RmMo/nBHXIHXdB6qgUjHIiY3Nm2u9swUWxOG6EVdtUlSuEMlc2jCHMro
         cNOE7Mvk6XbGHwDQbcZV49vSb4WF/QpiJx4PMJlVwwU2bC493YgRr+muoHotECIFX2f2
         Z71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752142716; x=1752747516;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w61cYUjFVTh2m7fZv8tTrKidvBdF9Nh7w/TM5Mirkuo=;
        b=CHMHC6MlnTxMY2dGrW2Ccouam0pSFTYWA8eQrwDrp9z1f+0OdkoaT2AuqEjV7xacUo
         AFdK91nji+jICjCXQ1MCx81DIHDVeh37Polc2yTNNF3FuuTCiJ9q/HG8YGYNFRxgy1VV
         /PRACZ2/t65llGS7YdOzlmr9WBM8ywaT/WDvg/4lneuMt9FJS9X0pLOm5rtItvfZPvEl
         R/XFw489Eo3f2zUSdWK6lId5Bd1xxnR3m+ZHrbo90HIVVt977vcs9xh0pS0HKXp0LCVd
         opUwF4eX48beX1eRnF35Xi7kmhtGQwyEVnfVvhlvaTZTa/bCGKrZuVhcYeQD+Zekkx7t
         POyg==
X-Gm-Message-State: AOJu0YyZUpVXwcN88mmBvEazJfJgYBhox0pHEMRWEQFTVWF0TGJpX2+f
	qg3Ki+r6c8CEMWpFsD1wmAmMWgwlTR5pwHzX84AUPDhzv+aTREgORKYSJV/5dD6j3nspI5Fg4rf
	4NO34uKfT9cf5ovWBiJdqd8o0bta8IVoQJGzyorYYIa7wHTU+QrO7KFw=
X-Gm-Gg: ASbGnctCca96N4JVJcs8bE+OifMBo7zt8Fyjd5262ZcvDyUUGQyNbFzwcytMAh6PKox
	u0O85fJ9RQEc050pWMWuU3V4W5nRJS3EjvE3i1SvdAJdKWTV7NimEp/Pw3RA4gPX33PbH3NM50Y
	i/yEgDZN5oozOqhtI4zOvrPsdDtY5pPlkAfuoyfLr8eg==
X-Google-Smtp-Source: AGHT+IEQseM6gUqFcVV14199engN3ruhDKuf0wBu4Mxx2n7ycF16HGR426S8+VwxEnmrCOgzuES7akMlKhzNnFnUnNk=
X-Received: by 2002:a17:906:7943:b0:ad5:7bc4:84b5 with SMTP id
 a640c23a62f3a-ae6cfb954a1mr636397766b.57.1752142716000; Thu, 10 Jul 2025
 03:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK46aCpM7sxqS9nqH4yG7dCyXh3PvqO-29Ztqpd42Eih1Q@mail.gmail.com>
In-Reply-To: <CAEXYVK46aCpM7sxqS9nqH4yG7dCyXh3PvqO-29Ztqpd42Eih1Q@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Jul 2025 12:18:24 +0200
X-Gm-Features: Ac12FXzPOYnIlrhAC-jaWw_GON4RG0bX2b1njKrLry-n1FJ0ijETKvfksXei5Bs
Message-ID: <CAFOi1A4SS2d4mcSGBkWcjnELAhG6pENOtkc2=QdyPxO2H80XDA@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 4ISMQKKQ32NTVTWBWI6JDIWXYOO2JNS4
X-Message-ID-Hash: 4ISMQKKQ32NTVTWBWI6JDIWXYOO2JNS4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimal CHDR Crossbar
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ISMQKKQ32NTVTWBWI6JDIWXYOO2JNS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8929362659233462191=="

--===============8929362659233462191==
Content-Type: multipart/alternative; boundary="0000000000002f06000639908496"

--0000000000002f06000639908496
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

- The only way to combine multiple SEPs into one is if you mux/demux in
software as well as in a block after the SEP. The virtual channel
feature was so supposed to address this, but as you know, we never
implemented it.
- I think if you removed the crossbar, UHD/RFNoC wouldn't balk at first,
since it does a dynamic topology discovery, but I'm still not sure
everything would work. We had originally thought we would support any
number of crossbars (0, 1, 2, ...) but then eventually decided we'll use
the routing matrix feature instead, and always assume a crossbar.
- This means you cannot use the rfnoc_image_builder workflow to remove the
crossbar. You would need to generate your files with rfnoc_image_builder
-G, then manually remove the crossbar, then call make directly or do
rfnoc_image_builder --reuse.
- Like I said, not sure if this works at all. But it will definitely not
work if you don't observe these things:
  - The primary connection to the device (from UHDs perspective) must have
access to an SEP with a ctrl interface. We also have a known issue where
the first SEP that UHD connects to needs to be the one with the ctrl
interface.
- I'm not sure about the route-not-found error. Like I said, you're doing
something way out of spec.

--M

On Wed, Jul 9, 2025 at 6:32=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> I'm having a bit of a hard time understanding the minimal requirements fo=
r
> the CHDR Crossbar and connectivity.
>
> I'm working with an X440, so I have 3 transport adapters (int0, sfp0,
> sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each with 4 ports (tx0,
> tx1), and 8 RX endpoints each with 1 port (rx[0-7]).
>
> I have tx0 ctrlport enabled, and none of the other ctrlports are enabled.
> I know I want rx[0-3] to only ever stream out of sfp0, and I want rx[4-7]
> to only ever stream out of sfp1. I want tx0 and tx1 to both receive CHDR
> packets from sfp0 and sfp1. I will always configure the device via int0.
>
> I also notice that rfnoc_core_kernel has a parameter for
> CHDR_XBAR_PRESENT. The comment for the parameter states: "1 if the CHDR
> crossbar is present. If 0 then transports are directly connected to SEPs"=
.
>
> Connecting everything through the crossbar even with a sparse routing
> matrix ends up with around 18kLUT utilization.
>
> Since I know I want this extremely fixed and rigid design, I've got some
> questions:
>
>   - How much of the CHDR crossbar can I remove? Can I get rid of it
> altogether? Are there any examples of a design with no CHDR crossbar?
>
>   - Can I combine the RX SEPs into a single port per SFP connection using
> an AXI-Streaming mux of some type? Or is this accomplished in the same wa=
y
> in the crossbar with a sparse routing matrix?
>
>   - How would one connect the multiple SEPs directly to the TA without
> going through the crossbar as the CHDR_XBAR_PRESENT parameter suggests is
> possible? Is it possible to describe this in the yaml file or does it
> require hand editing the generated rfnoc_image_core.sv file?
>
>   - Since configuration is happening from int0, and tx0 is the only SEP
> with a ctrlport on it, does this suggest I need int0 to only be connected
> to tx0 in the connections and it doesn't need to go anywhere else? I will
> note that I tried this and I received a message saying a route couldn't b=
e
> found for my remote streams. Is this maybe an oversight with remote
> streaming and sparse connectivity in the crossbar?
>
> I appreciate any insights you might be able to give.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002f06000639908496
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>- The only way to combine multiple SEPs into one is i=
f you mux/demux in software as well as in a block after the SEP. The virtua=
l channel feature=C2=A0was so supposed to address this, but as you know, we=
 never implemented it.</div><div>- I think if you removed the crossbar, UHD=
/RFNoC wouldn&#39;t balk at first, since it does a dynamic topology discove=
ry, but I&#39;m still not sure everything would work. We had originally tho=
ught we would support any number of crossbars (0, 1, 2, ...) but then event=
ually decided we&#39;ll use the routing matrix feature instead, and always =
assume a crossbar.</div><div>- This means you cannot use the rfnoc_image_bu=
ilder workflow to remove the crossbar. You would need to generate your file=
s with rfnoc_image_builder -G, then manually remove the crossbar, then call=
 make directly or do rfnoc_image_builder --reuse.</div><div>- Like I said, =
not sure if this works at all. But it will definitely not work if you don&#=
39;t observe these things:</div><div>=C2=A0 - The primary connection to the=
 device (from UHDs perspective) must have access to an SEP with a ctrl inte=
rface. We also have a known issue where the first SEP that UHD connects to =
needs to be the one with the ctrl interface.</div><div>- I&#39;m not sure a=
bout the route-not-found error. Like I said, you&#39;re doing something way=
 out of spec.</div><div><br></div><div>--M</div></div><br><div class=3D"gma=
il_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Jul 9, 2025 at 6:32=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpad=
alino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m having a bit o=
f a hard time understanding the minimal requirements for the CHDR Crossbar =
and connectivity.<div><br></div><div>I&#39;m working with an X440, so I hav=
e 3 transport adapters (int0, sfp0, sfp1), 2 blocks (radio0, radio1), 2 TX =
endpoints each with 4 ports (tx0, tx1), and 8 RX endpoints each with 1 port=
 (rx[0-7]).</div><div><br></div><div>I have tx0 ctrlport enabled, and none =
of the other ctrlports are enabled. I know I want rx[0-3] to only ever stre=
am out of sfp0, and I want rx[4-7] to only ever stream out of sfp1. I want =
tx0 and tx1 to both receive CHDR packets from sfp0 and sfp1. I will always =
configure the device via int0.</div><div><br></div><div>I also notice that =
rfnoc_core_kernel has a parameter for CHDR_XBAR_PRESENT. The comment for th=
e parameter states: &quot;1 if the CHDR crossbar is present. If 0 then tran=
sports are directly connected to SEPs&quot;.</div><div><br></div><div>Conne=
cting everything through the crossbar even with a sparse routing matrix end=
s up with around 18kLUT utilization.</div><div><br></div><div>Since I know =
I want this extremely fixed and rigid design, I&#39;ve got some questions:<=
/div><div><br></div><div>=C2=A0 - How much=C2=A0of the CHDR crossbar can I =
remove? Can I get rid of it altogether? Are there any examples of a design =
with no CHDR crossbar?</div><div><br></div><div>=C2=A0 - Can I combine the =
RX SEPs into a single port per SFP connection using an AXI-Streaming mux of=
 some type? Or is this accomplished in the same way in the crossbar with a =
sparse routing matrix?</div><div><br></div><div>=C2=A0 - How would one conn=
ect the multiple SEPs directly to the TA without going through the crossbar=
 as the CHDR_XBAR_PRESENT parameter suggests is possible? Is it possible to=
 describe this in the yaml file or does it require hand editing the generat=
ed <a href=3D"http://rfnoc_image_core.sv" target=3D"_blank">rfnoc_image_cor=
e.sv</a> file?</div><div><br></div><div>=C2=A0 - Since configuration is hap=
pening from int0, and tx0 is the only SEP with a ctrlport on it, does this =
suggest I need int0 to only be connected to tx0 in the connections and it d=
oesn&#39;t need to go anywhere else? I will note that I tried this and I re=
ceived a message saying a route couldn&#39;t be found for my remote streams=
. Is this maybe an oversight with remote streaming and sparse connectivity =
in the crossbar?</div><div><br></div><div>I appreciate any insights you mig=
ht be able to give.</div><div><br></div><div>Thanks,</div><div>Brian</div><=
/div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002f06000639908496--

--===============8929362659233462191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8929362659233462191==--
