Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A29BC273
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 02:20:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F24D1385AF6
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 20:20:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730769655; bh=7OlMR5JUcLGhzuMAdpZ074+M/ullNSydCqjvUJm04AU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Tw4qgxoo0V1XmVMNMPw1SDdusGRLag7Nz5zakG744vOxfyuI12H3qWLtWuMMUCm7v
	 AdaO8BbH7tlNIhITD2+dmeUAOpGbMP1DyZKFdsgl9mpT+DB3h0ttpEyjxRWc3GQb9F
	 al4b5eDJIgsvJ4aBrF/dWLeRYjgk5CXCTC+OJEszHZEEv2DtuuMPXKbDPK9iEQWH1O
	 gLBDNtUkMBIpFuwf43Dsw5Rj1mTB4vcqt4hpWYv0ow3aSsXLD7nxKQM9ig/2iwsKwP
	 E7tXnNyvryb/HDautB6xxHwFzHFtUmXP8wRfiUymyNdboguaicsV3eAtwIUromnGy9
	 Z05ihPn3bcvDw==
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F0C4E385AA3
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 20:20:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T0PLDNms";
	dkim-atps=neutral
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-84fb86af725so1484756241.0
        for <usrp-users@lists.ettus.com>; Mon, 04 Nov 2024 17:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730769629; x=1731374429; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fbAISlecnQsYzFxCeafI4JSWE1jL/Q/5iNR14LfCYgY=;
        b=T0PLDNmsnxrv+6SR37pk5iyJioSOxSxcYNyphrnIS+IqjDImCM3D2NbU4V4ERUjtnX
         SJfTqIli1/f/f+SIGNFdiRRkYvFLX1BbiRyEKElfI9uxGR2412GlBmvSYYJcPB9+WJiT
         RGcA/cZT26ZpnwYVuWn2MhtMKndYWfhX4mX3N33KCSCaG82eVvJWWhssdCkRL8rfjalt
         daiBA1W5h+rmedUXLyjxS2vcItihs6T9ICuf/l2auJuoAJYEyhBsSz3wFhlVRqHsQi+Y
         FGytB8h1pCyT9EDiD9txf0Ogq4JZYYYohbeogOZnLs48QPUcBkOlCaJ3WF8i8WRin1vf
         WQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730769629; x=1731374429;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fbAISlecnQsYzFxCeafI4JSWE1jL/Q/5iNR14LfCYgY=;
        b=IHfwAmBUboEUmtacIGUFpORKby7qYtHM3Ju2Y8n/XsaBR6EXwqgUV+b7tiruV7biMs
         c58gz56Ee0tuoKLKvVtZkolOqcTz5TWEFMGgoYgZsHD4Rxwt6fMCJjqffFAB8SUn0smt
         QbQG578wh85U/oy6RgWAZNdBZ7ooGOi5EGl/VWeeq12Bp/c+rwCaEWJ6aijiBdEIFOT0
         GVxGE5mLveWbAnGxn/DbCekubtZMZ0yTak6cwLRG/GecmuHh+DpKGOcUe6mLJjcV+bIy
         YN5UjhJ1VMwbzLe5FOCPwMWXyCF3QmrAc0fsa3UyqMkmjWmw8K5UPIIv0st4NE2CzzfU
         NBIA==
X-Gm-Message-State: AOJu0Yw6bopDGIqcqdxlcfpsGOYY+LOrNNcQMpSN2rddpnLKfkl+P5g6
	bdSd4YVhe29eraxqOcBIU8dI5YSUfLkLgbbubwXYfp/x52Crtu7u4FRCDw==
X-Google-Smtp-Source: AGHT+IEDFYfLmUyub2UfuN+ig110+FXIjnoD1d9QHGq/afXlmoZhwIKbr/6K6GvtHNXCTsM9jdf/RA==
X-Received: by 2002:a05:6102:3588:b0:49d:4812:913f with SMTP id ada2fe7eead31-4a962ef5277mr12116042137.23.1730769628741;
        Mon, 04 Nov 2024 17:20:28 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b2f3a10bd0sm471664685a.56.2024.11.04.17.20.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 17:20:28 -0800 (PST)
