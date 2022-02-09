Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BF44AF9F7
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 19:32:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7891738520E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 13:32:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XGYlgD1b";
	dkim-atps=neutral
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D30C5384940
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 13:31:35 -0500 (EST)
Received: by mail-wr1-f51.google.com with SMTP id d27so5581258wrc.6
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 10:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:references:from
         :in-reply-to;
        bh=Ncw9iWA5Mlm8dTL9HqCmekl5dGJIt15ZWuuRRO4mbHM=;
        b=XGYlgD1bsX1We1on2SbIuzF5Pwd/SXrxY8M4UpTUyEy4YtsI04GKW28MLyfo1vkKml
         ahsdwof0JWhgI7HoiRZaVDkJPqEpwoo6PBGZ+7fquVTy8uVgM/c43j2GjrydHNnT9mQF
         dOssWH2eUZfXV7xxqe8tra0S2X45Pzbz7zg1JCpzPSNmTW8QBGNloVyBPSDAN8ANvKH9
         IyBbxoD4q3NAPKZH+r+QIaKqHub0YeF8YV3q14ymzJClYspuyOvdQ5mzVzSJoqGvFO4L
         bFm1IAbPYAI8UdCqW+vzcmdXkS0XJhAH8c7sDbT2EoF/7R9m277qF/69hw89fTS9bhCc
         aXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:references:from:in-reply-to;
        bh=Ncw9iWA5Mlm8dTL9HqCmekl5dGJIt15ZWuuRRO4mbHM=;
        b=og7PRteze39gOH7gjeFJfC27bOihUuR2EQFg4eQaXifxFqhtpxPSl7Oy4AWuRa5T3E
         oAFKDjILMSklzWM2FQAsPe9jzM/QtdMpinNjd0gH2TNOOuzrCSm8lWOXmiV1wwO7Jc+W
         Zlv3sAD26kXGUwljSKPslI/qn/A/lYFuWBfZkSrU48pIqk8dMMmaGSwmcUFsawAk2Ra+
         44zjGmIuzkAVBdyl3IsggZoQXLSiaF/L7GLgGmNVZ4Zr55odBD/X/W4FKjmWcF6hH/rg
         HXcbZSu7v1no9RvBcPdvIFJxb+AGF1gl/tVhu2KvrsHy72HejfwaRHulBmyfCmlF11Lh
         RJ1g==
X-Gm-Message-State: AOAM530FHC9DQ/z8ZxFX1sep1eKmIvx4KQN0GlYtK90PHla3Fvg/59VY
	E5rhcVf8UGkZuMDWaFJOYSO4kSEB6u4oWA==
X-Google-Smtp-Source: ABdhPJyJItVsPJkWX8cwuABN6Lkk3hEGzHMJJSxAszckkKtL5LJZJEqVM15dmv9EoYC5XGED6BUhFw==
X-Received: by 2002:a5d:58ca:: with SMTP id o10mr3162519wrf.325.1644431494571;
        Wed, 09 Feb 2022 10:31:34 -0800 (PST)
Received: from [192.168.0.36] (2.153.101.30.dyn.user.ono.com. [2.153.101.30])
        by smtp.gmail.com with ESMTPSA id r13sm5122346wro.89.2022.02.09.10.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 10:31:34 -0800 (PST)
Message-ID: <52c77c46-09b6-9a26-440f-9e044dbff869@gmail.com>
Date: Wed, 9 Feb 2022 19:31:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com>
Message-ID-Hash: 5QO52W3AD3QVHFKEICFSYOSJS4JC6VXL
X-Message-ID-Hash: 5QO52W3AD3QVHFKEICFSYOSJS4JC6VXL
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender Update Process N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QO52W3AD3QVHFKEICFSYOSJS4JC6VXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8218404673469845960=="

This is a multi-part message in MIME format.
--===============8218404673469845960==
Content-Type: multipart/alternative;
 boundary="------------WG9sNRahh080mvII4K34g1y2"

This is a multi-part message in MIME format.
--------------WG9sNRahh080mvII4K34g1y2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yep. The guideline say:


