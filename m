Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 154403642BA
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 15:12:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5637383F1B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:12:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="ToJ+pFF8";
	dkim-atps=neutral
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D3741383EF3
	for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 09:12:03 -0400 (EDT)
Received: by mail-pj1-f52.google.com with SMTP id u14-20020a17090a1f0eb029014e38011b09so13663746pja.5
        for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 06:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=Yj2iL+Elgfbox0dGzATc7dbYo7yv5IThdQhylT8JHuk=;
        b=ToJ+pFF88WDVdvbA+c0y9AC2gI/BwKv5nsqSa2F/O5gp96gSpmKUeY92JTtd8wCR3r
         3dv+1WKNp8BH+jgMN8q9sKHMNStP7tzw7zWYcVvMSM5AMP7jBchFUiDGn1XWPzvXmvAg
         wF5I1fLt6l4XHePWGQA3rbpcKIpObCZZi9HbpZsaUuTPdkNBStWZJ6oriopLbn4ylbWR
         X3h1UflOBOXd7PmWBxfancS11RZxLTAloUTWRDIA25PtkP8Xy69JgbLTfig4dlr4qZKn
         WIFAFMQzMzVuvmFb7kYaolyptvZ14my5Rit9RNh1446zqEhrG33q/rhTaUitsD2C0IrM
         pXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Yj2iL+Elgfbox0dGzATc7dbYo7yv5IThdQhylT8JHuk=;
        b=D+V3YU5q5RWX/8uqu69KgFry845WGdQ7HaNvWAY+xiTcCgWOBCmrc5De2r0CbOr6Ip
         bKYjHmbvIrSnZZ7dWXxtfndlvwFMVE6ak1Q8EneecGMFajWfGCxkBJjGe4xlkcgoWHCG
         oOaeLE22NsXGWDGFnhmTVfNAQv0ebS6LQmnUFYp7SFUiV0g2vVCpXmszDzRzhCEH7sia
         2Fao79xaRoFebpqk8jfiZUXEQ2c1j2vAA/+Ve6ZwevkXFO76++fTNDRa4XQiL+fg6HyQ
         oOP1EW50rt7OpM9BaLg2uLKFJI58NLgKD0m61sa14NjfqI9UFlwf/Qr5EFpgWVe+daSL
         UmpQ==
X-Gm-Message-State: AOAM5338W0Fe20lj+Fb1KOPcs0S0APo3RocfK3gCMv2s97OGXeUafG3U
	UHSlThZYxgI/W9onzLAl461xppkFmGdrHRqtyg8xURd2RbcCYQ==
X-Google-Smtp-Source: ABdhPJzZPpXWW7l/E64DajupJTrDP0aB04WD2pWmhsyqfVOGLpyvUxAnBbZ6OYSTDmM7K961aEGBcPYfS8FhM7YSuW4=
X-Received: by 2002:a17:90b:a0d:: with SMTP id gg13mr10546294pjb.124.1618837922865;
 Mon, 19 Apr 2021 06:12:02 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 19 Apr 2021 15:11:52 +0200
Message-ID: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2ZZG4XRVGYOMIZZXDSFBBP4VSXMT4M35
X-Message-ID-Hash: 2ZZG4XRVGYOMIZZXDSFBBP4VSXMT4M35
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZZG4XRVGYOMIZZXDSFBBP4VSXMT4M35/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============7901817000252623436=="

--===============7901817000252623436==
Content-Type: multipart/alternative; boundary="00000000000057751905c0531331"

--00000000000057751905c0531331
Content-Type: text/plain; charset="UTF-8"

Hello all,

I am planning on using a USRP B200 in a half-duplex communication system to
communicate with a CubeSat. The TX/RX port will be used for transmitting
and the RX2 port for receiving. The transmitting port will be connected to
a power amplifier with a 60W output, this will in turn connect to an RF
switch which will switch between the TX/RX (transmitting) and RX2
(receiving). The RF switch has an isolation of ~40-43 dB which means from
the 47.78 dBm transmitted we will have roughly 5-8 dBm reflected to RX2.
Since the SDR is only rated to receive maximum 0 dBm I'm wondering if
someone has any ideas on how to handle this. I'm unsure if this power will
simply fry the board and I should implement a power limiter or if there are
other workarounds.

Appreciate any help you can provide.
Best regards,
Martin Elfvelin

--00000000000057751905c0531331
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I am planning on =
using a USRP B200 in a half-duplex communication system to communicate with=
 a CubeSat. The TX/RX port will be used for transmitting and the RX2 port f=
or receiving. The transmitting port will be connected to a power amplifier =
with a 60W output, this will in turn connect to an RF switch which will swi=
tch between the TX/RX (transmitting) and RX2 (receiving). The RF switch has=
 an isolation of ~40-43 dB which means from the 47.78 dBm transmitted we wi=
ll have roughly 5-8 dBm reflected to RX2. Since the SDR is only rated to re=
ceive maximum 0 dBm I&#39;m wondering if someone has any ideas on how to ha=
ndle this. I&#39;m unsure if this power will simply fry the board and I sho=
uld implement a power limiter or if there are other workarounds.</div><div>=
<br></div><div>Appreciate any help you can provide.</div><div>Best regards,=
</div><div>Martin Elfvelin<br></div></div>

--00000000000057751905c0531331--

--===============7901817000252623436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7901817000252623436==--
