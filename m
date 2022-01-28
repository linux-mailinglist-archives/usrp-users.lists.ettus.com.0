Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5502849FD3A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 16:57:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21404384955
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 10:57:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kK2cFobx";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C693C380C71
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 10:38:50 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id w8so5842794qkw.8
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 07:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=uobpe8OD6v/TpJKrIftyLwaK+NxWCqxS67MgLs5qGPo=;
        b=kK2cFobxFQYFXrSjZfw1oAe7purc+uOtX1yU4gId0orHnPvTt1wKhj7DZKDnJr1e/G
         fWYgSeF8UOycEM0bCSr7guSudPVlf4823kD064yn/jFq2s0Y8KemrKlhPv/QAWE3NxbQ
         jOAFj0SPIBj0xzwAJp3aeFQWMaPtgvjh+x+UFtNcBGjLvLY0y+3vTpUkVGILk+nHbHs9
         NUmOSOJrOiToaHyU4xeRuUFXwwYz41670ZFeG9rydydK5eSEDG3Mk17kb9frbK1T+35M
         pF1BTPw/InfEu/wf/oeFS1kSPY0cwDT3mYqcapVYwUiMDg4sSdPNQr4TLWBsqhF641MP
         Fx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=uobpe8OD6v/TpJKrIftyLwaK+NxWCqxS67MgLs5qGPo=;
        b=ogeqqjCNxfBOdT6ZqLs9gJkYY2hzcYeCkTACvfB0yXT3Qhquv5CJAhoqWVGFApdG7c
         F8K+rxOllEi9Mzp6yUQgIGv9uWil3UYaBNCxOK1dy4LlvBE/zM7AWac5q5yU1gm1uxtI
         x5bSmVVK+0NTkU5ugvQb/PThwRE5jNOOlKc9JKnwraWBcLLXpjC1EYKNYszupQzQ9W5u
         hcB6LA2ND0KcyE3h8GUFBE15mknHwPW85/N7xDBwsgqfr8NzDzJagXocEWx4DS9bHtES
         Ds86eV12acTtj1p+guNf5GvmG6/r4cQfpDmuKGs6G5EAAK/iwBJiDe6azKiaRJJFTIBN
         AIRQ==
X-Gm-Message-State: AOAM530k6rmx409jS430TBVuT2RfXNOihZcPdxKbgr8NbWLekLFQEviK
	7NisSG9IuO6bmLZEhLUp9wI=
X-Google-Smtp-Source: ABdhPJyxcaDtfnfEVTDM8VYmFA4cE3zHw1WC+Smiz++G8HZwyfMJjFWqk05zoOxAT4Mouy9dDhB2Ig==
X-Received: by 2002:a05:620a:7e7:: with SMTP id k7mr6124834qkk.268.1643384330204;
        Fri, 28 Jan 2022 07:38:50 -0800 (PST)
Received: from smtpclient.apple ([2600:380:9016:7bf6:2906:c8db:c7b9:d69b])
        by smtp.gmail.com with ESMTPSA id s9sm1475556qkp.96.2022.01.28.07.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jan 2022 07:38:49 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 28 Jan 2022 10:38:47 -0500
Message-Id: <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com>
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
In-Reply-To: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19C63)
Message-ID-Hash: CN6XI7BT43PQVCQACDLKKAU7RJKS2MII
X-Message-ID-Hash: CN6XI7BT43PQVCQACDLKKAU7RJKS2MII
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CN6XI7BT43PQVCQACDLKKAU7RJKS2MII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8279713875748748750=="


--===============8279713875748748750==
Content-Type: multipart/alternative; boundary=Apple-Mail-F96772B8-74F3-4880-80E3-C5C9F7C3A03E
Content-Transfer-Encoding: 7bit


--Apple-Mail-F96772B8-74F3-4880-80E3-C5C9F7C3A03E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to include=
 the enable switch for each LO distribution port. Thank you for the informat=
ion.

I am now having synchronization issues with the transmit stream in the GNURa=
dio. It appears as though the radio channels are not starting at the same ti=
me. Are you aware of any commands that you=E2=80=99ve had to run from extern=
al applications that ensure the start time for both transmitters is the same=
?

<end transmission>

