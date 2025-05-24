Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E456BAC300B
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 16:56:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38DD5384CBD
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 10:56:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748098588; bh=HhBB/TceTxGx+ATr6RXLiVTaw9NU1MkBYAsS36Res9M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Yty+zIFXQyuqXUdivf7G9r2RbCaDBRPBkA8I/6RUL0unArIo9I98EwV7CoXL9fEii
	 C/InOIvEZ0LbHGI2iM0dd1UJvTD9POabLFNb1DlZMGwkLlwB+9p4WI8e7yaPA6VtLc
	 nC1Mb3Q3Z6up82dHHOkFkr/iy61VKJIDuLfwhrf5nw8S5Ex6Vt9ioK9br1vGzTd3KT
	 ECeU1h/Dvx6nNBZkdVaK35VB3QAcW2fm61hymFNB6wgyL9AcRsZ8l2fhBbZJbM+wiz
	 CP/I011EMiTW4cxhgI7436cnRIIKRgmrgg7pYunER0+2paMJ2PBAncKl/zsjPwdyNz
	 0gHUeJYITRShQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id EBE6838465D
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 10:55:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jc4mmMrc";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-47686580529so6939131cf.2
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 07:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748098552; x=1748703352; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbJVnH7AgULKBBKlQbRqMElaJ5SIEsUaeLvX1g79kRM=;
        b=Jc4mmMrcxMIagBjNiLyf8oaluFU/wpP5gGNvV6GG3MABL73qPmECfpjWVEvLWkIx1r
         7VaIQ14LBx11nGdSTJ4Vz2oR6InxrSGRLJ1cg2nBb7ht1cW/zldV9YKMlnKsocfPfBqJ
         xQNbENMD+RkUm7ZXGfRhDFajYURPmTyFlG3Z76V2xwI60lcREmQNo9Uc8/VJZSjEdHE+
         hKqeKMZIptYB40zOrV5axo+9WiEtda2KNhman4/TBQ4YVFazb+ddU/bAnyJMtxJEnket
         L2qmWC/xt5Qlb10iDkhnoTGSDz6a0aUOffcH8M4KbyrfsbxIvwyyeKEjmOXH4/w4qRzB
         7/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748098552; x=1748703352;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rbJVnH7AgULKBBKlQbRqMElaJ5SIEsUaeLvX1g79kRM=;
        b=XZT4AVnyV8uGN/Bzbp4Px5QtTmDF8QCsZG6/P5WZHgr6GM6l1nQNkt1GVsdGnY5b3B
         0GKm2KLUghL3AHfe3azDz5HpR4gSf0qtCT1Srtxn7F+89tk4auMfrfyeqGmCaWz4Lx/z
         KaTY/368RbQVGq+yM+9+gkGruNyiF7PHsJ5y+ebJuuB8SpcFDcuQ5qUY8L+26PS+oi+7
         U+UUNzvpvzMFw0RiSbEuTp/ea3h61TB17LWKaW81pDVi4TeT9ECjJFyC7cHhc/2qVMqC
         cXRHjEy8i8/0qLYMtrBuPe2SOsXeUx6t3Xhc4MWo5VldfniB0vAI1oLJl3Y3GXTp43+G
         7ZEg==
X-Gm-Message-State: AOJu0YxCc703Up/DQDVJDmQGsoNXUFYfLA0Eu59Y3p1KDv9Z+rUe052q
	/L+ZiW1sqp1d7IyD5sp2CuE7puQ7WnduHk8WE5L/XX89aI8E8S6dBHtLj8SyIA4r
X-Gm-Gg: ASbGncuB/eQ2nSaVqpaQ9r2Y7Lg+Y62jnes/eVroTcUIQPxAyyvKCAGwCw0leCquFvU
	h+83cfcef7GJuKKqwzk81xqJEG87PxUzFihU6k8YRMhMc5duhEnFAHp9y4wgvr+Yu8G/LmCeSH9
	Dgv8kUKf/r8JhQAnOm/jtgWBAHafXmxkqE/qsVG56RE+7A4eDSWePXJCYIqqbUit+t2T1XW4QvI
	VbuJ3whipMgF3jCYp/a1QqA+xjH/E/JBThDr19lqaDz+dJMfP29o89zJLEEZk7ZdxpJXP4w9ZRj
	r1wNOVzO69itTunThhSOfEXLpwALCdQQ+DhsHHwVNJMiyxligUhvNps4t8oJOt+8RUCGt5M=