After copying the Mender file system image to the N3xx, connect to the=20
N3xx using either the Serial Console, or via SSH to gain shell access.

On the N3xx, run|mender -rootfs /path/to/latest.mender|to update the=20
file system:

    root@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender


Am I doing something wrong?

Giuseppe


Il 09/02/2022 19:27, Marcus D. Leech ha scritto:
> On 2022-02-09 09:31, Giuseppe Santaromita wrote:
>>
>> Hi guys,
>>
>> I'm trying to update the USRP N310 following this guide:=20
>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide=20
>> in particolar "Mender Update Process".
>>
>> The results is the follows.
>>
>> Can anyone help me?
>>
>> Giuseppe
>>
>>
> To be clear, you're running this on the N310 device itself?
>
>
>>
>> mender -rootfs /home/root/usrp_n3xx_fs.mender
>> Incorrect Usage. flag provided but not defined: -rootfs
>>
>> NAME:
>> =C2=A0=C2=A0 mender - manage and start the Mender client.
>>
>> USAGE:
>> =C2=A0=C2=A0 [global options] command [command options] [arguments...]
>>
>> VERSION:
>> =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9
>>
>> DESCRIPTION:
>> =C2=A0=C2=A0 mender integrates both the mender daemon and commands for=
 manually=20
>> performing tasks performed by
>> =C2=A0=C2=A0 the daemon (see list of COMMANDS below).
>>
>> Global flag remarks:
>> =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warning',=20
>> 'error', 'panic' and 'fatal'.
>>
>>
>> COMMANDS:
>> =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perform boo=
tstrap and exit.
>> =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.
>> =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Commit current Artifact. Returns (2) if no update=20
>> in progress.
>> =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Start the client as a background service.
>> =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 M=
ender Artifact to install - local file or a `URL`.
>> =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Rollba=
ck current Artifact. Returns (2) if no=20
>> update in progress.
>> =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.
>> =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Perform configuration setup - 'mender setup=20
>> --help' for command options.
>> =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Create=
 filesystem snapshot -'mender snapshot=20
>> --help' for more.
>> =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifact name=
 to the command=20
>> line and exit.
>> =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Shows a list of commands or help for one command
>>
>> GLOBAL OPTIONS:
>> =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path.=20
>> (default: "/etc/mender/mender.conf")
>> =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback configurat=
ion FILE path.=20
>> (default:
>> "/var/lib/mender/mender.conf")
>> =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data DIRECTORY=
 path.=20
>> (default: "/var/lib/mender")
>> =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 FILE to log to.
>> =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Set logging level. (default: "info")
>> =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -log-modu=
les is accepted for=20
>> compatibility but has no effect
>> =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Trusted s=
erver certificates FILE=20
>> path.
>> =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default: false)
>> =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Disable logging to syslog.=20
>> (default: false)
>> =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Skip certificate verification.=20
>> (default: false)
>> =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 show help (default: false)
>> =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pri=
nt the version (default: false)
>>
>> ERRO[0000] flag provided but not defined: -rootfs
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------WG9sNRahh080mvII4K34g1y2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yep. The guideline say:</p>
    <br class=3D"Apple-interchange-newline">
    <p style=3D"margin: 0.5em 0px; line-height: inherit; color: rgb(0, 0,
      0); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida
      Grande&quot;, sans-serif; font-size: 14px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; background-color: rgb(255, 255, 255);
      text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;">After copying the Mender
      file system image to the N3xx, connect to the N3xx using either
      the Serial Console, or via SSH to gain shell access.</p>
    <p style=3D"margin: 0.5em 0px; line-height: inherit; color: rgb(0, 0,
      0); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida
      Grande&quot;, sans-serif; font-size: 14px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; background-color: rgb(255, 255, 255);
      text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;">On the N3xx, run<span>=C2=
=A0</span><code
        style=3D"font-family: monospace, Courier; color: black;
        background-color: rgb(249, 249, 249); border: 1px solid rgb(221,
        221, 221); border-radius: 2px; padding: 1px 4px;">mender -rootfs
        /path/to/latest.mender</code><span>=C2=A0</span>to update the fil=
