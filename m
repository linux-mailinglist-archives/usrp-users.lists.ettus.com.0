Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCBD8042DE
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 00:51:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42192384CE4
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 18:51:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701733894; bh=I2iwMI8F/GTt22+HjyDfxuiwDk5N7DLOuDD9C21wRto=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xSjfigTNxn+QD5DfpG44apoyM0c8KVp7SF8GQvBCPJID3axLgfXeG+op6t2GgXDLT
	 XdPw2fHvvepbZIH2g+TmkYkMvVtcVMEfiUJ+ix68TWNUrK1stV7tGKl/40woiNqrW9
	 EGeHkq5dFIFwA30t2WuBGkLWGIrn+t0awQ4y7MGFcIoUdNkB779SdOZuRXrAhDhQdw
	 jRAdNUdPYWjcRzsGgXCSsXDfrfqyszzepXVyEzsXPTay7b77MVxrRy5BjDIlGdbvV9
	 uTS3J4+t23ISkw39LpRJawcFZmfqj+RUPgtVnMB7VTJWyzfU41pAEOYtGHEjxrszxY
	 dIB6meAfbzM8A==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 26CA63848E7
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 18:50:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nbU3dI6K";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-67a9febb2bfso29505426d6.1
        for <usrp-users@lists.ettus.com>; Mon, 04 Dec 2023 15:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1701733844; x=1702338644; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ynMEFsN1VzJ4wwmmFnbC50p261vLekEn4qq2J70h8PI=;
        b=nbU3dI6K2ivNr9nq1XjjN96G4N5ZBNaNgnvlaJ2YBT6yfrXAWC5no/nPtuJxInjUOX
         hDXm3gt2DPlxMikFsa+5PX/2KTVQSnNgxVZ/aahwkKlSQEwRyUfPgarQvXsleH5Z+7JJ
         ktN7JV2/z+aVzaAlNnG75/4BC8Uge0ONIEaRh1Hq14Y2+4P2VCsBa7mxeG4hu+nQLPzl
         oISrhfjsj5nZU+4b4MovyF68AhIbifXcmI7xwXvrGNn/E9eGYDWUFLqpeZKF4+MmQvmy
         RDtkSyP5Q1kAZ3DksyYm194Hbl1SbynEiFaG6dj46j1lnZSzDkAVwxafgY0T8AQ3IGty
         DGRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701733844; x=1702338644;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ynMEFsN1VzJ4wwmmFnbC50p261vLekEn4qq2J70h8PI=;
        b=fr1UWMj8yAinqh5hZazUwHi/OSyQhB4EaK2IkkpkbOZH20SK0ZDsETuQ+YJR1NWvGe
         e4COs/GSkemhU5RLPxqZsv22X/FvpuFmRQYAIux+XUdp2wnn9iiGVZacvlEdii7AR0lo
         ZaYQW3YjjPIMbBAc3psTLJJ65tUIsZs6S82xg5xMhYzLH5ZIsDFK4tZjx9Z/qaX5ntzu
         uGEffO5LQMQb2VMAoghjrxADDwwfA7/tu3/QaeS6CacrC3I5ZbwyNqC7Y/8onKG0IA1/
         w8VSnXz+OtZc7VqEl2tGmdqDdcZ535XOj4Ku6MpuVMmssgh3Kzfxo0uIptPPzBClrSXe
         ZAgw==
X-Gm-Message-State: AOJu0YyDn/oBzPKI6ALQXNoyPM/pAddwPAXreeGzTv3aqim8hpHQCpnn
	xK3tGXAisAJvdkG/hSD6Y7OWn16kJqCMEIY+lWwlL2YVbRsrXNFnN/uM2Q==
X-Google-Smtp-Source: AGHT+IHy0iivVhOphJDFh5hePLmGy6vV/7x9zT6TxAGxtu6v1UCmdyAOro4EsHbbs3maqZHcXnnyOrm/ktM7rFXlR9g=
X-Received: by 2002:a0c:ee86:0:b0:67a:bb2b:9180 with SMTP id
 u6-20020a0cee86000000b0067abb2b9180mr381089qvr.70.1701733844227; Mon, 04 Dec
 2023 15:50:44 -0800 (PST)
MIME-Version: 1.0
From: Ettus Research Technical Support <support@ettus.com>
Date: Mon, 4 Dec 2023 17:50:08 -0600
Message-ID: <CACSOXP06eTXEkqOHDoOoaM-K-k1rFB9dqwRBgVw9YXNLEVkHYA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: WDJSBFIH5OD3RNVYYQL74OBVUGD4NURM
X-Message-ID-Hash: WDJSBFIH5OD3RNVYYQL74OBVUGD4NURM
X-MailFrom: support@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcement of Ettus Research Technical Support Changes, Effective 1 January 2024
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDJSBFIH5OD3RNVYYQL74OBVUGD4NURM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5395428905740203964=="

--===============5395428905740203964==
Content-Type: multipart/alternative; boundary="00000000000049afcb060bb7c96b"

