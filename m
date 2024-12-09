Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 595CB9E896A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2024 04:03:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC509385B36
	for <lists+usrp-users@lfdr.de>; Sun,  8 Dec 2024 22:03:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733713393; bh=/tPiNJ6zIsC6jusW3wXrvzHn+HCaBCS1WD5dnYb/aUQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=a4WB2lEsEnAP7Couf9cK53PWGeMwNS+YU50cz+SKBWytwikZN19pV2Ssu+wIGn6KU
	 tOkMSt2w2JXtJ9Q4dbjY11SXx2Oy9VUy+/mwoKxapsAmRwCmFRtDm0X2y/YlsUrYap
	 kzPJ/DelsRtOwma4jvQioOFVqHahv6u8jCDPvY9dF5tZTkXE7/aR3AuS1zunn9EhlV
	 wIKgcUUql6ABC0P7Xz85RtOHb87i7vHJliZVaGD674RI03eu9upjHbd6BqpvjAL4tp
	 vSItb01MBCs5e35YvZZf4p/kqkmak1eTS08mITGBVcHsk8qdCmSki/QTJg2nm8eN42
	 jggyXL0MLJhZw==
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by mm2.emwd.com (Postfix) with ESMTPS id E7A39385A5E
	for <usrp-users@lists.ettus.com>; Sun,  8 Dec 2024 22:02:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CaErglnT";
	dkim-atps=neutral
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434a1fe2b43so40447295e9.2
        for <usrp-users@lists.ettus.com>; Sun, 08 Dec 2024 19:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733713339; x=1734318139; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7zWadlbrN9Reh9CwZ8w2UCjs3K3z4uLdHOuuImTcngo=;
        b=CaErglnTq4vskpTEoWVT15NZJP9X4/G03kwgwxExtpczurV8Lb3iLFfArLU4Ay/87X
         u9tYDDiJKttEX8dJeV60RHFM43WYAJTG9r9lMG+DKZgLIcF45Kj/y0+VSlSouWnTzNEd
         W2hkjJ6lc0aAmou7Q0J5CTa0clAEWj51NWNBC7HLY7qiiJEclD/CZ50HlzWSFayw88+R
         Z391+fB+CEnm+R4RD+s3HVW4ghG4I4jcBt25wzfWwxT2vIkeBTL7OPHOutuEKSufZWIz
         GNYwB8lSXz1gFOO6BfJopao8Ysbh4q0k9+bv8UiUdCJKfwsA65xamfdcnMPxYqhL9GWH
         Dlpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733713339; x=1734318139;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7zWadlbrN9Reh9CwZ8w2UCjs3K3z4uLdHOuuImTcngo=;
        b=kRqNQyjimBY5tzelgweGeL5THII34AdVnppOkiMeZS0t/XfVdDHqmXNbSZ9JI0G8ym
         bh1gVanZrG0JJhEgJnD+Re9SCG8SHbRze3raUAvsDyxJrupB6AZvzBb+iDmgEypkkO3i
         8EbsKUaDNVAdfpnjkxc1JBSv089xdzEsVpYWxQusVCgVcHRKv2t6wow8zTnkkJ+P1Mr/
         ZHbf4+/iczGKAKL82tzpY5ot/EMCgKRpUMqrtmnVnQ1gukMbQGuiz7mAxMJRNBEVDsjC
         j6emu47ojQaB6t50sZ7ig4e3iL/00n5mK/uUqtNAAyI/ZZYz83wQwkymBpghmY8RoT38
         COYg==
X-Gm-Message-State: AOJu0YwQMqJPAjb3WTbU3t6Tee+3iNpjKkGGmG2xJixmlKu+brqJgcKr
	yrw1J9e07/3LghLxqvX32/BcNzsCSsBrUZZtAb0fTY5dCoKI6iMv1XnDHPWA5HPjO871JMpZRpJ
	fcKHAvBr2noxbpy2eD3IBfE1eVnJCiA==
X-Gm-Gg: ASbGnctt0McfSk79iBi/7kzUXWiMHu0GIBjtVJMHSe5MqAnXgzB/ihchLNywb+wCncu
	3FbTikmK6WUoqYqtebgcAnlcoGpOp5j5XmYOLA8gU16ok
X-Google-Smtp-Source: AGHT+IG68wiMdTFONyfQk552V0nICgH6fZNGFnwByhDfaCUZIkzWC2OivNsECGmInoz2v5sFxZeVOsgY+66hXEZF29Q=
X-Received: by 2002:a05:6000:1f85:b0:382:5141:f631 with SMTP id
 ffacd0b85a97d-3862b36c07amr8733879f8f.29.1733713338699; Sun, 08 Dec 2024
 19:02:18 -0800 (PST)
MIME-Version: 1.0
From: Maurycy Z <10maurycy10@gmail.com>
Date: Sun, 8 Dec 2024 20:01:42 -0700
Message-ID: <CAHHfRLNU=UF_3Eq4HDqT5So4LV__+mfeixVgnj0raY5W=guz+Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YNBOO5WJLWUP2TDQPYA5UF2KPYYW3MRQ
X-Message-ID-Hash: YNBOO5WJLWUP2TDQPYA5UF2KPYYW3MRQ
X-MailFrom: 10maurycy10@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Finding a case for the white B200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNBOO5WJLWUP2TDQPYA5UF2KPYYW3MRQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8190673315678640095=="

--===============8190673315678640095==
Content-Type: multipart/alternative; boundary="000000000000b220050628cd97c9"

--000000000000b220050628cd97c9
Content-Type: text/plain; charset="UTF-8"

Does anyone know where I could find a case for the older white PCB USRP
B200? I can't find one on the Ettus site.

-- 
days since last timezone issue: -1

--000000000000b220050628cd97c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Does anyone know where I could find a case for the ol=
der white PCB USRP B200? I can&#39;t find one on the Ettus site.</div><div>=
<br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><font size=3D"1"><font face=3D"arial, sans-serif">days since last =
timezone issue: -1</font></font></div></div></div>

--000000000000b220050628cd97c9--

--===============8190673315678640095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8190673315678640095==--
