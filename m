Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB0AB0548B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 10:17:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84C123860D1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 04:17:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752567454; bh=FRZlvXTd+LmZsg3MlxX80B7o8qGoDlY2y2naKG4wdWo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QlFhBoODWq//Cj1YPhUPWVNnWWq5OcIIcXJOnoyvwrfJp+tBmgD0b9tifhdTYQ7mz
	 amWzPP/teJyETbI7/6wOKh+Y7MT0AFSVa5KgNaEp2Zi4FVrLYoLkC9g6dDmMDtobhM
	 P5uL1V8DuvDvUeBw6YZcHZaskZtpRa+X8GtY/MCD0apkWQiA9BiNkALH85NovvhEKM
	 wMo+D4XRTyD0xpsz0a7L4DGzZYcPMEKLvmvxa3Ch/vO3CuP8jWPvG5vpOiW5qFSZXl
	 C2vHx/JOjwHc2Xb2EEynqg6p2YyR8EWOV/7DqimSoEgoJRjcKymiN/G4AdZpSY+6A0
	 gjwOutwBgX3MA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 505AF38561A
	for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 04:16:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rJ7XpaCM";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae36e88a5daso1027692466b.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 01:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752567404; x=1753172204; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AX6WRYZZ7zGjPOjuT47H89iU0c0tIjX6d/k4KFryVGI=;
        b=rJ7XpaCMKsK8BKILM+igGPH/zJUC3RtY11VtIl5JXpyuO6x5hwIdvUgMQ+/9P49jQm
         CvRZba6PqWEYa3TBEK7cZR7mytIsAslquf1p1BwX34MC2h+2pncmuWu78+9tqSAAatCF
         uHWq9aq0yP9X1Gb8zpnIvm3scLyOfwSsopkw33SpUBWcjA5SNGXMDEVJJcyQd8/X6xwc
         aw3RbqHr+7v7GnJWrGySjJ9VriSgPe56jZZ8EwBxVu9L7QOtbKDUaoTpCPCpMF8O/V8J
         JW24N7ybbo6TQKWEemUvmr1HCHWZ0vM0SrqxeIl88cfSZveKm+/CvC2+lFXoJxnAP5Kx
         BMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752567404; x=1753172204;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AX6WRYZZ7zGjPOjuT47H89iU0c0tIjX6d/k4KFryVGI=;
        b=bCgK6FpUmCal+tbvDD3y/Ypmev4cn12EEm4Es6sqITsooUA5ZBX6r2nwY2Vfy0PqX6
         yCm8g2Iz3vukSJbmSjU9WZ4I/oQRhXe9m5BY0zpxw96ddvNeETOUQlhsfZ35Ktf5GObD
         RLGsx/bCXx9nezWbZ+Vjq1vhI82JHfQx6r6JG/TFO9DIqSaYfajciQl4OGg9tKfTkhMh
         gq5wXwlS8zPuZTej3rrwXo2X6nLgZx2kdiW4TfvWHJx66ERtCGcfFBLwz9rnYUZm2iQ3
         vhMF9qxex9miD8gQp5JqWP10cefX4WTO9e8+29y8ChcYYkG0XD3GPTiQvmElHpcLbMJZ
         h8iA==
X-Gm-Message-State: AOJu0YzZvFI4gCAybzAQeNqqWXWd5b2snasZqjcFE6PBevpxCOMHPBT+
	5aSU0WlFDPtEGKHPox2asOMEsL9Zs0O76kFkI/uW/7ufFM44gBsMxZSENx2vVCaz+pLQvMRdOOX
	6IY/QvsBjih2WHbQmT7fb0O9AYV4U5yjyO7anxE1I4VQa7CiwGk2+Ehs=
X-Gm-Gg: ASbGncvRfSOmbHDUA2X1H311qOLSdBohxiKuAokUgAY0lHUskvFdx1d8b2abf4P+ncb
	IiVOzRr62GqGLK3IartrOEQpGQpSEb3V0dgjbam32GEuZXoRUFV0350l0UuU5+rSzUybZXHLQip
	wrUvoY4Hbjvmz2+Mk7polLKFIAiUCG9hjdiBh3zGRMpmy8CmjbfhEwjQknIVHNJhYAAnIBZ6nkn
	WdQX8w9z7wlwxqE
