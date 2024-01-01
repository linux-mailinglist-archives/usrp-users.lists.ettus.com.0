Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA9C821301
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jan 2024 05:17:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6847B384A2F
	for <lists+usrp-users@lfdr.de>; Sun, 31 Dec 2023 23:17:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704082647; bh=0cwG9L9mkOV7wh9K95BNQ8ksT04W8IsZ7li9b3H6k5U=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=a6QUuJuv1BbEkEpLXuIh3IunUKBt+amZGwhOUJv9nJ4m+6I7y7fY8N3EvO2KEybdq
	 ZDGvgUQpnuSikIpj2im8xSU9M8gadTx9QMpLFkc/WZYQfVdFPc9ZuUcTm8AoZlvgku
	 9YHzPHNqBh6pFEmbhfpR+lTZ1HyvZGDxfJfivvYjDN6X5eN/eqKQNDaZKCVYoAKcZL
	 K5qUx5KvFkboiD+lRaaTSKy6dcoimjnpNggrW6DO4kvF18nS3kyRHLzw5cijDsQXZ8
	 76RFQKsFgGVoi+DqCJvIf6OSPYSezsqhV6BvxwI4mc1hlyCrjTZ8ZdqDkA+VNaehOc
	 RIknOemySxGLw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 041103810A8
	for <usrp-users@lists.ettus.com>; Sun, 31 Dec 2023 23:17:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Zg8bOrAl";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6806914dba7so28921306d6.2
        for <usrp-users@lists.ettus.com>; Sun, 31 Dec 2023 20:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1704082633; x=1704687433; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E7g+311xQY1WAcPLWAq160xO2NRMmUTJGdJatIj2Ra4=;
        b=Zg8bOrAlmzBkXmYDAzLqM6EhpMix3BvoOr1/y84YiCbDqEghRVqK2dTi5/dVUqYk2Z
         8hc2gnIAEPNc7GLohF/nEo1Em2FSdVMvg/i3KGPeo0kUGZmMlDLZaB0Np76cDMg+U25n
         Ahl99Bzxt19A2bHzbiw4zs5AVcbVEdLJgOg8Zm6qlEvXtohi9Flz+li4mwspcuzETWkR
         3ITRtJ9ub7/4nj2+hTqvYEJUVLZ0a20JO8Utv8cKZDkfg2rI9PDifDA1tvvniKQC3laj
         beTtLzZiIDD9gdK1ZYQc1d378RS1i+3XUnZ3ar7rTJs7E+aT3ZMhDHWIYczj/Wy3L0lt
         4B+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704082633; x=1704687433;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E7g+311xQY1WAcPLWAq160xO2NRMmUTJGdJatIj2Ra4=;
        b=d6upwKFZI+j9JrFBAjnsYiTlFk5x1fwei1rgKEkggUCldJws/fLMdDQrkmuEoy04Ch
         Cjz4+pmdowc0zrjgvsGe/G2h6ZYG82UMmIADY2Xrl3flypNd5W0svT0rQmgzvrAfquqc
         6zHyDlGKoGqFZF+SuwqIDMjy3jzpAd2e23wVxIKtyHqS+fSYzVotgreMNN4krMBQf5ZL
         h6Pt5jJhCZNTc7sN8Nj9kIoah/oKkgIsx1dwFY6CiAmT9gklLkdn8uMVQYYLyocUuA5R
         FscKh2COqaAFbdK9MVeV9H/dR7d8mE/W7a2/tofWkqznqfSR17G8pAWONsxO/6xhGB+r
         2WSA==
X-Gm-Message-State: AOJu0Yy3f4HVYQBpj1hJx9uzys3PKAqzhWkBzuDuwFnJpFDoTOevg+ao
	SkW+0s7PH9rMlntY/w8MEiNdY2Ii39D+TS+2+HpIsLVxNV15//RCv6IY4mMV7S4v1Q==
X-Google-Smtp-Source: AGHT+IGVbe88px7TbmngwZ3xy+8QeTqmKx3PJSg8ZIToWVo3HCvvzTwN7Zpsqh11FBkG7IYBIb2MJpFSDu0AIL/igOQ=
X-Received: by 2002:a05:6214:224f:b0:680:b3b9:66f9 with SMTP id
 c15-20020a056214224f00b00680b3b966f9mr1486990qvc.65.1704082632909; Sun, 31
 Dec 2023 20:17:12 -0800 (PST)
MIME-Version: 1.0
From: Ettus Research Technical Support <support@ettus.com>
Date: Sun, 31 Dec 2023 22:16:37 -0600
Message-ID: <CACSOXP3=8yq2w3vwrzecHZK1RcZQo5fQp0V1swcxbU8eR2BwJA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: JTFJHDJYJPH2LPDIWC557SYC5GGIL5XB
X-Message-ID-Hash: JTFJHDJYJPH2LPDIWC557SYC5GGIL5XB
X-MailFrom: support@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing Changes to Ettus Research Technical Support (effective 1 January 2024)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTFJHDJYJPH2LPDIWC557SYC5GGIL5XB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7738385559545452803=="

--===============7738385559545452803==
Content-Type: multipart/alternative; boundary="00000000000000b3a4060ddaa8a0"

--00000000000000b3a4060ddaa8a0
Content-Type: text/plain; charset="UTF-8"

Hello Community:

We would like to announce a change in the way that NI / Ettus Research
provides technical support.

Effective 1 January 2024, the NI/Ettus technical support team has changed
the way that we provide technical support for NI/Ettus USRP hardware and
software. We have transitioned to the NI Service Request Manager (SRM) to
provide direct technical support.  The NI SRM system is now the primary way
to obtain technical support for NI/Ettus USRP hardware and software. The NI
SRM system can be used to submit new requests for technical support as well
as request repairs (RMA).

