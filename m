Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE334468F2
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 20:25:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 299943840ED
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 15:25:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G8afGS8N";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 44EFF383EB5
	for <usrp-users@lists.ettus.com>; Fri,  5 Nov 2021 15:24:29 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id w4so7039403qtn.2
        for <usrp-users@lists.ettus.com>; Fri, 05 Nov 2021 12:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=9vtMKKO+wXvad1n09CDRLfSjtFbG7KcUVSRe+JZI/dI=;
        b=G8afGS8NrZnPW1xn1CuEvJ2wwWBy7+ChZ3NUCS7yeDgMAqyK6DPnCElZJk2bfkT8b0
         nslFAaHkG8+VcB5HReULcLAhiRu+0EIlR7KPiMxojFLhd2CQwbFtVCDF/bh3YrFElhnw
         EPgpe6HTYQVesnrMQHE9Z15dhRC/Wnumkc+Wk7epSRM11lk8IxXbRS8J4XKm7q9COyre
         ESruEV8uFswYJbdD3YGEoBMye1RAJzY6dh/lAD8aNnbolUxKcprx+HVD8CjgJCg5tkbi
         /Rxh5EYs174Ki5sJIw6lb5bfQR41nioKQMPhVAj8uORbg5Y2vl+Dzo7kO5wY3SMjOPdQ
         k6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=9vtMKKO+wXvad1n09CDRLfSjtFbG7KcUVSRe+JZI/dI=;
        b=HSso/B8q+o1XuEfG/LW7gE4fxg642qhJQTFdJf7RTtpXIQclTwSnE4Enq6s+io53tA
         RB8AixMpuQsDWnp01DtXHPZ2Jkdy7lai4w7H/LpS5G9MaheUIRP9foOVZjqA8pTN3R3j
         ZxcqVVckpxaEsCwKSE2U/+FC/vNXs7vDp1iU7p1TIsu28Fie5jQm93E/Bt+7SofLH0Kl
         UChVmOfhtZDlsAstIln5L7/vNFBTd0UM76QZV7C6j0HNW7kdmBCLMfe+qV+9pI1UuOcW
         BfmOjOrBolaypdbxBj1fpyhMvH94RJ/mmJ2TCJFmE5pILbIZRGsngALlS/YGG5wpa2b/
         FmbQ==
X-Gm-Message-State: AOAM531UgbAHBxrXwWJB+ou7ueXoPByHX2WAQm7pgWtL263vEpAEvtbs
	d2P7WGuV6pDT1ky9JygiR5b0KYQh+gk=
X-Google-Smtp-Source: ABdhPJxoSrCx0OkS79ZLMJRwIHJw5euejTm0oHCsptcaJNZ4bL02UIc00AfR7zkvrxK6jZ2t6//GOQ==
X-Received: by 2002:ac8:610b:: with SMTP id a11mr62883779qtm.182.1636140268422;
        Fri, 05 Nov 2021 12:24:28 -0700 (PDT)
Received: from [192.168.2.235] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id a3sm6818826qta.58.2021.11.05.12.24.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Nov 2021 12:24:28 -0700 (PDT)
Message-ID: <12c30c1f-7231-23bf-79d2-dcbb85b4d294@gmail.com>
Date: Fri, 5 Nov 2021 15:24:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <002601d7d282$eb64eb40$c22ec1c0$@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <002601d7d282$eb64eb40$c22ec1c0$@gmail.com>
Message-ID-Hash: Z46EO6N3JT6BX4I7SHNKDE2NPN3MFRK4
X-Message-ID-Hash: Z46EO6N3JT6BX4I7SHNKDE2NPN3MFRK4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OctoClock-G driving by external pps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z46EO6N3JT6BX4I7SHNKDE2NPN3MFRK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6295079525255681300=="

This is a multi-part message in MIME format.
--===============6295079525255681300==
Content-Type: multipart/alternative;
 boundary="------------N0Zc5J1dKykjkpnFHo9SE0XG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------N0Zc5J1dKykjkpnFHo9SE0XG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-11-05 16:22, zhang.weit3@gmail.com wrote:
>
> Hi,
>
> I am playing with an OctoClock-G, where I would like to use an 
> external PPS which has a rate of 10kHz (two pulses per second). I am 
> wondering whether the OctoClock-G can also create distributed 10kHz 
> signals at the outputs. Could anyone help here? Thank you!
>
> Regards,
>
> West
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Not without modifications both to the firmware and likely the hardware.

--------------N0Zc5J1dKykjkpnFHo9SE0XG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-05 16:22,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zhang.weit3@gm=
ail.com">zhang.weit3@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:002601d7d282$eb64eb40$c22ec1c0$@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am playing with an OctoClock-G, where I
          would like to use an external PPS which has a rate of 10kHz
          (two pulses per second). I am wondering whether the
          OctoClock-G can also create distributed 10kHz signals at the
          outputs. Could anyone help here? Thank you!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">West<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Not without modifications both to the firmware and likely the
    hardware.<br>
    <br>
  </body>
</html>
--------------N0Zc5J1dKykjkpnFHo9SE0XG--

--===============6295079525255681300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6295079525255681300==--
