Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDqmOB+x2GljgwgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 10:13:19 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E61AC3D3D84
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 10:13:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 806533869AD
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 04:13:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775808797; bh=Zr4TBgzJQloKpomJig/csvKuO4b82grTMlgTUv4deao=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RVDS1aJzTIeUu+zgVGhyCQyn2nJRgoO4/OPfK4rHKfcdWqX3itTXTZmfS6T393OBM
	 uDObeXsdSMeidekxwGmjgGYvmfk+qRMmwt9qnmINFgDJ/FQLuEVO0SMrkoavZpqvwG
	 vu9YmUIwhr9ZxD+juozTQjagjbUMGRLPhcjGOei2Sxbzehe6jPYXtw1N/8xttEO/kJ
	 ZF15ONlQm5Rv6F3KT2S6wnfwTJrpV+2HhuhqeqdeS7bx6dAt7Is4j1VRnK+fJFqhAZ
	 KUyvVYnSwV118OC3M2MvP0bOBbgrEKS0tinpaUCKFzPTrQkIzOVYlGGREEFSJQznv3
	 NmK2gw+/9PEUg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 36E1338654E
	for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 04:12:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="VfGB+hVw";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8a032383008so20958426d6.1
        for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 01:12:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775808738; cv=none;
        d=google.com; s=arc-20240605;
        b=C8MK26hIqpwsir7R+XS3/IBorjt3+tLUh1F3U+X1DTbMJv2XG+pDASX/2nwI4O49o/
         I9lTY1JDF9119ssqcuIoLdP2o6Iuu7+kV81pmxn9UtGXt454ChGK79T/DZAYkqTbO7oj
         5nZE1SAik/eBhtUMxvMgsKvry4dKOXKBIKIegU3lErG3iI9lrEYr1ncMI/nO0IrIxyS3
         ar68GxJXl6NuzYDEEEUEmJzsWpSMjgCKSxSas3GJ34RXP30UAiTqf0FHFBU547M16nF/
         bOG5V2xFq/6wyOrFGqkUTvPgmwW6z9u0Om0vkKUZeMZkhzHzuPMkccvK8g8i4Hcze2uJ
         r30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=M3cYbisGL6l6LC4Dg5yQq9fousODl/8WrqIwOZ0NlgY=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=R+TvA2j/ZNhLZWfTWRpD3ivJSBSAK32NgS6WiaNXwy2TwCwGd+lVnM/0wXFZbL6qIG
         V7PaWYmUvY06y9qlXir2zyB3VJO9rPs9GfkTIxl4IpxAvz6QbNa3X5++IBUS0Hwkvzrc
         K5Pcc5HhoOi+/8rD7YXNTTTIfnQL3TPyY0nwazkung4FNNowg5Lc2ZbXlB1iW1Db8kkd
         67wcNQUDOCg3uU1JatSJwV2VCFjURGlznKVNaWk73+jKjG4dJ9V2vLUJitN2KYA6oHeG
         drLAaG6bAOu6T5VQyyn3m5JKa80zgW6o3yxsyut4xOND4p2GY7hnDdvgWvS46FgjZrrU
         xxGQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1775808738; x=1776413538; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M3cYbisGL6l6LC4Dg5yQq9fousODl/8WrqIwOZ0NlgY=;
        b=VfGB+hVwVPSlwY3klo2dHGN5Rg+mrktKt/j5A/gi97u2ZubCkwtgzdJA792fbtMG1u
         tV/LFCRxoBkHPpRuIiJsPztU12J+MMVYvQic+0Et28eGTe/WawBcGYQZBWdcdfQaa8US
         FtsRffOgubqiall7hktLW7Um+cUfRIJNkHHZeGWG6dL9KBHKoukNi81LfF0/8fvqru+m
         9yDi481MzCafAGiZPy/eh47K0pqMOIfWZBopf14fk1N32C654+/gOrYoCBLqO+pwy61A
         e/Sava8aQhnmRqMlVjOfaanRDtke4RuDV8Agt2EpetVtCqUF339dbTNPTOLtR5W8SmyA
         P5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775808738; x=1776413538;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3cYbisGL6l6LC4Dg5yQq9fousODl/8WrqIwOZ0NlgY=;
        b=IN+ID3W14lVoc5Ep9mqy1n0XqCnbLoQZnHaJXHDzq5MO0cm1cQ8YJe5nLidw11plYh
         B4MJI4q+gwGqGBckhA9xX7REg1SV/0xvU2B8NaYeRwce8DK/uVHpoLUzIY6W2lC//v8d
         0rZcket/I62a9q/+Y/SNh0mjQD0ddnQSSZvuG7BFiPLn0wJM4BZsA51+SJ49BQAkLx1R
         yiAddS0BPPJenfRAnNlXVCsVDN4IzEy9Ne3SbIOe17wBtoYE01a2ZjLFbfKTqkpf1RqC
         WJfJlIkGWJs3Yk6bAiA7edzjbVQDS6yMmMOzs+VTfFPLOAZ/DCzDrFuyc7ntSCdu6h+b
         C7ZA==
