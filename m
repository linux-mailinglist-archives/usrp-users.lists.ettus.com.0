Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFE348EDA2
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:04:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 632CE38550A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 11:04:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mTuWo6hW";
	dkim-atps=neutral
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 11A8E38507D
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 11:03:51 -0500 (EST)
Received: by mail-io1-f54.google.com with SMTP id s11so4822639ioe.12
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 08:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=zy+RoD9OoflC0Zkwq3Zfoow2pvByCG8RxWBDMYS6aRg=;
        b=mTuWo6hWNuyqosC71kmq6vpTfArAQWZhHnKM2uQPiqCUEsL7OwzLHEeRVafpcHeb87
         /DXCu1cUPCA6eFehHyNo+XIF4SaC8QNJlKIO5GO6JPoy2cH4skpaSV/C7Ez4Er6V+8dE
         TCty6MQ4SjNWdVH65WI0qavC9VdXkjkMuoSbsov3z6ZevOnhy7Jimat9A+RZUV1Bqa1O
         TcQMkcn3OcLrbz5wNdw0us1581TFP3FDREdA9i+dWzsjtCyODybzXo4BFm9shoU8OeQL
         jKcoF+eQaIvKfbNIYIejJaI3YhavN7z7SzaJyUkb1RiEpDSRftkwc6ji4m5TSz1HRh+y
         1Spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zy+RoD9OoflC0Zkwq3Zfoow2pvByCG8RxWBDMYS6aRg=;
        b=CHC5IQA6BISO7+im/iowWZEAyVlr1FqmkXD+zaF4kl/tzgetDHqlSz/J8hIHwh6Dp6
         n2TlE5Kx4alCQexpoPq/nCPa3Z+q3NKG9W5pi3QTHFTvZmQ45u+9Vfmj6ItbWO0Hvu9c
         dpjv1OrpzLuEtBbtLGTjYGivkW/Yf27c6N1aUEPSCioiYCK2Jqcx1pDfcrLGxDeakAac
         xwmSU12VZ9SgtB8DM5MS/dvk6Fcy3FaTcZf9wFQxK/UIqW8BylbaS60DvmfKqdu08cdy
         i/9nI3HvqB1CthawdP74fuQoqDLqm04IPig4JTp5JrqOHAhcnulLBJfPW9hD9xJZn+ZT
         ql1w==
X-Gm-Message-State: AOAM532aWHBlfyrgh2vmxsHpEMnXmMB2o/aUsi+JC6ocsXgLyRJmWdCo
	4SLe46N7sZg3jWUL119/6sHo8wB03d29YLMeuEpmREeHxKg=
X-Google-Smtp-Source: ABdhPJxiqyP+/RVofA4ZeTa/nA5MKpGkTbcykrFQ2qGfKsXafjO9zQ6Z8T0TzzPi1xXmTMvPFv7FHiAplSq7GLHoiaA=
X-Received: by 2002:a02:7017:: with SMTP id f23mr4612574jac.272.1642176231141;
 Fri, 14 Jan 2022 08:03:51 -0800 (PST)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Fri, 14 Jan 2022 18:03:40 +0200
Message-ID: <CAPRRyxtP9mJYEhQzuwBLffq4R-Q0oouw+mNx0PCFwTT4Raf8fg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: EA2UII52J7TSZL4RT6RHMGGGYILPQWJO
X-Message-ID-Hash: EA2UII52J7TSZL4RT6RHMGGGYILPQWJO
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Enabling fast lock USRP N210.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EA2UII52J7TSZL4RT6RHMGGGYILPQWJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6777934736086062705=="

--===============6777934736086062705==
Content-Type: multipart/alternative; boundary="000000000000ea72fb05d58cf2be"

--000000000000ea72fb05d58cf2be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello. I need to simulate a heavy RF environment. It is necessary to
generate a chirp signal in a 100 MHz band with a total speed of one run of
about 300 =C2=B5s. But I only have USRP N210. In this regard, I have severa=
l
questions.
 1. Is it possible to enable fast lock using uhd 4 drivers?
2. Is it possible to generate such a structure with such time?
 I have a bad relationship with FPGA....

--000000000000ea72fb05d58cf2be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello. I need to simulate a heavy RF environment. It is ne=
cessary to generate a chirp signal in a 100 MHz band with a total speed of =
one run of about 300 =C2=B5s. But I only have USRP N210. In this regard, I =
have several questions.<br>=C2=A01. Is it possible to enable fast lock usin=
g uhd 4 drivers? <br>2. Is it possible to generate such a structure with su=
ch time?<br>=C2=A0I have a bad relationship with FPGA....</div>

--000000000000ea72fb05d58cf2be--

--===============6777934736086062705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6777934736086062705==--
