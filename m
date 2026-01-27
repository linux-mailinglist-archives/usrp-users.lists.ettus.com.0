Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOhwOkgPeWmHuwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 20:17:28 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A927299BBB
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 20:17:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D0C2389790
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 14:17:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769541446; bh=rPLkn5iHGyJI2unoXTH1DEuPz9utIG8owRT8TKNSF5c=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MI/WLtYdxykNINErY5SAaKDQCCyrRomwKextrJxLl9OYvyIygjPt3Sp0+rGPmya18
	 0SFN/rRmOA04dKqr5CgpKY01dYNdfqMcQjRv0NjVo5KxzLlj762TzGpnPf4cAQ9E6u
	 XgBlsfVGRyp3WrmMN72GZi5e2GP37PJFWMfXTsOT/N3BJS8Ysfuzy+ZnaPWdvymu01
	 H7mzfy6XKmpVzPOUA0V7ExKpZaha9iphfJwRMXjwcVouxoLFgxJDkCfdhG+y/hfVf8
	 JfejolrqYimI/Lu9WDuzmJiQP5htiSvGcjsTNuSqEKEsj6nZDXVttBl5SrmAjEvBWv
	 BEJJalDDG42Ew==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 05870389659
	for <usrp-users@lists.ettus.com>; Tue, 27 Jan 2026 14:16:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WIkWssX2";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7947072d0f6so17734397b3.1
        for <usrp-users@lists.ettus.com>; Tue, 27 Jan 2026 11:16:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769541366; cv=none;
        d=google.com; s=arc-20240605;
        b=AEnHqGgyLU6nrVqGCcnDw+BbJ2k+hm455w4gFn9x0Me+qDHe/HqHIQ6M+sreOL74uT
         wHlddU/JT3TyyA2na1mOCTJSeBtGcOeGRNq6HUsR45PENbkz87F+d059TQxR4O5Rf/0J
         QBO2H3fSpO18WZ9YnVQloUUFCF/hMZQM+yMjsg3ddCv89hvztnu9h56xFjx71Z4JUHHB
         8nkUOkSMsotZUYvdKCD8dLUHnjJuG2l4zx9lAMy03xYzv02T0WHeHrkikkBbzAXAyEON
         5ryIytgoEk7M3pXEF0KVkMpBe7kstGv3Fh5r4ZiATzj9ljaGVqNBP3WWghtc8da0LaNC
         vKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9XiHkPFtd8Bm+KcXFe0lB7EE5TvYvxyZcsNe37KsAb4=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=HLHu+UwHAOPTDqrlNcanV4s/jdFd5VEN/xbE6T8+gfy3lLA6LV45dC1/OVniw/y5DD
         BRa32ba3MmiQPWDdolVetwz077CrQ+YJl+qg+MWxiMBLBuMOhqY0RACQUWM+Kw8ooelT
         mfocvn6LbgZrzk53iyXVsjl2gjMcHtMYtfLxkbRGj4XaMTxcLoUODFWqUlq4stLG5OzZ
         SpYqq+lqiBbAIgpfK6il5utdI1T+TbQ1CYa6t90TWB+jToq3/GasjFBqM8YxmCyiRf2U
         SXBYgWNW5ydpHQDQZGm3nqpFhTRvvXJBZ+RHCnxiRDNcIKNwL5kKueYGehAqMGPcg+aW
         KIyg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1769541366; x=1770146166; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9XiHkPFtd8Bm+KcXFe0lB7EE5TvYvxyZcsNe37KsAb4=;
        b=WIkWssX2me/aYggJ4CVfc03abYybj7V576K/aq8y0rbEQvvzKX4XP1OuqjNctqRfwv
         mS4gXj2Lgpu7FnVu3jR6ZfOTL2t5Q1UgXA84Cbd/TpeCx6R9Rs6OZNlbdHK88utaEl2T
         IowIOKv2+0FQbiTkp40dxjkOdDhykPbyOglkuZBnY91BQzEUVSDEXkUmx+4dZC4MpN6O
         qudXJgC3dGpa2sPRatWzeJeF5mEDk7UFMBQacXL0xTIB7fWmIY8t6cX55YUIDY2K6+wr
         s8b5TOfINXJlBfXAAiUQJo9q+R1BYjHvEP8VfIz5ZO+qYj7RI8cjFz8Y2RoD4ghHXVVW
         9b1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769541366; x=1770146166;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9XiHkPFtd8Bm+KcXFe0lB7EE5TvYvxyZcsNe37KsAb4=;
        b=eYbu1FROZ6Q1WHetahvYAsgeRzvI9Vqxm5F+IJ1lx6HRmbFOBW6tq+vg7WwrRut6FQ
         kD2M7S8bJ3J9mdG8B6KwfOhcvfFD5EBRFSU8XZgGMN4NCAc2fEH/JNJts7fSy9wUlssG
         1oxowqsETWwYAnnx+LK0F4VRNU/1KAwduYm3FWOeUU/9luL60XAP4dGCLfIn4JPxhUGH
         6nlmpK4TDp/iiuwO72ZFEfAWuI6St44WO7CGHJwzMFF7w9SsH4gWzyzae1/ncFkbL+M4
         3UPshmPV0c9MnaJmJZVAd35FbokCyO9c4PfFnSBntEff+Z3J1MaOSbGxvjs+BChugFga
         Epnw==