To obtain technical support through NI Service Request Manager (SRM),
please visit the NI Technical Support Website at [1]. From there, you can
access NI SRM and submit your service request in three steps:

Step 1: Visit the NI Technical Support Website at [1], and scroll down to
"Request Support", and click "Open A Service Request". You will be prompted
to log in with your NI account. If you do not yet have an NI account, then
you will need to create one, which includes providing valid serial
number(s) for your NI/Ettus product(s). For more information about this,
please visit the page at [2].

Step 2: Select the desired service (either "Request Technical Support" or
"Repair"). To start an RMA for a USRP device, log in to NI SRM, and select
"Repair".

Step 3: Enter your USRP model number(s) under "Supported Hardware Models",
and click "Next" to proceed. Someone from the NI/Ettus technical support
team will respond to your query within 24 to 48 hours (within two business
days).

For more details about how to open a service request, please visit the page
at [3].

The NI/Ettus USRP hardware is entitled to the NI Hardware Warranty Program,
which includes one year of standard technical support. To learn more about
this program, please visit the Hardware Service Programs page at [4].

Please reference the Technical Support page [5], and specifically the Email
page [6] and the NI SRM page [7], on the Ettus Research Knowledge Base (KB).

Free technical support options are available through several SDR community
mailing lists [8], including this one. The mailing lists are a free
community-driven resource that is often monitored by NI / Ettus Research
engineers as well as by many other experts in the SDR community.


[1] https://www.ni.com/en/support.html

[2] https://www.ni.com/en/shop/resources/creating-account.html

[3] https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000x20LCAQ

[4]
https://www.ni.com/en/shop/services/hardware/hardware-service-programs.html

[5] https://kb.ettus.com/Technical_Support

[6] https://kb.ettus.com/Email

[7] https://kb.ettus.com/NI_SRM

[8] https://kb.ettus.com/Mailing_Lists

--00000000000000b3a4060ddaa8a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">Hello Community:<br><br>We would like to announce a change=
 in the way that NI / Ettus Research provides technical support.<br><br>Eff=
ective 1 January 2024, the NI/Ettus technical support team has changed the =
way that we provide technical support for NI/Ettus USRP hardware and softwa=
re. We have transitioned to the NI Service Request Manager (SRM) to provide=
 direct technical support.=C2=A0 The NI SRM system is now the primary way t=
o obtain technical support for NI/Ettus USRP hardware and software. The NI =
SRM system can be used to submit new requests for technical support as well=
 as request repairs (RMA).<br><br>To obtain technical support through NI Se=
rvice Request Manager (SRM), please visit the NI Technical Support Website =
at [1]. From there, you can access NI SRM and submit your service request i=
n three steps:<br><br>Step 1: Visit the NI Technical Support Website at [1]=
, and scroll down to &quot;Request Support&quot;, and click &quot;Open A Se=
rvice Request&quot;. You will be prompted to log in with your NI account. I=
f you do not yet have an NI account, then you will need to create one, whic=
h includes providing valid serial number(s) for your NI/Ettus product(s). F=
or more information about this, please visit the page at [2].<br><br>Step 2=
: Select the desired service (either &quot;Request Technical Support&quot; =
or &quot;Repair&quot;). To start an RMA for a USRP device, log in to NI SRM=
, and select &quot;Repair&quot;.<br><br>Step 3: Enter your USRP model numbe=
r(s) under &quot;Supported Hardware Models&quot;, and click &quot;Next&quot=
; to proceed. Someone from the NI/Ettus technical support team will respond=
 to your query within 24 to 48 hours (within two business days).<br><br>For=
 more details about how to open a service request, please visit the page at=
 [3].<br><br>The NI/Ettus USRP hardware is entitled to the NI Hardware Warr=
anty Program, which includes one year of standard technical support. To lea=
rn more about this program, please visit the Hardware Service Programs page=
 at [4].<br><br>Please reference the Technical Support page [5], and specif=
ically the Email page [6] and the NI SRM page [7], on the Ettus Research Kn=
owledge Base (KB).<br><br>Free technical support options are available thro=
ugh several SDR community mailing lists [8], including this one. The mailin=
g lists are a free community-driven resource that is often monitored by NI =
/ Ettus Research engineers as well as by many other experts in the SDR comm=
unity.<br><br><br>[1] <a href=3D"https://www.ni.com/en/support.html">https:=
//www.ni.com/en/support.html</a><br><br>[2] <a href=3D"https://www.ni.com/e=
n/shop/resources/creating-account.html">https://www.ni.com/en/shop/resource=
s/creating-account.html</a><br><br>[3] <a href=3D"https://knowledge.ni.com/=
KnowledgeArticleDetails?id=3DkA03q000000x20LCAQ">https://knowledge.ni.com/K=
nowledgeArticleDetails?id=3DkA03q000000x20LCAQ</a><br><br>[4] <a href=3D"ht=
tps://www.ni.com/en/shop/services/hardware/hardware-service-programs.html">=
https://www.ni.com/en/shop/services/hardware/hardware-service-programs.html=
</a><br><br>[5] <a href=3D"https://kb.ettus.com/Technical_Support">https://=
kb.ettus.com/Technical_Support</a><br><br>[6] <a href=3D"https://kb.ettus.c=
om/Email">https://kb.ettus.com/Email</a><br><br>[7] <a href=3D"https://kb.e=
ttus.com/NI_SRM">https://kb.ettus.com/NI_SRM</a><br><br>[8] <a href=3D"http=
s://kb.ettus.com/Mailing_Lists">https://kb.ettus.com/Mailing_Lists</a><br><=
/font><br></div></div>

--00000000000000b3a4060ddaa8a0--

--===============7738385559545452803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7738385559545452803==--
