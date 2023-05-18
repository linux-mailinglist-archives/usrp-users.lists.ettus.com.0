Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F05CF7083F8
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 16:36:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16216380E7B
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 10:36:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684420574; bh=GhfVkw0i6FhzHlCH6PxCNczXWT4SV2oLYymEIk5C/iE=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PjzsxZEvHyb92Cz5a4UE5kOBFATEcvHBzI/Mfsc6mR4mFWVVIOjowFrQ3JrelaB3o
	 /vr5aCEC6PFQjQTQgkXy3VvcjkICD3EE+GyoyMxf6NY0TrACmfgTA3xGLyqtk8ZiPn
	 dAz8hDUKL9acv7+2scudtbnNeERdpMZvQV374w2OGvv8pw37TtQd2LmRPTgp+PhXfZ
	 PP6VWckXTEWwAtCnsnpbn1jtyr/pBFiTU3v1j/yC0JiSdqecwQumTxidIkjEakg/P0
	 REgBvfrBN0Nqq7cJIZ/eXNA8IKg026G2Kq5BfUkHH1zghCwWgTeKaS9zATNQg54BYK
	 OTgFvWy/RXogg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F3C6384653
	for <USRP-users@lists.ettus.com>; Thu, 18 May 2023 10:35:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QE7LUpTL";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-3f392680773so11437841cf.0
        for <USRP-users@lists.ettus.com>; Thu, 18 May 2023 07:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684420510; x=1687012510;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ps4Kt2rhL9k90alVJe30ix0qORNXKODaFyS11k3YejU=;
        b=QE7LUpTLEk8G1JC7R8MNQl0zs3NTdc11GEFzkbN4ifFcJamWLJ/adALwyI/Yok1xxa
         HcPVAktEg4Cq1qdXnLm3km2MKF+HQSQz1y3FkkkkFyp5q1gZD2R19g7+vvi328l27bco
         gCor9o6MSW1YwxDJEyMBXNIzUHdD8z+LV5rmhCBhvfSjrAy0l6bUrRLPqmPkvy/EvKk2
         tAGl97r7+tVYfkC/uI4wNQZgkM+cWeZPdOvhJq271oWL4AOBq8l7cyW/WLeTgr48HFDe
         sPDeciOmIzhyVl3mZbZxMx5gQM9H+xk7EJGe/mG1Yg5vr19MmMGQEVxbhHpvEnvWw7h3
         pMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684420510; x=1687012510;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ps4Kt2rhL9k90alVJe30ix0qORNXKODaFyS11k3YejU=;
        b=NQ6iq8lX1B3uWOM+E2kBnDN7RG3tHDDKNMqDFPoJ2e1EDykLobNZ8eiQaEXFNzQlIC
         rW9VgUTNtkdcfRFwyNtpfmUzg6DCXHqru7/rEl/zG1XCZp9WVtYWJcSdHEB/++itkLVS
         mwhk7sg253L/EeEhsdjnBH4dsxJ19hny/y2cgHM11QTqF+ka/XFzOPzNdiyyEzarjqAM
         ainoDihOwr4Jtm6JoQYbBJA1Ro1OIZx9JHjEwSlp3NIFZcXLSDBCw5sWXVrZgcgwEzhZ
         lKONPKVZyog5c66zrX3Yc7AO7ObW3Yp+TRoyjzFZrC7e2PFXY7cislhinApkk5kDkkxB
         kTjw==
X-Gm-Message-State: AC+VfDwKVkaQcuRsoHhc6nec2etBQwJa5UQPF2sYOZIYtaI7AzcIyBsE
	Wc2k4tWxza2oOlc8vsrwjUY=
X-Google-Smtp-Source: ACHHUZ4yEiVy6W7w3tuxodyr18V8TLZfHXrqZagtNDrq2LqhfLlOSpgC7hQtEncXgpYp3H7EcoA0Cg==
X-Received: by 2002:a05:622a:7:b0:3f5:2eb1:a5d9 with SMTP id x7-20020a05622a000700b003f52eb1a5d9mr5531443qtw.63.1684420510618;
        Thu, 18 May 2023 07:35:10 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.gmail.com with ESMTPSA id ez4-20020a05622a4c8400b003eabcc29132sm538090qtb.29.2023.05.18.07.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 07:35:10 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 18 May 2023 10:34:59 -0400
Message-Id: <98335E1E-1009-4A85-BF5E-A5DE0B5C1228@gmail.com>
References: <45818175.2260613.1684417945454@mail.yahoo.com>
In-Reply-To: <45818175.2260613.1684417945454@mail.yahoo.com>
To: zhou <hwzhou@yahoo.com>
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: XQZH6F4M32N5FEBSSY5CQSW5YO5TB7BS
X-Message-ID-Hash: XQZH6F4M32N5FEBSSY5CQSW5YO5TB7BS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Format conversion in UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQZH6F4M32N5FEBSSY5CQSW5YO5TB7BS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6614165918551515333=="


--===============6614165918551515333==
Content-Type: multipart/alternative; boundary=Apple-Mail-84E622F9-E0CF-468C-AD00-3FF35BD19723
Content-Transfer-Encoding: 7bit


--Apple-Mail-84E622F9-E0CF-468C-AD00-3FF35BD19723
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

For fc32 it=E2=80=99s scaled into {-1.0,1.0}

Sent from my iPhone

> On May 18, 2023, at 9:54 AM, zhou via USRP-users <usrp-users@lists.ettus.c=
om> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
> When using  uhd::stream_args_t stream_args("fc32", "sc16"), what is the sc=
alar used in conversion?=20
>=20
> Thanks. =20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-84E622F9-E0CF-468C-AD00-3FF35BD19723
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">For fc32 it=E2=80=99s scaled into {-1.0,1.0=
}<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On May 18, 2023, at 9:54 AM, zhou via USRP-users &lt;u=
srp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"ydp5675111byahoo-style-=
wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">When usi=
ng&nbsp; uhd::stream_args_t stream_args("fc32", "sc16"), what is the scalar u=
sed in conversion?&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></d=
iv><div dir=3D"ltr" data-setdir=3D"false">Thanks.&nbsp;&nbsp;</div><div dir=3D=
"ltr" data-setdir=3D"false"><span><br></span></div><div dir=3D"ltr" data-set=
dir=3D"false"><br></div></div><span>________________________________________=
_______</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.co=
m</span><br><span>To unsubscribe send an email to usrp-users-leave@lists.ett=
us.com</span><br></div></blockquote></body></html>=

--Apple-Mail-84E622F9-E0CF-468C-AD00-3FF35BD19723--

--===============6614165918551515333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6614165918551515333==--