X-Gm-Message-State: AOJu0YwiQ+HK9VmU6XGfIB52xpmq5aTiHAUUeV1gv0LwBGCPEbzj6zTe
	UEZ5NGqtt0Pxe0Ct4h8p30DYRLJLZNb/KBlYV+4I+oH3GzE6ss2bNh/e2cfGwdKIhyaB3YzdWzK
	taWQ36M7xxxRa5D/NHkC2ONm4k2a68YSAUmgYFqOJ0PFcehGthYKP5HccxQ==
X-Gm-Gg: AeBDieuqJzH7V0Jbo0sQbRL/MhON99tYYwCk6D2mxYxuJLfFS2R7pYeU3HzWZPQ/eWW
	NE9C9xMjApwPIdhxeIM3bMhkKNQaFZQanVJfQDvDLfw1WA6Ti3K0cqvKIurn/2TzlpHN/dfrn8e
	thIFEgN31wDQ3FgV6gWMBT29FwOayUHSRJvKussyUiERfyIz36Xzho/8TKwAl7AacYLvTvnaCCD
	nqj21tICz/PwB/RpBETTVwJVxR9uEgXk/DG0waF8W99FcAJSklWBb7P1GpAHsZ7RCDwy5XW2vzB
	AyYsEfYeBBoU+7eaJixWl8YXfVDLE43sMNfRH4E=
X-Received: by 2002:a05:6214:528a:b0:8a4:5abc:6337 with SMTP id
 6a1803df08f44-8ac88490ea9mr18303386d6.36.1775808738341; Fri, 10 Apr 2026
 01:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <003701dcc78a$d01f51c0$705df540$@jku.at>
In-Reply-To: <003701dcc78a$d01f51c0$705df540$@jku.at>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 10 Apr 2026 10:12:06 +0200
X-Gm-Features: AQROBzBWnI5xYgkYTm7XZvsq4rT7AaStH9f6yfBErFipDdk-5fx7Bxt763JMoCM
Message-ID: <CAFOi1A6xEm1L9DhL1vLn14QgjGz0ooPYTnGehy8FztVcaM4n_g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: JGRHBYXCZCE5LQFIJJBI7RIZYP6PVGIB
X-Message-ID-Hash: JGRHBYXCZCE5LQFIJJBI7RIZYP6PVGIB
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440: Bypassing R2C conversion for analog I/Q capture
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JGRHBYXCZCE5LQFIJJBI7RIZYP6PVGIB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2845195529899246051=="
X-Spamd-Result: default: False [2.49 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jku.at:email,mail.gmail.com:mid,emwd.com:dkim,ettus.com:email]
X-Rspamd-Queue-Id: E61AC3D3D84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============2845195529899246051==
Content-Type: multipart/alternative; boundary="00000000000009c1a7064f16b12a"

--00000000000009c1a7064f16b12a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

