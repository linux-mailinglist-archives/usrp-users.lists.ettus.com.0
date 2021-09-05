Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2439C40116B
	for <lists+usrp-users@lfdr.de>; Sun,  5 Sep 2021 21:47:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68883384276
	for <lists+usrp-users@lfdr.de>; Sun,  5 Sep 2021 15:47:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kXLFCanG";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id CFF87384037
	for <usrp-users@lists.ettus.com>; Sun,  5 Sep 2021 15:46:37 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id z2so2906092qvl.10
        for <usrp-users@lists.ettus.com>; Sun, 05 Sep 2021 12:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=0vCybzHoCHED9050e9dfLm3hE7kSdTdMbu8mAmNVP6k=;
        b=kXLFCanGE1qRuCL6YvUotfW57YNQKWGizjoJ5ve0oK+lyjvdWLElBQ5EhiDyGvmeyI
         4bjRzBS7f8XAHcRogtvsyhZylDiVsyVB8H7RuhztuycNJRtQ6snSSnvB61kXiI3kbvnG
         lJsQ8z653yRTDlIK1lBZpM7yS8jP3nX/T5HiaLUe02Jal1Od4FStG6Ta8VnrGfpbLIbs
         fD9EYd09y657639OhAKhpOv49sanNto/WS+PIXYe2/186cGlMEzxknzqv5WX9/6KAal3
         jVn6fCl6iBMglyWwcLa6ja2Sacf4qjXXv6YGd1qxe3Mtxqdsj2qx1x2c5qTpOODgd4Cs
         GMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=0vCybzHoCHED9050e9dfLm3hE7kSdTdMbu8mAmNVP6k=;
        b=XKd86Kw2D9vq1rhGjYc+WwjEK/H6k5TTs3aasIPI6eOfp8XBREhj8NEdR2DxAMZLvD
         CMjHq2Lmoru/PXVjUnTy+9j7ef62dj5IdoY6WH4S3vaQssecIHvPzCgwXdnAwFIjnkSa
         61wOBgrS/4dbGIPCQ0Hma6kS7O84oLNuWsY0TyjpsY63okCwKCThjnluN+cEkz5WYqd8
         jh3QRbm6/XPUDyfhqde2/Ho39wLLUdOZQwjjEPQ9vOqt9scwt1/MjHm1x3DBLDvHS1zV
         L8e4nqWWwwaI1ibHvHEB0rJ6qLwwoABkpdHZ3syVBYgDdBxNOIsaCZAOv15b03U90c2+
         mTfA==
X-Gm-Message-State: AOAM531D0ZI2lg6GEj8HHXTp/GoEEf9TdTujIIfRmSevXJ12GpNN1ZZW
	uxhBbpVpwv28HFu0aEbJIKG/36iRXvBCbw==
X-Google-Smtp-Source: ABdhPJz+813dzl1GdLp0AHuPMPdSEB7/PUqRHDvwVYUnLTR4uBUbGEjvuSPikTXgGAgtF9c2XB/aLw==
X-Received: by 2002:a05:6214:2609:: with SMTP id gu9mr9235029qvb.35.1630871197041;
        Sun, 05 Sep 2021 12:46:37 -0700 (PDT)
Received: from [192.168.2.234] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id w12sm3999997qtc.47.2021.09.05.12.46.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Sep 2021 12:46:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com>
Date: Sun, 5 Sep 2021 15:46:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <78915145.1401871.1630855703615@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: 6VYCG3CC6J2WWL5YY7GLQPOFU2S3P3SR
X-Message-ID-Hash: 6VYCG3CC6J2WWL5YY7GLQPOFU2S3P3SR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VYCG3CC6J2WWL5YY7GLQPOFU2S3P3SR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1586389380126793297=="

This is a multi-part message in MIME format.
--===============1586389380126793297==
Content-Type: multipart/alternative;
 boundary="------------6E8CFA9C1B83CFA5B5A8912D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6E8CFA9C1B83CFA5B5A8912D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-05 11:28 a.m., zhou via USRP-users wrote:
