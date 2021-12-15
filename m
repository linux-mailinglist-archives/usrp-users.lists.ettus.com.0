Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ACB475C75
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 16:58:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E79C3385241
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 10:58:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qd6nfrYR";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E2A23384659
	for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 10:57:28 -0500 (EST)
Received: by mail-qk1-f172.google.com with SMTP id p4so20424944qkm.7
        for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 07:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=iJOu0efBaoZJiTdURc50g1PlbV8Su+2Tj7m2ozT6gM0=;
        b=qd6nfrYR9B/xok6FhD+UtjIhvGy5E2XE52rIvG/EFV95NvKERTQn/zW/MoRdVxI2sJ
         2poITL5w6SJb+IoII7ozETemVfgZugmEM7PthdqiueCaFgB49Rd+PUprXXfemmmzWqk9
         J5+vTNPChkmqse8GIt8jDKpG9g3mq2T90XYwd8QWsBjZKUruWSOr2EhbtPW7l5vkBp8Q
         25ymbVsMZ6ycu2roz0tgVCQsh9oXPQIWEa9m868+a5bKzTYP+58MULYUUwWQCV6psx6k
         Vaz9kq2XkZ3X/sS/xo0eDNLHP+DWknB8pCI8YM16fdKIFcdbeSl0pW+Pb4VDXW3nSFMW
         FGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=iJOu0efBaoZJiTdURc50g1PlbV8Su+2Tj7m2ozT6gM0=;
        b=tXzvUrVEnyBZY8HLWvowDbz8nt7mIm8OQOukUe0z8kU4nA3u6tl2wuI2u8aGiRQ4Tt
         iTgjocuY/HKTnwDijapubfDITlnzOULiHio4Fg1ZR7mivxI4mci6ZN2cgTRMnGfwdFx2
         +70ZNDWUHrxWM/Je+oM0xodE0X0Pj/5AOeFe34VEa9FcHUliZvKylxmY2yMwb2IKNoQR
         WElo91BXumOpjSqxZxOAK2LG6QbUPSrm/XGB9a8lbgSr+Y7RjshpyEHVKXcPG4UIeQq8
         o7bP9cqTkeYKa4UdNu/b1G5L0C35iyUORFNIzYfH9B+hI6HXXQ+oKnwfG7negPz1oKXW
         Q2Mg==
X-Gm-Message-State: AOAM531md8yHKGn7sFkXiqk+QoaouLZpcuV7u/6M/l1GXiQuZWH2msMf
	xKlTo73g5cehi6dcsPbl3TLpgVN4/1sXvA==
X-Google-Smtp-Source: ABdhPJzLpgRs3DzczNeOkz7wFxhzppaaQvMJcTUYbQQSU6Vmsyv/ThSfeWyFoXbDu0Fq1rt8qiS3nA==
X-Received: by 2002:a05:620a:2a10:: with SMTP id o16mr8907731qkp.357.1639583847712;
        Wed, 15 Dec 2021 07:57:27 -0800 (PST)
Received: from [172.20.0.99] (cmr-208-97-88-52.cr.net.cable.rogers.com. [208.97.88.52])
        by smtp.googlemail.com with ESMTPSA id h22sm1708703qtb.86.2021.12.15.07.57.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 07:57:27 -0800 (PST)
Message-ID: <cfbdd6b5-e395-10b7-c05d-32a85cece2cd@gmail.com>
Date: Wed, 15 Dec 2021 10:57:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: EZDJLJEPVKTFQ7G3UL24VJPG5TJVLYF5
X-Message-ID-Hash: EZDJLJEPVKTFQ7G3UL24VJPG5TJVLYF5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python equivalent of multi_usrp_clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZDJLJEPVKTFQ7G3UL24VJPG5TJVLYF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1033704268878172324=="

This is a multi-part message in MIME format.
--===============1033704268878172324==
Content-Type: multipart/alternative;
 boundary="------------xigiYTtONs59xorKdZzhyhBI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xigiYTtONs59xorKdZzhyhBI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-15 10:48, Rohel, Remington wrote:
> Hello,
>
> I am currently trying to convert a USRP driver program from C++ to=20
> Python, but I can't seem to find a Python equivalent to the=20
> uhd::usrp::multi_usrp_clock class. For my setup, there are 16 N200s=20
> being synced by three Octoclocks (one is an Octoclock-G which=20
> disciplines the other two, which in turn discipline the N200s). With=20
> the C++ program, a multi_usrp_clock object was made using the three=20
> octoclocks, then used to set the time of the N200s (as a multi_usrp=20
> object). The functions that were used from multi_usrp_clock were=20
> get_time() and get_sensor(<arg>) with <arg> being one of "gps_locked",=20
> "using_ref", or "gps_detected".
>
> I've tried searching through my UHD build (versions 3.14 and 4.0), but=20
> there isn't a reference to multi_usrp_clock anywhere in the python=20
> modules. Any help is appreciated.
>
> Thanks,
>
> Remington Rohel
> Engineer-in-Training
> SuperDARN Canada
>
>
I don't think multi_usrp_clock has been wrapped for Python yet.=C2=A0 You=
=20
could try doing that yourself if you have the knowledge to do so.

When did SuperDARN get USRPs?=C2=A0=C2=A0 I did some contract work for NR=
CCan a=20
few years ago, working with Robyn Fiori, working on the existing
 =C2=A0 NRCCan riometer network.



--------------xigiYTtONs59xorKdZzhyhBI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-15 10:48, Rohel, Remington
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANP=
RD01.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
        I am currently trying to convert a USRP driver program from C++
        to Python, but I can't seem to find a Python equivalent to the
        uhd::usrp::multi_usrp_clock class. For my setup, there are 16
        N200s being synced by three Octoclocks (one is an Octoclock-G
        which disciplines the other two, which in turn discipline the
        N200s). With the C++ program, a multi_usrp_clock object was made
        using the three octoclocks, then used to set the time of the
        N200s (as a multi_usrp object). The functions that were used
        from multi_usrp_clock were get_time() and
        get_sensor(&lt;arg&gt;) with &lt;arg&gt; being one of
        "gps_locked", "using_ref", or "gps_detected".<br>
        <br>
        I've tried searching through my UHD build (versions 3.14 and
        4.0), but there isn't a reference to multi_usrp_clock anywhere
        in the python modules. Any help is appreciated.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Remington Rohel</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Engineer-in-Training</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        SuperDARN Canada</div>
      <br>
      <br>
    </blockquote>
    I don't think multi_usrp_clock has been wrapped for Python yet.=C2=A0=
 You
    could try doing that yourself if you have the knowledge to do so.<br>
    <br>
    When did SuperDARN get USRPs?=C2=A0=C2=A0 I did some contract work fo=
r NRCCan
    a few years ago, working with Robyn Fiori, working on the existing<br=
>
    =C2=A0 NRCCan riometer network.=C2=A0 <br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------xigiYTtONs59xorKdZzhyhBI--

--===============1033704268878172324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1033704268878172324==--