the X440 was not built to be an IQ capture device. The sub-channel feature
was implemented for X420 (and technically, the answer is yes, the feature
is ready, but it is not used in X440 and won't be). While the X440
daughterboard (aka FBX) doesn't do much, the coupling to the ADC prevents
capturing signals all the way down to 0 Hz.

Now, you seem to know what you're doing based on the details you pointed
out in your email, so I'll say that changing the minimum frequency in the
line you pointed out won't break anything, but you're thoroughly in
un-tested and un-supported waters.

Which bandwidth are you operating at? If it's low enough, you could reverse
the NCO in the RFDC with the NCO in the DDC block.

--Martin

On Wed, Apr 8, 2026 at 9:07=E2=80=AFPM <daniel.baumgartner_1@jku.at> wrote:

> Hi everyone,
>
>
>
> I am working with a radar frontend that outputs a downconverted IF signal
> as separate analog I and Q streams, I want to capture both using a USRP
> X440.
>
> The challenge is that the X440 expects real signals at its physical ports=
.
> Internally, each channel performs a real-to-complex (R2C) conversion by
> sampling the real input and digitally mixing it using an NCO.
>
> My initial approach was to connect the analog I signal to CH0 and the
> analog Q signal to CH1. I planned to create a custom RFNoC OOT block that
> simply stitches them together: It would take the real part of the CH0
> stream to form the I component of the output, and the real part of the CH=
1
> stream to form the Q component.
>
> For this simple routing logic to work, the NCO frequency must be set to 0
> Hz. However, UHD restricts the NCO frequency to a minimum of 1 MHz, so th=
is
> approach fails. While I don't mind the spectral shift caused by a >1 MHz
> NCO, the complex mixing would force my RFNoC block to perform additional
> arithmetic (addition and subtraction for each sample) to untangle the
> signals, rather than just passively routing them.
>
>
>
> So, I have some questions:
>
>    - Can I set the minimum frequency of the NCO to 0Hz (here
>    <https://github.com/EttusResearch/uhd/blob/dd41a0801f185264cd0af1fb8a3=
ab1306db310b2/host/lib/include/uhdlib/usrp/dboard/fbx/fbx_constants.hpp#L34=
>)
>    and recompile UHD and expect it to work?
>    - In the commit history I have seen you are working on a sub-channels
>    feature (here: 5165c21
>    <https://github.com/EttusResearch/uhd/commit/5165c21740cbba0d134921fb0=
ff8f8c2a7958a1a>,
>    5bd1cf3
>    <https://github.com/EttusResearch/uhd/commit/5bd1cf34595e545cf0d490fec=
31e5ee8ea4fe4a5>,
>    5eaff4e
>    <https://github.com/EttusResearch/uhd/commit/5eaff4efc1e96c45aac861393=
592a358e834e35f>)
>    which would solve all my needs. Is this feature ready? If yes, how can=
 I
>    use it?
>
>
>
>
>
> Best regards and thanks in advance!
>
> Daniel Baumgartner
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000009c1a7064f16b12a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Daniel,</div><div><br></div><div>the X440 was not =
built to be an IQ capture device. The sub-channel feature was implemented f=
or X420 (and technically, the answer is yes, the feature is ready, but it i=
s not used in X440 and won&#39;t be).=C2=A0While the X440 daughterboard (ak=
a FBX) doesn&#39;t do much, the coupling to the ADC prevents capturing sign=
als all the way down to 0 Hz.</div><div><br></div><div>Now, you seem to kno=
w what you&#39;re doing based on the details you pointed out in your=C2=A0e=
mail, so I&#39;ll say that changing the minimum frequency in the line you p=
ointed out won&#39;t break anything, but you&#39;re thoroughly in un-tested=
 and un-supported waters.</div><div><br></div><div>Which bandwidth are you =
operating at? If it&#39;s low enough, you could reverse the NCO in the RFDC=
 with the NCO in the DDC block.</div><div><br></div><div>--Martin</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Apr 8, 2026 at 9:07=E2=80=AFPM &lt;<a href=3D"mai=
lto:daniel.baumgartner_1@jku.at">daniel.baumgartner_1@jku.at</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"m=
sg-69074282032940456"><div lang=3D"DE-AT" style=3D"overflow-wrap: break-wor=
d;"><div class=3D"m_-69074282032940456WordSection1"><p class=3D"MsoNormal">=
<span lang=3D"EN-US">Hi everyone,<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">I am working with a radar frontend that outputs =
a downconverted IF signal as separate analog I and Q streams, I want to cap=
ture both using a USRP X440.<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">The challenge is that the X440 expects real signals a=
t its physical ports. Internally, each channel performs a real-to-complex (=
R2C) conversion by sampling the real input and digitally mixing it using an=
 NCO.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">M=
y initial approach was to connect the analog I signal to CH0 and the analog=
 Q signal to CH1. I planned to create a custom RFNoC OOT block that simply =
stitches them together: It would take the real part of the CH0 stream to fo=
rm the I component of the output, and the real part of the CH1 stream to fo=
rm the Q component.<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">For this simple routing logic to work, the NCO frequency must =
be set to 0 Hz. However, UHD restricts the NCO frequency to a minimum of 1 =
MHz, so this approach fails. While I don&#39;t mind the spectral shift caus=
ed by a &gt;1 MHz NCO, the complex mixing would force my RFNoC block to per=
form additional arithmetic (addition and subtraction for each sample) to un=
tangle the signals, rather than just passively routing them.<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">So, I have some quest=
ions:<u></u><u></u></span></p><ul style=3D"margin-top:0cm" type=3D"disc"><l=
i class=3D"m_-69074282032940456MsoListParagraph" style=3D"margin-left:0cm">=
<span lang=3D"EN-US">Can I set the minimum frequency of the NCO to 0Hz (<a =
href=3D"https://github.com/EttusResearch/uhd/blob/dd41a0801f185264cd0af1fb8=
a3ab1306db310b2/host/lib/include/uhdlib/usrp/dboard/fbx/fbx_constants.hpp#L=
34" target=3D"_blank">here</a>) and recompile UHD and expect it to work?<u>=
</u><u></u></span></li><li class=3D"m_-69074282032940456MsoListParagraph" s=
tyle=3D"margin-left:0cm"><span lang=3D"EN-US">In the commit history I have =
seen you are working on a sub-channels feature (here: <a href=3D"https://gi=
thub.com/EttusResearch/uhd/commit/5165c21740cbba0d134921fb0ff8f8c2a7958a1a"=
 target=3D"_blank">5165c21</a>, <a href=3D"https://github.com/EttusResearch=
/uhd/commit/5bd1cf34595e545cf0d490fec31e5ee8ea4fe4a5" target=3D"_blank">5bd=
1cf3</a>, <a href=3D"https://github.com/EttusResearch/uhd/commit/5eaff4efc1=
e96c45aac861393592a358e834e35f" target=3D"_blank">5eaff4e</a>) which would =
solve all my needs. Is this feature ready? If yes, how can I use it?<u></u>=
<u></u></span></li></ul><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Best re=
gards and thanks in advance!<u></u><u></u></span></p><p class=3D"MsoNormal"=
>Daniel Baumgartner<u></u><u></u></p></div></div>__________________________=
_____________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000009c1a7064f16b12a--

--===============2845195529899246051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2845195529899246051==--
