Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D787523092
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 12:19:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BCDD384546
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 06:19:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652264358; bh=JpWd4jOInqzT+Ff/oVz1MK5YEufFkqasDs1YBq3ulvs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XjRusgtMH/J2nNe/UbrtqmxH5P20OYu/YIM0wX99iEyK2iEoTWgZbqOPKRzgicYJz
	 30lNl0c9uSdbHxqsKQwwxhtwIliMvRu3a+QBL3i64EX2NwSBHpBIg0FPjemYhPhEOy
	 OqrdW+ks2gh7kPmIT4KCmC1qboRYuJpDPkUykYecIJdV8dVdAsSmlZ4jNU/2Gd5fSU
	 romM32xFNLXy3pO8i3NYm/mfC8yiTK+FvWUwotQ6/8oWJmT3veYBR48JKV9PjeUMKQ
	 ++cf3+M9pDAF25IE17A6YiaNlPDvS91XVUrpiAtJUMvBF5S5RS9Mzc2+js/l05aNRL
	 01tbvd+id7pNw==
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F11D384396
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 06:18:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HzMNrsPH";
	dkim-atps=neutral
Received: by mail-pj1-f44.google.com with SMTP id n10so1791862pjh.5
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 03:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=vmZ+ixe+shAJrrIux5YLH05fKisLqpDZGWq6UnWF0H8=;
        b=HzMNrsPHC5AM2EYSx+XP/Fk6D9vEcZ3BzVkRNCScNPe52ibHig2vsYPUMeiwYq1TB6
         VHenuL++FrHUgl2QugmU6luq4W3CPpwY04uMpAi+KVP7R9MEpnYE24GRv6vN9hX7jThN
         RafW04F1dcLx5/4OTmNbTNbR4kPXnxk+iqXoVHn1XhVuAqL7ImuXJjk1EbCYrolS6mKe
         KR6tQ/ongzYlDYOJHf/7zeIjaFNixi6U7NA2RrZlP2ymxlLVpW7BqsNjyGadSA6JAtJp
         d5shcrrExVdddWo5O9z5WKRJy/2bmL39dHVQxWgfrllTxuIIImrPhr9oVlHLQ/lHtpou
         z65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vmZ+ixe+shAJrrIux5YLH05fKisLqpDZGWq6UnWF0H8=;
        b=0M+O9igd+u9+vz1PijOHjfYeDpBR3cM1BnDLJEvoQdCbs1b846Q8zrZ0E4tJtAQXIt
         PO/BsPdNgtjECjze1lrynJyFyb0Bzf3uxWRMsG7ghj2TM/vE9RXHEPUsRcjkxLwHuFRN
         k/XLxAqUxNPWr0sN/Q6VpFWuw5oO3qXSybRnQis53IJrj3YICQTBZmUCjQBJ6gwd+T6X
         8RyYVe4JVWCF+isx3TDw0/mU6Nge+DTmxxS1RjBSfkgN3rO6nk17cHvJAm08zxJZzItx
         6moz0mCe2i7sogAqwP6/iozMxOYdDVPqsW2piNB4CKwKdLLAlpEyMZpc42BXwadRDPHI
         hsZg==
X-Gm-Message-State: AOAM533HkBi9j3F4mreAsSHtPY8VjdmE2calyI/QW7p4mhodCt5fy33J
	VRr5bxO7AhDhHQN+Yv8LTlfmuBDE5wJU3RfecR+h9Kx3TZbGEg==
X-Google-Smtp-Source: ABdhPJxDD5gqZqW8fSaOjuQf4LXGGdu+iu0A8Q5mlEhvbLtQ4uGR+Ke7NGyqlyuaDKhgNIKbNsVCROnxv2Hw5rGVCGQ=
X-Received: by 2002:a17:902:d145:b0:15e:d1a8:7f33 with SMTP id
 t5-20020a170902d14500b0015ed1a87f33mr24863900plt.66.1652264286891; Wed, 11
 May 2022 03:18:06 -0700 (PDT)
MIME-Version: 1.0
From: Marcin Puchlik <puchlikmarcin@gmail.com>
Date: Wed, 11 May 2022 12:17:55 +0200
Message-ID: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PPX5VQK3UOPAWOT7K3EEWPTVZTOPOF3Z
X-Message-ID-Hash: PPX5VQK3UOPAWOT7K3EEWPTVZTOPOF3Z
X-MailFrom: puchlikmarcin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why do we need 1 PPS and 10 MHz signal to synchronize
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PPX5VQK3UOPAWOT7K3EEWPTVZTOPOF3Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2766286785023695681=="

--===============2766286785023695681==
Content-Type: multipart/alternative; boundary="000000000000e5348505deb9c18f"

--000000000000e5348505deb9c18f
Content-Type: text/plain; charset="UTF-8"

Hello Community,
Like in the topic, I know that a stable 10 MHz source is needed as a clock
signal but why do we need 1 PPS signal? How is it used by the USRP
hardware? Can someone explain that to me?
Thanks
Marcin

--000000000000e5348505deb9c18f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Community,<div>Like in the topic, I know that a stab=
le 10 MHz source is needed as a clock signal but why do we need=C2=A01 PPS =
signal? How is it used by the USRP hardware? Can someone explain that to me=
?</div><div>Thanks</div><div><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Marcin</div></div></d=
iv></div></div>

--000000000000e5348505deb9c18f--

--===============2766286785023695681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2766286785023695681==--
