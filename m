Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B19807C6088
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 00:47:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C34B03853CE
	for <lists+usrp-users@lfdr.de>; Wed, 11 Oct 2023 18:47:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697064435; bh=OixCRPteWeio7kM0DYYwd2of3pWG3Jf4ylqVD9vZNzc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cpbwBuhdhXNn8XFT7sQ0E24z8Vcc2EYIk3wVhsD3VDvtsH75lf757WZQZ60jPlvNN
	 tkgKequ+j1bUDYjPGDKHPfJyB/TFJT7DYAS2dDr9hQXDVfisn2bYMmpqN3AuiCQbMf
	 qUtffGr38/O/LYJNFWrhu0qB/O9a2txnIAp9juWwcLmQTTiw9Tr4CdN+jZekNcf+Lm
	 MPg+2OTnZs57g0pdtGazpiUgRjpL1yxP6UppRrLq+bpU8WQsk7gluatr2raxYNV5GH
	 uIleag4gy5YNNmxUBKR0vkyRqAYcLCxGL0s9pki7AddvOwhj8flppNo8fQwFmfxtHU
	 PGUtt6QfwuUBg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F7EE385033
	for <usrp-users@lists.ettus.com>; Wed, 11 Oct 2023 18:46:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y1R6HwN0";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7741c2e76a3so21265685a.1
        for <usrp-users@lists.ettus.com>; Wed, 11 Oct 2023 15:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697064395; x=1697669195; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=inyu8GpuvTU2qVRgrVR4h7fer13Ibq6/aWt4XFd60bg=;
        b=Y1R6HwN095TOWUtxjSPaSOLfqSslBl3JbYpoiH9ukrRLW8S7OnUTNMupbztsQkpJmq
         PxOpHtdFsvRcKlgIbbESq4a31YsqPDHY31ENeh7jm+9ymVb0bV6JsjjbpKBd4Z2ET4KV
         3i1waM1KCnE25V74IT854bG8kjucRwMQH1xuHVcOPbGCdnlC1lBqAyGfG7+rx7weQqXA
         fGeVBUHMQ2rzTGMaSCviEUKQ2qR0I440stjbFHzPwm4DA9GvapxjvemF/X+3EfjDJsFe
         2LdmW7/O9OaFTD2o34svdzZK0xtXJ9TV1AiBD9Zdaw+8PlMVuN5xxP7pJUcVh7hjv0m3
         H77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697064395; x=1697669195;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=inyu8GpuvTU2qVRgrVR4h7fer13Ibq6/aWt4XFd60bg=;
        b=FGY/tZ1qcOli/DzJ0UTaGhnA482Cs6UUct5dbsFjC1cVJezHa8g4oXI7pzcKsnpNZH
         eKXhtFW2hf0Drt9LqmPvpcweafPoMl1X9Eul4v+4Fz1iXzHuymEhGqdJ+NpmuhTHvgzH
         uwp2rSxz9vFlaV67+A0zCCTf2Zl7npSS6iURhbRCcT/ezUR1Ld9L5zxmtJMLiZeH5uvb
         QLr3kBtOHI4sz9HlP79VFVoj6eD7LgXTMocbz2znVgGMSxE9djX02LRjIee5hFlIW47e
         Jf1f8YJvnil5H4aWpDIm10gMCJ1pdTxtHaFZOkSBSYc61eYqtuDeNpWzJ+JLsMTmxArZ
         gDWg==
X-Gm-Message-State: AOJu0YwA1ZxgzLRIBC+yEhrWzD5rWlauaJSONUUjFEbLIIvyH90ExSwr
	hA/prJL9XB8CPScN67Zv4FXMInU0FPo=
