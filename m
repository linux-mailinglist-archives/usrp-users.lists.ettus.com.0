Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D453E96D5
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:27:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 080F9383B41
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 13:27:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HXObkxuz";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id CB310380DD1
	for <USRP-users@lists.ettus.com>; Wed, 11 Aug 2021 13:26:22 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id a19so3216800qkg.2
        for <USRP-users@lists.ettus.com>; Wed, 11 Aug 2021 10:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=PwddJKgz0RrhVK4TDfeUayb5w0Zz1jixpnydNxhv+N0=;
        b=HXObkxuz5odHUapuDuN5SYTiRPK8PbVIlZUrOtSzu91C2tpcfzXorBRCtODjKx8fSR
         juMsb99+EOSvANz9iAYpkzsdtise6/TXg8BCIYDSCwBUP1wF2Sa0qRWAkAmjte1hAXUy
         J7v9z/2LoCZNbWql2yIZP1iqwo9eArYKFx5+HxmKsk1DebfC4Gl7XCTBsn6wVwCCNxTC
         jghNpwhfV8UgiSh+P1oMQj4S1K8sKbDalJXu8u7y098fx6FOIo04041rB+NQgiv1JYG8
         5UPf2sqBpgsUc8lO6azyWu4vcH4uTrLvFBvOF/UoioznRGAvdH93EJUBFwkONYCQH7Gt
         ekiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=PwddJKgz0RrhVK4TDfeUayb5w0Zz1jixpnydNxhv+N0=;
        b=iQUxXQlc5i0ZsF/MRWfjkDcyUmBVoNJ+koFDv/IIf5MEuyZHO3i4zNVcLh5w2A7x79
         GZEDWPSin4TIClxaOIbIwI5evWcYOPu0YNtLlj5VNQft/Oh6yOFlb5DffQkG1P9mKmxn
         i4teteRo4CuwreZkbLz6y1LlTlP4YeczIYVGajXeq3umwABACwZQZkcK2JwcwCuN9OH1
         kf+hjlzE8NitGy5X+Ip5R2oBbMIT7NteqOC11EtoLbz21KB7biwEnFKCI2ErWiX04RhQ
         8xkdWtgFuZT0fKGutD3hI/SDBNzdQ0eD6q2S380Yq3mTVMKxr1Lk2ErsFeAMl99zKKFt
         mskw==
X-Gm-Message-State: AOAM532PRzbftEvM+xCe/mugy/wtqIfhtYNlygUU7TuBzOgSj6S+qSfY
	PQjIzXpGYX9JF8WF5ysZMC50EyIiM+PKnQ==
X-Google-Smtp-Source: ABdhPJwjjrMfUYJt5i6ejingX+oLNS8dZ33OEeS0Kk4X2g1tcnoTTgy6V0EiBsZc6OinWkwd6iyydw==
X-Received: by 2002:a05:620a:68a:: with SMTP id f10mr68990qkh.119.1628702781941;
        Wed, 11 Aug 2021 10:26:21 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h5sm6785327qtp.61.2021.08.11.10.26.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 10:26:21 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 11 Aug 2021 13:26:20 -0400
Message-Id: <1C2330B0-309C-460B-AD6C-CE956F051D30@gmail.com>
References: <ca21b213473c4123827230dfe49c903f@kth.se>
In-Reply-To: <ca21b213473c4123827230dfe49c903f@kth.se>
To: Anton Ottosson <antonott@kth.se>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: MCDNPIJTKWEMKCAXV44JTV4XJQCIVGBT
X-Message-ID-Hash: MCDNPIJTKWEMKCAXV44JTV4XJQCIVGBT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 Center frequency tuning resolution
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCDNPIJTKWEMKCAXV44JTV4XJQCIVGBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7578884163853999791=="


--===============7578884163853999791==
Content-Type: multipart/alternative; boundary=Apple-Mail-26892547-CFDF-4181-94EA-D159CCE04370
Content-Transfer-Encoding: 7bit


--Apple-Mail-26892547-CFDF-4181-94EA-D159CCE04370
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s under 1Hz owing to the resolution of the DDC and/or DUC.=20

Even though individual daughter cards will have a synthesizer resolution muc=
h larger than that, the tuning code uses that knowledge and programming of t=
he DDC / DUC to deliver subHz resolution.=20



Sent from my iPhone

> On Aug 11, 2021, at 1:23 PM, Anton Ottosson <antonott@kth.se> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
>=20
>=20
> Does any one here know what the center frequency tuning resolution is for t=
he N210, or how one might find out? By tuning resolution I mean, basically, t=
he step size when selecting center frequency. I have been looking over the D=
evices & Usage Manual, but have not been able to find an answer.
>=20
>=20
>=20
> Best,
>=20
> Anton
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-26892547-CFDF-4181-94EA-D159CCE04370
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s under 1Hz owing to the resolut=
ion of the DDC and/or DUC.&nbsp;<div><br></div><div>Even though individual d=
aughter cards will have a synthesizer resolution much larger than that, the t=
uning code uses that knowledge and programming of the DDC / DUC to deliver s=
ubHz resolution.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 1=
1, 2021, at 1:23 PM, Anton Ottosson &lt;antonott@kth.se&gt; wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color=
: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont=
&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
">
<p>Hi,</p>
<p><br>
</p>
<p>Does any one here know what the center frequency tuning resolution is for=
 the N210, or how one might find out? By tuning resolution I mean, basically=
, the step size when selecting center frequency. I have been looking over th=
e
<a href=3D"https://files.ettus.com/manual/page_devices.html" class=3D"OWAAut=
oLink">Devices &amp; Usage Manual</a>, but have not been able to find an ans=
wer.</p>
<p><br>
</p>
<p>Best,</p>
<p>Anton<br>
</p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-26892547-CFDF-4181-94EA-D159CCE04370--

--===============7578884163853999791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7578884163853999791==--
