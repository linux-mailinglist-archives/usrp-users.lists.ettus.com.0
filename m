Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0173ABA99D
	for <lists+usrp-users@lfdr.de>; Sat, 17 May 2025 13:13:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8C91385D55
	for <lists+usrp-users@lfdr.de>; Sat, 17 May 2025 07:13:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747480399; bh=SozQK/URKQr4NOD4vCkemOjalwEwTc/s4N56DN0EwSY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sUYShM1HGPOXmMjYi3HukUb3hMZpUIJGT37x/AqWpG0vvO6KyR7iDzlIjLZpMLCLh
	 8KihLdX5umTzIy56qYX18TrfFJUKRYe10E+xGUQIl68oqal/Kx2ZEoZAuNGx7oAmUG
	 hxPxE8Q1f5Q5dyeB1el3aBKvsKrAn36fDXSbNAuZVev5SLKICvKZ2CsqTqUXo4mlB7
	 KaUCRZ2ybgU6057wIHknAEtUPP//2HDXhiSAzAhBRgXd4GeIEAag5s+RRkmklHKC7b
	 ARDQASLP/MEkdj1ws6KZfT1C6qe5IHv38eSVue7956CP/9S+7n465mwVYgr9ynxwGI
	 JFCkjXRVhSzNA==
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BE95C385B9D
	for <usrp-users@lists.ettus.com>; Sat, 17 May 2025 07:12:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j77YBMjS";
	dkim-atps=neutral
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-4e041582fd2so568451137.0
        for <usrp-users@lists.ettus.com>; Sat, 17 May 2025 04:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747480355; x=1748085155; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oW4+uPsSDbkP8hlU5WxXmcCni1B/A7h6rhaHuS2N4aQ=;
        b=j77YBMjSvkbwmVeJO9quhVD6DvOV/KeMU60Sd+g/ZIgTMDh2ABRhkAYeivnHIqWdXq
         jB5mLVdkk+rVQRFJvc++/VHBbZ57II/zchyl7NReVWSpcPsummHaI6uErJmcMUqb/PKo
         POutaND/FCKWFCopS0k8t0dNpjalZWPnPsstIjL2CIUINU3970f3RFK/2Fyvdsh7TqMI
         TaxV4j+mczZXz0F5sLdQ2Gx50XTKciNSOZRsIcAWNuoKJlnO7wjloZNxfkb/TzagyHtb
         +MZAKVAsYKZ8bo2N6sq/GtEHgR4bRY5xQpXI0eypicrhgVVkex5BTvXxVsNFgjeExFOZ
         3x0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747480355; x=1748085155;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oW4+uPsSDbkP8hlU5WxXmcCni1B/A7h6rhaHuS2N4aQ=;
        b=XTYm7HxYMtCxiri2a1/QKsGQBlmk1mvEwv++z+CjOrlngpg6SWwSYWbL6TOo3xYFCv
         xG7c0dzEyUuFPZ+ZCvAwBej31/EQYZtBfT+0NEutPQJ/LH8GPZZACTNMMsng+4db6UR3
         qXnscxbi6b3BIBpaL+mppAaxvS06MiSriH15MBe4n9c4Xrhmd7EXrnsZ+OGnBS5iXX3/
         vbTmo37CIP2IcqvhyZdEnrpPGYB0W2qyp5oUN45bgdDxmDldkr+L+n9X1VpQkqEC7NVG
         E45lxaqj0aGtrGT6V1UlWwcyCkptinfheTs2Z4cV648Ypro3/RIB/vago5g1kEI2ya+D
         mZdw==
X-Gm-Message-State: AOJu0Yyt71MdhMf69sYBlBbZnzLlfmjx27KH0/vmksX07043B5xvzsdF
	h7eT2xGU12wqGsyOajtf6eq0sYI+JWx0QI0LtTtEMoXelxyM5cYQYp9zjdTph7V5lCiOIVDn8Ab
	O/tXRjbcD+DrsgCSZSpmtpp2QOxWPLF9Byw==
X-Gm-Gg: ASbGnctYdUThygGHgRKuLymHfPPr0lBkipk/bcZzGdgOhgWalXLX9b9Rk5N8ekI1MHJ
	xilynXPYR89p+cBYp5vu3vyG2zLMyaQxIg64UWHdAoHqErAOYrIizkw2PbxRPK32MUIMezOS/pA
	3MCOJwEC092uVAsmxQWBaxok6QtYEoXonmSA==
X-Google-Smtp-Source: AGHT+IEPG3bOJ59LqAcXmCJWUuvfU/FZh1vAzQiJUhX98k6XaLun8TVVU/H/+5UB4Xhw8SdJiFbmvSqDnUDmltHVUMQ=
X-Received: by 2002:a05:6102:4194:b0:4b6:5e0f:6ddc with SMTP id
 ada2fe7eead31-4dfa6bc7682mr7002353137.14.1747480355005; Sat, 17 May 2025
 04:12:35 -0700 (PDT)
MIME-Version: 1.0
From: Steve Hamn <stevehamn311@gmail.com>
Date: Sat, 17 May 2025 04:12:24 -0700
X-Gm-Features: AX0GCFvCjOGUHQMyPqXfXYcmJGYo4SiFHk__KxPQtynE5e9tUhhw2UPi597Fh4k
Message-ID: <CAOYGa72kLAvH9hPsBF6c4e=gG-XvsJUdmTDuqknwkchy3Jo5Tg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ILAH2RIFNVNPXOPWEVKQJJSLNOUVF2ZY
X-Message-ID-Hash: ILAH2RIFNVNPXOPWEVKQJJSLNOUVF2ZY
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dual x440s equal length 1pps/REF cables?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ILAH2RIFNVNPXOPWEVKQJJSLNOUVF2ZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7280558618665570645=="

--===============7280558618665570645==
Content-Type: multipart/alternative; boundary="000000000000cfebe9063552f9d0"

--000000000000cfebe9063552f9d0
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a pair of x440's I'm trying to phase cohere together. I wanted to
understand how critical it is to have equal length 1PPS and Ref In cables?
Right now I have a 2 ft RF cable going to one and a 1ft RF cable to
another. Will that be a problem?

Thanks

Steve

--000000000000cfebe9063552f9d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I hav=
e a pair of x440&#39;s I&#39;m trying to phase cohere together. I wanted to=
 understand how critical it is to have equal length 1PPS and Ref In cables?=
 Right now I have a 2 ft RF cable going to one and a 1ft RF cable to anothe=
r. Will that be a=C2=A0problem?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">S=
teve</div></div>

--000000000000cfebe9063552f9d0--

--===============7280558618665570645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7280558618665570645==--
