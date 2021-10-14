Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC3442DD95
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 17:08:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35D72384842
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 11:08:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mXS7AQWD";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id D0149384631
	for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 11:07:36 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id v2so3884142qve.11
        for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 08:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=2gUW4f5tNtsXQK/NaC3cGF4a4n0UHMyOW98WoeFH8Uw=;
        b=mXS7AQWD4MGsztb6PZ+zbxvjCwFhD1gWFPbCMp8PHkGj4njxWpSuB1Bvk1ryM12S2P
         Pr8fSzRUfbcQwUsf9CL2If5cjEJNWxoVepuW83882WiYSYVhJ9/71U/Wy76UD8pln3b7
         leyHTKS3FGPPKB0nymqt4ID8RIAiNjeismEQhqv5vqtimnTVLm10XVmx1WxX32EybYw8
         iJxjJcW9z5E4OiZE8qzq349LGUW23TM8V6P0W0vUBUs0Dg7pn4adzJ5mBEMuM9T8uRBY
         U2yaLz2VRNcJ0pyyxq3Kq8kAiVaAFUGoQJ3yRMeABgu93Sm9GLUD+e2MWOXy0+wYcbWR
         OKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=2gUW4f5tNtsXQK/NaC3cGF4a4n0UHMyOW98WoeFH8Uw=;
        b=a/5uhoNiQNnY96GHg4U4bDHPvqJzrbWGPw8dyBGAr4Eq0c2f6DzRkf3obuNKlGItb9
         Hn6dY4IGlxeQpEOSG3aQPQpm+FqXRXKX3Xouow30HTdw17NxiQ0EN0MYG88e/VJ3fRY8
         ifrmm8HULL6NHd/M1qlSlAaofz59hwyXCp1F5TTYhYst4MClLF05B/eh/4P1706LVwgb
         G9GTJNO9KafCCJiXWAEb3Y1Ekqs8lAIfo5Tfg2L/wM4Ul4C4qmeg4IZs4iO3vRKV7zfv
         7UWC9zaTVeEyimOZSSG4iyEHhRah6KViYmSDzwBRCVIYj4W+aPCJq5Rz0ay2inzmojrZ
         SfVQ==
X-Gm-Message-State: AOAM5335eZp3PnQoChz+JM8SpRi7kKbXZC3PwPFvOIqc5UXRW1DATn+p
	cTl/cCeBJZWvAnpdfYIh26X/uv83YWE=
X-Google-Smtp-Source: ABdhPJzunK+3OxSqqTneoi8mXl7Cir4VPBCHYG2cs4FZdiYGqrqvqgw7jGwTYCw9ky7W4rxAlLaupg==
X-Received: by 2002:a0c:9c0f:: with SMTP id v15mr6061038qve.8.1634224055996;
        Thu, 14 Oct 2021 08:07:35 -0700 (PDT)
Received: from [192.168.2.235] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id r9sm1488282qtx.15.2021.10.14.08.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 08:07:35 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <99ed3c5aa86a47f1954865e59d9d5bf4@komro.net>
 <75cf7488-5b78-1a26-48d6-1015409b4218@gmail.com>
 <4c0f90440e3247be92616467720b1dea@komro.net>
 <769a7493-2d28-2de7-d5fa-5b3781d9f5f7@gmail.com>
 <700b939caa8d49229abfb78c39fb0a1e@komro.net>
 <56db6aa1-805b-1caa-5504-f673137c2a28@gmail.com>
 <caa94035a10f44b7aaba53effa48a33a@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <078e7c4c-c4a9-a554-17c4-a95c974f7f1e@gmail.com>
Date: Thu, 14 Oct 2021 11:07:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <caa94035a10f44b7aaba53effa48a33a@komro.net>
Content-Language: en-US
Message-ID-Hash: SCJZ6YBIU5BA2U2BD75P27CGHG43RAXE
X-Message-ID-Hash: SCJZ6YBIU5BA2U2BD75P27CGHG43RAXE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD example rx_samples_to_file fails
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SCJZ6YBIU5BA2U2BD75P27CGHG43RAXE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6518333331596950973=="

This is a multi-part message in MIME format.
--===============6518333331596950973==
Content-Type: multipart/alternative;
 boundary="------------264BE97DD93B258687A3B622"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------264BE97DD93B258687A3B622
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-14 5:36 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> ./rx_samples_to_file --args=3D"master_clock_rate=3D200e6" --freq 868e6=20
> --rate 2e6 --gain 20 --duration 10 ~/Desktop/usrp_samples.dat
>
Use the --file argument to specify where to write the file--the=20
interface to this program changed a bit a while ago, so
 =A0 if you don't specify "--file" it writes to "usrp_samples.dat" in the=
=20
current directory.=A0 Any argument that doesn't begin with a "--something=
"
 =A0 is quietly ignored, it seems.

It also apparently quietly ignores write errors due to permissions=20
issues (you were running it in the examples directory which is not=20
writeable to
 =A0 an ordinary user).



--------------264BE97DD93B258687A3B622
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-14 5:36 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:caa94035a10f44b7aaba53effa48a33a@komro.net">
      <p class=3D"TableContents"><span style=3D"font-family:&quot;Times N=
ew
          Roman&quot;,serif" lang=3D"EN-US">./rx_samples_to_file
          --args=3D"master_clock_rate=3D200e6" --freq 868e6 --rate 2e6
          --gain 20
          <span style=3D"background:yellow;mso-highlight:yellow">--durati=
on
            10</span> ~/Desktop/usrp_samples.dat =A0<o:p></o:p></span></p=
>
      <p class=3D"TableContents"><span style=3D"font-family:&quot;Times N=
ew
          Roman&quot;,serif" lang=3D"EN-US"><o:p>=A0</o:p></span></p>
    </blockquote>
    Use the --file argument to specify where to write the file--the
    interface to this program changed a bit a while ago, so<br>
    =A0 if you don't specify "--file" it writes to "usrp_samples.dat" in
    the current directory.=A0 Any argument that doesn't begin with a
    "--something"<br>
    =A0 is quietly ignored, it seems.<br>
    <br>
    It also apparently quietly ignores write errors due to permissions
    issues (you were running it in the examples directory which is not
    writeable to<br>
    =A0 an ordinary user).<br>
    <br>
    <br>
  </body>
</html>

--------------264BE97DD93B258687A3B622--

--===============6518333331596950973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6518333331596950973==--
