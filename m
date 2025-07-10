Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3CDB005A1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 16:49:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C2B03862EC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 10:49:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752158949; bh=0NnzhNnvrmkPR+vIQXrcM/jI7PGODQTwlLQL0w+i/MY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YxaqNoPaE+94Jf8f6XwpwAStzFTWmUHC9U88xkL7aMWceXvo2SJzBaHxL5U81b47K
	 belqfu009o9ZXgU2GRdu+Vw7+f8DFSYTCKaJXlmUDOlyBu/wtrRISLUl3GX7K0Btzf
	 Q4kO6X3vxcyov5xzSdhmMwe5mQzjFEmJvLSZBNPoS9EaPkhbSfv7UkPWRPPSkmkQNy
	 S9+qHS84P8/nUBJmpQF/p3KeWC/h+POnvas/lSyqG7kxyE0ZlsZp/8Ptf6IaHggPAA
	 6tAqWeAey5G1s5RYcQWGQRTq8GdlmlTjmldhl86rIiiiNsb+rEQfEuO442oaiOftx9
	 GeRgWjCZeVfmg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 2071A3861C4
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 10:48:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E/YVb4Bj";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae0dd7ac1f5so212129966b.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 07:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752158896; x=1752763696; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yg/gNInaAkjTK1pJfbZGq26qVqicbSmHn4nc3goBeC0=;
        b=E/YVb4Bjs4kv+WUBlDSnnkccTN1v7zorIDPgMuWKHEpzXcnkXj/yguLUA6+nTMLKtX
         h7Qf5m2ZN635YgQuCDWlJV0oXOIMDGh/TQIcBDeNAOR7On2IX2Xclbuzk7WD8J8v4H4E
         HpU6iFz/9/s7YjdU7uKHAHTACvg5UDbDf2iur9qNMzdVqcHo2iBMgxUpoOPHEek+0gZ6
         KRXJegpyEiwAwNhQ85O56xNbFg9JJhsd/KgOhhFTdxJ/z+XJeOxEmWv7Mg5RuBs7S2xf
         hIoNj4zk1n+cGl4jju8RsqJSFEuGG4VPVqnuk2SgHf3nmePectoyXrZNeNZXfc0L80C0
         UJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752158896; x=1752763696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yg/gNInaAkjTK1pJfbZGq26qVqicbSmHn4nc3goBeC0=;
        b=ULASf1zt1emutYL6qZe/Q38hnEhk4Mn3ec5/zlJy2sluAj30p1MJsJ4JXZYLAGCQlZ
         UYvdtKxCTuhpsO4ft5Q5fDKKOoI5jraodXrULGnsHliPe92gos7p8EbGLK3sDkiSnzsR
         KRte0bjYbJy8YWb8ayjPTuRyaE188OwPbbELruYKGxzuIv29hVQiiA4o1NIzoa/KzuuE
         fzHBGdc4iigvBLDz+++RgyltVuWUqgc11EnfgYU/H+QjsuGrfMzlfoKSW8fI/fI6WnN1
         JjocQ2M1rAjXU+Mi5BXM32CCOWRE8r7b4rayucRrpln+Mp4+2Jg3BralJUlGETLetRjr
         NBLw==
X-Gm-Message-State: AOJu0YyfbQGrjc2N9JHZfXGoO8ZyDZ9PoYGZTIh73V0+lJw5X+mUngvK
	HgMSOs+Sr4atIbC5T7h53hAqp7MdsT8E6hPpcZTr+mZ0GXQW3o6+A1r/WHA6TtQUBiHFx4cjIKl
	vgvRecP0xMDK8d1ol7ehXirJFIRfBhZ0Tng==
X-Gm-Gg: ASbGncteZqXnturAZYYO4E91Gs1FwtxbZWEEBVQztMIBz1x1TpHQEn1uxBDrpqT89T6
	RCy9BBQPhvUyZt/0CRKenhocHhbnzdDlcKl7tlR787XcwxoSw752cr7oojMAxGVlXT+XPJzDM3x
	oCMLH+gNcmXBZSoqILiV07tWmSyicIzwPX4ru/H74UqFmm5mPwA5Qc8w==
