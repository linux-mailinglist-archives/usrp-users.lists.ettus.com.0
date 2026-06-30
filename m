Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tk0YMnXwQ2pylwoAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2026 18:36:05 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D906E681B
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2026 18:36:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=HTUQ01RA;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=i0yDDSt5;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BED76384E7B
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2026 12:36:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782837363; bh=JGobo/EQVaJXM0QvZZ6mx7oEI64MylCukY/UziiaADs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HTUQ01RAwv31RugUcmNHn1+YpbLmh4ldlVsmXqOI9nI+849LupwmyEYtmCd0qw8Jh
	 49wlXjNVTA8yCNo79J/a2SceCfQmysGXTjcAkY2XuWTjKKXvypNim4h5iy7wCzEKpP
	 Xby9tqCnvoYIynnjnJYK9JCivaB7GDygsa/ladSbaDDEQSFgF87YINZGvYblcjgZmv
	 uq3BIfl5V+5PCkJ4JWR9gk0UugmGBZP6gF6MKIHF3S+BF31nNEBGja3zFvjmtXrCgT
	 L5GPfCdlYsyMbbpodNixKEj4qxZvUky+fZT1s5uGM01BfgvgnkzuCUr/AnAmGlSdZC
	 3/iLmKB+NV46Q==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id C4235386862
	for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2026 12:35:17 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-92e622cc874so94976685a.0
        for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2026 09:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782837317; x=1783442117; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8HToKouYHT+aNwrj3PrMTl41gXsKycxld73bBhOmz+Y=;
        b=i0yDDSt5gDw22JZZVCPXfm4ZWHzXDXuSjDe+f6Sy01Gw4OPm4v2A+4PyS1y1qQmhMt
         V28QSzUNuWOrP5mnxb7D2Nf+kHImbXJNuDThFv5AHSBtQIwjcQhyrrTvqmpW1nq6jqtM
         SxM2ih+13JNsLcye+C7lGiF51iGtHnLjCh34usvx9jSkcNgguO110PGGXDpxYURfixp7
         5Fk9QtFOzl3iZ4/TN+N/w97bsuleiFl+/e/gJSbO6KQduHPk+RD27qh5K5clSO9j5YOJ
         /W9SRBWY0aFzsB2Uwa3XHf95fLXxW8aRqoRrpeXHfR8tJrEtQqI7lIo7NOIfTuZWpoql
         ftYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782837317; x=1783442117;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8HToKouYHT+aNwrj3PrMTl41gXsKycxld73bBhOmz+Y=;
        b=cr5hUd0ubAbsgXKVultPKsaWylcVbDo9SQLalxQIKTNFoX3vj2w0uTUX1SDh8t8mt4
         h1V9GNfeDBgcZVoOslpA+MY1n8SGvD9QRSbNquAECh0CKLJKrXOcP0IRJ0M09mqqzIEc
         nAPOmm3kcC2EePHfp0ipXVNp5HM0A2Igae3c22/4BTPc13K8gHyebIYVGHLFW1ZwZX6x
         qPmY1479tEUPJBSyfNZ7XlxO9xzKxShgG0yyo4ly9uNiB349f95W0aLC55SqJWOieJT6
         uQBUVh/QzCR2/KPTLN5XKjZuLyx/oYqzwZzpaFO428GZNfjAeLs9QIwjJqc4orgBRQ4f
         92bw==
X-Gm-Message-State: AOJu0YzLzcSvY5mweHe0Agvwbq6bkV1emKviN3JX4dVxvM0Grq/uny7v
	qxnVR8h8ZyHlmPuVzGom+xVUY6DLKgZPCK4YKuEJdfz0VHeWwftKHtexnUk6Kw==