> On Jan 14, 2022, at 17:30, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Just 1x, I believe.
>=20
>> On Fri, Jan 14, 2022 at 5:27 PM Paul Atreides <maud.dib1984@gmail.com> wr=
ote:
>> doing it now. is the LO frequency the carrier freq or is it 1/2 or 2x?
>>=20
>>> On Fri, Jan 14, 2022 at 5:03 PM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>>> On 2022-01-14 17:00, Paul Atreides wrote:
>>> > That's what I had originally.
>>> > i've Changed back to this and still getting no LED on the TX LO OUT0:
>>> > RF0
>>> > LO Source internal
>>> > LO export True
>>> > RF1
>>> > LO Source external
>>> > LO export False
>>> >
>>> > the generated flowgraph code looks to be reflecting  is:
>>> >         self.uhd_usrp_sink_0.set_clock_source('external', 0)
>>> >         self.uhd_usrp_sink_0.set_time_source('external', 0)
>>> >         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>>> > self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))
>>> >
>>> >         self.uhd_usrp_sink_0.set_center_freq(freq, 0)
>>> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
>>> >         self.uhd_usrp_sink_0.set_gain(gain_0, 0)
>>> >
>>> >         self.uhd_usrp_sink_0.set_lo_source('internal', uhd.ALL_LOS, 0)=

>>> >         self.uhd_usrp_sink_0.set_lo_export_enabled(True, uhd.ALL_LOS, 0=
)
>>> >         self.uhd_usrp_sink_0.set_center_freq(freq, 1)
>>> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
>>> >         self.uhd_usrp_sink_0.set_gain(gain_1, 1)
>>> >
>>> >         self.uhd_usrp_sink_0.set_lo_source('external', uhd.ALL_LOS, 1)=

>>> >         self.uhd_usrp_sink_0.set_lo_export_enabled(False, uhd.ALL_LOS,=
 1)
>>> >
>>>=20
>>> I wonder if this is just a case of the LO export LED code isn't there in=
=20
>>> that version of UHD?
>>>=20
>>> Can you confirm presence of the LO signal with a spectrum analyser or=20=

>>> similar?
>>>=20
>>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F96772B8-74F3-4880-80E3-C5C9F7C3A03E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Rob, I=E2=80=99ve been able to extend the f=
unctionality of gr-uhd to include the enable switch for each LO distribution=
 port. Thank you for the information.<div><br></div><div>I am now having syn=
chronization issues with the transmit stream in the GNURadio. It appears as t=
hough the radio channels are not starting at the same time. Are you aware of=
 any commands that you=E2=80=99ve had to run from external applications that=
 ensure the start time for both transmitters is the same?</div><div><br></di=
v><div>&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-c=
olor: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div><div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Jan 14, 2022, at 17:30, Rob Koss=
ler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Just 1x, I believe.</d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Jan 14, 2022 at 5:27 PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@g=
mail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">doing it now. is the LO freque=
ncy the carrier freq or is it 1/2 or 2x?<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 14, 2022 at 5:03 PM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bla=
nk">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On 2022-01-14 17:00, Paul Atreides wrote:<br>
&gt; That's what I had originally.<br>
&gt; i've Changed back to this and still getting no LED on the TX LO OUT0:<b=
r>
&gt; RF0<br>
&gt; LO Source internal<br>
&gt; LO export True<br>
&gt; RF1<br>
&gt; LO Source external<br>
&gt; LO export False<br>
&gt;<br>
&gt; the generated flowgraph code looks to be reflecting&nbsp; is:<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_sink_0.set_clo=
ck_source('external', 0)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_time_source('exter=
nal', 0)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_samp_rate(samp_rat=
e)<br>
&gt; self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_center_freq(freq, 0=
)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_antenna('TX/RX', 0=
)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_gain(gain_0, 0)<br=
>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_lo_source('interna=
l', uhd.ALL_LOS, 0)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_lo_export_enabled(=
True, uhd.ALL_LOS, 0)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_center_freq(freq, 1=
)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_antenna('TX/RX', 1=
)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_gain(gain_1, 1)<br=
>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_lo_source('externa=
l', uhd.ALL_LOS, 1)<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sink_0.set_lo_export_enabled(=
False, uhd.ALL_LOS, 1)<br>
&gt;<br>
<br>
I wonder if this is just a case of the LO export LED code isn't there in <br=
>
that version of UHD?<br>
<br>
Can you confirm presence of the LO signal with a spectrum analyser or <br>
similar?<br>
<br>
<br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-F96772B8-74F3-4880-80E3-C5C9F7C3A03E--

--===============8279713875748748750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8279713875748748750==--
