Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0719BEF5E
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 14:45:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BBB1383D62
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 08:45:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730900705; bh=JkYLejhE+wlS12qxJqcPQl8fEUWktI9E+316HlSjkxw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SS7YiBGd1iOpRp7pJZp9yElKYtNX5bdPDm8ww3mkVTBVt2Ozf5iYZ3tdNhqSIW3zO
	 9PBp6NPEOvTOUICl7WNQ3dMPipQpz37zUpIzTbNk3+uWW4cfD5dvU6gpNxkHJ8yNes
	 WcFUuVz9t/YBCtRMlfRwb5BxlI9e5A8HO89kKleYNueip9guJUmd3Aa9bD9s6Qie+h
	 YFpcOnOhzi031JhCpvhGsWD4tz/7Pm4KRCo3MCuVQthSdvAJ59vpMrbzAy9IixdbVu
	 GHpJ3urMTClhl9qTuylAyBLfL6aS10W00saKuKJjrJYk1w9CuFblXmtku2SESykjAN
	 B4i0mDQCgHD3A==
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 550E7385B93
	for <usrp-users@lists.ettus.com>; Wed,  6 Nov 2024 08:44:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dFqRlJ3D";
	dkim-atps=neutral
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ee3c2e79aaso236924eaf.3
        for <usrp-users@lists.ettus.com>; Wed, 06 Nov 2024 05:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730900655; x=1731505455; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lkBLsVqtPgZ/ZBt1KtxoNZXk+k4IcvnhgeNBede4zAk=;
        b=dFqRlJ3DyJzy3hl5ANVOM/O+40Wjbb7SPttm10yqP0qgt852VbUWS3Gg8sN5nLIlB9
         y4hNSCFBq9+ZWzu4F95liETCCBFyWhWlW4NweOcFGMSJLs9PtQOy74bpl011nJKUGilT
         0Ul7LpE6i4WTB5N/SjBpLkT+wuHX6AATSPFsWBtfI+6yWM/fgVsnDX9LGVnfrDmww230
         nUHhpuNcRNo/HC2HC+p42wghs801LOc9XLNFI63j+Z1yt20FxUwiVWi6Qg0mNdoWI6L2
         ZFNaR/rPiQBsVUZVs2nV5/EipZWkSbPRroApQR9zAEYlzFnnh9+6yORBh1NtEI1xct0J
         8P0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730900655; x=1731505455;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lkBLsVqtPgZ/ZBt1KtxoNZXk+k4IcvnhgeNBede4zAk=;
        b=tft/k+rW7L/gRYq04R8i7YDnIG3e/z+HhW4jnVBPGVI1RYwN+XvtbvQ8df1yV7h7C9
         0VDGwolaocAVRSuMyXZ6ziekUraWN22aDAcjlkEqQ08SGJlTXOmpR7u61h/t6+XM6Dtm
         PeThR7OGZKBC4RJBtCh+ctDaYEznGu9bDCKiA7GvmruxGjMgJfhyEhOkUviNXPBw6U9j
         uXHVvSUZSQyuhptNjH+J2JKkyNLd7JDRNwqmE91XQidNZjx7b90qEDfLM6WJMBqwuqkl
         yv5H58t/hgwQXmoTof96LGJWHwEA3y26pptSho1ep2LErWhQWjXYy1oxZNFL/HjEjHqR
         yQZQ==
X-Gm-Message-State: AOJu0Yyy5GVsar+6U1hKXBm5aIFHlGVYe7eFtOR/EE5iP3gho6vp/Cqk
	1jDWvHXTRacQSahMd1d8N7ycGvHEGM8i0AlsIJtAujQrD+f6IGpqTHyDyA==
X-Google-Smtp-Source: AGHT+IEi2gWv7Xn+4hNMYmqTaw/bEJbg3dlZ+7yQ2ktX1vo8JeJDYYq9aXb/bPCjJs+PCEV8QEfarA==
X-Received: by 2002:a05:6358:830b:b0:1c3:76b3:59b7 with SMTP id e5c5f4694b2df-1c5f9a01ee3mr1003338455d.19.1730900655040;
        Wed, 06 Nov 2024 05:44:15 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d354177459sm72018966d6.106.2024.11.06.05.44.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 05:44:14 -0800 (PST)
Message-ID: <d36214c6-0b1f-4a4b-91bd-f224a9917714@gmail.com>
Date: Wed, 6 Nov 2024 08:44:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com>
Message-ID-Hash: YIMTLXEGVIY4HXZ3S3ARSECFZ5F65AFV
X-Message-ID-Hash: YIMTLXEGVIY4HXZ3S3ARSECFZ5F65AFV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YIMTLXEGVIY4HXZ3S3ARSECFZ5F65AFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6523553692601002764=="

This is a multi-part message in MIME format.
--===============6523553692601002764==
Content-Type: multipart/alternative;
 boundary="------------vqLa03q0QAS70tN0BPEJ5E8C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------vqLa03q0QAS70tN0BPEJ5E8C
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
Just to fill people in, this appears in the DPDK document:

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

But NOT in the general "Performance Tuning Tips and Tricks", which is=20
the one I'm most familiar with:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks


We will probably move that note on RT_RUNTIME_SHARE to the "Performance=20
Tuning" document, or at least
 =C2=A0 replicate it.


--------------vqLa03q0QAS70tN0BPEJ5E8C
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
    Just to fill people in, this appears in the DPDK document:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Getti=
ng_Started_with_DPDK_and_UHD">https://kb.ettus.com/Getting_Started_with_D=
PDK_and_UHD</a><br>
    <br>
    But NOT in the general "Performance Tuning Tips and Tricks", which
    is the one I'm most familiar with:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    <br>
    We will probably move that note on RT_RUNTIME_SHARE to the
    "Performance Tuning" document, or at least<br>
    =C2=A0 replicate it.<br>
    <br>
    <br>
  </body>
</html>

--------------vqLa03q0QAS70tN0BPEJ5E8C--

--===============6523553692601002764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6523553692601002764==--
