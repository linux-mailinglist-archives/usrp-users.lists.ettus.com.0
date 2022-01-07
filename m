Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C43B8487799
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 13:27:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8BB6384AEE
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 07:27:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ii2/Bs+p";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DF68384AEE
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 07:26:31 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id g80so16493099ybf.0
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 04:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=X6OsGSHWrA+yuPyZDs48nMipLtyeqEd1yC6w7ifPfp0=;
        b=Ii2/Bs+p9l8OVmQfXIsgFdhdoQefGe7PtX4OHDjqeTSb375vHC23oDH7t//MHhREml
         DZNeSlp4iT9SzMB/yRE4aGPv0ff/3OvVG5lQhNfLfb+7xyNEfo9BgyIEUPXY2776A5WX
         XZAkr/ZCTzRbqcjMBTUd/GzTijR6DSJabYBJDiUmuKQMDLa416hNcjXTxXgvb7nV5p+s
         2gqSdpDkaN27ppqIRONchTZc72JPBlfGwV/5TsOcUTvxGmgIZDjuya2tGknmd2BTZ0S7
         SpbznBxHG32kKa0B2RPBkUQu/eqDZp4yDDWVEK8b1o/I9RPfkFxNbsWDxlfNRKLc4O1i
         Ysvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=X6OsGSHWrA+yuPyZDs48nMipLtyeqEd1yC6w7ifPfp0=;
        b=K1+LSA4zVl8j5tW0DXjSH80E+hBx6dqk984kuxD8a/k79ZZ0ioePMvMdPP7YzDFddS
         YV3nFmjFiQVAFt13wF0p2JqEsMPRBCzjb3ebg0OF5uUdyqlfjysGoxFtkoo4n6s9xJnM
         d1OhOSeqZIrLCQzvj1ncyQIGXsLYjWBCuhxotsRjByoF+mWKFhPV+5xzQOnCuKyyF/QD
         kz2XSJkn47ULS14fMn1gcsPWz/Y5xh0pYOZG0e3x1bx7QVCi4+ua2VekIvSuFsdUeTUh
         wMVgbPsiy1Q8IlBFFgmXISkA1coRrjJ7nG+s9acklBOUaQ7kGMdCK0Yf56eitQSZBeEF
         CwKQ==
X-Gm-Message-State: AOAM531O2vQBB/WVjA4f3a9+b/335F7xd3gGQ+4gzpJsGQb7xRDIYuNe
	stBn+ZwYTzwxVqqelJ5fqM8j2o1tm7nde1hxi7s649SFhPh9q7e0Ucc=
X-Google-Smtp-Source: ABdhPJz7xPsDFFq65HrMtPdhR4kGuLfJvQc1xa9177W6i95ryUSjtrI6EHJmWenJzHPaCCcKkudrBnJZYfmkE4UGXdc=
X-Received: by 2002:a5b:590:: with SMTP id l16mr6191593ybp.717.1641558389966;
 Fri, 07 Jan 2022 04:26:29 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 7 Jan 2022 15:56:18 +0330
Message-ID: <CAA=S3Pv9X6a5tAmZ1htiO=i7A71-61xGaM=yZ9Jn9ckZ68b3Fw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 5LQMBWKFB245U2IKVEI2ZBR45OTKWO4U
X-Message-ID-Hash: 5LQMBWKFB245U2IKVEI2ZBR45OTKWO4U
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] why my emails is not found on your forum? my emails is not delivered to usrp-user mailing list?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5LQMBWKFB245U2IKVEI2ZBR45OTKWO4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6688636178957982761=="

--===============6688636178957982761==
Content-Type: multipart/alternative; boundary="000000000000b6495705d4fd182c"

--000000000000b6495705d4fd182c
Content-Type: text/plain; charset="UTF-8"

Hi, for sending my questions, with Gmail I send an email to this
address usrp-users@lists.ettus.com...
The first email is delivered and everything is ok, but the replay email for
me was not delivered.......
can anyone help me? why the second and third messages are not delivered?
thanks in advance

--000000000000b6495705d4fd182c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, for sending=C2=A0my questions, with Gmail I send an em=
ail to this address=C2=A0usrp-users@lists.ettus.com...<div>The first email =
is delivered=C2=A0and everything is ok, but the=C2=A0replay email for me wa=
s not delivered.......</div><div>can anyone help me? why=C2=A0the second an=
d third messages are not delivered?</div><div>thanks in advance<br><div><br=
></div></div></div>

--000000000000b6495705d4fd182c--

--===============6688636178957982761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6688636178957982761==--