> Hi All,
>
> I have a problem in using X310 USRP after upgrading UHD from 3.10 to=20
> 4.1.0. I am using it to capture NR5G radio signal in UL. After=20
> analyzing the captured signal, the quality in the last subframe is=20
> worse than the earlier subframes.
> EVM =3D
> [1.014, 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072,=20
> 1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.917,=20
> 1.01, 1.023, 1.025, 0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022,=20
> 1.012, 1.009, 1.021, 1.037, 0.998, 1.112, 1.112, 0.981, 0.987, *2.785*]
>
> When using UHD 3.10, I had no such problem.
>
> If I deliberately capture one more subframe with UHD 4.1.0 but ignore=20
> it when analyzing the signals, I will have good EVM.
>
> Is this a bug in FPGA for UHD4.1.0 in X310?
>
> Thanks for any input.
>
> Hongwei
>
>
My guess is that there are just slight timing and/or group-delay=20
deifferences between the two FPGA releases, and your capture time is=20
just slightly too short
 =C2=A0 to account for that.

It is inevitable that going from a quite-old release to very=C2=A0 much n=
ewer=20
(latest) release that there will be subtle things like group delay=20
differences between the
 =C2=A0 two FPGA implementations.

How do you decide when you are "done" capturing?=C2=A0=C2=A0=C2=A0 How ar=
e you=20
capturing?=C2=A0 Do you do your processing in real-time, or do you captur=
e to=20
a file then
 =C2=A0 process the file.



--------------6E8CFA9C1B83CFA5B5A8912D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-05 11:28 a.m., zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:78915145.1401871.1630855703615@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue=
,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi All,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I have a problem in using
          X310 USRP after upgrading UHD from 3.10 to 4.1.0. I am using
          it to capture NR5G radio signal in UL. After analyzing the
          captured signal, the quality in the last subframe is worse
          than the earlier subframes.</div>
        <div dir=3D"ltr" data-setdir=3D"false">EVM =3D</div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(23, 43, 77); font-family: -apple-system,
              BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen,
              Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;,
              &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;
              background-color: rgb(244, 245, 247);">[1.014, 1.08,
              1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072,
              1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941,
              1.046, 0.917, 1.01, 1.023, 1.025, 0.982, 1.101, 1.044,
              1.089, 0.987, 0.923, 1.022, 1.012, 1.009, 1.021, 1.037,
              0.998, 1.112, 1.112, 0.981, 0.987,=C2=A0</span><font
              style=3D"font-family: -apple-system, BlinkMacSystemFont,
              &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira
              Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica
              Neue&quot;, sans-serif; font-size: 14px; background-color:
              rgb(244, 245, 247);" color=3D"#de350b"><b>2.785</b></font><=
span
              style=3D"color: rgb(23, 43, 77); font-family: -apple-system=
,
              BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen,
              Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;,
              &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;
              background-color: rgb(244, 245, 247);">]</span></span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">When using UHD 3.10, I had=
 no
          such problem.<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div dir=3D"ltr" data-setdir=3D"false">If I deliberately capt=
ure
              one more subframe with UHD 4.1.0 but ignore it when
              analyzing the signals, I will have good EVM.</div>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Is this a bug in FPGA fo=
r
            UHD4.1.0 in X310?</div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Thanks for any input.</d=
iv>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    My guess is that there are just slight timing and/or group-delay
    deifferences between the two FPGA releases, and your capture time is
    just slightly too short<br>
    =C2=A0 to account for that.<br>
    <br>
    It is inevitable that going from a quite-old release to very=C2=A0 mu=
ch
    newer (latest) release that there will be subtle things like group
    delay differences between the<br>
    =C2=A0 two FPGA implementations.=C2=A0 <br>
    <br>
    How do you decide when you are "done" capturing?=C2=A0=C2=A0=C2=A0 Ho=
w are you
    capturing?=C2=A0 Do you do your processing in real-time, or do you
    capture to a file then<br>
    =C2=A0 process the file.<br>
    <br>
    <br>
  </body>
</html>

--------------6E8CFA9C1B83CFA5B5A8912D--

--===============1586389380126793297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1586389380126793297==--
