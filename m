Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 567F042A514
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 15:06:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31701383EFF
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 09:06:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="z0N0mWnV";
	dkim-atps=neutral
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 0910B383EE3
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 09:05:46 -0400 (EDT)
Received: by mail-ed1-f49.google.com with SMTP id z20so80794234edc.13
        for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 06:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=5z8EbegNclsZOfkbEo504583ZeiJrYdXNn7eTdGp2N0=;
        b=z0N0mWnVPpNnDeegdjuQTC6RjxCU0cT8YC0yllaozOdnqkXlu7/szXOTItEuvwmycO
         4vm62Tbv55VybA2GQtygC8b1cXmrgUsFBu6PbuymG6qX2QeVbcbXrEm7JSsKFECPCwcP
         kSg3Uw13Oem9a8pLZt3xZGZfoTCaSVaOKMHjow+39+ac0JormhNq7P8u7SkRh3lwtxJl
         M1PWzPoNjLCT4B75fL4/q7U/sb9mXoTRBMfbQP0Gg/+biDRH06CeAq3eIinF+WsXJeHb
         JMevZre1f4+j1kDW4QYdLZPbiAzEaOHr/PC+xDTm6/r6Ki10FkNr3zK0fXyNa05U8DwI
         E/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5z8EbegNclsZOfkbEo504583ZeiJrYdXNn7eTdGp2N0=;
        b=kkCyegiMHDLz2cI0Ok5alzvmz59/O4ex7xKw3GjynUAvEYPFxHGDYRY0hpF71BobKO
         Lg7RV7wbpDVpo0jiZOCtdHyNlUU4szvbTaRSmPezp2EwAtIr8hLAIR9MwiNMwxpvSISt
         EnCL6Ksr2eC/RqNQeyd2Kv7Jc5k+XhSuWLvtAK25Ngo0fyv/FWKX0aJ4pDwPg5MWLagk
         XfAncOGPpyd6/wNPe4jB03mtEAkc+OoFGRgGf7RjAivjFlAL/yDZ9TsRXVJf7vnKDBjV
         FckdqeCDepa9c0UvAmHYyoKmJXicJwHPm8vxsdQpBhIewTxioZz91fNF8bh16mxtiWDM
         tMHQ==
X-Gm-Message-State: AOAM532/BoUKjY1Yb1JeOgNMnYagzhH73HWgUolukJO+U51MUImwFI6Z
	x7lvnr2hHJZrE9cJpKPWbcRt753WRLjJBn7xJJ6XIUwA04gzlaiu
X-Google-Smtp-Source: ABdhPJwVYzwnZ3wlJfQuKifrCF02hxGbivasK8ViDwQz7xOL0KEUW7IdfIlnTeP6ghXEAhC+kYrVGYSqtZTzWipTIzI=
X-Received: by 2002:a17:906:7d42:: with SMTP id l2mr33679529ejp.467.1634043945875;
 Tue, 12 Oct 2021 06:05:45 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Tue, 12 Oct 2021 08:05:35 -0500
Message-ID: <CAAg5+MwrWqaEtTvGCu3GnWDQ23BZtS5dFoNyCCfZhsXFzOi29A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NO5BH4CNEZ24AWGTMT4XGIDA7J5VRELL
X-Message-ID-Hash: NO5BH4CNEZ24AWGTMT4XGIDA7J5VRELL
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.4 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NO5BH4CNEZ24AWGTMT4XGIDA7J5VRELL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5344751604395684150=="

--===============5344751604395684150==
Content-Type: multipart/alternative; boundary="000000000000f1169f05ce2780a3"

--000000000000f1169f05ce2780a3
Content-Type: text/plain; charset="UTF-8"

Hello USRP community,

UHD 4.1.0.4 has been released to address a minor oversight in 4.1.0.3 in
which the version identifier was not updated prior to release. While there
are no other changes between 4.1.0.3 and 4.1.0.4, we recommend the use of
the latter to prevent any confusion.

UHD 4.1.0.4 Release
* uhd
  - Update version in UHDVersion.cmake

Best regards,
Aaron

--000000000000f1169f05ce2780a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Hello USRP community,<br><br>UHD 4.1.0.4 has been released to add=
ress a minor oversight in 4.1.0.3 in which the version identifier was not u=
pdated prior to release. While there are no other changes between 4.1.0.3 a=
nd 4.1.0.4, we recommend the use of the latter to prevent any confusion.<br=
><br>UHD 4.1.0.4 Release<br>* uhd<br>=C2=A0 - Update version in UHDVersion.=
cmake<br><br>Best regards,<br>Aaron</div></div>

--000000000000f1169f05ce2780a3--

--===============5344751604395684150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5344751604395684150==--