X-Gm-Message-State: AOJu0YyQIR3XJMtDH3t7DoTEsy81t7uvfxaJWj2wzasKWcyyb+QI2545
	U/6o/RkKzuU0liAOsnzfuJMy+cwEHfuxyZzRjYpJIm496sK9qZL48OKMcAywEZ5x+9kx1UBMy3s
	IVUaxFk/A8VMn7SCWIFnXp0m9DJX7ImNKSyK/vfOsODk68WXv3jWNuQ==
X-Gm-Gg: AZuq6aLrhJZL4ONpd6leiprOJA92iggGKyztTtWwMIlPaGw28qwxB/7MOx2/MYVv165
	lausKQDWG+Wm/e2oYw5FCUHtCOaSOHLC1nFzx+HV4vYYuGOcgSiiXCF+PBK36l1zvbfVFGStNhe
	hrqRFsXP+szUibU2STuTTSGsadMnymNvO0CTtkI2YtRloT3HwTeQoPJUlNQqfjG+feMMTbWR+ld
	/swkDKnhPRztwijopkQsWcPyGPpVJ4LjirDdfwvBfQDEELnRLMvrK4dulsqlnQi/nq3LZWaCcWh
	b6OGifIObwlBI2hLCi+A6kqlLpBDmEwdEg2AtQ==
X-Received: by 2002:a05:690c:e3ed:b0:794:1811:32dc with SMTP id
 00721157ae682-7947ac19023mr20086907b3.37.1769541366251; Tue, 27 Jan 2026
 11:16:06 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com> <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
Date: Tue, 27 Jan 2026 14:15:55 -0500
X-Gm-Features: AZwV_QiPuYZJ3eTV4tA9PStBy-iMr2WER0NF6nO5ODn7aZs6B0sJ8_i99UrmlhE
Message-ID: <CAB__hTRHDpGMBgGY3mWQW15NnmwW2xcE=LFXoHfOL9xmBr54ow@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: QIL2HUKELZMBKTXJRMQEAOVIKDERAMVG
X-Message-ID-Hash: QIL2HUKELZMBKTXJRMQEAOVIKDERAMVG
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QIL2HUKELZMBKTXJRMQEAOVIKDERAMVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5003680879552669993=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,mail.gmail.com:mid,aero.org:email,nd.edu:replyto,nd.edu:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: A927299BBB
X-Rspamd-Action: no action

--===============5003680879552669993==
Content-Type: multipart/alternative; boundary="0000000000008d2b8b06496374d2"

--0000000000008d2b8b06496374d2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think that you need to include the tx streamer arg "replay_buffered" or
perhaps "streamer=3Dreplay_buffered"

https://github.com/EttusResearch/uhd/blob/ab8ec9973324299828d48d7a27258939d=
d6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415


On Tue, Jan 27, 2026 at 1:59=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Thanks.  I saw notes that seem to indicate that option. Anyone at Ettus/N=
I
> care to chime in as to how to do it?  I found an example for E320 that
> shows an RFNoC .yml with a dram FIFO.  I could make one for N320, but it =
is
> not clear how to use it from gnuradio.
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, January 27, 2026 6:45 AM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>
>
> *Do not open links or attachments unless you recognize the sender. If
> unsure, click the Report Phish button or forward the email to OPSEC. *
> Hi Eugene,
> I "think" that the replay block can act as a FIFO in recent UHD images.
> But, there is a possibility I am wrong such that there is a build-time
> parameter that is needed to config this.  Another option would be DPDK if
> you are not already using it.
> Rob
>
> On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
> Hi,
>
> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has 1=
 GB
> of DRAM.  I am getting occasional underflows when streaming at 200 Msps,
> even though the CPU is not very loaded and easily meets the average
> throughput.
>
> I have done all the usual stuff =E2=80=94 isolated cores, pin threads to =
cores,
> etc.
>
> Is there a way to increase the default DRAM buffer size w/out rebuilding
> the FPGA image?
>
> Thanks.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000008d2b8b06496374d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think that you need to include the tx streamer arg &quot=
;replay_buffered&quot; or perhaps &quot;streamer=3Dreplay_buffered&quot;<di=
v><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/ab8ec=
9973324299828d48d7a27258939dd6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415=
">https://github.com/EttusResearch/uhd/blob/ab8ec9973324299828d48d7a2725893=
9dd6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415</a></div><div><br></div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jan 27, 2026 at 1:59=E2=80=AFPM Eugene Grayver=
 &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 class=3D"msg3838154123530424774">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.=C2=A0 I saw notes that seem to indicate that option. Anyone at Ettu=
s/NI care to chime in as to how to do it?=C2=A0 I found an example for E320=
 that shows an RFNoC .yml with a dram FIFO.=C2=A0 I could make one for N320=
, but it is not clear how to use it from gnuradio.</div>
<div id=3D"m_3838154123530424774appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_3838154123530424774divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossl=
er@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 6:45 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);padding=
:1em;font-size:10pt">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Eugene,
<div>I &quot;think&quot; that the replay block can act as a FIFO in recent =
UHD images.=C2=A0 But, there is a possibility I am wrong such that there is=
 a build-time parameter that is needed to config this.=C2=A0 Another option=
 would be DPDK if you are not already using it.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The default TX buffer for N32x is 128k samples =3D 512 kB.=C2=A0 The box ha=
s 1 GB of DRAM.=C2=A0 I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have done all the usual stuff =E2=80=94 isolated cores, pin threads to co=
res, etc.=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_3838154123530424774x_m_-8211984150526382119Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000008d2b8b06496374d2--

--===============5003680879552669993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5003680879552669993==--
