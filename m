Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B394B0172
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 00:52:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E87C384E6A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 18:52:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MLzFkERe";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 826543848FB
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 18:51:04 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id c189so3218787qkg.11
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 15:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=2epCBFFjiuA2k6wHQ6iQMRTN39pQtD0JCalhPYnb1WU=;
        b=MLzFkEReZAcJFhTDpRphNyD7KAbrrH75uPR8r84Y4UqXlCv94/zjp6MRFpPFormoCa
         aveTw6czjXmypPkRs1a/Z8Kx6PDFs5JcCovAY4KdX2e9uphWNJXbsnICH7mTnRQU/hSU
         vIx1vbwL0VHkQdQSKsMNXkTDus4i79g6VYZWrfQEFrWZylYRr6jAIDe3RJl3erhBt9BS
         nxkis3QeDn0OVpS72fDnRm86KePs2hDNYot1BYNsStUqp2aTQeut3ThI9tj7GiAaP22X
         poUWEdO24B1MjzgPh9rNjxsLC4/NX2HMkB3+BeNrzOblOSyUh7xR+HoO4JMSE4mt5seb
         7nUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=2epCBFFjiuA2k6wHQ6iQMRTN39pQtD0JCalhPYnb1WU=;
        b=VZ3/DCraZv3PuydLhDQnlduVMsMQIjt4sJCskOcwToxZzc0V35ggq89XNxKZREVIMM
         11ClbGv+8cwSDAlC5E0MjewBa9uuFSZZB40+YnA0+yXI5fBBKeVqpvv5K/y1sLAjMMaC
         lDYlJB2Ap4fm7Le7l32FWtJpfSL3xManNzwg7ZFviBo5BFJyUNSzp4CGHk+ZVIh9kDlE
         1LxkG4wnrhZ0upIVKqf91n9AmJNc54pR31EwQ41yDQO8+GfLQPbq7+r5G2Fnd44ogsYb
         Z+009QvGhxU8p7kyj1VTEvpJwD1v2SvSsT10z2vzuWDkGFGlDAFo9jpGKM2hwygcmP1e
         cShA==
X-Gm-Message-State: AOAM530WWYMxeYVuHQSXpvwLNSH4KeVnGeUbuVSpNjS0Lq+E0ecR4+Cq
	8FGWdsoVPdPk0/cIvgZgc1PwqOkBH57f0w==
X-Google-Smtp-Source: ABdhPJzfAOk0+g1ifW8etn7IlYoz7En1+jpwMeTPG7q/JiphjlmdhsJiZbxIzUTGARma0fqJSrRHHg==
X-Received: by 2002:a05:620a:3cf:: with SMTP id r15mr2537990qkm.158.1644450663761;
        Wed, 09 Feb 2022 15:51:03 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v22sm10200411qtc.96.2022.02.09.15.51.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 15:51:03 -0800 (PST)
Message-ID: <bd3c1142-9859-0e32-bde1-36e5ff9c650e@gmail.com>
Date: Wed, 9 Feb 2022 18:51:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <817106305.23108.1644438309318.ref@mail.yahoo.com>
 <817106305.23108.1644438309318@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <817106305.23108.1644438309318@mail.yahoo.com>
Message-ID-Hash: X5RD3JZJ36ZUGQLEFXGU5PZDC4ICCLFD
X-Message-ID-Hash: X5RD3JZJ36ZUGQLEFXGU5PZDC4ICCLFD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running two b200 from one host
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5RD3JZJ36ZUGQLEFXGU5PZDC4ICCLFD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6310431126473073952=="

This is a multi-part message in MIME format.
--===============6310431126473073952==
Content-Type: multipart/alternative;
 boundary="------------c5uZKa10jLYa2JOuAW01SJEb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------c5uZKa10jLYa2JOuAW01SJEb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-09 15:25, pste998903 via USRP-users wrote:
> Is there guidance for running two b200s from one=C2=A0host in=C2=A0linu=
x?
>
>
> Sent from the all new Aol app for iOS=20
> <https://apps.apple.com/us/app/aol-news-email-weather-video/id646100661=
>
>
So, this may be a question about things like device addressing:

https://files.ettus.com/manual/page_identification.html

B2xx devices have a serial number, which can be determined when you run=20
uhd_usrp_probe and uhd_find_devices


You'd end up using a device address like:

type=3Db200,serial=3D<serial-number>


--------------c5uZKa10jLYa2JOuAW01SJEb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-09 15:25, pste998903 via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:817106305.23108.1644438309318@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:P=
ixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endi=
f]-->
      Is there guidance for running two b200s from one=C2=A0host in=C2=A0=
linux?<br>
      <br>
      <br>
      <a
href=3D"https://apps.apple.com/us/app/aol-news-email-weather-video/id6461=
00661"
        moz-do-not-send=3D"true">Sent from the all new Aol app for iOS</a=
><br>
      <br>
    </blockquote>
    So, this may be a question about things like device addressing:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_identification.html">https://files.ettus.com/manual/page_identi=
fication.html</a><br>
    <br>
    B2xx devices have a serial number, which can be determined when you
    run uhd_usrp_probe and uhd_find_devices<br>
    <br>
    <br>
    You'd end up using a device address like:<br>
    <br>
    type=3Db200,serial=3D&lt;serial-number&gt;<br>
    <br>
    <br>
  </body>
</html>

--------------c5uZKa10jLYa2JOuAW01SJEb--

--===============6310431126473073952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6310431126473073952==--
