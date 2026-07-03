Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nPWIMjSgR2oEcgAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 03 Jul 2026 13:42:44 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D1C701F56
	for <lists+usrp-users@lfdr.de>; Fri, 03 Jul 2026 13:42:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=Ms6wexLi;
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=s702G04T;
	dmarc=none;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9672386A34
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2026 07:42:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1783078962; bh=dhYbfB+T6YT1+AHp3CTUnSN4JsdK0evYj+F957zabBU=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ms6wexLiVpgEw1UM/iWAhHs5dPHWzwp91+BQ4zbkyEegMGHptWjg3lmO1z4huIVsO
	 mv+9hbnWtjntPPXgwrG93KVFxORbpXUYFq5QAPlEzBRkoHqiXR6dBQdUU3Hk4imbDK
	 cqRfxjjLG6Px41WQxmGElH0II+6vjMyquGfPZ4xqks02BRnGdRWRP2VZttb21x5n7P
	 OJg4sThPjmuxNMKJQFOtbcdDxsYSZRsn+22SqNyKq2sBugD07eibussgbM0s7xjJZZ
	 +mKm6I0lA5E5Rz84W7oJQOBBA/nGL1G84BiZsqi1kjgFnCUncydkJwYvi16x1QVUk9
	 gKLisZHZioofg==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id B37CD38697D
	for <usrp-users@lists.ettus.com>; Fri,  3 Jul 2026 07:42:26 -0400 (EDT)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8eefd0c5f59so2989986d6.3
        for <usrp-users@lists.ettus.com>; Fri, 03 Jul 2026 04:42:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783078946; cv=none;
        d=google.com; s=arc-20260327;
        b=di0hJvTTI9Iv6QPzyTnXVIofKyDCbxXGLd8M5ZgE0sz6MeZ/mGKXpdO1UDxSES4tl1
         2odc/CcpC9Ie+kBFL2mmWw07iN1CK+4MtOeA/2e5OOYROK6+2lsvALTVo8da+Szcu5y9
         GL5ogW4K4umjPHy+KGUmlLS0Exm4r+F9uNJnGBA8T2ZFZBrQANmy7riGWEoEgR7c4ER2
         zdDkLOZ9ExP0RhWYLZtKyxVEJql5cwm2lyhe5DqL8SBuxgOsVxrqmpZk1ZourxI5pMET
         zofKvflk2kDAKUadWKLsS27W9FFi5a/D1QwwrHhWnlfkBqxLv6DLUlZa1bTAPVX7SgUt
         JzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=HddCDWIVQsKclg6TjiS1wRVe0U6Z5T6Fvb9qK/YFZJg=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=qDl3HuEI/yMzYxUwXtf0rMkAOZ6To8sPdgeJ7u5WMCs/so8pyBjWAQphnDAzDgBwqw
         Fe4nS2X8+x/6l0SR2w0G7Mr1hEo/mTxUBiMxuHKswaVQmEC/x5GOUe/12CKu/Yqq5HO1
         VUPQ67ZLKGOH8a5XdLENLxckagl81y+wdpX3mpRh+V8pxi6JGZmxjlk372pjymZ0nl83
         6wIkBcHawODmVDdZwGwyx0BTbRTvSsEvG7XlJXYeLC7LGu/D9jGKuUlgeggfV/0Lyo4m
         d/fbDEAPgjOX4gk6nIM19wZypw3X9p7hTENp5TkIFhfw0O1tuoS/Op+9tHJIxEaoLGbb
         16Fw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1783078946; x=1783683746; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HddCDWIVQsKclg6TjiS1wRVe0U6Z5T6Fvb9qK/YFZJg=;
        b=s702G04T/PsVBudJGFof21w6n08Mr8sjmksF3KHz+DVLDZpK/Lo3VymDgCVmw02hFY
         SwqkHDysoPdl13EOb+CYm2/1LNyYMxqJvTQxsnIZ+MZwWwizz/beF3V/scnW78tSIkyO
         CScndGeb3S5JnxGqKy0cVPq6XIesMqiJsbJjpgfO/M0QiIYjbTIIvC+FxSkxGvZcMXTm
         9ymF8auOYHG/W4c7c11vFEsHzwIrVgLI7JXpHanf0R6KBxN7x8eaxuM8Po8gxUh3O+zt
         lEGxKBCvCYNgwoxYR2JIkr/YDOP5Mpcf3738dqZ8n0QPJW+kLj2UkxfkHumXCRsgYxY5
         Itbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783078946; x=1783683746;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HddCDWIVQsKclg6TjiS1wRVe0U6Z5T6Fvb9qK/YFZJg=;
        b=kYrJBQzD8d+deX1tGeOmOmA+CPcb4c08Kvt/PRZmh2iMzwvEcvuu3NlZDztRrFQqwH
         /z+IjHdr8NCAUwKNs+T3G5ncy0GeWXshDPkKvv5xWMUZw+8NtMyGYwIeftA4fLafXr4F
         rmXUgdLiKylEQvFHp1JqR7Y8oPzTc1WvaKPQNFMw/ZHQCafoCmAD21sANUiMMvHFiJir
         G7aV1PI9YZh5tTAR6CxjJ0kT9ZrZsoVM/dve1784jCF40j+t8e3HKH+kl1ojpn2aJyHP
         cw3p1XmQFbgiov4JwbxOF81rhWX4t802Ie6ccMrSdwEHDnZCdlbTXsccb2Y1GwdaNkZn
         U6hw==