X-Gm-Gg: AfdE7ckvOPoiVlVIFj9NJkiypNuS3KRCD73Z6erHngFSThW0Oyk9ezZzCtbmPfQw30F
	bNSF/STNMmiu1kC6skNkPmZQVxL2UATy+1NdjM4LbBe4f311xRnPdKVWmIGdV1vhLwelorvjv7B
	tJ1ZVIE5o6+I7veu2IOUJmI8HUA8ddas08kb2GDIelL+g55X9hIFilEIP7TWAXvJPoU48gfe1s6
	HaO9oNVMpsWqirkrLwR1Zlk184g57ty64l5kEkcf6/7N1sv5VPHeVn5aY73/nOIdhkpK7FfBkIJ
	kgutZLjGnmlm9vT0foir8IRze+WRuV4xuJq/krq5ZawOZbvhsfsRPQpatSiVuEBUlYrYTTedJ9O
	6LkhpC9WyRHWhGrm20OlBmuYLUgaqjmy6e+0u1QNzpKUFis91Pqhkc0IN0I1AAwY2JE2RlBoZyR
	XJROHeDvg4X/YyKzpQwWxvLM+jd6uu1qfB9ATjxy8gyVEpKCoIWOfot2RN/xBsqR/lKEZw0Fveu
	z8TfuQrHXU=
X-Received: by 2002:a05:620a:2589:b0:92e:48ae:737d with SMTP id af79cd13be357-92e62636041mr751672085a.12.1782837316745;
        Tue, 30 Jun 2026 09:35:16 -0700 (PDT)
Received: from [192.168.2.233] (bras-base-smflon1825w-grc-07-174-93-0-178.dsl.bell.ca. [174.93.0.178])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-92e6217516bsm277897985a.13.2026.06.30.09.35.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 09:35:16 -0700 (PDT)
Message-ID: <f1385f4d-b9db-4db5-9882-e4665b38dd02@gmail.com>
Date: Tue, 30 Jun 2026 12:35:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.PROD.OUTLOOK.COM>
Message-ID-Hash: 7W5LBGGWZLRISRJTXNDPUKACM4G7KIZO
X-Message-ID-Hash: 7W5LBGGWZLRISRJTXNDPUKACM4G7KIZO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX Daughterboard HF Band Performance vs. USRP X410 for 1-30 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7W5LBGGWZLRISRJTXNDPUKACM4G7KIZO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1855226224925818010=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain,multipart/related];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,lists.ettus.com:from_smtp,saltenna.com:url,saltenna.com:email,ettus.com:email,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13D906E681B

This is a multi-part message in MIME format.
--===============1855226224925818010==
Content-Type: multipart/alternative;
 boundary="------------01pOhBqLKc804m8A4q0CwmFJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------01pOhBqLKc804m8A4q0CwmFJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2026-06-30 12:07, Urban Hakansson wrote:
> Hello usrp-users community,
> I am evaluating hardware options for a project operating across the HF=20
> band (specifically 1=E2=80=9330 MHz). We are deciding between adapting =
an=20
> X300/X310 with a UBX daughterboard or stepping up to the USRP X410.
> While we know the X410 covers this range natively, its 4 TX/RX=20
> channels are more than our project requires. We are trying to=20
> determine if the X410's lower frequency floor provides a massive=20
> real-world performance leap over a filtered UBX system for a 1-channel=20
> or 2-channel deployment.
> I have been reviewing the Ettus KB application note: "Experiments with=20
> the UBX Daughterboard in the HF Band." The document shows that with=20
> careful flow-graph design and external pre-filtering, the UBX delivers=20
> quite good HF performance despite its nominal 10 MHz limit.
> I have a few questions for anyone who has pushed the UBX into the HF=20
> band or compared it to the X410:
>
> 1.
>     Pre-Filtering Selection:=C2=A0The KB note mentions an FM-trap and
>     3-pole LP filters but does not name specific parts. I am looking
>     at Mini-Circuits components to build this front-end filter chain.
>     Has anyone successfully deployed specific Mini-Circuits part
>     numbers for this exact UBX setup?
>     Examples: Mini=E2=80=91Circuits VLF=E2=80=9145+, Mini=E2=80=91Circu=
its NSBP=E2=80=91108+,
>     Mini=E2=80=91Circuits ZX75LP=E2=80=9150+.
>
I'm the guy who wrote that app-note, years and years ago now.=C2=A0 I can=
't=20
remember which pre-filters I used, and they weren't mini-circuits, but=20
I'm sure they have
 =C2=A0 close to what you need.=C2=A0 =C2=A0 For the FM-trap, I used a co=
