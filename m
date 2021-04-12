Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D9935D1DB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 22:19:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8553038412D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 16:19:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jaO93rKN";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B608238479D
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 16:18:54 -0400 (EDT)
Received: by mail-oi1-f176.google.com with SMTP id l131so9671334oih.0
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 13:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=dzYTxeV0PYVaWSKABi5TKg61D4ihiuGCfT1HhkFV+xs=;
        b=jaO93rKNLfiZyRMwxqsqGuCh/tbzVmNCdxnNfv2bJuybl8t+sH+PlHjK1Tr49I0ttW
         f+HNi6t8lq5zh75M+W+weBDqn1+F+J4sxJRSJDZkOLjqkoPYCPzwK9PV6yr2OSUAa5Lc
         089Ijb3QynlZsVdtiOlnCuDMhyZU4iOl33R9BwoPZPnlpGnjbvo8kDFWdqg+d7E7Gof8
         a/h74mcMvHLvwhWVVuPSrrkHJRIMzoFKBsx4t9WIF/jExeDyonwdoEhMYaxDwnnTVHFV
         Bj7u554t36SqaX2rzzfkKHONopvBDK5rvOsaU5x3O6GrNfmmqjD/IOx/0M4+wqQe32jN
         651w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dzYTxeV0PYVaWSKABi5TKg61D4ihiuGCfT1HhkFV+xs=;
        b=uFdS2DauOONS2EEl0/p0f0sS5cl+77g0/6p1xu50fVkpt1x0ZVgkzdFhhkN7Ru5V9S
         q4/ndysJHehkwoTFpH882fcXYjDlWg25w5sTzuJ1izAAjZkQ0LD7vO8H7VdPyd25Oy8m
         s7U3YI6En2/1CKN2x8zkD29dCvPfcz54JUnEgMTdk83LIRfMGr+1QRFA84MVU1ntXnlo
         F0hmdyNvPAiOYVgTkHK6Gf+jsdHI37A80Jpa13nbmqHAkMZejbsnsk3/93CLyrlQAafd
         HxKpLxe2QnzkXxJspyL5doO/M23I53wj5mlqgBXaOQ8a0+hbMK7Ir7ohYhaoFgJYXzYM
         fcPA==
X-Gm-Message-State: AOAM533wBePsP9r84y404z2cmpRZD5ivmL3tdJae8USdYKnr5xrC5JML
	a5csI4eoWMvOUS+VNinrrvfXeu0O9rL5C3B7KtzFWD2+J2M=
X-Google-Smtp-Source: ABdhPJwB9dC2/azScD/PE3Ddj451H8Zf7O9cjAEwvUTMDH7wsjNokS1vJjTJJ6SzRwcTh3OgPgP7ph1BfXpL/7jC/Yk=
X-Received: by 2002:aca:2104:: with SMTP id 4mr710982oiz.124.1618258733788;
 Mon, 12 Apr 2021 13:18:53 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 12 Apr 2021 16:18:43 -0400
Message-ID: <CAB__hTSJrFF+0Mcv_ojiBip7E_zLS0B=fJ_YvWxb6XD2KCL8rQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: SJLSZKW27UFAZIKWJTMKZG62GRRO6LU6
X-Message-ID-Hash: SJLSZKW27UFAZIKWJTMKZG62GRRO6LU6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] White Rabbit configuration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SJLSZKW27UFAZIKWJTMKZG62GRRO6LU6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5949666335991255143=="

--===============5949666335991255143==
Content-Type: multipart/alternative; boundary="000000000000fbb63205bfcc38b4"

--000000000000fbb63205bfcc38b4
Content-Type: text/plain; charset="UTF-8"

Hi,
I am wondering if anyone is presently using White Rabbit synchronization
for N3xx devices.  I am trying to use a SevenSols WR Switch with an N321
and having some difficulties.  I have a few questions:
1) does it matter what IP address is configured for the N321 WR SFP port
(SFP0) or can it remain the default?
2) when properly configured, is it possible to "ping" the WR SFP port?
3) should I be able to ssh to the WR SFP port?
Rob

--000000000000fbb63205bfcc38b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am wondering if anyone is presently using Wh=
ite Rabbit synchronization for N3xx devices.=C2=A0 I am trying to use a Sev=
enSols WR Switch with an N321 and having some difficulties.=C2=A0 I have a =
few questions:</div><div>1) does it matter what IP address is configured fo=
r the N321 WR SFP port (SFP0) or can it remain the default?</div><div>2) wh=
en properly configured, is it possible to &quot;ping&quot; the WR SFP port?=
</div><div>3) should I be able to ssh to the WR SFP port?</div><div>Rob</di=
v></div>

--000000000000fbb63205bfcc38b4--

--===============5949666335991255143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5949666335991255143==--
