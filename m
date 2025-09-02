Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CD8B3F6C3
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 09:34:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BBBA385947
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 03:34:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756798446; bh=u7WHSZdG+EEigM7mtQ0jcZmk9rJV04dnHyUDKmEVm/A=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=ynkOlGJqkf8eAR0RVqQxnQg6Km59IqoqupLskvs7ZB2UGHNP3fp0qNclpCh8fDLEy
	 U3JWyJallxWPlQm3fQJO0ftve326WNcGzxoKQ9PI1Aoj6JKl5w3unIyY2Pfu5PMr6p
	 5GWQXBeWHlp5V8fwtmOm/ThFu9a7jQ7wuJ/AG1pMOQMj2N+fR0z+w6xy8vcs8l644A
	 bgz02VjfdMFl06BeGvtvmbYedxl9ID3jCgQnnEuz00JgFibRTMhM5dIjUVZEli2DdC
	 YEIYKeQkOYJKovKdjfyE/R+7CsJCVd7CKXV5zPkRROayR2S4TVskk9jKPwuXylQ9Xm
	 iugwBbF95pIBQ==
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 00551383E3A
	for <usrp-users@lists.ettus.com>; Tue,  2 Sep 2025 03:33:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vvdntech.in header.i=@vvdntech.in header.b="Etrc+8QI";
	dkim-atps=neutral
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-53096b2c5c9so130273137.0
        for <usrp-users@lists.ettus.com>; Tue, 02 Sep 2025 00:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vvdntech.in; s=google; t=1756798428; x=1757403228; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fg+bnLt9k+Sqj4HFrOqIVoVT9MJpoxCDwzxIoHMJEFw=;
        b=Etrc+8QIGPptvKCw+nsrl94Jhcpx943RpOxL1O0vCtG69PmArOtChdTG4CumThlgUy
         jm3nuwyDJUwgcBgO11bUXHujM+rLqwLiq9cOLkrJzLKAzzKSM2IqHUxt/VBWh0V7BvOW
         W0UZDgGNKxQKUN83kmlg17wEinPVskucS7p20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756798428; x=1757403228;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fg+bnLt9k+Sqj4HFrOqIVoVT9MJpoxCDwzxIoHMJEFw=;
        b=cYeN4Y33HyG+rtKSu6jUkCUt+kzOLc4XJ3IF5VrRv/udmAK4clrpfkTIrk5AHvTa5q
         F2N7ps6XbmulMoNnfRe1hKiVAabeDehZImDFdi+W8d+9vS2V/pK1PwnFqJhIyRk/Myx2
         KzF/opd5Kc8J9iuAJ0oza1j6Vypl+ODvmQ28pG8KooL45C90RbGGxAjhx6c2O+GEmHcy
         WtmG9J1Pk/kHr0jrk651KFKgmiijY15Pqaelxir8XI2vouTrEbM94C1RsOj/cIIkMyxn
         ZirNyO8kK0DWw/wViBcy6pEnOPG8m3TJn1G6pvSIDvOdXNoMbUFM08JjGM7FXBoby0Db
         sEYA==
X-Gm-Message-State: AOJu0Yx75ZvEDmcrlvo2TgAZQediISyoTKofefElMDbdVe8LpDvv1BEJ
	7sEA7fnT4DgrwbZF25jb8W0tt+V4nTQvYHrqX2Qw2Zy8Vt7jVc82FK8HWS6U0Pc2S/QSflj63XB
	5i7A3ti/Hd9QKhFR5iCB2sqju5fYHtQJWIjLyIK1aB53/7WyQb2th/8G8orNsjdTJUYniZvAn3a
	JtQg6IAqsXRzuNGLL8qEBCupJB6xbHDjcEox7lClEk8aEq
X-Gm-Gg: ASbGncutEBoTLxP6agf/cSo7c11MyTWhDaPAG4Tv1vC1kJS0NNun6RxARv1fE5fdi8e
	BbRTndDoVOy8dnkD3IB/wccn9gopAmgC6L5ol5CFHjuYf2/iX+PHlVzvbTrIJMRTVl4HfISorKS
	NRgKa+/uKd0S6Qnta6jq/EF22BBGmeSxTu7KaqUcLYt7GVUrStIdDUTUeBSit9cQc++CQudXboM
	JbvmL0=
X-Google-Smtp-Source: AGHT+IHyPJaVMnBGPnrd46Lm9QeM6bmG7fgS9usnjZCiy7c02nX2I9combPKv7s2+W2XrCiJmqnkXyy1nSo7tX50mfY=
X-Received: by 2002:a05:6102:5a8c:b0:524:c7ab:6bef with SMTP id
 ada2fe7eead31-52b1b809c7fmr2520566137.22.1756798427981; Tue, 02 Sep 2025
 00:33:47 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 2 Sep 2025 13:03:37 +0530
