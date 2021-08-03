Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 899E73DF823
	for <lists+usrp-users@lfdr.de>; Wed,  4 Aug 2021 00:56:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6E2C38416C
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 18:56:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hhRyZQq8";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id F2A86384558
	for <USRP-users@lists.ettus.com>; Tue,  3 Aug 2021 18:56:03 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id t68so1019971qkf.8
        for <USRP-users@lists.ettus.com>; Tue, 03 Aug 2021 15:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=SY8tE6HLRDfmbaMTPJHgRAzKsOUZg6NNcwhdIQ44gTo=;
        b=hhRyZQq8DhQ3oPyZSP329LuaPC0lm8nNMkTWAuFMQjMvFUgWYS7w7SwQ/GF3EnDwwq
         H8QOyZK5Zrer0ohFlmfsjNuGu3NxTH9+IFTIgprNgN1ELfo68mbYj4D2efnpzROUCwxt
         OmbneCIHjiva/exCv5gSmjpUFQQcC7Hvg/E9nUsodwsonDWXUuPib9g/x1SEQ4n2iVqZ
         +jStSNE/m/gYtwuWg2CZ8W5OUrz/DujNAqMyz8TiOebj93s7Z4vR6Sq0aTI+O48Iqesk
         9VNeeG8JmMzTLM+ubyMEL3TL6xAz0BikBUcV+qUE95fNe5dANiJ5P795DNu0Yhlgv57G
         ZGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=SY8tE6HLRDfmbaMTPJHgRAzKsOUZg6NNcwhdIQ44gTo=;
        b=SrS4xKXncABW10PlN3dnAQCf8GmUE21a7KJvq8Tfx7rtY51jSzMWEsRl8kumfQpgqm
         rZC2iR7JO5FR8tbiO7hTEcJi0FKv9p/epkV64hQ3DyvdrMK6yE1kLQl+IomwBEc1Nfva
         LwsywIt8/s5QoHhkyTUe1GG3ng9bRnPo7f2c44cHxkbkUtl21wPHcTr0AsquMfiFbjkM
         cSRbAw33asI2mi25WPHZpTKNerKkf4iIOCKrciAnyWnU9lmzpd0tDHgsezf+HYAXU1xV
         JzS8PwGCy+sNmZnQ7dKoyRKLj9vI/yWhHiqO3WzPdmjkA59wmDKJHcZshcQdyljdAYV2
         s+xQ==
X-Gm-Message-State: AOAM530ojfKh0i7O7xjSzRk2OJx6Q6tTAumvOCgxwk6MEsLEwr5dWiMY
	YiiopFW4oZti83k5ypU3QvTVo3plyPg=
X-Google-Smtp-Source: ABdhPJzF2uUFaHxiW2HGcvvJesjfU0gZRSsqsFyIFt2Eqcnks8jdVkwcpPiZJrJ0Vy/21LgRWvqiew==
X-Received: by 2002:a37:a1cf:: with SMTP id k198mr23272025qke.259.1628031363397;
        Tue, 03 Aug 2021 15:56:03 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id f62sm216153qke.135.2021.08.03.15.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:56:03 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 3 Aug 2021 18:56:02 -0400
Message-Id: <09177E24-752E-49E5-A1BB-9274C4F72EA1@gmail.com>
References: <d8016aba-3086-4e85-93e3-14dbfb3020f6@Spark>
In-Reply-To: <d8016aba-3086-4e85-93e3-14dbfb3020f6@Spark>
To: Ernest Poletaev <epoletaev@i-blades.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 4YC4ER6BOKSN32RXMSVB5UWJWWE24VJM
X-Message-ID-Hash: 4YC4ER6BOKSN32RXMSVB5UWJWWE24VJM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Low power mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YC4ER6BOKSN32RXMSVB5UWJWWE24VJM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3617408835760812603=="


--===============3617408835760812603==
Content-Type: multipart/alternative; boundary=Apple-Mail-5DCE1A9A-C2B9-4D68-837A-4DA71E812480
Content-Transfer-Encoding: 7bit


--Apple-Mail-5DCE1A9A-C2B9-4D68-837A-4DA71E812480
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My gut tells me this would require exotic power management support in the FP=
GA fabric itself. Which it doesn=E2=80=99t as far as I know, have.=20

Sent from my iPhone

> On Aug 3, 2021, at 6:44 PM, Ernest Poletaev <epoletaev@i-blades.com> wrote=
:
>=20
> =EF=BB=BF
> Hello,
>=20
> Power consumption is low until processing is started for the first time af=
ter FPGA firmware loaded.
> =46rom this point power consumption remains the same even if processing is=
 stopped.
>=20
> Power cycle will reduce power consumption but result in requiring to load =
FPGA firmware which is lengthy process.
>=20
> Is it possible to temporarily reduce B205mini power consumption without re=
quiring to reprogram FPGA?
>=20
> Using libuhd or with hardware mod or by modifying FPGA source code?
>=20
> Best Regards,
> Ernest
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-5DCE1A9A-C2B9-4D68-837A-4DA71E812480
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My gut tells me this would require exotic p=
ower management support in the FPGA fabric itself. Which it doesn=E2=80=99t a=
s far as I know, have.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 3, 2021, at 6:44 PM,=
 Ernest Poletaev &lt;epoletaev@i-blades.com&gt; wrote:<br><br></blockquote><=
/div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<title></title>


<div name=3D"messageBodySection">
<div dir=3D"auto">Hello,<br>
<br>
<span style=3D"color:var(--textColor);background-color:var(--backgroundColor=
)">Power consumption is low until processing is started for the first time a=
fter FPGA firmware loaded.</span><br>
=46rom this point power consumption remains the same even if processing is s=
topped.<br>
<br>
Power cycle will reduce power consumption but result in requiring to load FP=
GA firmware which is lengthy process.<br>
<br>
Is it possible to temporarily reduce B205mini power consumption without requ=
iring to reprogram FPGA?<br>
<br>
Using libuhd or with hardware mod or by modifying FPGA source code?</div>
</div>
<div name=3D"messageSignatureSection"><br>
<div class=3D"matchFont">
<div dir=3D"auto">Best Regards,
<div dir=3D"auto">Ernest</div>
</div>
</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-5DCE1A9A-C2B9-4D68-837A-4DA71E812480--

--===============3617408835760812603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3617408835760812603==--
