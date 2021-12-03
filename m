Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A95467F21
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 22:09:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3BF43847D7
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 16:09:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=g-clemson-edu.20210112.gappssmtp.com header.i=@g-clemson-edu.20210112.gappssmtp.com header.b="4oSBFNwX";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 13AB13845EE
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 16:08:07 -0500 (EST)
Received: by mail-io1-f50.google.com with SMTP id z18so5417143iof.5
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 13:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-clemson-edu.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=HEG8QOpfeNXa41mo592OyEoC9IIVUc1OBRoQMOAb/7M=;
        b=4oSBFNwX6U9qjv9X9ORplWkBhbfPMGzKZyIsJloK29wUbI8ielcNy5BtfhafPGlyIz
         +XGi5Hw9zKxmrzng7wQN5hhWkjgDcFuKVPVOfK23QeNLkNbaQV435zcJ4ZvTW3JGkR0G
         t770YixmfjSFY2ZdlwpNdfEak1wvMTxZyDxngpDVNdh4w5adyEvsZDdkUUxBBb1jlvu4
         pf98ohWLPiDxSAk1bxDsrHU0pklHJYMDXUbqqzI4930ZIPmC5mhEkpWx7eIutz7YwaQB
         jIAoBNPKfyAS6EjvKZWHpJ4hohJZ9HdjC+u5qOsj6OOorRGMOMpACAhIIkt5WwDuNAOo
         4+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HEG8QOpfeNXa41mo592OyEoC9IIVUc1OBRoQMOAb/7M=;
        b=kgijMUGq7esKkOcLTqKWnVMBOw9s04SQhz3KqfHxmmCVEBdmH1hR671GJPZsl9rZba
         2d/iO+bJ8n9yb4vStIEAbHmwdO24JH60zh06xMN82eCpd5JxGYzH4GCw7CTuFG+F9DjJ
         dTEbCXmu+EeoxLfm0lRC2CDwPdzDvq+ek6Y5BaGqKB/ivj2UOdDK9jjbRx123uaN7SHi
         Cua9Kr2ElXKuyLPjWCyACeLvLhKlvXJZHt7XwujYjxlDfFNc0DjFpHitk8E8+xYgcILJ
         cH4bn5BUDO6kgQ9sZR6aXyOUd61WWN4A9NaV5Jtv6ClLY8BAJvCLaps8Dp7AhLPLwmy/
         2aAw==
X-Gm-Message-State: AOAM530UDHZPmZOzWtZT4Q54WECE2Dp7g+Yq6gnA+BT/8cUNynwN14Mx
	BWV/NbkQpr1VhoyiRHNIYTWKeV+t180bXsl9ItiT0OuJG0zT0w==
X-Google-Smtp-Source: ABdhPJwXHPzFatoTP9rf0agp6KzIEBSB/SjymKgnW/9sdFe+lxorGKQZXgxl25G7ML5shnsaJT3Y+5W14nnVeK9WlWY=
X-Received: by 2002:a02:6f1c:: with SMTP id x28mr27427198jab.1.1638565686693;
 Fri, 03 Dec 2021 13:08:06 -0800 (PST)
MIME-Version: 1.0
From: ChunChih Lin <chunchi@g.clemson.edu>
Date: Fri, 3 Dec 2021 16:07:56 -0500
Message-ID: <CAJ49BKijmzkESkp5kijP-xBOczCLrNWdNUnwuR6hz-=QQ2a8Sw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QA4Q7ZUZ5SLRLN5QGJREGPMDLZCRSFU5
X-Message-ID-Hash: QA4Q7ZUZ5SLRLN5QGJREGPMDLZCRSFU5
X-MailFrom: chunchi@g.clemson.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N310 using designated RF antenna ports pair
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QA4Q7ZUZ5SLRLN5QGJREGPMDLZCRSFU5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4001743178445145060=="

--===============4001743178445145060==
Content-Type: multipart/alternative; boundary="000000000000b2650705d2444ddd"

--000000000000b2650705d2444ddd
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm new to USRP N310.
I'm trying to use the uhd_fft spectrum monitor command to receive signals.
Is it possible that I transmit and receive signals while using RF 1 instead
of the default RF 0?
What kind of --args should I use?

Many thanks
Chun-Chih Lin

--000000000000b2650705d2444ddd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m new to=
 USRP N310.</div><div>I&#39;m trying to use the uhd_fft spectrum monitor co=
mmand to receive signals.<br>Is it possible that I transmit and receive sig=
nals while using RF 1 instead of the default RF 0?<br></div><div>What kind =
of --args should I use?</div><div><br></div><div>Many thanks</div><div>Chun=
-Chih Lin</div></div></div>

--000000000000b2650705d2444ddd--

--===============4001743178445145060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4001743178445145060==--
