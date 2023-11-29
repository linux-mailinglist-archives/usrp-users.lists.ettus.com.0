Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2717FE055
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 20:33:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 732B6385E85
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 14:33:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701286396; bh=1F9tveDZQ80vVg1vsZqdv4vyPein4QavG6nAPtoq5cE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hmiOpF0n2rzf/3F6LQvmyo9JBWQf2XqDk5u90ABFcTnP36hwBeswk+Ehz5fkvFgJA
	 JBJQgyIV8lKV+8O70neehQ2a9vAEObjcVUSkWoq084Bgg2zuxv76JiS0Li1Vwip9TB
	 ky+9ZTetNtk2g9nKxsJnKq433cjsmrbleL9ncjUu+PVbdYDOJ9ChyqqADnCkTLpRsD
	 GFean0NJbl4eHALcanUbg8rmOhp1FKfvZP81+p7BRYigmCTt85xVGP8N2QcT+RQWHW
	 iqg+4tOFUIaItE8FM3a0DcaoGg928e981cgAmF2cHM1HHimhZgeioEzyHCZoU70GPX
	 79SbToCwhFX9Q==
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BBB5385C54
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 14:32:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZT4EavUG";
	dkim-atps=neutral
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1f060e059a3so29121fac.1
        for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 11:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701286340; x=1701891140; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BbOSDGAuN9Hn/fwgtpABSJzaVyiV+JlGu0+Xqa8XWlQ=;
        b=ZT4EavUGlWyTPaaoPznyrhWUfRz4Qba2cTThhncuGbgYMbCcl2CY9sRsPzJ8q1kScD
         peIslU1IiGUZehGbbm6+oIDrF4bxGtU17TWZDPEULLE1unZdWWIYOpJreqaIkEQfoaLg
         L8TOBBL87DYUBZkyO44vfPuJ8MVmLBZ0hQHb05XzhvQHdaYJW3SxAVVVtdqjKLqsn/Mm
         cPwPu8p67GPRqrp+GVqasUtTFkdWH4StkYuEsBALwhClzetW9PWYNakcqq5IJ0YW6SZI
         poY1kMYyndj48fX499QQeME4IiGzsqB0h76iP+ZVcVq5l7tMT+0NtqdANQHKsUhSZoZT
         nJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701286340; x=1701891140;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BbOSDGAuN9Hn/fwgtpABSJzaVyiV+JlGu0+Xqa8XWlQ=;
        b=YWzRwduMRRge3mYG7uza/7ZJpKKd3t1hLW+rBahb2cSanevGTLOkVjtFA2mtCgRhqy
         sAmO+WV8BRXvFlXZAucOowH4r3AOrAgDfXA5ePatiQAiLsXtd7CODiZmcWMKOi3S8IxW
         WJaQO5jRuRi1Zi77tfTH6AcCDnW3VXnDTyZ1EquheCmOi2E1mAF0LfvaDNqLsQT6HSKk
         UtubeZz3E4v68n8SHO5RFaThYkfOCi9A8Y2PNOM/hAPt92/wYDvyeTFULaC7nWUIJlj/
         7d+s5ihF1NuGur62w3Z9W/KVU3/YeJ06R2SM4epn6M310XmUTBL2YQmJXoq8iiHb3Nbc
         URPg==
X-Gm-Message-State: AOJu0Yw/FZXND3RfZ0nwFifZbJjRcuOaj6fat20a27SWESEtqQaWbZLP
	um04O8oyFx0wMW4bpBA6DiBdY4zP6HQ=
X-Google-Smtp-Source: AGHT+IFwuiKpDakjV8qw1R4BT5vZxKZGUgOL/v+JqNsp5eqT/JYHHtxTRS8EJwNQ8SQxv9j8dphOAA==
X-Received: by 2002:a05:6871:706:b0:1f5:b150:5691 with SMTP id f6-20020a056871070600b001f5b1505691mr22286238oap.25.1701286340278;
        Wed, 29 Nov 2023 11:32:20 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id d15-20020a05620a240f00b0077dd098d0b6sm545578qkn.109.2023.11.29.11.32.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 11:32:19 -0800 (PST)
Message-ID: <5ce11ec1-d739-4ca6-a78c-4dde8145f611@gmail.com>
Date: Wed, 29 Nov 2023 14:32:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com>
Message-ID-Hash: LHTBLDYZFP5LBM5DJOS577CRSASG37T5
X-Message-ID-Hash: LHTBLDYZFP5LBM5DJOS577CRSASG37T5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Timestamp Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LHTBLDYZFP5LBM5DJOS577CRSASG37T5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1745489728355933464=="

This is a multi-part message in MIME format.
--===============1745489728355933464==
Content-Type: multipart/alternative;
 boundary="------------SJr4V58E0vHGIQ6nr0M5qTKQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------SJr4V58E0vHGIQ6nr0M5qTKQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/11/2023 06:45, matthew.t.hunter@aero.org wrote:
>
> Hello,
>
> We have an X310 that is connected to a high precision GPSDO 10 MHz=20
> reference and 1 PPS signal.
>
> 1.
>
>     How precise is the timestamp generated from the 1 PPS signal
>     (assuming a perfect 1 PPS)?
>
> 2.
>
>     Is it limited by the master 200 MHz clock to +/- 5 ns? Or the
>     sample rate?
>
The time-of-day register updates at the master clock rate, so +/- 5ns.=C2=
=A0=20
That's in terms of precision.=C2=A0 In terms of
 =C2=A0 *accuracy*, there may be some latency in "noticing" the 1PPS puls=
e=20
when you load in a new clock value.=C2=A0 Not
 =C2=A0 sure what that latency is, but it's likely fairly small (ns-scale=
).


> 1.
>
>     Is there a way to achieve sub-nanosecond precision?
>
Not without significant hardware and FPGA modifications on the radio,=20
and I'm pretty-sure the FPGA can't be run at
 =C2=A0 clock rates that would allow sub-ns precision.


> Thanks
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------SJr4V58E0vHGIQ6nr0M5qTKQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/11/2023 06:45,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:matthew.t.hunt=
er@aero.org">matthew.t.hunter@aero.org</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>=C2=A0</p>
      <p>We have an X310 that is connected to a high precision GPSDO 10
        MHz reference and 1 PPS signal.</p>
      <p>=C2=A0</p>
      <ol>
        <li>
          <p>How precise is the timestamp generated from the 1 PPS
            signal (assuming a perfect 1 PPS)?</p>
        </li>
        <li>
          <p>Is it limited by the master 200 MHz clock to +/- 5 ns? Or
            the sample rate?</p>
        </li>
      </ol>
    </blockquote>
    The time-of-day register updates at the master clock rate, so +/-
    5ns.=C2=A0 That's in terms of precision.=C2=A0 In terms of<br>
    =C2=A0 *accuracy*, there may be some latency in "noticing" the 1PPS p=
ulse
    when you load in a new clock value.=C2=A0 Not<br>
    =C2=A0 sure what that latency is, but it's likely fairly small
    (ns-scale).<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com">
      <ol>
        <li>
          <p>Is there a way to achieve sub-nanosecond precision?</p>
        </li>
      </ol>
    </blockquote>
    Not without significant hardware and FPGA modifications on the
    radio, and I'm pretty-sure the FPGA can't be run at<br>
    =C2=A0 clock rates that would allow sub-ns precision.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com">
      <p>=C2=A0</p>
      <p>Thanks</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------SJr4V58E0vHGIQ6nr0M5qTKQ--

--===============1745489728355933464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1745489728355933464==--