X-Gm-Features: Ac12FXwcPfYlem5ovNu7F6V7Z8Rsue1TgNQC-YMENyD9ShVYumfs6Jo70CR0IDI
Message-ID: <CAPP35V_R40Cfwn=jRhO60mc7Rf=3v1J3JtW2sPVDhx=NF9S9JQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KXLH3HIGIQFBM6UNYQ2ZYFYWUV5EH456
X-Message-ID-Hash: KXLH3HIGIQFBM6UNYQ2ZYFYWUV5EH456
X-MailFrom: ravi.paswan@vvdntech.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Visualization_of_USRP_Signals_in_C++_Application_=E2=80=93_Best_Practices=3F?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXLH3HIGIQFBM6UNYQ2ZYFYWUV5EH456/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ravi Paswan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ravi Paswan <ravi.paswan@vvdntech.in>
Content-Type: multipart/mixed; boundary="===============2248775352934982984=="

--===============2248775352934982984==
Content-Type: multipart/alternative; boundary="0000000000003dff30063dcc82a1"

--0000000000003dff30063dcc82a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear USRP Community,

I=E2=80=99m currently working on a project using a *single USRP device* and
programming it in *C++ via the UHD API*. My goal is to *receive baseband
samples and visualize them* (time domain, spectrum, etc.) in real time or
near-real time.

I understand that UHD allows only one application to access the USRP device
at a time, so running a separate Python/GNU Radio application for
visualization concurrently is not an option for me.

I=E2=80=99d appreciate any advice or best practices on the following:

   1.

   *What are the recommended approaches for visualizing signals directly
   within a C++ application* that interacts with the USRP?
   2.

   Has anyone successfully used C++ GUI libraries like *Qt
   (QCustomPlot/Qwt)* or *Dear ImGui + ImPlot* for real-time signal
   plotting?
   3.

   Are there any examples or open-source projects demonstrating signal
   acquisition from UHD and real-time visualization in C++?
   4.

   Would it be better to log the data to disk in C++ and visualize it
   separately post-capture (e.g., in Python), especially for debugging?

Any insights, shared experiences, or example code would be greatly
appreciated.

Best regards,
*Ravi Paswan*

--=20
_Disclaimer:=C2=A0_=C2=A9 2025 VVDN Technologies Pvt. Ltd. This e-mail cont=
ains=20
PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of the=
=20
addressee(s). If you are not the intended recipient, please notify the=20
sender by e-mail and delete the original message. Further, you are not to=
=20
copy, disclose, or distribute this e-mail or its contents to any other=20
person and any such actions are unlawful.__

--0000000000003dff30063dcc82a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Dear USRP Community,</p>
<p>I=E2=80=99m currently working on a project using a <strong>single USRP d=
evice</strong> and programming it in <strong>C++ via the UHD API</strong>. =
My goal is to <strong>receive baseband samples and visualize them</strong> =
(time domain, spectrum, etc.) in real time or near-real time.</p>
<p>I understand that UHD allows only one application to access the USRP dev=
ice at a time, so running a separate Python/GNU Radio application for visua=
lization concurrently is not an option for me.</p>
<p>I=E2=80=99d appreciate any advice or best practices on the following:</p=
>
<ol>
<li>
<p><strong>What are the recommended approaches for visualizing signals dire=
ctly within a C++ application</strong> that interacts with the USRP?</p>
</li>
<li>
<p>Has anyone successfully used C++ GUI libraries like <strong>Qt (QCustomP=
lot/Qwt)</strong> or <strong>Dear ImGui + ImPlot</strong> for real-time sig=
nal plotting?</p>
</li>
<li>
<p>Are there any examples or open-source projects demonstrating signal acqu=
isition from UHD and real-time visualization in C++?</p>
</li>
<li>
<p>Would it be better to log the data to disk in C++ and visualize it separ=
ately post-capture (e.g., in Python), especially for debugging?</p>
</li>
</ol>
<p>Any insights, shared experiences, or example code would be greatly appre=
ciated.</p>
<p>Best regards,<br><b>Ravi Paswan</b></p></div>

<br>
<div style=3D"text-align:left"><i style=3D"font-family:georgia,serif;font-s=
ize:small;color:rgb(80,0,80)">Disclaimer:=C2=A0</i><i style=3D"font-family:=
georgia,serif;color:rgb(80,0,80);font-size:12px;text-align:justify">=C2=A9 =
2025 VVDN Technologies Pvt. Ltd. This e-mail contains PRIVILEGED AND CONFID=
ENTIAL INFORMATION intended solely for the use of the addressee(s). If you =
are not the intended recipient, please notify the sender by e-mail and dele=
te the original message. Further, you are not to copy, disclose, or distrib=
ute this e-mail or its contents to any other person and any such actions ar=
e unlawful.</i></div>
--0000000000003dff30063dcc82a1--

--===============2248775352934982984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2248775352934982984==--
