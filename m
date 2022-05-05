Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8597B51C1D0
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:01:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8021738450E
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 10:01:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651759317; bh=acxgNiWmTaigerr7Lr73K8TPF9jEP2RHN1fkDGHaC1Y=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KC94pXebBUKWep5kZWnKGZE93W3l4dPjBmwD+pNE+gNH+p1WOdWzkm87EuxcDs7id
	 X59L2knVmZ+UNejWFdaVIC4i8gJNwnbltBXBdQmNlvOrzTxdcIhs021DL3rnKBVTxZ
	 MIyHarXtqVFZoaDt2mkg4RXM8fa5afXwwttlrB2pEKvaQkl9Dq++0LTbefqUkwQ39a
	 TeXc3/+YvTOO6n9Fz15wOksVQGhmyW94S8b5YmmxNWWN/zw0pTGXbTDFmeJayUW9nh
	 7IFudYTO0mb/FGdbyurGwOszC62L/IKUP4H08YC6MazreH4Z4tkWS8VLiMt1ASpzdL
	 +bHZNTctwEwiQ==
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 59B7D384B52
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 10:00:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="atb1EFrh";
	dkim-atps=neutral
Received: by mail-io1-f50.google.com with SMTP id f2so4790251ioh.7
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 07:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=CYzGoCJzoJW0JkaSFlSnU6TBB/jGkgGNh+4Z9sAlRnA=;
        b=atb1EFrh27scfHmNyPjOupFlBl4SyfR/XWzDJ/Daqom2an2Pek0/cjjghxLEvlbAhW
         O+LNA/2EZy0AkRf9fLmKcLuF6zqzSjM2d0jVvubxssJMM6tPQF2S2yn2rtyhKjIipUFj
         McCz1o7KA2RMQ/tV9xSY3fOmFERSelRPEM05Q9+oviU90KUL9c7DHILtXlRa6FPD2nqM
         eOt86+h2Z2Wg+zZsA6s9x2BSgEvhoMAI/VQD4pPsAbDKGfr4wu6gunc689xXgTizp8ql
         zycuYKI8MQBv1aKjRMAIrN6ERXo9zQrKjwpVaesRl1n4CPnPFem7oREc+AkL0sMKYsJ9
         +z3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CYzGoCJzoJW0JkaSFlSnU6TBB/jGkgGNh+4Z9sAlRnA=;
        b=GcZvg3t6HOWINKIjsDIThP5oyWdHABfh6tI2ecNsi1zNPlP/k6JDAi2rl2dqQKXxCH
         9q6kxWB04t9V/T33ThBvVD1wHLR1Lc70v6DIQLL2JZrOMROeKzlRc928OUt2Okfl/mHL
         2AdG1Hu05V2Tsrh17ILXezClNsPa0D5l7eeoydZqQHaiYuaJilB4h7UW5o/KbKNCNRuB
         sDonLrxgCIuiG7HtgimLsgAB6MsXPTfdVLztXlC+hafW+pQpxJ7+9tQQ/wmW34bS/tZ3
         aWvfYe0rGtYDxKWNvnkvSHiywzvW1UjvWqowYUbMypSw6Vm2/jssXDC33I48DT94Iz1H
         MLww==
X-Gm-Message-State: AOAM533WxGcyBaq7n7O0FImurueEk4Y61B6jdc4fP1sEUAqWnK+3WwYG
	uoXkEkQCWhHe7kgT6OP58lXVRCxSIdkv/NEm0PCPAPRaH0swli2Y
X-Google-Smtp-Source: ABdhPJyHxygLNTqX65sxMmbAPNrOUT1Pa67GelZ5MVa1emBBn5a/s1DVIRkBcZJRFgK+TnJX/bzkdF3jBVqkHwl0NB8=
X-Received: by 2002:a6b:4419:0:b0:657:aeaa:d2e with SMTP id
 r25-20020a6b4419000000b00657aeaa0d2emr10177748ioa.24.1651759245184; Thu, 05
 May 2022 07:00:45 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 5 May 2022 09:00:09 -0500
Message-ID: <CACaXmv_ad_ATp09CciQYrL3CNQpLvDZ=M5-HCuqwDbmkDvBGOQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YTPSF3FLQRVGAWGXOBBRKZPIRIUZY7C3
X-Message-ID-Hash: YTPSF3FLQRVGAWGXOBBRKZPIRIUZY7C3
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Announcing_NEWSDR_on_=E2=80=8BFriday_June_3?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTPSF3FLQRVGAWGXOBBRKZPIRIUZY7C3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3928109230835051168=="

--===============3928109230835051168==
Content-Type: multipart/alternative; boundary="000000000000106bfe05de442b0e"

--000000000000106bfe05de442b0e
Content-Type: text/plain; charset="UTF-8"

We would like to announce NEWSDR 2022 !!

The event will be held on Friday June 3.

NEWSDR is fully virtual this year.

The event requires registration, but is completely free.

Please see our website for the event agenda and more information:
https://newsdr.org/workshops/newsdr2022/

Updates to the agenda will be coming next week!

Please register at:
https://forms.gle/CEbSFtaxBu8iARo87

Interested in presenting?
Please submit an abstract for your poster / spotlight talk here:
https://forms.gle/E6nLSsh9JhjFAED36

--000000000000106bfe05de442b0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif"></font><font face=3D"monospace">We would like to announce =
NEWSDR 2022 !!</font></div><font face=3D"monospace"><br>The event will be h=
eld on <span class=3D"gmail_default" style=3D""></span>Friday June 3.<br><b=
r>NEWSDR is fully virtual this year.<br><br>The event requires registration=
, but is completely free.<br><br>Please see our website for the event agend=
a and more information:<br><a href=3D"https://newsdr.org/workshops/newsdr20=
22/">https://newsdr.org/workshops/newsdr2022/</a><br><br>Updates to the age=
nda will be coming next week!<br><br>Please register at:<br><a href=3D"http=
s://forms.gle/CEbSFtaxBu8iARo87">https://forms.gle/CEbSFtaxBu8iARo87</a><br=
><br>Interested in presenting?<br>Please submit an abstract for your poster=
 / spotlight talk here:<br><a href=3D"https://forms.gle/E6nLSsh9JhjFAED36">=
https://forms.gle/E6nLSsh9JhjFAED36</a><br></font><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif"><br></div></div>

--000000000000106bfe05de442b0e--

--===============3928109230835051168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3928109230835051168==--
