Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4EC3E51B5
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 06:02:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 997BA380854
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 00:02:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DE9Y+WqW";
	dkim-atps=neutral
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by mm2.emwd.com (Postfix) with ESMTPS id EC3C2383B64
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 00:01:58 -0400 (EDT)
Received: by mail-oo1-f44.google.com with SMTP id z3-20020a4a98430000b029025f4693434bso5001639ooi.3
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 21:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iS8BiHEtVNF5ngDNizt1wKZT/IVXQblZ36Xjnek+3/8=;
        b=DE9Y+WqWc2KD2yHybGC4o9vtwvTf/JQ2Cttkp5+AYkz+TKGcAlzEpz7Pxf5iRTdPM7
         nG+ajcHtzr4Le4aDR6aa9kGDkCF0B1hbU6tZqK5MOXMuxxR3SmAhjgA8wYsVCvd2+Y8s
         7EmP024+Vsb2NLWx9nTyEJNG5AVT1ffvHcMsB8A5NEn1CAsDzjVmOm1yrfg8wFaUrnjE
         bcUkCfhj2FNqW33eftzJtNk9T22JF6uhYd496pO00o87w9MOmL3ryD65T50K4GYuTLXn
         712f6QiwpTjdyWXPo+k+2LMF+0XGdtFyulkPNuWEaSFBUq9x5+MvF52Kv2yTMCqQpJ7e
         WBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iS8BiHEtVNF5ngDNizt1wKZT/IVXQblZ36Xjnek+3/8=;
        b=A6KuMilmZEbc5P+iZqFKJ1t+E2/db5ZnYLTEOP1tzZzHhrso5YlOxBL+hnA9k1s5CR
         DbVUrQ7IoktEOagErT9csNB0UUBG8MrZT/yoSOFw806dX8Y4PaogrXCMYpnFzVrpeCig
         /cA9IHQpD/XmZb8OALymwLSOFSx/uNUeGi4Paw8bgDY7IIYS0wWZE4FI3HveibQhCvbU
         1STEAK6FXJVOByZm7HevsmiUrUp1HATbeUc0wVZhcJD/fiXft0kjKlE8zRvBRtp4scsu
         wau/UbR5R8C45N2s5XKqB975GuLBeAhpyXdIdhtfp2xkMv9U1/2xykALHoQR6THig768
         fqpg==
X-Gm-Message-State: AOAM530aSZtBS/Q9K4m/DLmvJOyoa2h0LNzDcf/9zOJjvoDbaxwUYxyi
	Qn6vPlIfXPnFfq1l6WmZHpsFeQ0WHfxrq+ML1XM=
X-Google-Smtp-Source: ABdhPJx5AkFphyzg2IJLKYWFKRnzREv4gWMbmKq6X2+V5T+1E+785uhMoOHq3lLoOopgZstypY8i7xIaq1pgWM4jacc=
X-Received: by 2002:a4a:c60e:: with SMTP id l14mr15747703ooq.80.1628568118134;
 Mon, 09 Aug 2021 21:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 10 Aug 2021 00:01:47 -0400
Message-ID: <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
To: Jonathan Tobin <Tobin@augustusaero.com>
Message-ID-Hash: KIAE56KS7GE7GPJMDMLYFTFDWBGGWMH4
X-Message-ID-Hash: KIAE56KS7GE7GPJMDMLYFTFDWBGGWMH4
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KIAE56KS7GE7GPJMDMLYFTFDWBGGWMH4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5405739055247125073=="

--===============5405739055247125073==
Content-Type: multipart/alternative; boundary="0000000000002c8b8c05c92c901c"

--0000000000002c8b8c05c92c901c
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin <Tobin@augustusaero.com>
wrote:

> Just as an additional update - I was able to test with UHD 4.1 and there
> is no issue - seems to be something with UHD 3.15 then.
>

Just chiming in here to ensure you understand that your test of receiving
625M samples using that particular program will keep all those samples in
memory for all the channels while you receive.

In other words, 10GB of RAM (625M samples * 4 bytes/sample/channel * 4
channels) will be used just to hold your received signal.

Is this what you really intend to do?

The error you received before was a 32-bit/4GB limit I am pretty sure
(268435455*4*4 = 4294967280 ~= 2^32).

Brian

--0000000000002c8b8c05c92c901c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 9, 2021 at 2:12 PM Jonathan T=
obin &lt;<a href=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Just as an additional update - I was able to test with UHD 4.1 and there is=
 no issue - seems to be something with UHD 3.15 then.</div></div></blockquo=
te><div><br></div><div>Just chiming in here to ensure you understand that y=
our test of receiving 625M samples using that particular program will keep =
all those samples in memory for all the channels while you receive.</div><d=
iv><br></div><div>In other words, 10GB of RAM (625M samples * 4 bytes/sampl=
e/channel * 4 channels) will be used just to hold your received signal.</di=
v><div><br></div><div>Is this what you really intend to do?</div><div><br><=
/div><div>The error you received before was a 32-bit/4GB limit I am pretty =
sure (268435455*4*4 =3D=C2=A04294967280 ~=3D 2^32).</div><div><br></div><di=
v>Brian</div></div></div>

--0000000000002c8b8c05c92c901c--

--===============5405739055247125073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5405739055247125073==--