X-Google-Smtp-Source: AGHT+IFXDLfDDzN31T2fdUUKXa0LJ+JjBz9IJU+KttBNNfB0QPDZyqW9+d8Z/BTboA4UiLd9gNvmpyS/AUfWov3ygR8=
X-Received: by 2002:a17:906:8417:b0:ae3:5887:4219 with SMTP id
 a640c23a62f3a-ae6e13f78bdmr329836766b.45.1752158895649; Thu, 10 Jul 2025
 07:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK46aCpM7sxqS9nqH4yG7dCyXh3PvqO-29Ztqpd42Eih1Q@mail.gmail.com>
 <CAFOi1A4SS2d4mcSGBkWcjnELAhG6pENOtkc2=QdyPxO2H80XDA@mail.gmail.com>
In-Reply-To: <CAFOi1A4SS2d4mcSGBkWcjnELAhG6pENOtkc2=QdyPxO2H80XDA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 10 Jul 2025 10:48:03 -0400
X-Gm-Features: Ac12FXzqqUlW6ZndFcZJjeQLLR6jTrq246bBuZxww1G01v1TUTorTOtOUsi-oFk
Message-ID: <CAEXYVK5=dqp+Vp9Ti2K+5B8nFnGOi9O44ap6bNLnXpbik17uUA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: W6UZXFOI2A4XRS57ZVGJLSNOL2ASZGVU
X-Message-ID-Hash: W6UZXFOI2A4XRS57ZVGJLSNOL2ASZGVU
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimal CHDR Crossbar
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W6UZXFOI2A4XRS57ZVGJLSNOL2ASZGVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2750974568647079210=="

--===============2750974568647079210==
Content-Type: multipart/alternative; boundary="00000000000090b9d406399448e1"

--00000000000090b9d406399448e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Martin,

Thanks for the clarification. I understand I'm pushing a lot of boundaries
and I appreciate the time you're putting in to explain.

Going back to the route-not-found error, this configuration is not
necessarily out of spec, I feel. I probably wasn't clear with the intention
there. For the current state of how I have things working:

  - The arm runs a python script to initialize the RFNoC graph and start
streams. This all goes through int0.
  - SEP tx0 has a control port and is able to communicate the
configurations and is the first SEP in the list
  - I have 8 RX SEP rx0-7, where rx0-3 have a connection in the crossbar to
sfp0 and rx4-7 have a connection in the crossbar to sfp1
  - All 8 RX SEP have a connection to and from int0
  - All SEPs are being set to remotely stream

My issue arises when I remove the RX SEP connections to/from int0 - I get
that route-not-found error. My inclination is that since the RX SEPs only
have an output data port and no ctrl port, it should be fine to only
connect them in the crossbar to the TA they need to send their data.

Do you think it's possible there is a bug in UHD when validating the
destination is reachable it is not considering a remote streaming
connection and is trying to connect back up to the SW endpoint?

Thanks,
Brian

On Thu, Jul 10, 2025 at 6:19=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

