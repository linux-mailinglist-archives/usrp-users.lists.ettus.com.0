Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 512363A9E4C
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 16:56:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9598F38482D
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 10:56:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MN4HLfjf";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 0102238426C
	for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 10:56:03 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id d196so2848793qkg.12
        for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 07:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=TDEGKqf+0bGiE4Bw9vUkHSQDbw0Jh3uXB+8WRDhRAf8=;
        b=MN4HLfjfgW8ZIzmk0g9CQaMaQyEEnuPN+agDoPjHyUC4sR4lEtuk0Vp9Tl4T2FUPJI
         DZb5d6AdEI7/nYwHvI7EsLpOjZMSPLMv8IGzak6AHTvmQtAVqk0OeBs4vG7D8mpwNO3u
         ZW8e9vPMWcSNdV+wQ2mVWrxNJWNYowvmDELHZitFoa8VExosCW943LNAH07Zhuea/NUy
         YRzQ8pD/AHCWdN1K6Y52CU5DMMhPRXWOQFU61QuYCZN4K4B76jL1Dr9/Fc37wA0UfHPy
         bcGW02ubRDyihNAWwosPrroaMGLuC147GoCsvNIDLudR+NiYFw7MpVsqka0eIW5onLg9
         QUDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=TDEGKqf+0bGiE4Bw9vUkHSQDbw0Jh3uXB+8WRDhRAf8=;
        b=SJW+FCMawSqRdKgY4WZWmrTpdsb5gihyyUDuu1xJIeUUtJZtbkor72z3u+pdBPgsqK
         pLKlLidRTQNb+288kvXXOy6wx2yXbfi1CBVnCPCWe4SszbFs573yo/H8SUQ5ywSOD/q+
         Vkmn3I0g4E+ANFD9gavM8gexnbe5dCzNtKoG2TNswTzm5m85TmIdIY8ho2fiDCY/PMBR
         fnZtutZ19NWS7EkU5w3tPeiD60IGgDbwggrmL6YocA8ZA9g+u2rESfAvKJZa5Q+tmLVo
         nOrlE6gguxP9F82UfmiRplAeC5oudK5+4gJ7B3rvry4meCtfGw2+BDn+om+yYB2dudOC
         6CEA==
X-Gm-Message-State: AOAM53029eT8rJ/B90ZGsTG0FDNkrqi1T56A037I2Yr37G6oGmEk9krh
	bCdmGIJELhGaWQDWZ50jX9iL9x6hfp3G4A==
X-Google-Smtp-Source: ABdhPJxauymHio1VT1HDOzYGMWJcnTukxantjh+hJ179t4OZlQhYwM3Y1luyjqBc2LUfZWpGIyi1Uw==
X-Received: by 2002:a37:b13:: with SMTP id 19mr424688qkl.87.1623855363283;
        Wed, 16 Jun 2021 07:56:03 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id y10sm878340qki.32.2021.06.16.07.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 07:56:02 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Jun 2021 10:56:01 -0400
Message-Id: <01907557-4A28-4815-BAFB-05E2AA74AB6F@gmail.com>
References: <SgKlutc2werc3mMxMppA25e6B1bkXYhHg7NdKcOqo@lists.ettus.com>
In-Reply-To: <SgKlutc2werc3mMxMppA25e6B1bkXYhHg7NdKcOqo@lists.ettus.com>
To: ncondict@gmail.com
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: M4SJVFAG5PDGH2RV6SEPN2LN5DHAT7HE
X-Message-ID-Hash: M4SJVFAG5PDGH2RV6SEPN2LN5DHAT7HE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR uhd_usrp_probe
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4SJVFAG5PDGH2RV6SEPN2LN5DHAT7HE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1541642930543924160=="


--===============1541642930543924160==
Content-Type: multipart/alternative; boundary=Apple-Mail-3327BF95-F76A-4C42-A231-E3F8F154E7BC
Content-Transfer-Encoding: 7bit


--Apple-Mail-3327BF95-F76A-4C42-A231-E3F8F154E7BC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try adding =E2=80=94args =E2=80=9Ctype=3De3xx,product=3De320=E2=80=9D to you=
r uhd_usrp_probe



Sent from my iPhone

> On Jun 16, 2021, at 9:12 AM, ncondict@gmail.com wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I need help with my E320 SDR. I can=E2=80=99t find it when I do uhd_usrp_p=
robe. I have 3.15 uhd install. Please see error attached in the pic.
>=20
> I appreciate any feedback.
>=20
> Regards
>=20
> Nahlah
>=20
> <Screenshot from 2021-06-14 18-01-51.png>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-3327BF95-F76A-4C42-A231-E3F8F154E7BC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Try adding =E2=80=94args =E2=80=9Ctype=3De3=
xx,product=3De320=E2=80=9D to your uhd_usrp_probe<div><br></div><div><br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Jun 16, 2021, at 9:12 AM, ncondict@gmail.com wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hel=
lo, </p><p>I need help with my E320 SDR. I can=E2=80=99t find it when I do u=
hd_usrp_probe. I have 3.15 uhd install. Please see error attached in the pic=
. </p><p>I appreciate any feedback. </p><p>Regards </p><p>Nahlah</p>

<div>&lt;Screenshot from 2021-06-14 18-01-51.png&gt;</div><span>____________=
___________________________________</span><br><span>USRP-users mailing list -=
- usrp-users@lists.ettus.com</span><br><span>To unsubscribe send an email to=
 usrp-users-leave@lists.ettus.com</span><br></div></blockquote></div></body>=
</html>=

--Apple-Mail-3327BF95-F76A-4C42-A231-E3F8F154E7BC--

--===============1541642930543924160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1541642930543924160==--