nsumer=20
part--typical in the CATV/SATTV market--literally available on Amazon=20
last time I checked.=C2=A0 If you search
 =C2=A0 on "FM bandstop" you'll find several examples.

>  1.
>
>
>  2.
>     Unpublished Performance Data:=C2=A0Does anyone have characterizatio=
n
>     figures, noise floor comparisons, or empirical data regarding UBX
>     performance specifically between 1=E2=80=9310 MHz when bypassing/wo=
rking
>     around the LO constraints?
>
I didn't gather any detailed performance data at the time.=C2=A0 =C2=A0No=
ise=20
figure won't be horrible, but I'll point out that for over-the-air=20
operations in most of HF, you aren't
 =C2=A0 limited by receiver noise, but rather galactic background noise,=20
which can, at the lower end, be equivalent to about=20
50,000-100,000K---MUCH larger than you'll
 =C2=A0 find in the front-end of ANY modern receiver.

>  1.
>
>  2. UBX vs. X410 Direct Sampling:=C2=A0In practical HF deployment, how =
much
>     dynamic range or noise figure advantage does the X410=E2=80=99s
>     direct-sampling architecture buy you over a UBX using DDC
>     workarounds and aggressive external filtering?
>
This I don't know.=C2=A0 =C2=A0It certainly is the case that for HF over-=
the-air=20
operations, high dynamic range is a requirement, because you can have=20
very loud signals right at
 =C2=A0 the edge of your passband.=C2=A0 I'll note that the receive-path =
ADC is=20
14-bits on an X310, whereas on the X410, it's only 12-bits.=C2=A0 =C2=A0T=
his=20
lowers your dynamic range by
 =C2=A0 about 12dB, typically.=C2=A0 I don't have access to the schematic=
s right=20
now, so I don't recall whether there are any pre-amps in front of the=20
ADCs on the X410.=C2=A0 If NOT, then
 =C2=A0 you'd need some gain ahead of the on the X410 to compensate for t=
he=20
poor noise figure of a naked ADC.



> Any insights, test results, or design pitfalls you can share regarding=20
> HF performance on these two platforms would be highly appreciated.
> Best regards
>
> Urban Hakansson
>
> Principal DSP / Communications System Engineer =C2=A0Saltenna Inc.
> M: 410-980-4577, E: urban.hakansson@saltenna.com W: www.saltenna.com
>
> image.png
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------01pOhBqLKc804m8A4q0CwmFJ
Content-Type: multipart/related;
 boundary="------------QKnFAj87ZmkrnpcSEPvjwHZG"

--------------QKnFAj87ZmkrnpcSEPvjwHZG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2026-06-30 12:07, Urban Hakansson
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0);">
        Hello usrp-users community,</div>
      <div class=3D"n6owBd awi2gc"
style=3D"text-align: left; text-indent: 0px; margin: 12px 0px 16px; font-=
family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif; font-size: 16=
px; color: rgb(0, 0, 0);">
        I am evaluating hardware options for a project operating across
        the HF band (specifically 1=E2=80=9330 MHz). We are deciding betw=
een
        adapting an X300/X310 with a UBX daughterboard or stepping up to
        the USRP X410.</div>
      <div class=3D"n6owBd awi2gc"
style=3D"text-align: left; text-indent: 0px; margin: 12px 0px 16px; font-=
family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif; font-size: 16=
px; color: rgb(0, 0, 0);">
        While we know the X410 covers this range natively, its 4 TX/RX
        channels are more than our project requires. We are trying to
        determine if the X410's lower frequency floor provides a massive
        real-world performance leap over a filtered UBX system for a
        1-channel or 2-channel deployment.</div>
      <div class=3D"n6owBd awi2gc"
