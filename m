Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 870EF3E5E5B
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 16:48:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A45DB3847D9
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 10:48:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="tpUJo/Gi";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A7642383D52
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 10:37:46 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id e15so12904867qtx.1
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 07:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=Gj6bBi5Gv6//rPQaadZwt0OgOpwohMpcX/EaKShtqQ4=;
        b=tpUJo/GiTDQIhIExbjeEywyKD3l0EZrNINtMf6vMzX9n/EQ8WPGAJaK0W0G0nPt1Yr
         tO7fwuvSpUKBECIQ0e734Pamc8L0wpEECpbNnlZ6BAi07dAQpigGa80e17crnNx/2iVF
         r7v0jjpyLvyVoHZwF7mAHGw1lGtT/Nnz+SS040SsKSXox69RLkpTebLSmKYM6HanffVJ
         agTB90AJILEZqT3lv9dKMqnUrgCFvwOn0Re43LPVhueapZExZTZ1ZCy/rZy0PEMO16NI
         e+Y3tqxUPg9Vg+kB2ReqKmHjlNsPdhJx2+Inq5b6+biAski1FxV5BtB2H8zffUYpnXnS
         SGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=Gj6bBi5Gv6//rPQaadZwt0OgOpwohMpcX/EaKShtqQ4=;
        b=VVzmCWe2vEEnzOdCSMkHKzgnMml9HGbmmy/VTFbDlqFyTPS2Lcds+jHYpNBdRWfobo
         b/U7YAnRynxYnocZULui13w0JejKMxFu7sWbA/6GClV0V4+OApeTjqnMOHXjUPB9pk7r
         FPRltvbMUmDICZVNcqn+8Na9s9p65v8tgJwn/vb3/kNqo/rg7b+0wIYtm2ss281eDfO/
         vlBJirMqCcuWSxT+cY9zUwkFQaZH8fVQwQy5H4ozE0CreExyl7OgH/KabhUVTiiaKBQZ
         sVZyHFCENt3iRrJQxvvlToWpadzdwdPCThUgDDDeeQh++tJwswvLgESKf850drbk3cxN
         wuQw==
X-Gm-Message-State: AOAM531zthGGQ2aBDtGh9AXcQ1ft0NjIiU8mUEbN49zWYX/TjcCqoMg+
	bAjBZzG3PUD9NekX6GEz7MVgJXnrEQ+OAw==
X-Google-Smtp-Source: ABdhPJyZ4wyoWlzF+DHpGtK4OLjsrDbuSjFtCzQCpy87Ro2weA1GJRiCKFTcgPdc5esYweNA3y7QOw==
X-Received: by 2002:ac8:7c92:: with SMTP id y18mr13471338qtv.202.1628606265801;
        Tue, 10 Aug 2021 07:37:45 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l1sm8167237qtk.63.2021.08.10.07.37.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 07:37:45 -0700 (PDT)
Message-ID: <61128F32.5000009@gmail.com>
Date: Tue, 10 Aug 2021 10:37:38 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brian Padalino <bpadalino@gmail.com>,
 Jonathan Tobin <Tobin@augustusaero.com>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com> <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
In-Reply-To: <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
Message-ID-Hash: RHNQUCYWDHXSQRINA6Y555QEELZ7OAEI
X-Message-ID-Hash: RHNQUCYWDHXSQRINA6Y555QEELZ7OAEI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RHNQUCYWDHXSQRINA6Y555QEELZ7OAEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5280512706369197317=="

This is a multi-part message in MIME format.
--===============5280512706369197317==
Content-Type: multipart/alternative;
 boundary="------------050204050404090806020300"

This is a multi-part message in MIME format.
--------------050204050404090806020300
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2021 12:01 AM, Brian Padalino wrote:
> On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin <Tobin@augustusaero.com 
> <mailto:Tobin@augustusaero.com>> wrote:
>
>     Just as an additional update - I was able to test with UHD 4.1 and
>     there is no issue - seems to be something with UHD 3.15 then.
>
>
> Just chiming in here to ensure you understand that your test of 
> receiving 625M samples using that particular program will keep all 
> those samples in memory for all the channels while you receive.
>
> In other words, 10GB of RAM (625M samples * 4 bytes/sample/channel * 4 
> channels) will be used just to hold your received signal.
Brian:

I don't think that's actually true.  The data are buffered in chunks of 
'samps_per_buff' -- so there's only that much being stored at any given
   time (at least in rx_multi_samples.cpp).


>
> Is this what you really intend to do?
>
> The error you received before was a 32-bit/4GB limit I am pretty sure 
> (268435455*4*4 = 4294967280 ~= 2^32).
>
> Brian


--------------050204050404090806020300
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/10/2021 12:01 AM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin
          &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com=
</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">Just
                as an additional update - I was able to test with UHD
                4.1 and there is no issue - seems to be something with
                UHD 3.15 then.</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Just chiming in here to ensure you understand that your
            test of receiving 625M samples using that particular program
            will keep all those samples in memory for all the channels
            while you receive.</div>
          <div><br>
          </div>
          <div>In other words, 10GB of RAM (625M samples * 4
            bytes/sample/channel * 4 channels) will be used just to hold
            your received signal.</div>
        </div>
      </div>
    </blockquote>
    Brian:<br>
    <br>
    I don't think that's actually true.=C2=A0 The data are buffered in ch=
unks
    of 'samps_per_buff' -- so there's only that much being stored at any
    given<br>
    =C2=A0 time (at least in rx_multi_samples.cpp).<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Is this what you really intend to do?</div>
          <div><br>
          </div>
          <div>The error you received before was a 32-bit/4GB limit I am
            pretty sure (268435455*4*4 =3D=C2=A04294967280 ~=3D 2^32).</d=
iv>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050204050404090806020300--

--===============5280512706369197317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5280512706369197317==--