X-Google-Smtp-Source: AGHT+IH4+NLFLwL20wj0AuH07EgHqGi7KMGiZ3yfRMhnjxCgKUm1KFjnh6I2pHU31JpO4K86/sEfsg==
X-Received: by 2002:a05:622a:2518:b0:49e:29cb:d38f with SMTP id d75a77b69052e-49f438f6c58mr44890521cf.0.1748098551684;
        Sat, 24 May 2025 07:55:51 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-49c12749c08sm49904211cf.79.2025.05.24.07.55.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 May 2025 07:55:51 -0700 (PDT)
Message-ID: <772e9a09-2f46-4707-add7-c4459d902f43@gmail.com>
Date: Sat, 24 May 2025 10:55:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAAxXO2GUE4A3Et1f9AYcgDOYJKdaBbVrwFbhuQrhvg84A-u8xA@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GUE4A3Et1f9AYcgDOYJKdaBbVrwFbhuQrhvg84A-u8xA@mail.gmail.com>
Message-ID-Hash: 6XPWJV34SAHCFJIX2WNNJXPD3FF67NRZ
X-Message-ID-Hash: 6XPWJV34SAHCFJIX2WNNJXPD3FF67NRZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Manual Tuning advise
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XPWJV34SAHCFJIX2WNNJXPD3FF67NRZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4401487344300015474=="

This is a multi-part message in MIME format.
--===============4401487344300015474==
Content-Type: multipart/alternative;
 boundary="------------0xJ649RrrC0F88dl0oSRlrwn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0xJ649RrrC0F88dl0oSRlrwn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-05-24 09:48, Nikos Balkanas wrote:
> Hello,
>
> I was reading the 2016 paper by Ibrahim & Galal (ETRI journal 38, 3, 
> 2016) about tuning hops.
> The authors present a tuning algorithm with a sequence of none-manual 
> and manual-manual tunings. Are their results still valid after 10 yrs 
> or is there a faster algo?
>
> Is there a way to detect the state of the PLL during tuning?
> What are the frequency limits of the SBX-120 LO?
>
> TIA
> Nikos
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
There's an "lo_locked" sensor on many of the RF daughterboards:

https://files.ettus.com/manual/page_general.html#general_tuning_dsp_sign

The SBX uses the ADF4350 PLL synthesizer, so the LO limits would be 
dictated by that chip, and the capabilities of the mixer chip, the ADL5380.

--------------0xJ649RrrC0F88dl0oSRlrwn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2025-05-24 09:48, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAxXO2GUE4A3Et1f9AYcgDOYJKdaBbVrwFbhuQrhvg84A-u8xA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default" style="font-size:small">Hello,</div>
        <div class="gmail_default" style="font-size:small"><br>
        </div>
        <div class="gmail_default" style="font-size:small">I was reading
          the 2016 paper by Ibrahim &amp; Galal (ETRI journal 38, 3,
          2016) about tuning hops.</div>
        <div class="gmail_default" style="font-size:small">The authors
          present a tuning algorithm with a sequence of none-manual and
          manual-manual tunings. Are their results still valid after 10
          yrs or is there a faster algo?</div>
        <div class="gmail_default" style="font-size:small"><br>
        </div>
        <div class="gmail_default" style="font-size:small">Is there a
          way to detect the state of the PLL during tuning?</div>
        <div class="gmail_default" style="font-size:small">What are the
          frequency limits of the SBX-120 LO?</div>
        <div class="gmail_default" style="font-size:small"><br>
        </div>
        <div class="gmail_default" style="font-size:small">TIA</div>
        <div class="gmail_default" style="font-size:small">Nikos</div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    There's an "lo_locked" sensor on many of the RF daughterboards:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_general.html#general_tuning_dsp_sign">https://files.ettus.com/manual/page_general.html#general_tuning_dsp_sign</a><br>
    <br>
    The SBX uses the ADF4350 PLL synthesizer, so the LO limits would be
    dictated by that chip, and the capabilities of the mixer chip, the
    ADL5380.<br>
    <br>
  </body>
</html>

--------------0xJ649RrrC0F88dl0oSRlrwn--

--===============4401487344300015474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4401487344300015474==--
