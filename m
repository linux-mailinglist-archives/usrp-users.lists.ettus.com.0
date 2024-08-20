Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC160958B02
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 17:20:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF1AE385466
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 11:20:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724167226; bh=hsSWpju20rXTU2uzvUygV04WlR6L3m9vpxkFasDwU3w=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C/clzD7/ln8UTC/YChowga66xmK9pcji9FIdW4ezaohbkfFx4+4FT1tEQTTO5p685
	 3YoXUiUE1ICWAjjlf5uzzg6H4g4kkG8l9TsTSsPpiPB2Dj/YGR8r4pMBuZQHl5NNdh
	 vjjIC7MJlapJe6sXLESWgcWZytuioJ/Qyq4/OTeWbo6q9PYDKsR1q9iiruI3mj4Upg
	 /p3xL1iIJYUJ4atPhOVgZvBvDV3AOSsKMCsylYJmdUEEKDd3A2sOlND7zkts3vxDWO
	 aPq7E9phvw2g57rm27XpRobCUqkzs52s635HrtYwQdI7lgxo6n51fiE+RaVdAsqV+n
	 c1GRtlXPiG/rQ==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5814D385255
	for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 11:20:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FabAml1k";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6bf6beda038so33630776d6.2
        for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 08:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724167217; x=1724772017; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDgLuOveicMoaCpGbsRgcXMVY698J0WlGkcxYfwdygg=;
        b=FabAml1kIsemQFTF9kWkG9HpldpXZSWwX+BGM3RFGeDRWqA/OKhva88b3+FZsehtFn
         pD7wjZLq6hYKY25mn9v31xzDdWKH+4qSWsMFsuVQSjb73sWPF9mSstM0QDsfNVyKmP0/
         4wDcCjVwups3l401pu7Q6BTrx4tyBk0byFL59Zzigm3SsXUKiyAgNJjq4hKb+KnImwnx
         bR3PvfWBJv1t/qQJ+JP2rB6lZIZnbdgC3NNk/niTJhyXbFqvydGubcSDtJPXV64zI4tC
         f+A+5Nw2IcS3N+btDbpmVgewx93bhh2kZhVc2y3elITmvJ4nr4Qtl3jdm/EdqHF9xPcy
         VL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724167217; x=1724772017;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDgLuOveicMoaCpGbsRgcXMVY698J0WlGkcxYfwdygg=;
        b=KS17HAmtTk5XXCyHhGbU13wrB9E1cuMi/nDbnEOfpO+Zo7vMHt17U+xZs2+kX/rkNJ
         6ly3lYNLVe2vB9uBj277Au1EDnD1l75hL+SBNEBdDDc2cp49DzgKRj6rRxjTBLed3Zzh
         dwsBW/DqAOwrrxhU0VCGCWdy43TmDV6Q7kmUP/RkpUDogyPPJXupL7Iuj5FSj6n6REz9
         2WniGrsAT95ttfCCAuQHtX8my7tMKicZlHEE+6JJPWC7b0mqfQ4D06oFlE6dHCzugMlY
         n4qWO6cnkUpxUAFz9wpDcHefjj7ombPCh6hY2fNEDJUSZa7lBumk9ZujuCRh1js18pSg
         fN3w==
X-Gm-Message-State: AOJu0YztGDVlYAOjnMCUVgzdhe88zjrqJhARdAH6AjwIjmuVIr6qkfsx
	S4Iqp2IDrCdQKgsP40Al3naqAI87px4VupBq+A3NuD0lz1Lrw12e2nXs3A==
X-Google-Smtp-Source: AGHT+IETsKb+zmKJm5Am4EwjWvw8dCvTsFTd1i4i0AzSVi8f99ZpQD9VxHy+gnc7fJloADNXADE3zw==
X-Received: by 2002:a05:6214:459e:b0:6b5:238:2e42 with SMTP id 6a1803df08f44-6bf7ce5b90amr181433866d6.40.1724167216617;
        Tue, 20 Aug 2024 08:20:16 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bf6fdd8875sm53230716d6.16.2024.08.20.08.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 08:20:16 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 20 Aug 2024 11:20:05 -0400
Message-Id: <2C267051-D8CC-4064-BB7C-C351B89E4725@gmail.com>
References: <naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc@lists.ettus.com>
In-Reply-To: <naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc@lists.ettus.com>
To: edenmclaughlin123@gmail.com
X-Mailer: iPhone Mail (21F90)
Message-ID-Hash: 6LNZR3MT4D2MTDHRXTUEF7UCKVC2VZRR
X-Message-ID-Hash: 6LNZR3MT4D2MTDHRXTUEF7UCKVC2VZRR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Synchronizing_B210=27s_with_external_PPS=E2=80=99s_but_without_ref?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6LNZR3MT4D2MTDHRXTUEF7UCKVC2VZRR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3022626472592208966=="


--===============3022626472592208966==
Content-Type: multipart/alternative; boundary=Apple-Mail-CDBB2845-BACF-44E1-9C59-757C55ED770F
Content-Transfer-Encoding: 7bit


--Apple-Mail-CDBB2845-BACF-44E1-9C59-757C55ED770F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The clocks on the boards are good to 2.5PPM. Your timestamp clocks will drif=
t at a rate comparable to that.=20


Sent from my iPhone

> On Aug 20, 2024, at 11:12=E2=80=AFAM, edenmclaughlin123@gmail.com wrote:
>=20
> =EF=BB=BF
> hey marcus,
>=20
> thanks for your response!.. just for the records, what is your supervision=
 on timestamping / time of arrival, do you suspect we might be able to stamp=
 to a good resolution, say downto us-ns levels between the devices?
>=20
> eden.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CDBB2845-BACF-44E1-9C59-757C55ED770F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The clocks on the boards are good to 2.5PPM=
. Your timestamp clocks will drift at a rate comparable to that.&nbsp;<div><=
br></div><div><br id=3D"lineBreakAtBeginningOfSignature"><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug=
 20, 2024, at 11:12=E2=80=AFAM, edenmclaughlin123@gmail.com wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>hey m=
arcus,<br><br>thanks for your response!.. just for the records, what is your=
 supervision on timestamping / time of arrival, do you suspect we might be a=
ble to stamp to a good resolution, say downto us-ns levels between the devic=
es?<br><br>eden.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-CDBB2845-BACF-44E1-9C59-757C55ED770F--

--===============3022626472592208966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3022626472592208966==--