X-Google-Smtp-Source: AGHT+IEFyUf5nQcP9WFg/Ktu/t3ixrTi5ihe6jvmpG6qWnZ+f+lJwR2BQOfK/mY+Ytn0YRHEB+2giwkys/pc+nLg7QQ=
X-Received: by 2002:a17:907:1b1b:b0:ae0:ac28:ec21 with SMTP id
 a640c23a62f3a-ae6fbe77f1emr1477922066b.13.1752567403712; Tue, 15 Jul 2025
 01:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK46aCpM7sxqS9nqH4yG7dCyXh3PvqO-29Ztqpd42Eih1Q@mail.gmail.com>
 <CAFOi1A4SS2d4mcSGBkWcjnELAhG6pENOtkc2=QdyPxO2H80XDA@mail.gmail.com> <CAEXYVK5=dqp+Vp9Ti2K+5B8nFnGOi9O44ap6bNLnXpbik17uUA@mail.gmail.com>
In-Reply-To: <CAEXYVK5=dqp+Vp9Ti2K+5B8nFnGOi9O44ap6bNLnXpbik17uUA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 15 Jul 2025 10:16:32 +0200
X-Gm-Features: Ac12FXxW6-BXsKuzIfmYPfSzmrbrQ2Q28wpxgdLLYqBJuPdC1f7kH5pgLl6j-3A
Message-ID: <CAFOi1A5eV7jsStQ1vEkZt9iMsoS=UuRbCAv1e2w9X+eK88J9-A@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FUSU5PSFXZAS2FH5GPKHI2CLUGROWNUU
X-Message-ID-Hash: FUSU5PSFXZAS2FH5GPKHI2CLUGROWNUU
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimal CHDR Crossbar
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FUSU5PSFXZAS2FH5GPKHI2CLUGROWNUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4869503411974804266=="

--===============4869503411974804266==
Content-Type: multipart/alternative; boundary="0000000000008b24b90639f36504"

--0000000000008b24b90639f36504
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, maybe. Can you post a bug on github with a minimal image core YAML
that should work, but doesn't?

Thanks,
M

