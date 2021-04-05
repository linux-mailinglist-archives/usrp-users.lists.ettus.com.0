Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B38C3542CA
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 16:29:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 033C3383CD8
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 10:29:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i5yOaoT4";
	dkim-atps=neutral
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 8907C383C8F
	for <usrp-users@lists.ettus.com>; Mon,  5 Apr 2021 10:28:27 -0400 (EDT)
Received: by mail-pl1-f173.google.com with SMTP id e10so1378247pls.6
        for <usrp-users@lists.ettus.com>; Mon, 05 Apr 2021 07:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NUVJrw/73WwYkeqWj/ElR7BmC1FNqqTkRXI176RR5C0=;
        b=i5yOaoT4rLnxNGYo5WIGNr57UlawpQoFl1HRAiXTKtUEkSrJWeJGIsOsNqFnkbFoAn
         jCv5d4mrb1T13ASQ30J7M+BtExrNiPddi/mTJcxX0jk0HeMrNVjhK94LsWNbVAIZn19F
         uEVpSamviwl1VAoYi3AKkmcRvsP3xoQqQmJwWPbGHs3/aW3xSUIc96dEx8EPbbRtvIS0
         kbfJD47D8mBtDDnFbJ+TAWRW7TrL2smWlIvq3eJCto0V1RoB3EQyFYNtymoZ6vanCrbA
         QsI0f5KvbHLt3DJycF2DjPVf9D/BJ8OFtzaUJunMOaH6PqJPosMNorNgcscjeeglgnPd
         K60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NUVJrw/73WwYkeqWj/ElR7BmC1FNqqTkRXI176RR5C0=;
        b=e8tb0ejDekyKFIvc4ZpQYmPK+ARVBNHvN4JOKhHyTioq/gUCDAt1HtV/KnpW5G6dCE
         bHxq5r1AG38DeomOJgSUUTJ3vtDj/ym+G/yhFXl2LFanSchFYAvoreuqjonQspW/V5x/
         Eb1+oRSiEvip3/ZloXDIKJ/YNka9Zqh1OiWsyZAI1W98sHM/KPaCHacx1SVo2naLaSA3
         Faobx3RW+/bDjSl73HCvaihj/YKMeUCxj114apj76jeafIy2xviLWaB+Q2t3sUg9iMcv
         w3riTjmaN3noWJLnt3UUdfSA4FrKIUDuWYJsjSHDjwmhQB1N8eTj+is2Qc0C0X8eS+gJ
         vBMw==
X-Gm-Message-State: AOAM530INYCFXScvOMmaQ22Wxl4gYccVqGOOV8cdr9V0ttGgQdtKdFqR
	lVJ8x/BhPfVdpalHvk55I9HJTEz+h0HhmhklpiqBk11Babo=
X-Google-Smtp-Source: ABdhPJy7XpnHindMtCa7fm5HguetzRcJToqbcp7kUfaA1UCnx/eURbSARBiJGzZn8WOH8Hxc23qZZAodUmpNzQBdcPc=
X-Received: by 2002:a17:90b:784:: with SMTP id l4mr11450405pjz.90.1617632906486;
 Mon, 05 Apr 2021 07:28:26 -0700 (PDT)
MIME-Version: 1.0
From: Muhammed Mustaqim <abacus82@gmail.com>
Date: Mon, 5 Apr 2021 19:28:15 +0500
Message-ID: <CAP=wbzOLDq+=WTJiU2esTyoGvH6Qc+qswRd5vkUB9OJUVYFebQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FTIH57XEKHMXHSOJ62SLMH3PVK7CWW3N
X-Message-ID-Hash: FTIH57XEKHMXHSOJ62SLMH3PVK7CWW3N
X-MailFrom: abacus82@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FTIH57XEKHMXHSOJ62SLMH3PVK7CWW3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4063479247526274211=="

--===============4063479247526274211==
Content-Type: multipart/alternative; boundary="000000000000c4a88905bf3a8282"

--000000000000c4a88905bf3a8282
Content-Type: text/plain; charset="UTF-8"

Hi,

Quick Question,

Can I run USRP X310 with a single UBX 160 MHz daughteboard, or do I have to
have 2 daughterboards in order to run X310.


Regards,
Muhammed Mustaqim

--000000000000c4a88905bf3a8282
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Quick Question,=C2=A0</div><d=
iv><br></div><div>Can I run USRP X310 with a single UBX 160 MHz daughteboar=
d, or do I have to have 2 daughterboards in order to run X310.</div><div><b=
r></div><div><br></div><div>Regards,=C2=A0</div><div>Muhammed Mustaqim</div=
></div>

--000000000000c4a88905bf3a8282--

--===============4063479247526274211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4063479247526274211==--