X-Gm-Message-State: AOJu0YymgbdN3zarNsy0QfwUnPklECREABRT3A6o0jQtNgMJHeJDLwJ8
	oy7+5mpoWRuDcgFKEI5rBm/6FjLd8ByDLMh77YXqc5Ebm0diCCDZtmk5QjwyN6bHmakCab3yunC
	IvFxt24YaKiG8YbhhuWk1C1lqO6RPGoGjH/wO/eTW+de4i3Z5wot1PQsHBw==
X-Gm-Gg: AfdE7cmsUUhtZsxriBvJQ1HSHIJhSlUDtHlyrwMU9J30wU1W1vPboCAZ8pVMorgbBd3
	DN5Fu/lIYe3MUgxSx2UfUvYDzQUiwXQp2zAcFTkXD7j3exeT4Ssk6W0SvXad7OXeRbVZVzk22s7
	uH3vc600IXZNGAksn9gG4hkUoaehUjLgmmi7bSifCCAFb2uBps2uKESPCza/8pgjn/+6snFeiIV
	QW5q+tf89ZyO4iFitbRjxcOIbd02AVjiSUuxvXFMJEkFvgYBtFCPJVmKn86L0HQFzKVEno=
X-Received: by 2002:a05:6214:3007:b0:8e1:694a:73d7 with SMTP id
 6a1803df08f44-8f42305274dmr126759926d6.24.1783078945867; Fri, 03 Jul 2026
 04:42:25 -0700 (PDT)
MIME-Version: 1.0
References: <CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.PROD.OUTLOOK.COM>
 <f1385f4d-b9db-4db5-9882-e4665b38dd02@gmail.com>
