Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC442BD93
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 12:46:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6A043840ED
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 06:46:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P99pmI8v";
	dkim-atps=neutral
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BD483840C9
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 06:45:10 -0400 (EDT)
Received: by mail-ua1-f41.google.com with SMTP id e2so3509841uax.7
        for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 03:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/y12aS6WbvaWhwDPwsvLGZy6s7vl3DeX9mxOnoKjYjo=;
        b=P99pmI8vbw6DF3EpCXkYifTtWOPvmq4ey7uFEeDs+ty3iVggZQh5bu0udaIFCX/FYY
         56q7H8KTrNGEtpybHOUZ/Xe+T9KayS7HuM3ejBLeiDPUwB2LkF9mX4dgtNvv+PsjPxQa
         fxIuzN5ZW7QDHNF74eMejosF1kMhS68UfzzHOqSt1fpGy2YM3sn3TjplZVouHPVmvewp
         h95SghPeY16RQub+F2YDcZIn+Ho7kxD+m+JcNUCI8b26RaGM4X4qt898fGoUZZdxZ4b9
         +Qjfe8wl2RDRE+DRWFrjKWzgNF4aLUdsYosaU21tYGyOHTYCtmqC2985agO+u/LyYM4h
         YfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/y12aS6WbvaWhwDPwsvLGZy6s7vl3DeX9mxOnoKjYjo=;
        b=hQLeDyrPsfgrmx4AcMA74B/2g431ztlQ7pEJh8fqttjAwTRIz3qRzHxrPwpsVHzZpz
         fXMWYLpPWZGPGo0wr+mTChXhUcbSymwKgazWfDoZmjIUrlMq6fB0qizGq3WWgPZXjMzE
         +9eIrJHgyqvNYKMcKvJ9r9chnYK4KgXOXrhYktawYokMJWGNi+iu7ptJWJ8FmDHTqT41
         RX2NvTiu49zKBmN1VNREApDkZeIqHi3o/2ZoL38f+cS9pIbhURZGzx7r7B+laZlVwudK
         /HKFMFd4YkDZYrwhQozM+tom2tj9XTFIufSIs4epo2gkyI1DtGajWSwMPuP4r62OicKZ
         yzkA==
X-Gm-Message-State: AOAM530pQNuDI5sZ8JJDVwU8qJ+zUfz8zaVuDu+3VVwEZynU0P2C2XVI
	PZZjVc1bXF+rXAcXchFZy1czQ0fYHdwlgGXhSVdk2fY7pMMW9Q==
X-Google-Smtp-Source: ABdhPJyLxg/WIGj0b2HhWe73KJdXmjhPMqPSmFnsC75oEimVM2Yl2HmHDd4Wg7QXBXSkY2dyEPc14HR7yh21pPB2mCM=
X-Received: by 2002:a9f:31ce:: with SMTP id w14mr27530596uad.118.1634121909934;
 Wed, 13 Oct 2021 03:45:09 -0700 (PDT)
MIME-Version: 1.0
From: Sanjoy Basak <sanjoybasak14@gmail.com>
Date: Wed, 13 Oct 2021 12:44:10 +0200
Message-ID: <CAJPQ1a3zntj=e9YsXfw_1m3tAVW9pARuC8ounnShQSf2B0zH9A@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: O6VMDGXDI57QBWVYD3YV5Y72NXVSMLGT
X-Message-ID-Hash: O6VMDGXDI57QBWVYD3YV5Y72NXVSMLGT
X-MailFrom: sanjoybasak14@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RJ-45 10GbE NIC for X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6VMDGXDI57QBWVYD3YV5Y72NXVSMLGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1908455422393361895=="

--===============1908455422393361895==
Content-Type: multipart/alternative; boundary="000000000000f61d7705ce39a71b"

--000000000000f61d7705ce39a71b
Content-Type: text/plain; charset="UTF-8"

Hello,
I am planning to purchase a computer, which has Intel X550-T2 10GbE NIC.
This is a RJ-45 10GbE NIC.
Can I use it to stream/receive at 200MSps with the USRP X310 using cat 6-7
Ethernet cable?

I have used Intel X520-DA2 sfp+ NIC before to receive at 200MSPs rate with
X310.
I am not sure if this NIC (X550-T2) can stream at this rate or there will
be issues with this.
Please give me a feedback if anyone has tested such NICs with X310.

Thanks in advance.
Best regards
Sanjoy

--000000000000f61d7705ce39a71b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hello,<div>I am planning to purchase a computer, which has=C2=A0I=
ntel X550-T2 10GbE NIC. This is a RJ-45 10GbE NIC.=C2=A0</div><div>Can I us=
e it to stream/receive at 200MSps with the USRP X310 using cat 6-7 Ethernet=
 cable?=C2=A0</div><div><br></div><div>I have used Intel X520-DA2 sfp+ NIC =
before to receive at 200MSPs rate with X310.=C2=A0</div><div>I am not sure =
if this NIC (X550-T2) can stream at this rate or there will be issues with =
this.</div><div>Please give me a feedback if anyone has tested such NICs wi=
th X310.</div><div><br></div><div>Thanks in advance.</div><div>Best=C2=A0re=
gards</div><div>Sanjoy</div></div></div></div></div></div>

--000000000000f61d7705ce39a71b--

--===============1908455422393361895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1908455422393361895==--
