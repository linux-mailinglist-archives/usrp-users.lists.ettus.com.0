Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC30421283
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 17:18:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79CCA384137
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 11:18:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aRRQ+K/N";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 348F0383DD4
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 11:17:39 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id j13so16190434qtq.6
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 08:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=qVEH5MoDy/VrR4c2dpQ9qK6M7K3w5ceCKTscksZu9ew=;
        b=aRRQ+K/NL/54K5vS5kF6GX2nnd+Jb+c/icf+83hYsYk5Rgioi5cTCv32rSEf7vZEZ3
         rHFV8C6QHReWMCXzXmdcF6wvJ6RENviFSee+M4rvKxlBYJZNSbk0D+DGDVmUpqe4teya
         rhujBKf4Ki7DAOZ8P/7kHqm+5nWf9SlJk5Q82t450v9KNJjy24ibw4JvLMCLmRiA3Fa4
         XXCZq0ftaLNF9+LVSkuP7UsSZhpQgexFb9eIMWw64er4Lz+nJD03J+MfM5HpQ5nG4cU2
         5+AfQ6ewLuoERSZQYNbLFR+0SYAQShNCOelKW/YtxCTvSNVZJFeIPjgQX9SqyAHDKe0H
         +QFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=qVEH5MoDy/VrR4c2dpQ9qK6M7K3w5ceCKTscksZu9ew=;
        b=7LfqpkBcQKxnYQrlZlJgunbplAOVpsn6GDj5DBNT0ILfWVy1GYASbVEE9Kl7mDwFKW
         886Z68oj9sxq2BmMx4eSJzuCNAtA3gaDxeglerxlDVs2/zYq3EzK/QFl7ki7F/HtUW3r
         tz/Y2Q285bCA94Pu8lySObH7t/YDN60XXpDbUv+n8Lk+8nHHcVVXFSzGNoSqD20TYrob
         aa71eVh9CN19p84bifhBc+DWtfjfK617hW0U3WMA6wT3LE5k0ipV43orHIKmZR2zlQwj
         YCIxNmYv8DDAPNXGquOJk7orI7eokYQJMn5igwNufiXFxa+kw7uYRZSyUEBMRTM7PufA
         pQzQ==
X-Gm-Message-State: AOAM533gpyiNhfqj6xAQgaKzStUBkR/qJU1bmL3XZhx5QWYbCNNTZzYs
	eiwJTPqx2/GtA1fAHWek3U6HRZKI+DE=
X-Google-Smtp-Source: ABdhPJynXw0C9tniU1Ajywk+jLI9jOXmdOam8Lp3PaOiU6ktDRD9v0uvsReb9mtv0UIW+7nSVczeCg==
X-Received: by 2002:a05:622a:181f:: with SMTP id t31mr14283014qtc.217.1633360658519;
        Mon, 04 Oct 2021 08:17:38 -0700 (PDT)
Received: from [192.168.2.250] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id b14sm8099588qkl.81.2021.10.04.08.17.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 08:17:38 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <192378432.2407482.1633348543315.JavaMail.zimbra@silicom.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <674f2b00-86ff-b97d-9eb0-d5751ac26527@gmail.com>
Date: Mon, 4 Oct 2021 11:17:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <192378432.2407482.1633348543315.JavaMail.zimbra@silicom.fr>
Content-Language: en-US
Message-ID-Hash: JS4XGXI6CNZA6IXHUENWMXHAS4ARNE2B
X-Message-ID-Hash: JS4XGXI6CNZA6IXHUENWMXHAS4ARNE2B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting up a connection between an USRP N310 and an FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JS4XGXI6CNZA6IXHUENWMXHAS4ARNE2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5936704467957343038=="

This is a multi-part message in MIME format.
--===============5936704467957343038==
Content-Type: multipart/alternative;
 boundary="------------85870FE8500F5C962EB23403"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------85870FE8500F5C962EB23403
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-04 7:55 a.m., Nicolas CASEAU via USRP-users wrote:
> Hi,
>
> I'm trying to set up a connection between a USRP N310 and an FPGA 
> through an aurora interface. I would like to generate data with the 
> USRP and send it directly to the FPGA through one of the SPF ports to 
> see if the FPGA can recover it.
>
> Are there any tests already available that can implement what I'm 
> trying to do or should I write one myself ?
>
> Thank you for your answer and have a good day.
>
> Nicolas
>
>
I'm not aware of anyone having used the Aurora capabilities at this 
point, but there MIGHT be someone out there who has.

There are certainly no example applications for this provided by Ettus/NI.




--------------85870FE8500F5C962EB23403
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-04 7:55 a.m., Nicolas CASEA=
U
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:192378432.2407482.1633348543315.JavaMail.zimbra@silicom=
.fr">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: arial, helvetica, sans-serif; font-size:
        12pt; color: #000000">
        <div>Hi,</div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>I'm trying to set up a connection between a USRP N310 and
          an FPGA through an aurora interface. I would like to generate
          data with the USRP and send it directly to the FPGA through
          one of the SPF ports to see if the FPGA can recover it.=C2=A0</=
div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>Are there any tests already available that can implement
          what I'm trying to do or should I write one myself ?=C2=A0</div=
>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>Thank you for your answer and have a good day.=C2=A0</div>
        <div><br data-mce-bogus=3D"1">
        </div>
        <div>Nicolas=C2=A0</div>
      </div>
      <br>
      <br>
    </blockquote>
    I'm not aware of anyone having used the Aurora capabilities at this
    point, but there MIGHT be someone out there who has.<br>
    <br>
    There are certainly no example applications for this provided by
    Ettus/NI.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------85870FE8500F5C962EB23403--

--===============5936704467957343038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5936704467957343038==--