--00000000000049afcb060bb7c96b
Content-Type: text/plain; charset="UTF-8"

Hello Community:

We would like to announce a change in the way that NI / Ettus Research
provides technical support. Starting on 1 January 2024, direct email-based
technical support using the "support@ettus.com" email address will be
disabled, and we will transition to the NI Service Request Manager (SRM) to
provide direct technical support, which will become the primary way to
obtain technical support for NI/Ettus USRP hardware and software. We will
continue to monitor and respond to emails sent to "support@ettus.com"
through 31 December 2023.

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

Free technical support options are available through the SDR community
mailing lists, including this one. The mailing lists are a free
community-driven resource that may be monitored by NI / Ettus Research
employees as well as by other experts in the community.


[1] https://www.ni.com/en/support.html

[2] https://www.ni.com/en/shop/resources/creating-account.html

[3] https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000x20LCAQ

[4]
https://www.ni.com/en/shop/services/hardware/hardware-service-programs.html

[5] https://kb.ettus.com/Technical_Support

[6] https://kb.ettus.com/Email

[7] https://kb.ettus.com/NI_SRM

[8] https://kb.ettus.com/Mailing_Lists

--00000000000049afcb060bb7c96b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"mono=
space">Hello Community:<br><br>We would like to announce a change in the wa=
y that NI / Ettus Research provides technical support. Starting on 1 Januar=
y 2024, direct email-based technical support using the &quot;<a href=3D"mai=
lto:support@ettus.com">support@ettus.com</a>&quot; email address will be di=
sabled, and we will transition to the NI Service Request Manager (SRM) to p=
rovide direct technical support, which will become the primary way to obtai=
n technical support for NI/Ettus USRP hardware and software. We will contin=
ue to monitor and respond to emails sent to &quot;<a href=3D"mailto:support=
@ettus.com">support@ettus.com</a>&quot; through 31 December 2023.<br><br>To=
 obtain technical support through NI Service Request Manager (SRM), please =
visit the NI Technical Support Website at [1]. From there, you can access N=
I SRM and submit your service request in three steps:<br><br>Step 1: Visit =
the NI Technical Support Website at [1], and scroll down to &quot;Request S=
upport&quot;, and click &quot;Open A Service Request&quot;. You will be pro=
mpted to log in with your NI account. If you do not yet have an NI account,=
 then you will need to create one, which includes providing valid serial nu=
mber(s) for your NI/Ettus product(s). For more information about this, plea=
se visit the page at [2].<br><br>Step 2: Select the desired service (either=
 &quot;Request Technical Support&quot; or &quot;Repair&quot;). To start an =
RMA for a USRP device, log in to NI SRM, and select &quot;Repair&quot;.<br>=
<br>Step 3: Enter your USRP model number(s) under &quot;Supported Hardware =
Models&quot;, and click &quot;Next&quot; to proceed. Someone from the NI/Et=
tus technical support team will respond to your query within 24 to 48 hours=
 (within two business days).<br><br>For more details about how to open a se=
rvice request, please visit the page at [3].<br><br>The NI/Ettus USRP hardw=
are is entitled to the NI Hardware Warranty Program, which includes one yea=
r of standard technical support. To learn more about this program, please v=
isit the Hardware Service Programs page at [4].<br><br>Please reference the=
 Technical Support page [5], and specifically the Email page [6] and the NI=
 SRM page [7], on the Ettus Research Knowledge Base (KB).<br><br>Free techn=
ical support options are available through the SDR community mailing lists,=
 including this one. The mailing lists are a free community-driven resource=
 that may be monitored by NI / Ettus Research employees as well as by other=
 experts in the community.<br><br><br>[1] <a href=3D"https://www.ni.com/en/=
support.html">https://www.ni.com/en/support.html</a><br><br>[2] <a href=3D"=
https://www.ni.com/en/shop/resources/creating-account.html">https://www.ni.=
com/en/shop/resources/creating-account.html</a><br><br>[3] <a href=3D"https=
://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA03q000000x20LCAQ">https:=
//knowledge.ni.com/KnowledgeArticleDetails?id=3DkA03q000000x20LCAQ</a><br><=
br>[4] <a href=3D"https://www.ni.com/en/shop/services/hardware/hardware-ser=
vice-programs.html">https://www.ni.com/en/shop/services/hardware/hardware-s=
ervice-programs.html</a><br><br>[5] <a href=3D"https://kb.ettus.com/Technic=
al_Support">https://kb.ettus.com/Technical_Support</a><br><br>[6] <a href=
=3D"https://kb.ettus.com/Email">https://kb.ettus.com/Email</a><br><br>[7] <=
a href=3D"https://kb.ettus.com/NI_SRM">https://kb.ettus.com/NI_SRM</a><br><=
br>[8] <a href=3D"https://kb.ettus.com/Mailing_Lists">https://kb.ettus.com/=
Mailing_Lists</a><br><br></font><br></div></div>

--00000000000049afcb060bb7c96b--

--===============5395428905740203964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5395428905740203964==--