X-Google-Smtp-Source: AGHT+IHcpcxTWN+GR7bzPylHx/QFUF2p4Wb2t3o7NQ86FwBn217Jfqzr0mVGFgPFjWdBxbqjbMcibQ==
X-Received: by 2002:a05:620a:e0c:b0:76c:ea6c:59a3 with SMTP id y12-20020a05620a0e0c00b0076cea6c59a3mr18967129qkm.46.1697064395484;
        Wed, 11 Oct 2023 15:46:35 -0700 (PDT)
Received: from [192.168.2.176] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t7-20020a05620a004700b007682af2c8aasm5543462qkt.126.2023.10.11.15.46.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 15:46:35 -0700 (PDT)
Message-ID: <112c6dc9-7f28-412d-ae39-91fbc7d02a7d@gmail.com>
Date: Wed, 11 Oct 2023 18:46:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ@lists.ettus.com>
Message-ID-Hash: 6QZ6ZGPVL4D3Y3CFNYNWSC35G22ZTYBR
X-Message-ID-Hash: 6QZ6ZGPVL4D3Y3CFNYNWSC35G22ZTYBR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QZ6ZGPVL4D3Y3CFNYNWSC35G22ZTYBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5897439378893819820=="

This is a multi-part message in MIME format.
--===============5897439378893819820==
Content-Type: multipart/alternative;
 boundary="------------p964w9RQl0JkNWasK8azVzUf"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------p964w9RQl0JkNWasK8azVzUf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/10/2023 18:43, jmaloyan@umass.edu wrote:
>
> Hello,
>
>
> I am currently trying to change the UHD logging settings, however, it=20
> seems that when I adjust my environment variables, the new environment=20
> variable does not propagate to all logs, specifically, it seems it=20
> does not change the log level on the MPM side.
>
> For example, if I adjust the log level in my bashrc file to the lowest=20
> level=E2=80=A6
>
> |export UHD_LOG_FILE_LEVEL=3D0|
>
> I see the console/log file log level adjust accordingly, where now I=20
> see additional debug and trace level logs.
>
> However, when I inspect the UHD software, I see some logs that are not=20
> printed, but should be according to the new log level. For example in=20
> x4xx_clock_mgr.py, there is a debug log on line 695 that never gets=20
> printed to console, yet it appears it never does.
>
> Does setting the respective log level environment variables not=20
> universally change the log level for all scripts in the UHD software?
>
> Thanks
>
> Joe
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I assume that you're changing the environment variable on your PC=20
*HOST*.=C2=A0 That will no effect on the similar variable on the radio,
 =C2=A0 which is itself a Linux host whose main purpose is to run MPM.


--------------p964w9RQl0JkNWasK8azVzUf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/10/2023 18:43, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I am currently trying to change the UHD logging settings,
        however, it seems that when I adjust my environment variables,
        the new environment variable does not propagate to all logs,
        specifically, it seems it does not change the log level on the
        MPM side.</p>
      <p>For example, if I adjust the log level in my bashrc file to the
        lowest level=E2=80=A6</p>
      <p><code>export UHD_LOG_FILE_LEVEL=3D0</code></p>
      <p>I see the console/log file log level adjust accordingly, where
        now I see additional debug and trace level logs.</p>
      <p>However, when I inspect the UHD software, I see some logs that
        are not printed, but should be according to the new log level.
        For example in x4xx_clock_mgr.py, there is a debug log on line
        695 that never gets printed to console, yet it appears it never
        does.</p>
      <p>Does setting the respective log level environment variables not
        universally change the log level for all scripts in the UHD
        software?</p>
      <p>Thanks</p>
      <p>Joe </p>
      <p><br>
      </p>
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
    I assume that you're changing the environment variable on your PC
    *HOST*.=C2=A0 That will no effect on the similar variable on the radi=
o,<br>
    =C2=A0 which is itself a Linux host whose main purpose is to run MPM.=
<br>
    <br>
    <br>
  </body>
</html>

--------------p964w9RQl0JkNWasK8azVzUf--

--===============5897439378893819820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5897439378893819820==--
