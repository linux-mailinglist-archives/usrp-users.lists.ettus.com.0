Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 118D993F59B
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 14:40:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 370DC385203
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 08:40:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722256804; bh=5vY21Cmkyntj4JUSMvvf2mkwaCYlzjCKt81D9k2ULoo=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ppq+LBYgioYmUjeHwLHmj2kHTv+8AeCmfqkKxMzV2nngO9e+bz5GjczpjTubVXnSJ
	 I8dbOYG/Gc/GsPh8fdeTJbEmZRA4H7JxLY7zS3fHxivpSTneG+bE1Q8wJan8TLJ6Lr
	 uaJJSD6DLDgY7zNX0sWzcTmvjkLwH3iq7W2LP8LB/LGnsIWg+nm3B3COQ8uMijLBSx
	 OuIVH8S3HBsUl1LVZ7vC3SD13skXAVQ1M1U4CXTTnFArbfQBHbVeMIMbJwMm2KqYkf
	 uk+YqpOAgcXA5hc5FMIYfK31PyZkKcD+ULStvVEvw1kSkmUdb3eFoxiVNsDKKP+F8o
	 Wi/tRn/KR/8nA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B4EA38126A
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 08:39:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ExjPpLiM";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-44fe9aa3bfaso19521361cf.0
        for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 05:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722256741; x=1722861541; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gOkCYvPGExg4083uaEnCZYg+MUhpsSWKJA7iDVhM3UQ=;
        b=ExjPpLiMvRAGaYsDiI+mWJmKX72wbNwIMyiDEYz438t2z24DIdBZW28CBCiy3eJZP3
         6MJ2ADoij67n9e/zcDkibSrgqlnGs2Hqov7/iJLTUoBds3AVb49QRXVasEhQuttL3VFU
         s8Vdbo+eAchjBI+/yfDyMuY8tdOunxcE85e/m0Pr8Afpf2hh+UsZJO1kC/eKJ83EdLKc
         z8UWe1A0Kh5D2dlSTQ9x5hVNSGVRWCsUx3hPsIBIRawCQjFf9gT5a/+ltJdM83BAtsvp
         N7IbYwDgXGm6iPrYfff0qPe5vRprhViVuWA+AHiVZQx0VYdHMbXSjShdw4FpSUEJOKpI
         m0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722256741; x=1722861541;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gOkCYvPGExg4083uaEnCZYg+MUhpsSWKJA7iDVhM3UQ=;
        b=G6AucAjq7fbb3dPo1qqOlbZtwfLRsOEyTOiHmTK2KgIWqBOswGeZ7HYJjGp3rcvAKN
         csGlQsNvu5KPyBRLsyLsuAtvo7frhwiYD4JTruBpST94+wK0/Rbd/0IltfpJDpo9Ma/b
         OjRG+gD45c09/h+9Shm8nwU+x7COil3ojtllS8o2IroYptzeoY/FQnky5LOHyV5zbrTv
         YV8NMBOUFWhVIZLOb9Zokn4PdydO70eCtWNV4NRtwP3z2aUP1kiwaIi98g4w+gIiP94d
         oPIfqzZfBNDnLIpb/YWGo9cFAn7l7wH36JlFlzBVwHGNuchMzw1BJsWynSL+EtxtG3Jr
         LEuQ==
X-Gm-Message-State: AOJu0YzrRVT0v1IHKDUdzD1vnpRIl26Xz2MsrmDiwn2AkX87YS6O29Pg
	k4iLBybSgqsRN9+1sFjtWiise3mg7BukTDlx7vDaiUpfzTZqw7jO
X-Google-Smtp-Source: AGHT+IHK5b1Py9eXFmmxjUg4Sxu8XIlImhhKvR6OsQER3RDTQuC+TKvz6TbNCWxG27C9UizHL7m/zg==
X-Received: by 2002:a05:622a:1347:b0:446:3927:5a9 with SMTP id d75a77b69052e-45004d6bacemr116533461cf.10.1722256740273;
        Mon, 29 Jul 2024 05:39:00 -0700 (PDT)
Received: from smtpclient.apple ([64.231.212.86])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44fe814c2bbsm41256691cf.35.2024.07.29.05.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 05:38:59 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 29 Jul 2024 08:38:39 -0400
Message-Id: <52170075-FEA9-4982-A346-554ACD90AEDF@gmail.com>
References: <5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ@lists.ettus.com>
In-Reply-To: <5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ@lists.ettus.com>
To: edenmclaughlin123@gmail.com
X-Mailer: iPhone Mail (21F90)
Message-ID-Hash: A4654WF6CEBEHJLSQ4CFAFIGUKUSMIPO
X-Message-ID-Hash: A4654WF6CEBEHJLSQ4CFAFIGUKUSMIPO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: About the Port Power Ratings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A4654WF6CEBEHJLSQ4CFAFIGUKUSMIPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1025501450911204843=="


--===============1025501450911204843==
Content-Type: multipart/alternative; boundary=Apple-Mail-0E068469-F779-4B51-840E-741DC91137C3
Content-Transfer-Encoding: 7bit


--Apple-Mail-0E068469-F779-4B51-840E-741DC91137C3
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It would depend very much on which USRP. They have used various GPS modules o=
ver the years.=20

A safe bet would be no more than -30dBm.=20


Sent from my iPhone

> On Jul 29, 2024, at 8:13=E2=80=AFAM, edenmclaughlin123@gmail.com wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
> What is the maximum power level for GPS input ports of Ettus SDRs? We are c=
onsidering testing SDRS with a GPS simulator and test the onboard GPSDO but a=
re concerned of damaging either the board or the GPSDO itself.
>=20
> Eden.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0E068469-F779-4B51-840E-741DC91137C3
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It would depend very much on which USRP. Th=
ey have used various GPS modules over the years.&nbsp;<div><br></div><div>A s=
afe bet would be no more than -30dBm.&nbsp;</div><div><br></div><div><br><di=
v><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote=
 type=3D"cite">On Jul 29, 2024, at 8:13=E2=80=AFAM, edenmclaughlin123@gmail.=
com wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<p>Hi,<br><br>What is the maximum power level for GPS input por=
ts of Ettus SDRs? We are considering testing SDRS with a GPS simulator and t=
est the onboard GPSDO but are concerned of damaging either the board or the G=
PSDO itself.<br><br>Eden.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-0E068469-F779-4B51-840E-741DC91137C3--

--===============1025501450911204843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1025501450911204843==--