style=3D"text-align: left; text-indent: 0px; margin: 12px 0px 16px; font-=
family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif; font-size: 16=
px; color: rgb(0, 0, 0);">
        I have been reviewing the Ettus KB application note:
        "Experiments with the UBX Daughterboard in the HF Band." The
        document shows that with careful flow-graph design and external
        pre-filtering, the UBX delivers quite good HF performance
        despite its nominal 10 MHz limit.</div>
      <div class=3D"n6owBd awi2gc"
style=3D"text-align: left; text-indent: 0px; margin: 12px 0px 16px; font-=
family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif; font-size: 16=
px; color: rgb(0, 0, 0);">
        I have a few questions for anyone who has pushed the UBX into
        the HF band or compared it to the X410:</div>
      <ol start=3D"1" data-sfc-root=3D"ep" data-sfc-cb=3D""
        data-complete=3D"true" data-processed=3D"true"
data-copy-service-computed-style=3D"font-family: &quot;Google Sans&quot;,=
 Roboto, Arial, sans-serif; font-size: 16px; font-weight: 400; margin: 12=
px 0px 16px; text-decoration: none; border-bottom: 0px rgb(10, 10, 10);"
        style=3D"text-align: left; margin: 12px 0px 16px;">
        <li
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0); margin: 0px 0px 12px;">
          <div role=3D"presentation"><span style=3D"font-weight: 700;">Pr=
e-Filtering
              Selection:</span>=C2=A0The KB note mentions an FM-trap and
            3-pole LP filters but does not name specific parts. I am
            looking at Mini-Circuits components to build this front-end
            filter chain. Has anyone successfully deployed specific
            Mini-Circuits part numbers for this exact UBX setup?=C2=A0</d=
iv>
          <div dir=3D"ltr" role=3D"presentation">Examples: Mini=E2=80=91C=
ircuits
            VLF=E2=80=9145+, Mini=E2=80=91Circuits NSBP=E2=80=91108+, Min=
i=E2=80=91Circuits ZX75LP=E2=80=9150+.</div>
        </li>
      </ol>
    </blockquote>
    I'm the guy who wrote that app-note, years and years ago now.=C2=A0 I
    can't remember which pre-filters I used, and they weren't
    mini-circuits, but I'm sure they have<br>
    =C2=A0 close to what you need.=C2=A0 =C2=A0 For the FM-trap, I used a=
 consumer
    part--typical in the CATV/SATTV market--literally available on
    Amazon last time I checked.=C2=A0 If you search<br>
    =C2=A0 on "FM bandstop" you'll find several examples.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.=
PROD.OUTLOOK.COM">
      <ol start=3D"1" data-sfc-root=3D"ep" data-sfc-cb=3D""
        data-complete=3D"true" data-processed=3D"true"
data-copy-service-computed-style=3D"font-family: &quot;Google Sans&quot;,=
 Roboto, Arial, sans-serif; font-size: 16px; font-weight: 400; margin: 12=
px 0px 16px; text-decoration: none; border-bottom: 0px rgb(10, 10, 10);"
        style=3D"text-align: left; margin: 12px 0px 16px;">
        <li
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0); margin: 0px 0px 12px;"><br>
        </li>
        <li
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0); margin-right: 0px; margin-left: 0p=
x;">
          <div role=3D"presentation"><span style=3D"font-weight: 700;">Un=
published
              Performance Data:</span>=C2=A0Does anyone have characteriza=
tion
            figures, noise floor comparisons, or empirical data
            regarding UBX performance specifically between 1=E2=80=9310 M=
Hz when
            bypassing/working around the LO constraints?</div>
        </li>
      </ol>
    </blockquote>
    I didn't gather any detailed performance data at the time.=C2=A0 =C2=A0=
Noise
    figure won't be horrible, but I'll point out that for over-the-air
    operations in most of HF, you aren't<br>
    =C2=A0 limited by receiver noise, but rather galactic background nois=
e,
    which can, at the lower end, be equivalent to about
    50,000-100,000K---MUCH larger than you'll<br>
    =C2=A0 find in the front-end of ANY modern receiver.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.=
PROD.OUTLOOK.COM">
      <ol start=3D"1" data-sfc-root=3D"ep" data-sfc-cb=3D""
        data-complete=3D"true" data-processed=3D"true"