On Thu, Jul 10, 2025 at 4:48=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> Hey Martin,
>
> Thanks for the clarification. I understand I'm pushing a lot of boundarie=
s
> and I appreciate the time you're putting in to explain.
>
> Going back to the route-not-found error, this configuration is not
> necessarily out of spec, I feel. I probably wasn't clear with the intenti=
on
> there. For the current state of how I have things working:
>
>   - The arm runs a python script to initialize the RFNoC graph and start
> streams. This all goes through int0.
>   - SEP tx0 has a control port and is able to communicate the
> configurations and is the first SEP in the list
>   - I have 8 RX SEP rx0-7, where rx0-3 have a connection in the crossbar
> to sfp0 and rx4-7 have a connection in the crossbar to sfp1
>   - All 8 RX SEP have a connection to and from int0
>   - All SEPs are being set to remotely stream
>
> My issue arises when I remove the RX SEP connections to/from int0 - I get
> that route-not-found error. My inclination is that since the RX SEPs only
> have an output data port and no ctrl port, it should be fine to only
> connect them in the crossbar to the TA they need to send their data.
>
> Do you think it's possible there is a bug in UHD when validating the
> destination is reachable it is not considering a remote streaming
> connection and is trying to connect back up to the SW endpoint?
>
> Thanks,
> Brian
>
> On Thu, Jul 10, 2025 at 6:19=E2=80=AFAM Martin Braun <martin.braun@ettus.=
com>
> wrote:
>
>> - The only way to combine multiple SEPs into one is if you mux/demux in
>> software as well as in a block after the SEP. The virtual channel
>> feature was so supposed to address this, but as you know, we never
>> implemented it.
>> - I think if you removed the crossbar, UHD/RFNoC wouldn't balk at first,
>> since it does a dynamic topology discovery, but I'm still not sure
>> everything would work. We had originally thought we would support any
>> number of crossbars (0, 1, 2, ...) but then eventually decided we'll use
>> the routing matrix feature instead, and always assume a crossbar.
>> - This means you cannot use the rfnoc_image_builder workflow to remove
>> the crossbar. You would need to generate your files with
>> rfnoc_image_builder -G, then manually remove the crossbar, then call mak=
e
>> directly or do rfnoc_image_builder --reuse.
>> - Like I said, not sure if this works at all. But it will definitely not
>> work if you don't observe these things:
>>   - The primary connection to the device (from UHDs perspective) must
>> have access to an SEP with a ctrl interface. We also have a known issue
>> where the first SEP that UHD connects to needs to be the one with the ct=
rl
>> interface.
>> - I'm not sure about the route-not-found error. Like I said, you're doin=
g
>> something way out of spec.
>>
>> --M
>>
>> On Wed, Jul 9, 2025 at 6:32=E2=80=AFPM Brian Padalino <bpadalino@gmail.c=
om>
>> wrote:
>>
>>> I'm having a bit of a hard time understanding the minimal requirements
>>> for the CHDR Crossbar and connectivity.
>>>
>>> I'm working with an X440, so I have 3 transport adapters (int0, sfp0,
>>> sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each with 4 ports (tx0=
,
>>> tx1), and 8 RX endpoints each with 1 port (rx[0-7]).
>>>
>>> I have tx0 ctrlport enabled, and none of the other ctrlports are
>>> enabled. I know I want rx[0-3] to only ever stream out of sfp0, and I w=
ant
>>> rx[4-7] to only ever stream out of sfp1. I want tx0 and tx1 to both rec=
eive
>>> CHDR packets from sfp0 and sfp1. I will always configure the device via
>>> int0.
>>>
>>> I also notice that rfnoc_core_kernel has a parameter for
>>> CHDR_XBAR_PRESENT. The comment for the parameter states: "1 if the CHDR
>>> crossbar is present. If 0 then transports are directly connected to SEP=
s".
>>>
>>> Connecting everything through the crossbar even with a sparse routing
>>> matrix ends up with around 18kLUT utilization.
>>>
>>> Since I know I want this extremely fixed and rigid design, I've got som=
e
>>> questions:
>>>
>>>   - How much of the CHDR crossbar can I remove? Can I get rid of it
>>> altogether? Are there any examples of a design with no CHDR crossbar?
>>>
>>>   - Can I combine the RX SEPs into a single port per SFP connection
>>> using an AXI-Streaming mux of some type? Or is this accomplished in the
>>> same way in the crossbar with a sparse routing matrix?
>>>
>>>   - How would one connect the multiple SEPs directly to the TA without
>>> going through the crossbar as the CHDR_XBAR_PRESENT parameter suggests =
is
>>> possible? Is it possible to describe this in the yaml file or does it
>>> require hand editing the generated rfnoc_image_core.sv file?
>>>
>>>   - Since configuration is happening from int0, and tx0 is the only SEP
>>> with a ctrlport on it, does this suggest I need int0 to only be connect=
ed
>>> to tx0 in the connections and it doesn't need to go anywhere else? I wi=
ll
>>> note that I tried this and I received a message saying a route couldn't=
 be
>>> found for my remote streams. Is this maybe an oversight with remote
>>> streaming and sparse connectivity in the crossbar?
>>>
>>> I appreciate any insights you might be able to give.
>>>
>>> Thanks,
>>> Brian
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000008b24b90639f36504
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yeah, maybe. Can you post a bug on github with a mini=
mal image core YAML that should work, but doesn&#39;t?</div><div><br></div>=
<div>Thanks,</div><div>M</div></div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at=
 4:48=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">=
bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hey Martin,<div><br></div><div>Thanks f=
or the clarification. I understand I&#39;m pushing a lot of boundaries and =
I appreciate the time you&#39;re putting in to explain.</div><div><br></div=
><div>Going back to the route-not-found error, this configuration is not ne=
cessarily out of spec,=C2=A0I feel. I probably wasn&#39;t clear with the in=
tention there. For the current state of how I have things working:</div><di=
v><br></div><div>=C2=A0 - The arm runs a python script=C2=A0to initialize t=
he RFNoC graph and start streams. This all goes through int0.</div><div>=C2=
=A0 - SEP tx0 has a control port and is able to communicate the configurati=
ons and is the first SEP=C2=A0in the list</div><div>=C2=A0 - I have 8 RX SE=
P rx0-7, where rx0-3 have a connection in the crossbar to sfp0 and rx4-7 ha=
ve a connection in the crossbar to sfp1</div><div>=C2=A0 - All 8 RX SEP hav=
e a connection to and from int0</div><div>=C2=A0 - All SEPs are being set t=
o remotely stream</div><div><br></div><div>My issue arises when I remove th=
e RX SEP connections to/from int0 - I get that route-not-found error. My in=
clination is that since the RX SEPs only have an output data port and no ct=
rl port, it should be fine to only connect them in the crossbar to the TA t=
hey need to send their data.</div><div><br></div><div>Do you think it&#39;s=
 possible there is a bug in UHD when validating the destination is reachabl=
e it is not considering a remote streaming connection and is trying to conn=
ect back up to the SW endpoint?</div><div><br></div><div>Thanks,</div><div>=
Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Jul 10, 2025 at 6:19=E2=80=AFAM Martin Braun &lt;<a href=
=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
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
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 9, 2025 at 6:32=
=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" targe=
t=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m having a bit of a=
 hard time understanding the minimal requirements for the CHDR Crossbar and=
 connectivity.<div><br></div><div>I&#39;m working with an X440, so I have 3=
 transport adapters (int0, sfp0, sfp1), 2 blocks (radio0, radio1), 2 TX end=
points each with 4 ports (tx0, tx1), and 8 RX endpoints each with 1 port (r=
x[0-7]).</div><div><br></div><div>I have tx0 ctrlport enabled, and none of =
the other ctrlports are enabled. I know I want rx[0-3] to only ever stream =
out of sfp0, and I want rx[4-7] to only ever stream out of sfp1. I want tx0=
 and tx1 to both receive CHDR packets from sfp0 and sfp1. I will always con=
figure the device via int0.</div><div><br></div><div>I also notice that rfn=
oc_core_kernel has a parameter for CHDR_XBAR_PRESENT. The comment for the p=
arameter states: &quot;1 if the CHDR crossbar is present. If 0 then transpo=
rts are directly connected to SEPs&quot;.</div><div><br></div><div>Connecti=
ng everything through the crossbar even with a sparse routing matrix ends u=
p with around 18kLUT utilization.</div><div><br></div><div>Since I know I w=
ant this extremely fixed and rigid design, I&#39;ve got some questions:</di=
v><div><br></div><div>=C2=A0 - How much=C2=A0of the CHDR crossbar can I rem=
ove? Can I get rid of it altogether? Are there any examples of a design wit=
h no CHDR crossbar?</div><div><br></div><div>=C2=A0 - Can I combine the RX =
SEPs into a single port per SFP connection using an AXI-Streaming mux of so=
me type? Or is this accomplished in the same way in the crossbar with a spa=
rse routing matrix?</div><div><br></div><div>=C2=A0 - How would one connect=
 the multiple SEPs directly to the TA without going through the crossbar as=
 the CHDR_XBAR_PRESENT parameter suggests is possible? Is it possible to de=
scribe this in the yaml file or does it require hand editing the generated =
<a href=3D"http://rfnoc_image_core.sv" target=3D"_blank">rfnoc_image_core.s=
v</a> file?</div><div><br></div><div>=C2=A0 - Since configuration is happen=
ing from int0, and tx0 is the only SEP with a ctrlport on it, does this sug=
gest I need int0 to only be connected to tx0 in the connections and it does=
n&#39;t need to go anywhere else? I will note that I tried this and I recei=
ved a message saying a route couldn&#39;t be found for my remote streams. I=
s this maybe an oversight with remote streaming and sparse connectivity in =
the crossbar?</div><div><br></div><div>I appreciate any insights you might =
be able to give.</div><div><br></div><div>Thanks,</div><div>Brian</div></di=
v>
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
</blockquote></div>

--0000000000008b24b90639f36504--

--===============4869503411974804266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4869503411974804266==--