> - The only way to combine multiple SEPs into one is if you mux/demux in
> software as well as in a block after the SEP. The virtual channel
> feature was so supposed to address this, but as you know, we never
> implemented it.
> - I think if you removed the crossbar, UHD/RFNoC wouldn't balk at first,
> since it does a dynamic topology discovery, but I'm still not sure
> everything would work. We had originally thought we would support any
> number of crossbars (0, 1, 2, ...) but then eventually decided we'll use
> the routing matrix feature instead, and always assume a crossbar.
> - This means you cannot use the rfnoc_image_builder workflow to remove th=
e
> crossbar. You would need to generate your files with rfnoc_image_builder
> -G, then manually remove the crossbar, then call make directly or do
> rfnoc_image_builder --reuse.
> - Like I said, not sure if this works at all. But it will definitely not
> work if you don't observe these things:
>   - The primary connection to the device (from UHDs perspective) must hav=
e
> access to an SEP with a ctrl interface. We also have a known issue where
> the first SEP that UHD connects to needs to be the one with the ctrl
> interface.
> - I'm not sure about the route-not-found error. Like I said, you're doing
> something way out of spec.
>
> --M
>
> On Wed, Jul 9, 2025 at 6:32=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:
>
>> I'm having a bit of a hard time understanding the minimal requirements
>> for the CHDR Crossbar and connectivity.
>>
>> I'm working with an X440, so I have 3 transport adapters (int0, sfp0,
>> sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each with 4 ports (tx0,
>> tx1), and 8 RX endpoints each with 1 port (rx[0-7]).
>>
>> I have tx0 ctrlport enabled, and none of the other ctrlports are enabled=
.
>> I know I want rx[0-3] to only ever stream out of sfp0, and I want rx[4-7=
]
>> to only ever stream out of sfp1. I want tx0 and tx1 to both receive CHDR
>> packets from sfp0 and sfp1. I will always configure the device via int0.
>>
>> I also notice that rfnoc_core_kernel has a parameter for
>> CHDR_XBAR_PRESENT. The comment for the parameter states: "1 if the CHDR
>> crossbar is present. If 0 then transports are directly connected to SEPs=
".
>>
>> Connecting everything through the crossbar even with a sparse routing
>> matrix ends up with around 18kLUT utilization.
>>
>> Since I know I want this extremely fixed and rigid design, I've got some
>> questions:
>>
>>   - How much of the CHDR crossbar can I remove? Can I get rid of it
>> altogether? Are there any examples of a design with no CHDR crossbar?
>>
>>   - Can I combine the RX SEPs into a single port per SFP connection usin=
g
>> an AXI-Streaming mux of some type? Or is this accomplished in the same w=
ay
>> in the crossbar with a sparse routing matrix?
>>
>>   - How would one connect the multiple SEPs directly to the TA without
>> going through the crossbar as the CHDR_XBAR_PRESENT parameter suggests i=
s
>> possible? Is it possible to describe this in the yaml file or does it
>> require hand editing the generated rfnoc_image_core.sv file?
>>
>>   - Since configuration is happening from int0, and tx0 is the only SEP
>> with a ctrlport on it, does this suggest I need int0 to only be connecte=
d
>> to tx0 in the connections and it doesn't need to go anywhere else? I wil=
l
>> note that I tried this and I received a message saying a route couldn't =
be
>> found for my remote streams. Is this maybe an oversight with remote
>> streaming and sparse connectivity in the crossbar?
>>
>> I appreciate any insights you might be able to give.
>>
>> Thanks,
>> Brian
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000090b9d406399448e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Martin,<div><br></div><div>Thanks for the clarificatio=
n. I understand I&#39;m pushing a lot of boundaries and I appreciate the ti=
me you&#39;re putting in to explain.</div><div><br></div><div>Going back to=
 the route-not-found error, this configuration is not necessarily out of sp=
ec,=C2=A0I feel. I probably wasn&#39;t clear with the intention there. For =
the current state of how I have things working:</div><div><br></div><div>=
=C2=A0 - The arm runs a python script=C2=A0to initialize the RFNoC graph an=
d start streams. This all goes through int0.</div><div>=C2=A0 - SEP tx0 has=
 a control port and is able to communicate the configurations and is the fi=
rst SEP=C2=A0in the list</div><div>=C2=A0 - I have 8 RX SEP rx0-7, where rx=
0-3 have a connection in the crossbar to sfp0 and rx4-7 have a connection i=
n the crossbar to sfp1</div><div>=C2=A0 - All 8 RX SEP have a connection to=
 and from int0</div><div>=C2=A0 - All SEPs are being set to remotely stream=
</div><div><br></div><div>My issue arises when I remove the RX SEP connecti=
ons to/from int0 - I get that route-not-found error. My inclination is that=
 since the RX SEPs only have an output data port and no ctrl port, it shoul=
d be fine to only connect them in the crossbar to the TA they need to send =
their data.</div><div><br></div><div>Do you think it&#39;s possible there i=
s a bug in UHD when validating the destination is reachable it is not consi=
dering a remote streaming connection and is trying to connect back up to th=
e SW endpoint?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 10, 2025 at 6:19=E2=80=AFAM Martin Braun &lt;<a=
 href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>- The only way to combine multiple SEPs into one is if you mux/dem=
