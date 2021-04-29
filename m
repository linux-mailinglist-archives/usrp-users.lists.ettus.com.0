Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F336F0C5
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 22:03:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75EB4383FF2
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 16:03:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kyvh+OPi";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 03248383FF0
	for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 16:02:39 -0400 (EDT)
Received: by mail-qv1-f42.google.com with SMTP id a30so6514086qvb.12
        for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 13:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=4xLKokMtoYHOqCpRq0iqokvTos3Dp59v+Ad43jO/+Jg=;
        b=kyvh+OPiHcoW/wCh19cp6tuz1VXlhsP1Oz6ofFSYvZt5JBpjuk2+cgMxZlrZd5A8Nw
         utgBeh52KEmrUjR2j7Pd+cgppQVJk9o44eqI7NJGy806/n59psq6bh1IfgSH2ITFfjp5
         e2FqvkHLsjtT8LAwOMfirc6Y7IrSvRQfR/0u80aVRBxmmAilUV99C8kC/TSBnS+3bPqb
         PJWiJyPIAUHLoV6tTOiCam9Pae4Nnwa6rSHalzJ14mAI37LfJQ/G7C63GW/PVR7+xNxF
         G87xSZI3xT0MOqsV9rJW+bSFz6pIXErL+EOIxFqMez76ClAhcJyUczCzY5X9EvoDd8Xe
         M5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=4xLKokMtoYHOqCpRq0iqokvTos3Dp59v+Ad43jO/+Jg=;
        b=JaADSnseY/o9USRbjx7RSdG40iabkQHrVBQas9oOUeL04tDVMW4d0adAZA2NgrkPxp
         c0VOPhKNbOWjwuJalFNq0BBhBOzyRcakwi9hUK+bv6bPmp0/m+4VK0nGGJzU64wToK3H
         fnImYKTLXGeIAFtePxgXMTL7CLkCGkGNNsXWY9ZT8rR09RLNO2a6GcE0vrAv28QdtGQk
         1OMn3r6HsOTuqnYgGTTfz1lqnLXTJjkVQDKTD5W9dF4IL7gGHXl9/xANpxeVdI0PP7FZ
         8Y702rQlpmfpWT2VFCzwFXgyZGPR9euGljsc+6eLyMuQoMoVQji1Zks6xutinXMGqVBC
         B7jg==
X-Gm-Message-State: AOAM533phUQAyGbYYjx5d0bn/JuuvprAaBcAVH6qucJ0Bmrlhuq67VUa
	W3W8RMXkzhTUg8bsFTq744c=
X-Google-Smtp-Source: ABdhPJw+nzRExn6zYTibtuKuNy2EsmJa7LssV/GHn/6wvyw+Hf/i61CbCiTQpBNKv0M/CLvAt51Xcw==
X-Received: by 2002:a05:6214:12ab:: with SMTP id w11mr1820620qvu.14.1619726559423;
        Thu, 29 Apr 2021 13:02:39 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b15sm812500qtg.82.2021.04.29.13.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 13:02:38 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Apr 2021 16:02:37 -0400
Message-Id: <B77AEAD3-732D-40EB-A93A-80572E0CC83D@gmail.com>
References: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu>
In-Reply-To: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: SFLGACETCCTR2R4VITTUJT352GVARBHA
X-Message-ID-Hash: SFLGACETCCTR2R4VITTUJT352GVARBHA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n3xx series questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFLGACETCCTR2R4VITTUJT352GVARBHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2952816365761300006=="


--===============2952816365761300006==
Content-Type: multipart/alternative; boundary=Apple-Mail-694C73DD-699C-476B-AF4F-2DC3F7EA197D
Content-Transfer-Encoding: 7bit


--Apple-Mail-694C73DD-699C-476B-AF4F-2DC3F7EA197D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The N310 uses AD936x family of RF front end devices. They are not speedy to r=
etune.=20

The N320 uses a discrete LO and mixer approach and I would suspect that it=E2=
=80=99s comparable to the WBX.=20



Sent from my iPhone

> On Apr 29, 2021, at 2:33 PM, Hodges, Jeff via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> How many rfnoc Computation Engines (CEs) are available on the N3xx radios =
FPGAs? For example, i read online that the x3xx has 16 CEs.
>=20
>=20
>=20
> How does the tuning speed compare between the N2xx and N3xx radios? I saw a=
 whitepaper a few years back that listed the max sustained hop rate of the N=
210+WBX of approximately 250 hops per second. I'm wondering if the N3xx radi=
os have comparable tune times or faster/slower?
>=20
>=20
>=20
> Thanks,
>=20
>=20
>=20
> Jeff
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-694C73DD-699C-476B-AF4F-2DC3F7EA197D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The N310 uses AD936x family of RF front end=
 devices. They are not speedy to retune.&nbsp;<div><br></div><div>The N320 u=
ses a discrete LO and mixer approach and I would suspect that it=E2=80=99s c=
omparable to the WBX.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Apr 29, 2021, at 2:33 PM, Hodges, Jeff via USRP-users &lt;usrp-users@lists.=
ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-=
family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>How many rfnoc Computation Engines (CEs) are available on the N3xx radios=
 FPGAs? For example, i read online that the x3xx has 16 CEs.<br>
</p>
<p><br>
</p>
<p>How does the tuning speed compare between the N2xx and N3xx radios? I saw=
 a whitepaper a few years back that listed the max sustained hop rate of the=
 N210+WBX of approximately 250 hops per second. I'm wondering if the N3xx ra=
dios have comparable tune times
 or faster/slower?</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-694C73DD-699C-476B-AF4F-2DC3F7EA197D--

--===============2952816365761300006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2952816365761300006==--