data-copy-service-computed-style=3D"font-family: &quot;Google Sans&quot;,=
 Roboto, Arial, sans-serif; font-size: 16px; font-weight: 400; margin: 12=
px 0px 16px; text-decoration: none; border-bottom: 0px rgb(10, 10, 10);"
        style=3D"text-align: left; margin: 12px 0px 16px;">
        <li
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0); margin-right: 0px; margin-left: 0p=
x;">
          <div dir=3D"ltr" role=3D"presentation"><br>
          </div>
        </li>
        <li
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0); margin: 0px 0px 12px;">
          <span style=3D"font-weight: 700;" role=3D"presentation">UBX vs.
            X410 Direct Sampling:</span>=C2=A0In practical HF deployment,=
 how
          much dynamic range or noise figure advantage does the X410=E2=80=
=99s
          direct-sampling architecture buy you over a UBX using DDC
          workarounds and aggressive external filtering?</li>
      </ol>
    </blockquote>
    This I don't know.=C2=A0 =C2=A0It certainly is the case that for HF
    over-the-air operations, high dynamic range is a requirement,
    because you can have very loud signals right at<br>
    =C2=A0 the edge of your passband.=C2=A0 I'll note that the receive-pa=
th ADC is
    14-bits on an X310, whereas on the X410, it's only 12-bits.=C2=A0 =C2=
=A0This
    lowers your dynamic range by<br>
    =C2=A0 about 12dB, typically.=C2=A0 I don't have access to the schema=
tics
    right now, so I don't recall whether there are any pre-amps in front
    of the ADCs on the X410.=C2=A0 If NOT, then<br>
    =C2=A0 you'd need some gain ahead of the on the X410 to compensate fo=
r
    the poor noise figure of a naked ADC.=C2=A0=C2=A0<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CH3P222MB0922086F5256DE31E7E2D7D093F72@CH3P222MB0922.NAMP222.=
PROD.OUTLOOK.COM">
      <div class=3D"n6owBd awi2gc"
style=3D"text-align: left; text-indent: 0px; margin: 12px 0px 16px; font-=
family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif; font-size: 16=
px; color: rgb(0, 0, 0);">
        Any insights, test results, or design pitfalls you can share
        regarding HF performance on these two platforms would be highly
        appreciated.</div>
      <div
style=3D"font-family: &quot;Google Sans&quot;, Roboto, Arial, sans-serif;=
 font-size: 16px; color: rgb(0, 0, 0);">
        Best regards</div>
      <div dir=3D"ltr"
style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-size: 12p=
t; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div id=3D"ms-outlook-mobile-signature">
        <p dir=3D"ltr"
style=3D"text-align: left; text-indent: 0px; background-color: white; mar=
gin: 0in;">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Urban
            Hakansson</span></p>
        <p dir=3D"ltr"
style=3D"text-align: left; text-indent: 0px; background-color: white; mar=
gin: 0in;">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Princ=
ipal
            DSP / Communications System Engineer =C2=A0Saltenna Inc.<br>
            M: 410-980-4577, E: <a
              href=3D"mailto:urban.hakansson@saltenna.com"
              data-outlook-id=3D"d27636e3-9800-460c-9101-87360c8901fa"
              style=3D"margin-top: 0px; margin-bottom: 0px;"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
              urban.hakansson@saltenna.com</a>=C2=A0</span>W:
          <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.salten=
na.com">www.saltenna.com</a></p>
        <div dir=3D"ltr"
style=3D"text-align: left; text-indent: 0px; background-color: white; mar=
gin: 0px 0in;">
          <img src=3D"cid:part1.tAjDLh1l.yzaGs5LU@gmail.com"
            alt=3D"image.png" id=3D"id-B7F19B32-9C0D-48B7-B45E-F02D8EB96E=
73"
            width=3D"214" height=3D"28" style=3D"width: 214px; height: 28=