e
      system:</p>
    <pre style=3D"font-family: monospace, Courier; color: rgb(0, 0, 0); b=
ackground-color: rgb(249, 249, 249); border: 1px solid rgb(221, 221, 221)=
; padding: 1em; white-space: pre-wrap; line-height: 1.3em; font-size: 14p=
x; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial;">   root=
@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender
</pre>
    <p><br>
    </p>
    <p>Am I doing something wrong?<br>
    </p>
    <p>Giuseppe</p>
    <br>
    <div class=3D"moz-cite-prefix">Il 09/02/2022 19:27, Marcus D. Leech h=
a
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2022-02-09 09:31, Giuseppe
        Santaromita wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <p>Hi guys,</p>
        <p>I'm trying to update the USRP N310 following this guide: <a
            class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de"
            moz-do-not-send=3D"true">https://kb.ettus.com/USRP_N300/N310/=
N320/N321_Getting_Started_Guide</a>
          in particolar "Mender Update Process".</p>
        <p>The results is the follows.</p>
        <p>Can anyone help me? <br>
        </p>
        <p>Giuseppe<br>
        </p>
        <p><br>
        </p>
      </blockquote>
      To be clear, you're running this on the N310 device itself?<br>
      <br>
      <br>
      <blockquote type=3D"cite"
        cite=3D"mid:deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com">
        <p> </p>
        <p><br>
        </p>
        <p align=3D"left">mender -rootfs /home/root/usrp_n3xx_fs.mender<b=
r>
          Incorrect Usage. flag provided but not defined: -rootfs<br>
          <br>
          NAME:<br>
          =C2=A0=C2=A0 mender - manage and start the Mender client.<br>
          <br>
          USAGE:<br>
          =C2=A0=C2=A0 [global options] command [command options] [argume=
nts...]<br>
          <br>
          VERSION:<br>
          =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9<br>
          <br>
          DESCRIPTION:<br>
          =C2=A0=C2=A0 mender integrates both the mender daemon and comma=
nds for
          manually performing tasks performed by<br>
          =C2=A0=C2=A0 the daemon (see list of COMMANDS below).<br>
          <br>
          Global flag remarks:<br>
          =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warnin=
g',
          'error', 'panic' and 'fatal'.<br>
          <br>
          <br>
          COMMANDS:<br>
          =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perf=
orm bootstrap and exit.<br>
          =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.=
<br>
          =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Commit current Artifact. Returns (2) if no
          update in progress.<br>
          =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Start the client as a background service.<br>
          =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Mender Artifact to install - local file or
          a `URL`.<br>
          =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Rollback current Artifact. Returns (2) if
          no update in progress.<br>
          =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.<br>
          =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Perform configuration setup - 'mender setup
          --help' for command options.<br>
          =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Create filesystem snapshot -'mender
          snapshot --help' for more.<br>
          =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifa=
ct name to the
          command line and exit.<br>
          =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Shows a list of commands or help for one
          command<br>
          <br>
          GLOBAL OPTIONS:<br>
          =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path.
          (default: "/etc/mender/mender.conf")<br>
          =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback con=
figuration
          FILE path. (default:<br>
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          "/var/lib/mender/mender.conf")<br>
          =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data
          DIRECTORY path. (default: "/var/lib/mender")<br>
          =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 FILE to log to.<br>
          =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Set logging level.
          (default: "info")<br>
          =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -l=
og-modules is accepted
          for compatibility but has no effect<br>
          =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Tr=
usted server
          certificates FILE path.<br>
          =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default:
          false)<br>
          =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Disable logging to syslog.
          (default: false)<br>
          =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Skip certificate
          verification. (default: false)<br>
          =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 show help (default: false)<br>
          =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 print the version
          (default: false)</p>
        <p> ERRO[0000] flag provided but not defined: -rootfs=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>
        </p>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
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
  </body>
</html>

--------------WG9sNRahh080mvII4K34g1y2--

--===============8218404673469845960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8218404673469845960==--