In-Reply-To: <f1385f4d-b9db-4db5-9882-e4665b38dd02@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 3 Jul 2026 13:42:14 +0200
X-Gm-Features: AVVi8CeuNGxRkKXBINCdRD4R4s7cbuhiMIDtHp0-N9r6E5PKrlzsMfHTU3mn6BY
Message-ID: <CAFOi1A6DUczsx6c81+9cuQK=NH9L-oYRp3PLoPsbh8HWibUXsA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 6FBRRQ4U7JOZNY2BW3RJ5TUTBBKK545W
X-Message-ID-Hash: 6FBRRQ4U7JOZNY2BW3RJ5TUTBBKK545W
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX Daughterboard HF Band Performance vs. USRP X410 for 1-30 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FBRRQ4U7JOZNY2BW3RJ5TUTBBKK545W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6197783989386424900=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	DMARC_NA(0.00)[ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns,saltenna.com:url,saltenna.com:email,ettus.com:from_mime,ettus.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05D1C701F56

--===============6197783989386424900==
Content-Type: multipart/related; boundary="0000000000002d44e20655b36bed"

--0000000000002d44e20655b36bed
Content-Type: multipart/alternative; boundary="0000000000002d44e20655b36bec"

--0000000000002d44e20655b36bec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Urban,

In case there's a misunderstanding here: The X410 does real sampling at an
IF, i.e., *not* direct sampling. Maybe you're thinking of the X440? If
you're using the X440, then you definitely need good filters.

On the X310, there's also the option to do direct sampling with the BasicRX
or LFRX boards. There, too, you need prefiltering, but you remove a lot of
complexity from the analog frontends (but there's no gain available, so
maybe you want to add prefiltering + some amps).

--M

On Tue, Jun 30, 2026 at 6:35=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2026-06-30 12:07, Urban Hakansson wrote:
>
> Hello usrp-users community,
> I am evaluating hardware options for a project operating across the HF
> band (specifically 1=E2=80=9330 MHz). We are deciding between adapting an=
 X300/X310
> with a UBX daughterboard or stepping up to the USRP X410.
> While we know the X410 covers this range natively, its 4 TX/RX channels
> are more than our project requires. We are trying to determine if the
> X410's lower frequency floor provides a massive real-world performance le=
ap
> over a filtered UBX system for a 1-channel or 2-channel deployment.
> I have been reviewing the Ettus KB application note: "Experiments with th=
e
> UBX Daughterboard in the HF Band." The document shows that with careful
> flow-graph design and external pre-filtering, the UBX delivers quite good
> HF performance despite its nominal 10 MHz limit.
> I have a few questions for anyone who has pushed the UBX into the HF band
> or compared it to the X410:
>
>    1. Pre-Filtering Selection: The KB note mentions an FM-trap and 3-pole
>    LP filters but does not name specific parts. I am looking at Mini-Circ=
uits
>    components to build this front-end filter chain. Has anyone successful=
ly
>    deployed specific Mini-Circuits part numbers for this exact UBX setup?
>    Examples: Mini=E2=80=91Circuits VLF=E2=80=9145+, Mini=E2=80=91Circuits=
 NSBP=E2=80=91108+,
>    Mini=E2=80=91Circuits ZX75LP=E2=80=9150+.
>
> I'm the guy who wrote that app-note, years and years ago now.  I can't
> remember which pre-filters I used, and they weren't mini-circuits, but I'=
m
> sure they have
>   close to what you need.    For the FM-trap, I used a consumer
> part--typical in the CATV/SATTV market--literally available on Amazon las=
t
> time I checked.  If you search
>   on "FM bandstop" you'll find several examples.
>
>
>    1.
>    2. Unpublished Performance Data: Does anyone have characterization
>    figures, noise floor comparisons, or empirical data regarding UBX
>    performance specifically between 1=E2=80=9310 MHz when bypassing/worki=
ng around the
>    LO constraints?
>
> I didn't gather any detailed performance data at the time.   Noise figure
> won't be horrible, but I'll point out that for over-the-air operations in
> most of HF, you aren't
>   limited by receiver noise, but rather galactic background noise, which
> can, at the lower end, be equivalent to about 50,000-100,000K---MUCH larg=
er
> than you'll
>   find in the front-end of ANY modern receiver.
>
>
>    1.
>    2. UBX vs. X410 Direct Sampling: In practical HF deployment, how much
>    dynamic range or noise figure advantage does the X410=E2=80=99s direct=
-sampling
>    architecture buy you over a UBX using DDC workarounds and aggressive
>    external filtering?
>
> This I don't know.   It certainly is the case that for HF over-the-air
> operations, high dynamic range is a requirement, because you can have ver=
y
> loud signals right at
>   the edge of your passband.  I'll note that the receive-path ADC is
> 14-bits on an X310, whereas on the X410, it's only 12-bits.   This lowers
> your dynamic range by
>   about 12dB, typically.  I don't have access to the schematics right now=
,
> so I don't recall whether there are any pre-amps in front of the ADCs on
> the X410.  If NOT, then
>   you'd need some gain ahead of the on the X410 to compensate for the poo=
r
> noise figure of a naked ADC.
>
>
>
> Any insights, test results, or design pitfalls you can share regarding HF
> performance on these two platforms would be highly appreciated.
> Best regards
>
> Urban Hakansson
>
> Principal DSP / Communications System Engineer  Saltenna Inc.
> M: 410-980-4577, E: urban.hakansson@saltenna.com W: www.saltenna.com
> [image: image.png]
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002d44e20655b36bec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Urban,</div><div><br></div><div>In case there&#39;=
s a misunderstanding here: The X410 does real sampling at an IF, i.e., *not=
* direct sampling. Maybe you&#39;re thinking of the X440? If you&#39;re usi=
ng the X440, then you definitely need good filters.</div><div><br></div><di=
v>On the X310, there&#39;s also the option to do direct sampling with the B=
asicRX or LFRX boards.=C2=A0There, too, you need prefiltering, but you remo=
ve a lot of complexity from the analog frontends (but there&#39;s no gain a=
vailable, so maybe you want to add prefiltering=C2=A0+ some amps).</div><di=
v><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_c=
ontainer"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 30, 2026 at 6:3=
5=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
>patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2026-06-30 12:07, Urban Hakansson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr" style=3D"font-family:&quot;Google Sans&quot;,Roboto,=
Arial,sans-serif;font-size:16px;color:rgb(0,0,0)">
        Hello usrp-users community,</div>
      <div style=3D"text-align:left;text-indent:0px;margin:12px 0px 16px;fo=
nt-family:&quot;Google Sans&quot;,Roboto,Arial,sans-serif;font-size:16px;co=
lor:rgb(0,0,0)">
        I am evaluating hardware options for a project operating across
        the HF band (specifically 1=E2=80=9330 MHz). We are deciding betwee=
n
        adapting an X300/X310 with a UBX daughterboard or stepping up to
        the USRP X410.</div>
      <div style=3D"text-align:left;text-indent:0px;margin:12px 0px 16px;fo=
nt-family:&quot;Google Sans&quot;,Roboto,Arial,sans-serif;font-size:16px;co=
lor:rgb(0,0,0)">
        While we know the X410 covers this range natively, its 4 TX/RX
        channels are more than our project requires. We are trying to
        determine if the X410&#39;s lower frequency floor provides a massiv=
e
        real-world performance leap over a filtered UBX system for a
        1-channel or 2-channel deployment.</div>
      <div style=3D"text-align:left;text-indent:0px;margin:12px 0px 16px;fo=
nt-family:&quot;Google Sans&quot;,Roboto,Arial,sans-serif;font-size:16px;co=
lor:rgb(0,0,0)">
        I have been reviewing the Ettus KB application note:
        &quot;Experiments with the UBX Daughterboard in the HF Band.&quot; =
The
        document shows that with careful flow-graph design and external
        pre-filtering, the UBX delivers quite good HF performance
        despite its nominal 10 MHz limit.</div>
      <div style=3D"text-align:left;text-indent:0px;margin:12px 0px 16px;fo=
nt-family:&quot;Google Sans&quot;,Roboto,Arial,sans-serif;font-size:16px;co=
lor:rgb(0,0,0)">
        I have a few questions for anyone who has pushed the UBX into
        the HF band or compared it to the X410:</div>
      <ol start=3D"1" style=3D"text-align:left;margin:12px 0px 16px">
        <li style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-=
serif;font-size:16px;color:rgb(0,0,0);margin:0px 0px 12px">
          <div role=3D"presentation"><span style=3D"font-weight:700">Pre-Fi=
ltering
              Selection:</span>=C2=A0The KB note mentions an FM-trap and
            3-pole LP filters but does not name specific parts. I am
            looking at Mini-Circuits components to build this front-end
            filter chain. Has anyone successfully deployed specific
            Mini-Circuits part numbers for this exact UBX setup?=C2=A0</div=
>
          <div dir=3D"ltr" role=3D"presentation">Examples: Mini=E2=80=91Cir=
cuits
            VLF=E2=80=9145+, Mini=E2=80=91Circuits NSBP=E2=80=91108+, Mini=
=E2=80=91Circuits ZX75LP=E2=80=9150+.</div>
        </li>
      </ol>
    </blockquote>
    I&#39;m the guy who wrote that app-note, years and years ago now.=C2=A0=
 I
    can&#39;t remember which pre-filters I used, and they weren&#39;t
    mini-circuits, but I&#39;m sure they have<br>
    =C2=A0 close to what you need.=C2=A0 =C2=A0 For the FM-trap, I used a c=
onsumer
    part--typical in the CATV/SATTV market--literally available on
    Amazon last time I checked.=C2=A0 If you search<br>
    =C2=A0 on &quot;FM bandstop&quot; you&#39;ll find several examples.<br>
    <br>
    <blockquote type=3D"cite">
      <ol start=3D"1" style=3D"text-align:left;margin:12px 0px 16px">
        <li style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-=
serif;font-size:16px;color:rgb(0,0,0);margin:0px 0px 12px"><br>
        </li>
        <li style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-=
serif;font-size:16px;color:rgb(0,0,0);margin-right:0px;margin-left:0px">
          <div role=3D"presentation"><span style=3D"font-weight:700">Unpubl=
ished
              Performance Data:</span>=C2=A0Does anyone have characterizati=
on
            figures, noise floor comparisons, or empirical data
            regarding UBX performance specifically between 1=E2=80=9310 MHz=
 when
            bypassing/working around the LO constraints?</div>
        </li>
      </ol>
    </blockquote>
    I didn&#39;t gather any detailed performance data at the time.=C2=A0 =
=C2=A0Noise
    figure won&#39;t be horrible, but I&#39;ll point out that for over-the-=
air
    operations in most of HF, you aren&#39;t<br>
    =C2=A0 limited by receiver noise, but rather galactic background noise,
    which can, at the lower end, be equivalent to about
    50,000-100,000K---MUCH larger than you&#39;ll<br>
    =C2=A0 find in the front-end of ANY modern receiver.<br>
    <br>
    <blockquote type=3D"cite">
      <ol start=3D"1" style=3D"text-align:left;margin:12px 0px 16px">
        <li style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-=
serif;font-size:16px;color:rgb(0,0,0);margin-right:0px;margin-left:0px">
          <div dir=3D"ltr" role=3D"presentation"><br>
          </div>
        </li>
        <li style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-=
serif;font-size:16px;color:rgb(0,0,0);margin:0px 0px 12px">
          <span style=3D"font-weight:700" role=3D"presentation">UBX vs.
            X410 Direct Sampling:</span>=C2=A0In practical HF deployment, h=
ow
          much dynamic range or noise figure advantage does the X410=E2=80=
=99s
          direct-sampling architecture buy you over a UBX using DDC
          workarounds and aggressive external filtering?</li>
      </ol>
    </blockquote>
    This I don&#39;t know.=C2=A0 =C2=A0It certainly is the case that for HF
    over-the-air operations, high dynamic range is a requirement,
    because you can have very loud signals right at<br>
    =C2=A0 the edge of your passband.=C2=A0 I&#39;ll note that the receive-=
path ADC is
    14-bits on an X310, whereas on the X410, it&#39;s only 12-bits.=C2=A0 =
=C2=A0This
    lowers your dynamic range by<br>
    =C2=A0 about 12dB, typically.=C2=A0 I don&#39;t have access to the sche=
matics
    right now, so I don&#39;t recall whether there are any pre-amps in fron=
t
    of the ADCs on the X410.=C2=A0 If NOT, then<br>
    =C2=A0 you&#39;d need some gain ahead of the on the X410 to compensate =
for
    the poor noise figure of a naked ADC.=C2=A0=C2=A0<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"text-align:left;text-indent:0px;margin:12px 0px 16px;fo=
nt-family:&quot;Google Sans&quot;,Roboto,Arial,sans-serif;font-size:16px;co=
lor:rgb(0,0,0)">
        Any insights, test results, or design pitfalls you can share
        regarding HF performance on these two platforms would be highly
        appreciated.</div>
      <div style=3D"font-family:&quot;Google Sans&quot;,Roboto,Arial,sans-s=
erif;font-size:16px;color:rgb(0,0,0)">
        Best regards</div>
      <div dir=3D"ltr" style=3D"font-family:Aptos,Arial,Helvetica,sans-seri=
f;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div id=3D"m_5903326203731946136ms-outlook-mobile-signature">
        <p dir=3D"ltr" style=3D"text-align:left;text-indent:0px;background-=
color:white;margin:0in">
          <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Urban
            Hakansson</span></p>
        <p dir=3D"ltr" style=3D"text-align:left;text-indent:0px;background-=
color:white;margin:0in">
          <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Princi=
pal
            DSP / Communications System Engineer =C2=A0Saltenna Inc.<br>
            M: 410-980-4577, E: <a href=3D"mailto:urban.hakansson@saltenna.=
com" style=3D"margin-top:0px;margin-bottom:0px" target=3D"_blank">
              urban.hakansson@saltenna.com</a>=C2=A0</span>W:
          <a href=3D"http://www.saltenna.com" target=3D"_blank">www.saltenn=
a.com</a></p>
        <div dir=3D"ltr" style=3D"text-align:left;text-indent:0px;backgroun=
d-color:white;margin:0px 0in">
          <img src=3D"cid:ii_19f27a21347cb971f161" alt=3D"image.png" id=3D"=
m_5903326203731946136id-B7F19B32-9C0D-48B7-B45E-F02D8EB96E73" width=3D"214"=
 height=3D"28" style=3D"width: 214px; height: 28px;"></div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002d44e20655b36bec--

--0000000000002d44e20655b36bed
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_19f27a21347cb971f161>
X-Attachment-Id: ii_19f27a21347cb971f161

iVBORw0KGgoAAAANSUhEUgAADFsAAAGeCAYAAADxfu/tAAAAAXNSR0IArs4c6QAAAERlWElmTU0A
KgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAMW6ADAAQAAAAB
AAABngAAAAAF6qRAAABAAElEQVR4AezdC5hlVX0g+rV2dXU3j6aLrioxgtoFYiJGIRpmHHl1k0xC
JvNd8Dpx7jfJGISugqgNtJlojFHbqDMmUVsgJgqJ4pAZvsgQ4N65SUygTtGNSBQTUGOMV+jGCFFp
lIfKo7vOuv9d3c2zq7oep6rOqfM7UH3O2Xvttf7rt0+dc2rv9d8rJTcCBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgsgkBehDY1SYBABwi8esv2E5ZV6fhUpbWllHX7Qs4l9cXjvpLTjn3LUiq351LtiGW394yn
O8Y2DT3w5DqPCBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAg
0FkCki06a3+JlsC8Cazbsr2vWaUzS26elVM+a04NlXR7yWVsfLz61C2bhm6fU102JkCAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAwAILSLZYYHDNEWg3gVMv3v6r
LUmwmKxjpZ4BI3+kaqZPmfFiMiTLCRAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE
CBAgQIAAAQIECBBoJwHJFu20N8RCYAEF6iSLlMrmlNPaBWm2pAditosrdo1XF9+6aWjHgrSpEQIE
CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECMxCQLLFLNBsQqCT
BU6+dPu6qlk+uWBJFvvDynlztTtdbKaL/eFYRoAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAA
AQIECBAgQIAAAQIECBAgQIDAYgtItljsPaB9Agsk8Kot29f29pRPxi/9ugVqcupmStrRrPIbbt44
NDZ1QWsJECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECCwsALV
wjanNQIEFkPglEu3n7W8Kn/fNokWNUJOa6tSGqdccueWxTDRJgECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBCYTMLPFZDKWE1giAqdeuv3dqZTNbd2dkm6vmnn9
2KahB9o6TsERIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQINAV
ApItumI362Q3Cqzbsr1vvKdc21azWUy1I0rasbuZX3PLpqHbpypmHQECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBOZboJrvBtRPgMDiCDSr0phuokUp6VO7x/NP
bb3g6Pz4eB6K59cveNQ5rV0WMb96y/YTFrxtDRIgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQOApAma2eAqGhwSWisApl9z5yZzy2QfqT51UsauZL7p109COZ5Y9
5ZK7xuIN4rRnLp/35yU9EDNcrDfDxbxLa4AAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE
CBAgQIAAAQIECBAgQIAAgUkEzGwxCYzFBDpVYHqJFuXBkvNrtl149Fn7S7So+55LGVsUg5z6YoaL
a9dt2d63KO1rlAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACB
rheQbNH1LwEAS0ng1Ivv3HygGS1KSnc8Pl6dsG3j0HUH6PviJTvktLZZlcYB4rOaAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC8yKQ56VWlRIgsOACJ1+6fV1V
pk5QKCV9KmazOPtAwdWzSkSyw/YUs0wcqOy8ri/l4q0XHnPRvLahcgIECBAgQIAAAQIECBAgQIAA
AQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECDxDwMwWzwDxlEAnCtTJEVWzXDtV7NNNtKiT
NiLR4u8XPdGi7kzOF55y6fazpuqXdQQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAAB
AgQIECBAgAABAgQIEGi1gGSLVouqj8AiCIxX5SNTJUdMJ9GiTrI45ZK7GhOzY+S0dhG6sd8mc7Ns
qZNJ9rvSQgIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECMyD
wLJ5qFOVBAgsoECdJJFL+dXJmiwp3bHtwqPPnmx9ncgw3tN8d9Rx0WRlFnV5JH40q2Yd2+ZFjUPj
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAh0jYCZLbpmV+vo
UhWIJIl3T9638uCu8XzWZOtftWV7JDKURk65PRMt9gWe87vrWPc9dU+AAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAIH5FJBsMZ+66iYwzwITs1qktG6yZkqqLrp1
09CO/a1/9ZbtJyyvyt+nnE7Y3/p2W9Zblc3tFpN4CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE
CBAgQIAAAQIECBAgQIAAAQIECBBYmgKSLZbmftWrLhGommXLZF0tKd207YKhK/a3vk60WBYzWkSi
Rd/+1rfjspzTr67bsr1j4m1HQzERIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIDA9AckW03NSikDbCbxqy/a1U81KUXLevL+g64SFSLT4ZCclWuzrR7NqXrTvsXsC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAjMl4Bki/mSVS+B
eRZYPkXiQT2rxc0bh8b2F0IkLGyeKkljf9u0z7L8q+0Ti0gIECBAgAABAgQIECBAgAABAgQIECBA
gAABAgQIECBAgAABAgQIECBAgAABAgQIEFiqApItluqe1a8uEMhnTtrJnD+yv3UnX7p9Xcr5wv2t
64hlOa199ZbtJ3RErIIkQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE
CBAgQKBjBSRbdOyuE3g3C+xJmkhrJzPYtnHouv2ty6W8e3/LO2nZsqp5difFK1YCBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBDpPQLJF5+0zERNIVbO5biqG/c3+
UCdo5JSm3G6qOttnXT6tfWIRCQECBAgQIECAAAECCy0wONww291Co2uPAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAIF5EXD+c15YVUqgZQKSLVpGqSICCydQcl43VWs9Pc2nzWCxbsv2vqpZtky1
Tcesy+mEuj8dE69ACRAgQIAAAQIECBBomUD/+TceWVJq9A833taySlVEgAABAgQIECBAgAABAgQI
ECBAgAABAgQIECBAgACBRRDo3zB6Zsnp833njR6/CM1rkgCBaQjEhe7dCBDoNIFTL77r+ymnqRMO
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
c2N7Z6vinjyxsLX7V34rUoxWxdU1Vpo/vplpDz1eVz55CBAgQIAAAQIECBAgQIAAAQIECBAgQIAA
AQIECBAgQIAAAQIECBAgQIAAAQIECBAgYGcL7wCBPhDoXt3Rjsg/V5WSIu3anLud/RPzT1fFnT6w
92qnPfRaiTlfFVfLWI7L1zdveaGWXJIQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIEDgpoBmC68CgT4QODu+6++4sem50nDxT1U5iw0XjUZ83ppceLsqbnGsm/Op
O8Ws9XhO8dK50fsrm0jWeg3mJ0CAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIEBg8AQ0WwzeM1dxnwp0ju75IXIcvFN5KSKllI+OTM13RqZ/2Xu7+NKYsft2Y3VczxHv
zBwe+riOXHIQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIEDg
vwLl/64dBAj0k8DI1NybpZ9ifLk15ZxPpEYc74w1Lyzd05qYH44U51OKbUvXaj3n/FWn3Xyq1pyS
ESBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBA4KaAZguvAoE+
FCi7VkyWsg6vpLQc+WzK8WVOsbPsanFkJfeuZmzO8eOVrfmxb19pXlrNec1FgAABAgQIECBAgAAB
AgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACB5QpotliulDgCG0ygNTX/XvkDP7TB
lj17o5ufOXuk+esGW7flEiBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAAB
AgQIECDQRwKaLfroYSqFwK0Cram5473cpeLW9VT9zjmfubI1nrWjRZWSMQIECBAgQIAAAQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE6hDQbFGHshwEeihQdrh4PuX4MFJs7+Ey
qlPneLfTHhqtDjJKgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBA
gACBegQ0W9TjLAuBngqMTM49UBbwWaS0eF43R9nN4lqO9PKZ9tDJdbMoCyFAgAABAgQIECBAgAAB
AgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAYOAFGgMvAIDAAAh02s2Lf17bvq+UOrVe
ys0RX+eUHtVosV6eiHUQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQILAkYGeLJQlnAgMisH967pFN3fR+pHi4RyXPltzjnbGhT3uUX1oCBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAhUCmi2qOQxSKB/BVpT88cix9GUYndNVS5E
Tm90/thzMl5P3ZpySkOAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAIEVC2i2WDGZGwj0l0BpujhUPgSvlqr2rUVlOccnKeVTncPNj9ZifnMSIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIEBgtQU0W6y2qPkIbFCB1sT8cGmKOJhT
erF8GO652zJy5O/KDhano5FmLl3d9sX3x+67fLdzuY8AAQIECBAgQIAAAQIECBAgQIAAAQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQIAAAQK9ENBs0Qt1OQmsc4Enphce3NLNw90UD6XI+8qH4t7IsTMi
7YgUO3NEt/y+UMq4WMZmu434qRF5tjPWXLzmIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIPA/BP4Fo8IzpZ/LGjAAAAAA
SUVORK5CYII=
--0000000000002d44e20655b36bed--

--===============6197783989386424900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6197783989386424900==--
