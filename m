Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C000F37B2A8
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 01:35:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD195384045
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 19:35:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GJLxMr7D";
	dkim-atps=neutral
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F1FC383EC1
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 19:34:29 -0400 (EDT)
Received: by mail-il1-f171.google.com with SMTP id j20so18638075ilo.10
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 16:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+UCT+lk9/CzkgzkTzRFzcJ4Oi43XR4ECwshgjxbxIJs=;
        b=GJLxMr7DTwJA0LH6oiCv7bL2Gk7kw3iM5O5gyDit5gKnRMAGMA5wOxUeYFH0Jb0UL2
         NwbKYRh+amCXnlOyG7DUqItKb3710mFlJshtdZyIUCH94qswBxzu1GWmCkbRIWpJ/7zi
         Y1zpTthVg1PGiIvh9UQrDsK8MhOdoSVrpzFQegSI9ejILVnqcKIIqszkjpxBoQPWzvC3
         OLJKg9VnMhhImrwhWA7+Wqim1IZqqCXXyIbke2WTZgSf6rt5x1Krz1t+kP0YH9s3gUaW
         dIuhGm80/8r7CCcxgKKyDT2Ov9RDPkb6SKlgQlucourhFWOMmkLS20Q//NDegQSq37hg
         7kCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+UCT+lk9/CzkgzkTzRFzcJ4Oi43XR4ECwshgjxbxIJs=;
        b=Wlm5Z8fMI6dhfVhNAXzbnHIWmS/aqFtpK1OpimvDH+uYBhtCE7nL/EkhI2i+bQq/8H
         hMrNjjh1fS1SHwXg6v81TqBXnl154R3G5V7pBgueK9UBj/FJ8N66P+HMYWdGpxjiU6lY
         RIHz/FmN3Bc2eqdH4pteYaYbc5ZTDb8qv9LbF9cukWU9xhYI8S8qn3MnUV98fSF7PQDY
         qtdaSTlole08+kDZ05/j1v8xv0U0IbjS0BFW9nzivE8lo1zVfXhme1LWLJx/8DBmQEmG
         LwOtNsUMKkovaBUgn75CW1UcTiQTWT6yZuVCw0iLIs11qEqiX5WuydNvqrJlMVXMHEao
         4jRA==
X-Gm-Message-State: AOAM532ygjPQyutMLyxOBqRA7oorIAczADMtpWUMaM8+tiNJ0QFkNglW
	HM9KGi7VDi3ESQXIHrsYyjt2DmeWmEpKErJdL71Mae1/oDg=
X-Google-Smtp-Source: ABdhPJxisXN1DsE/lXzWvpoP8NoAwEy2TkH5rYTSibbAjQ+vrYzKTVbJ0LWymqLNBGhct8C+9eaMnxnHiqUrYB7W8F8=
X-Received: by 2002:a05:6e02:cd3:: with SMTP id c19mr2264228ilj.227.1620776068309;
 Tue, 11 May 2021 16:34:28 -0700 (PDT)
MIME-Version: 1.0
From: wan <liuwsdr@gmail.com>
Date: Tue, 11 May 2021 19:34:16 -0400
Message-ID: <CABNzRJnCfSzBdzV5BrcrtUrGFqUj7D88g_=ZtF9c=3ZvmtJdfg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: TIGMXJPQ6EQI5W7ML5CBCHPRLVR3SEWZ
X-Message-ID-Hash: TIGMXJPQ6EQI5W7ML5CBCHPRLVR3SEWZ
X-MailFrom: liuwsdr@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 with thunderbolt 3 laptop
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TIGMXJPQ6EQI5W7ML5CBCHPRLVR3SEWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5888218407466692448=="

--===============5888218407466692448==
Content-Type: multipart/alternative; boundary="000000000000cfe59d05c21655a3"

--000000000000cfe59d05c21655a3
Content-Type: text/plain; charset="UTF-8"

Hello,

I would like to use the X310 with a thunderbolt 3 laptop (running Ubuntu)
to get as much throughput as possible. I recall from a few years ago, the
recommended solution is to install the 10 GbE network card accessory
<https://www.ettus.com/all-products/10GIGE-KIT/> into the Akitio Node Lite
<https://www.akitio.com/expansion/node-lite>expansion chassis. However, the
Node Lite is EOL.

Have you tested other Akitio chassis like the Node
<https://www.akitio.com/expansion/node>, Node Titan
<https://www.akitio.com/expansion/node-titan>, Node Duo
<https://www.akitio.com/expansion/node-duo>, or expansion chassis from
other brands?

Have you also tested any 10 GbE to Thunderbolt adapters such as ones from
OWC <https://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapter>
and Sonnettech
<https://www.sonnettech.com/product/solo10g-tb3/overview.html>?

Regards,

Wan L

--000000000000cfe59d05c21655a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello, <br><br></div>I would like=
 to use the X310 with a thunderbolt 3 laptop (running Ubuntu) to get as muc=
h throughput as possible. I recall from a few years ago, the recommended so=
lution is to install the <a href=3D"https://www.ettus.com/all-products/10GI=
GE-KIT/">10 GbE network card accessory</a> into the <a href=3D"https://www.=
akitio.com/expansion/node-lite">Akitio Node Lite </a>expansion chassis. How=
ever, the Node Lite is EOL. <br><br></div>Have you tested other Akitio chas=
sis like the <a href=3D"https://www.akitio.com/expansion/node">Node</a>, <a=
 href=3D"https://www.akitio.com/expansion/node-titan">Node Titan</a>, <a hr=
ef=3D"https://www.akitio.com/expansion/node-duo">Node Duo</a>, or expansion=
 chassis from other brands?<br><br></div>Have you also tested any 10 GbE to=
 Thunderbolt adapters such as ones from <a href=3D"https://www.owcdigital.c=
om/products/thunderbolt-3-10g-ethernet-adapter">OWC</a> and <a href=3D"http=
s://www.sonnettech.com/product/solo10g-tb3/overview.html">Sonnettech</a>?<b=
r><br></div>Regards,<br><br></div>Wan L<br><div><div><div><br><br></div></d=
iv></div></div>

--000000000000cfe59d05c21655a3--

--===============5888218407466692448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5888218407466692448==--