ux in software as well as in a block after the SEP. The virtual channel fea=
ture=C2=A0was so supposed to address this, but as you know, we never implem=
ented it.</div><div>- I think if you removed the crossbar, UHD/RFNoC wouldn=
&#39;t balk at first, since it does a dynamic topology discovery, but I&#39=
;m still not sure everything would work. We had originally thought we would=
 support any number of crossbars (0, 1, 2, ...) but then eventually decided=
 we&#39;ll use the routing matrix feature instead, and always assume a cros=
sbar.</div><div>- This means you cannot use the rfnoc_image_builder workflo=
w to remove the crossbar. You would need to generate your files with rfnoc_=
image_builder -G, then manually remove the crossbar, then call make directl=
y or do rfnoc_image_builder --reuse.</div><div>- Like I said, not sure if t=
his works at all. But it will definitely not work if you don&#39;t observe =
these things:</div><div>=C2=A0 - The primary connection to the device (from=
 UHDs perspective) must have access to an SEP with a ctrl interface. We als=
o have a known issue where the first SEP that UHD connects to needs to be t=
he one with the ctrl interface.</div><div>- I&#39;m not sure about the rout=
e-not-found error. Like I said, you&#39;re doing something way out of spec.=
</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 9, 2025 at 6:32=E2=80=AFPM B=
rian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">=
bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">I&#39;m having a bit of a hard time und=
erstanding the minimal requirements for the CHDR Crossbar and connectivity.=
<div><br></div><div>I&#39;m working with an X440, so I have 3 transport ada=
pters (int0, sfp0, sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each wi=
th 4 ports (tx0, tx1), and 8 RX endpoints each with 1 port (rx[0-7]).</div>=
<div><br></div><div>I have tx0 ctrlport enabled, and none of the other ctrl=
ports are enabled. I know I want rx[0-3] to only ever stream out of sfp0, a=
nd I want rx[4-7] to only ever stream out of sfp1. I want tx0 and tx1 to bo=
th receive CHDR packets from sfp0 and sfp1. I will always configure the dev=
ice via int0.</div><div><br></div><div>I also notice that rfnoc_core_kernel=
 has a parameter for CHDR_XBAR_PRESENT. The comment for the parameter state=
s: &quot;1 if the CHDR crossbar is present. If 0 then transports are direct=
ly connected to SEPs&quot;.</div><div><br></div><div>Connecting everything =
through the crossbar even with a sparse routing matrix ends up with around =
18kLUT utilization.</div><div><br></div><div>Since I know I want this extre=
mely fixed and rigid design, I&#39;ve got some questions:</div><div><br></d=
iv><div>=C2=A0 - How much=C2=A0of the CHDR crossbar can I remove? Can I get=
 rid of it altogether? Are there any examples of a design with no CHDR cros=
sbar?</div><div><br></div><div>=C2=A0 - Can I combine the RX SEPs into a si=
ngle port per SFP connection using an AXI-Streaming mux of some type? Or is=
 this accomplished in the same way in the crossbar with a sparse routing ma=
trix?</div><div><br></div><div>=C2=A0 - How would one connect the multiple =
SEPs directly to the TA without going through the crossbar as the CHDR_XBAR=
_PRESENT parameter suggests is possible? Is it possible to describe this in=
 the yaml file or does it require hand editing the generated <a href=3D"htt=
p://rfnoc_image_core.sv" target=3D"_blank">rfnoc_image_core.sv</a> file?</d=
iv><div><br></div><div>=C2=A0 - Since configuration is happening from int0,=
 and tx0 is the only SEP with a ctrlport on it, does this suggest I need in=
t0 to only be connected to tx0 in the connections and it doesn&#39;t need t=
o go anywhere else? I will note that I tried this and I received a message =
saying a route couldn&#39;t be found for my remote streams. Is this maybe a=
n oversight with remote streaming and sparse connectivity in the crossbar?<=
/div><div><br></div><div>I appreciate any insights you might be able to giv=
e.</div><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000090b9d406399448e1--

--===============2750974568647079210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2750974568647079210==--
