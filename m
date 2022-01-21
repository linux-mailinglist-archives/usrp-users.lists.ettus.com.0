Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A34964F8
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 19:26:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 125F0384964
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 13:26:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mwj4iRZd";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id BC23C38499A
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:25:18 -0500 (EST)
Received: by mail-ot1-f50.google.com with SMTP id k13-20020a056830150d00b0059c6afb8627so10606053otp.5
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 10:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=jivnSD5JgjxfXvMlPjfvlFyHkZlo/ZHBtbzk1mnxwMk=;
        b=mwj4iRZdmSXpBfwHNHgLYusr0hivCe65bOnGnIIooZDd7urvUotUD8lGgqqIKry7Gj
         iDd4/qleJTU3P/mQJpk5bfCkUk1SgdimbWcr1NPpeNQx5+Uq5w0L8A0e3hZ3IAd3+yK2
         EC+udR6Di3liA80ytcKwDDf8rVfK8f9WHb5pCEG62tm1dMV3ayUqdaVauGHpWHkC2H4d
         Gp+ruPX3vHru77+i6xAXzSyLRo3F1vWeX+6QGtwEHm2s+W3VYnXnnrs7/RS9AR8MSSGR
         ZJpDX0ANaIUax7FSREdrBHvsmtrHZeRYD3OVSXXqANzEEqfltaxnRHckKP8RYKNast3W
         PF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jivnSD5JgjxfXvMlPjfvlFyHkZlo/ZHBtbzk1mnxwMk=;
        b=APXgQ/ajpquC+Ckw5DZFoFDS2DeDjf2esy6eePx7NqekFxNP6mXA9Y2229aoeuiy1n
         BrAhSYlQD/b4ZuxVHBYJdgYN9/CydBpY9kG22HXU935s2K7AwYwEj6EEwH5QsrvpCL1t
         Zg0MnyvEGZfsgO+jFvqQVCDr47/gl4RwhgsWhOjk1PVF6D1+rQ8VLW3A+4cS0A5W4cno
         Wo+hoDsKaCBIAMv+b50bHNVA590wHgipc08PZBvyRiBR5fXf4KA4x+OQ9h64A9yoFNQF
         AC4J2hn7ODnmq1dINNWhD7eepdwXxhGCPLXkEuBBToaL5TrGOaLFsg3IsNanXObiI79u
         45VA==
X-Gm-Message-State: AOAM532mdKxlKdGyS+sHCrKmS3LVg5uYesXJL07negopRnSO5pPO4WJn
	lRep/zEwJ06BZjBuXVktBbgJwAnLaxYGm9qvlKipn5j5
X-Google-Smtp-Source: ABdhPJya1PMdfEyuhBBZyj24VWa1gc5hbI5q4g98jXYJ8wRRaUT/SVQ73kR26ATJB3uwdg5vJg30Y2GgB8cLUL3hmXY=
X-Received: by 2002:a05:6830:1313:: with SMTP id p19mr3751080otq.173.1642789517941;
 Fri, 21 Jan 2022 10:25:17 -0800 (PST)
MIME-Version: 1.0
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Fri, 21 Jan 2022 21:25:07 +0300
Message-ID: <CANP_axL6-SFaBZJmhHr07eQFge-s3h91Xqx+4urgFn+zB33fMA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: VGRB2QD4XQ37OIDFDWIOUOBBIVL3EPXQ
X-Message-ID-Hash: VGRB2QD4XQ37OIDFDWIOUOBBIVL3EPXQ
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus E320 Power Consumption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VGRB2QD4XQ37OIDFDWIOUOBBIVL3EPXQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6489082914807289606=="

--===============6489082914807289606==
Content-Type: multipart/alternative; boundary="000000000000a85da305d61bbd6c"

--000000000000a85da305d61bbd6c
Content-Type: text/plain; charset="UTF-8"

Hi,

E320 datasheet mentions 10 - 14 Vdc, 3A max 30W power consumption. I assume
this maximum value is for the Tx scenario. What power levels should I
expect when receiving on only one channel with the GPSDO active?

Best,
Temir

--000000000000a85da305d61bbd6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>E320 datasheet mentions 10 - 14 Vdc=
, 3A max 30W power consumption. I assume this maximum value is for the Tx s=
cenario. What power levels should I expect when receiving on only one chann=
el with the GPSDO active?</div><div><br></div><div>Best,</div><div>Temir</d=
iv></div>

--000000000000a85da305d61bbd6c--

--===============6489082914807289606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6489082914807289606==--