Message-ID: <be2ef92d-ac2c-44cf-a9b9-59417eef503a@gmail.com>
Date: Mon, 4 Nov 2024 20:20:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com>
Message-ID-Hash: 7AYWGZD6YTTAOZEOUW6AGL53Q7IN2SHV
X-Message-ID-Hash: 7AYWGZD6YTTAOZEOUW6AGL53Q7IN2SHV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AYWGZD6YTTAOZEOUW6AGL53Q7IN2SHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5382161668533211103=="

This is a multi-part message in MIME format.
--===============5382161668533211103==
Content-Type: multipart/alternative;
 boundary="------------V986OvsHtso0rxgG106lm0gI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------V986OvsHtso0rxgG106lm0gI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/11/2024 20:12, dhpanchaai@gmail.com wrote:
>
> I got it work. It seems RT_RUNTIME_SHARE disabled was the culprit. I=20
> re-enabled it using these instructions and the benchmark worked=20
> without packet drops or underruns:
>
> *Underruns Every Second with DPDK + Ubuntu*
>
> With Linux kernels 5.10 and beyond, we have observed periodic=20
> underruns on systems that otherwise have no issues. These Linux kernel=20
> versions are the default for Ubuntu 20.04.3 LTS and later. The=20
> underrun issue is due to the |RT_RUNTIME_SHARE|=C2=A0feature being disa=
bled=20
> by default in these versions of the Linux kernel (shown as=20
> |NO_RT_RUNTIME_SHARE|). The following procedure can be used to enable=20
> this feature. This process was tested on Linux kernel version 5.13;=20
> the procedure may be slightly different on other kernel versions. To=20
> determine the Linux kernel version of your system, in a terminal issue=20
> the command |uname -r|.
>
> |$ sudo -s $ cd /sys/kernel/debug/sched $ cat features | tr ' ' '\n' |=20
> grep RUNTIME_SHARE NO_RT_RUNTIME_SHARE $ echo RT_RUNTIME_SHARE >=20
> features $ cat features | tr ' ' '\n' | grep RUNTIME_SHARE=20
> RT_RUNTIME_SHARE|
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I never would have suspected a kernel scheduler subtlety.=C2=A0 But, ther=
e it is:

https://lore.kernel.org/lkml/c596a06773658d976fb839e02843a459ed4c2edf.147=
9204252.git.bristot@redhat.com/

It's fantastic that you found this!


--------------V986OvsHtso0rxgG106lm0gI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/11/2024 20:12,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:dhpanchaai@gma=
il.com">dhpanchaai@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I got it work. It seems RT_RUNTIME_SHARE disabled was the
        culprit. I re-enabled it using these instructions and the
        benchmark worked without packet drops or underruns:<br>
        <br>
        <strong>Underruns Every Second with DPDK + Ubuntu</strong></p>
      <p>With Linux kernels 5.10 and beyond, we have observed periodic
        underruns on systems that otherwise have no issues. These Linux
        kernel versions are the default for Ubuntu 20.04.3 LTS and
        later. The underrun issue is due to the=C2=A0<code>RT_RUNTIME_SHA=
RE</code>=C2=A0feature
        being disabled by default in these versions of the Linux kernel
        (shown as=C2=A0<code>NO_RT_RUNTIME_SHARE</code>). The following
        procedure can be used to enable this feature. This process was
        tested on Linux kernel version 5.13; the procedure may be
        slightly different on other kernel versions. To determine the
        Linux kernel version of your system, in a terminal issue the
        command=C2=A0<code>uname -r</code>.</p>
      <pre><code>$ sudo -s
$ cd /sys/kernel/debug/sched
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
NO_RT_RUNTIME_SHARE
$ echo RT_RUNTIME_SHARE &gt; features
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
RT_RUNTIME_SHARE</code></pre>
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
    I never would have suspected a kernel scheduler subtlety.=C2=A0 But,
    there it is:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://lore.kernel.org/lkml/c=
596a06773658d976fb839e02843a459ed4c2edf.1479204252.git.bristot@redhat.com=
/">https://lore.kernel.org/lkml/c596a06773658d976fb839e02843a459ed4c2edf.=
1479204252.git.bristot@redhat.com/</a><br>
    <br>
    It's fantastic that you found this!<br>
    <br>
    <br>
  </body>
</html>

--------------V986OvsHtso0rxgG106lm0gI--

--===============5382161668533211103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5382161668533211103==--