px;"
            class=3D""></div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------QKnFAj87ZmkrnpcSEPvjwHZG
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.tAjDLh1l.yzaGs5LU@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAADFsAAAGeCAYAAADxfu/tAAAAAXNSR0IArs4c6QAAAERlWElm
TU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAMW6AD
AAQAAAABAAABngAAAAAF6qRAAABAAElEQVR4AezdC5hlVX0g+rV2dXU3j6aLrioxgtoFYiJG
IRpmHHl1k0xCJvNd8Dpx7jfJGISugqgNtJlojFHbqDMmUVsgJgqJ4pAZvsgQ4N65SUygTtGN
SBQTUGOMV+jGCFFplIfKo7vOuv9d3c2zq7oep6rOqfM7UH3O2Xvttf7rt0+dc2rv9d8rJTcC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgsgkBehDY1SYBABwi8esv2
E5ZV6fhUpbWllHX7Qs4l9cXjvpLTjn3LUiq351LtiGW394ynO8Y2DT3w5DqPCBAgQIAAAQIE
CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAg0FkCki06a3+JlsC8Cazb
sr2vWaUzS26elVM+a04NlXR7yWVsfLz61C2bhm6fU102JkCAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAwAILSLZYYHDNEWg3gVMv3v6rLUmwmKxjpZ4B
I3+kaqZPmfFiMiTLCRAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAA
AQIECBBoJwHJFu20N8RCYAEF6iSLlMrmlNPaBWm2pAditosrdo1XF9+6aWjHgrSpEQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECMxCQLLFLNBsQqCT
BU6+dPu6qlk+uWBJFvvDynlztTtdbKaL/eFYRoAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQIDAYgtItljsPaB9Agsk8Kot29f29pRPxi/9ugVqcupmStrR
rPIbbt44NDZ1QWsJECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAAB
AgQIECCwsALVwjanNQIEFkPglEu3n7W8Kn/fNokWNUJOa6tSGqdccueWxTDRJgECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBCYTMLPFZDKWE1giAqde
uv3dqZTNbd2dkm6vmnn92KahB9o6TsERIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQINAVApItumI362Q3Cqzbsr1vvKdc21azWUy1I0rasbuZX3PLpqHb
pypmHQECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBOZb
oJrvBtRPgMDiCDSr0phuokUp6VO7x/NPbb3g6Pz4eB6K59cveNQ5rV0WMb96y/YTFrxtDRIg
QIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQOApAma2eAqG
hwSWisApl9z5yZzy2QfqT51UsauZL7p109COZ5Y95ZK7xuIN4rRnLp/35yU9EDNcrDfDxbxL
a4AAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAgUkEzGwx
CYzFBDpVYHqJFuXBkvNrtl149Fn7S7So+55LGVsUg5z6YoaLa9dt2d63KO1rlAABAgQIECBA
gAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACBrheQbNH1LwEAS0ng1Ivv
3HygGS1KSnc8Pl6dsG3j0HUH6PviJTvktLZZlcYB4rOaAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC8yKQ56VWlRIgsOACJ1+6fV1Vpk5QKCV9Kmaz
OPtAwdWzSkSyw/YUs0wcqOy8ri/l4q0XHnPRvLahcgIECBAgQIAAAQIECBAgQIAAAQIECBAg
QIAAAQIECBAgQIAAAQIECBAgQIAAAQIECDxDwMwWzwDxlEAnCtTJEVWzXDtV7NNNtKiTNiLR
4u8XPdGi7kzOF55y6fazpuqXdQQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAAB
AgQIECBAgAABAgQIEGi1gGSLVouqj8AiCIxX5SNTJUdMJ9GiTrI45ZK7GhOzY+S0dhG6sd8m
c7NsqZNJ9rvSQgIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAA
AQIECMyDwLJ5qFOVBAgsoECdJJFL+dXJmiwp3bHtwqPPnmx9ncgw3tN8d9Rx0WRlFnV5JH40
q2Yd2+ZFjUPjBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAh0jYCZLbpmV+voUhWIJIl3T9638uCu8XzWZOtftWV7JDKURk65PRMt9gWe87vrWPc9dU+A
AAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAIH5FJBsMZ+6
6iYwzwITs1qktG6yZkqqLrp109CO/a1/9ZbtJyyvyt+nnE7Y3/p2W9Zblc3tFpN4CBAgQIAA
AQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBBYmgKSLZbmftWrLhGo
mmXLZF0tKd207YKhK/a3vk60WBYzWkSiRd/+1rfjspzTr67bsr1j4m1HQzERIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIDA9AckW03NSikDbCbxqy/a1
U81KUXLevL+g64SFSLT4ZCclWuzrR7NqXrTvsXsCBAgQIECAAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAAECBAgQIECAAAECBAjMl4Bki/mSVS+BeRZYPkXiQT2rxc0bh8b2F0IkLGye
Kkljf9u0z7L8q+0Ti0gIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBA
gAABAgQIEFiqApItluqe1a8uEMhnTtrJnD+yv3UnX7p9Xcr5wv2t64hlOa199ZbtJ3RErIIk
QIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQKBjBSRbdOyu
E3g3C+xJmkhrJzPYtnHouv2ty6W8e3/LO2nZsqp5difFK1YCBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBDpPQLJF5+0zERNIVbO5biqG/c3+UCdo5JSm
3G6qOttnXT6tfWIRCQECBAgQIECAAAECCy0wONww291Co2uPAAECBAgQIECAAAECBAgQIECA
AAECBAgQIECAAIF5EXD+c15YVUqgZQKSLVpGqSICCydQcl43VWs9Pc2nzWCxbsv2vqpZtky1
Tcesy+mEuj8dE69ACRAgQIAAAQIECBBomUD/+TceWVJq9A833taySlVEgAABAgQIECBAgAAB
AgQIECBAgAABAgQIECBAgACBRRDo3zB6Zsnp833njR6/CM1rkgCBaQjEhe7dCBDoNIFTL77r
+ymnqRMOStqRqnzFRN+a5ewov7bT+jlZvM2c19+8cWhssvWWEyBAgAABAgQIECCwBAU2l2rg
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
gAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBA4KaAZguvAoE+FCi7VkyWsg6v
pLQc+WzK8WVOsbPsanFkJfeuZmzO8eOVrfmxb19pXlrNec1FgAABAgQIECBAgAABAgQIECBA
gAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACB5QpotliulDgCG0ygNTX/XvkDP7TBlj17
o5ufOXuk+esGW7flEiBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAAB
AgQIECDQRwKaLfroYSqFwK0Cram5473cpeLW9VT9zjmfubI1nrWjRZWSMQIECBAgQIAAAQIE
CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIE6hDQbFGHshwEeihQdrh4PuX4
MFJs7+EyqlPneLfTHhqtDjJKgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBA
gAABAgQIECBAgACBegQ0W9TjLAuBngqMTM49UBbwWaS0eF43R9nN4lqO9PKZ9tDJdbMoCyFA
gAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAYOAFGgMvAIDA
AAh02s2Lf17bvq+UOrVeys0RX+eUHtVosV6eiHUQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQILAkYGeLJQlnAgMisH967pFN3fR+pHi4RyXPltzjnbGh
T3uUX1oCBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAhU
Cmi2qOQxSKB/BVpT88cix9GUYndNVS5ETm90/thzMl5P3ZpySkOAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAIEVC2i2WDGZGwj0l0BpujhUPgSvlqr2
rUVlOccnKeVTncPNj9ZifnMSIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ
IECAAAECBAgQIEBgtQU0W6y2qPkIbFCB1sT8cGmKOJhTerF8GO652zJy5O/KDhano5FmLl3d
9sX3x+67fLdzuY8AAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAg
QIAAAQK9ENBs0Qt1OQmsc4Enphce3NLNw90UD6XI+8qH4t7IsTMi7YgUO3NEt/y+UMq4WMZm
u434qRF5tjPWXLzmIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAEC
BAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIPA/BP4F
o8IzpZ/LGjAAAAAASUVORK5CYII=

--------------QKnFAj87ZmkrnpcSEPvjwHZG--

--------------01pOhBqLKc804m8A4q0CwmFJ--

--===============1855226224925818010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1855226224925818010==--
