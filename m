Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEF04AF424
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 15:32:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19DAE384941
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 09:32:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RoVWI59v";
	dkim-atps=neutral
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DB2F23836CB
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 09:31:37 -0500 (EST)
Received: by mail-wr1-f53.google.com with SMTP id f17so4452375wrx.1
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 06:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:content-language:from
         :subject;
        bh=rQYHaVINCtUpvC5risgmjB6PmtDIm9x6pX/wpqtoFKs=;
        b=RoVWI59v8LUixgYq0HTUx1gvPMrsf3p/mOi/V0A39MMotJwhU4czafUD0zIVeh7LvA
         Y0YjTuIsS27WpUnY0UIHWCN9dOzDypJDtYprDWxaz1tqBhaWQ8YppptHltXrPOMBD/b/
         1WZA4uQ0PuA4Y/XNU9SWuvGHwjy8FfHlbMDVYMugaYdlTDVabMPtYDfiXB95UqAll/MJ
         M0N3t9BcPZg142ZF3PHJPacWk+2MdjomvUdXULoJvIGtAF+i2kXX+9K1GCXCvFFoYhid
         8R4fxWrep9P3GaxtcYk22U8IQLVn+nacCbC6umuYao1UGkrUInBKgZWKWNfigZzxTsC/
         ODvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to
         :content-language:from:subject;
        bh=rQYHaVINCtUpvC5risgmjB6PmtDIm9x6pX/wpqtoFKs=;
        b=pWWtzU5XH8s3Gd8tASU3nBaObRSpPaS8KFYXlkGJzjkxoQi6D5nox8ALuDawT4u9oq
         QLdtOld5AQXKRiQ1ms8PFNJh7f01m5KMvaq0pDVruWHgsudfsBddH56ijTknedJe6xMK
         Xsw3FraM5BDVjhLI0zENEJqFiOKeFjSP+wGvOqck0fwuQo+xiBvI+mTe5bqsoxOoXlbp
         wavpVV/5UO4paJ3uUJsYrN+UsjQUlB3iJcSIxETSFd5QiKaIvbfbrDlROYTUI/lzczp0
         LG6m8QItm4ba5O22ZQThlOwyB8R3LHqVeytWpaRPtoGz8NuwKYEEHNbODiIUNYHy+Dxl
         vIHg==
X-Gm-Message-State: AOAM530yLBhn7sBNQmlpblGIiWpXfo6Yj8fslM0disAYMzvK7AhJQFyp
	6k5pmqWpBAmrQlYPr/bdRv9A5dczVZE=
X-Google-Smtp-Source: ABdhPJxFH7KBRfK3+ZzhmZYqqqptlrYltbrv8dgqgzcxGKv5eLrkkMaLMPWqAXy0Kv9tixwTs9uoBQ==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr2369431wri.354.1644417096396;
        Wed, 09 Feb 2022 06:31:36 -0800 (PST)
Received: from [172.16.4.232] ([193.145.14.195])
        by smtp.gmail.com with ESMTPSA id c8sm6346492wmq.34.2022.02.09.06.31.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 06:31:35 -0800 (PST)
Message-ID: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
Date: Wed, 9 Feb 2022 15:31:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
Message-ID-Hash: P7BLCLT7DGU6K4PQNIDAZYHX47N3TBXL
X-Message-ID-Hash: P7BLCLT7DGU6K4PQNIDAZYHX47N3TBXL
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Mender Update Process N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P7BLCLT7DGU6K4PQNIDAZYHX47N3TBXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4077570962036658345=="

This is a multi-part message in MIME format.
--===============4077570962036658345==
Content-Type: multipart/alternative;
 boundary="------------RxIMzHak7xwcaN99u0s7bmgM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RxIMzHak7xwcaN99u0s7bmgM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi guys,

I'm trying to update the USRP N310 following this guide:=20
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide in=20
particolar "Mender Update Process".

The results is the follows.

Can anyone help me?

Giuseppe



mender -rootfs /home/root/usrp_n3xx_fs.mender
Incorrect Usage. flag provided but not defined: -rootfs

NAME:
 =C2=A0=C2=A0 mender - manage and start the Mender client.

USAGE:
 =C2=A0=C2=A0 [global options] command [command options] [arguments...]

VERSION:
 =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9

DESCRIPTION:
 =C2=A0=C2=A0 mender integrates both the mender daemon and commands for m=
anually=20
performing tasks performed by
 =C2=A0=C2=A0 the daemon (see list of COMMANDS below).

Global flag remarks:
 =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warning', 'erro=
r',=20
'panic' and 'fatal'.


COMMANDS:
 =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perform boots=
trap and exit.
 =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.
 =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Commit current Artifact. Returns (2) if no update in=20
progress.
 =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Start the client as a background service.
 =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Men=
der Artifact to install - local file or a `URL`.
 =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Rollback=
 current Artifact. Returns (2) if no update=20
in progress.
 =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.
 =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Perform configuration setup - 'mender setup --help'=20
for command options.
 =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Create f=
ilesystem snapshot -'mender snapshot --help'=20
for more.
 =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifact name t=
o the command line=20
and exit.
 =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Shows a list of commands or help for one command

GLOBAL OPTIONS:
 =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path. (default:=20
"/etc/mender/mender.conf")
 =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback configuratio=
n FILE path.=20
(default:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "/var/lib=
/mender/mender.conf")
 =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data DIRECTORY pa=
th.=20
(default: "/var/lib/mender")
 =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 FILE to log to.
 =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 S=
et logging level. (default: "info")
 =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -log-module=
s is accepted for=20
compatibility but has no effect
 =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Trusted ser=
ver certificates FILE path.
 =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default: false)
 =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Disable logging to syslog.=20
(default: false)
 =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Skip certificate verification.=20
(default: false)
 =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 show help (default: false)
 =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print =
the version (default: false)

ERRO[0000] flag provided but not defined: -rootfs

--------------RxIMzHak7xwcaN99u0s7bmgM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi guys,</p>
    <p>I'm trying to update the USRP N310 following this guide:
      <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USR=
P_N300/N310/N320/N321_Getting_Started_Guide">https://kb.ettus.com/USRP_N3=
00/N310/N320/N321_Getting_Started_Guide</a>
      in particolar "Mender Update Process".</p>
    <p>The results is the follows.</p>
    <p>Can anyone help me? <br>
    </p>
    <p>Giuseppe<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p align=3D"left">mender -rootfs /home/root/usrp_n3xx_fs.mender<br>
      Incorrect Usage. flag provided but not defined: -rootfs<br>
      <br>
      NAME:<br>
      =C2=A0=C2=A0 mender - manage and start the Mender client.<br>
      <br>
      USAGE:<br>
      =C2=A0=C2=A0 [global options] command [command options] [arguments.=
..]<br>
      <br>
      VERSION:<br>
      =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9<br>
      <br>
      DESCRIPTION:<br>
      =C2=A0=C2=A0 mender integrates both the mender daemon and commands =
for
      manually performing tasks performed by<br>
      =C2=A0=C2=A0 the daemon (see list of COMMANDS below).<br>
      <br>
      Global flag remarks:<br>
      =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warning',
      'error', 'panic' and 'fatal'.<br>
      <br>
      <br>
      COMMANDS:<br>
      =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perform =
bootstrap and exit.<br>
      =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.<br>
      =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Commit current Artifact. Returns (2) if no
      update in progress.<br>
      =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Start the client as a background service.<br>
      =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Mender Artifact to install - local file or a
      `URL`.<br>
      =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Rol=
lback current Artifact. Returns (2) if no
      update in progress.<br>
      =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.<br>
      =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Perform configuration setup - 'mender setup
      --help' for command options.<br>
      =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cre=
ate filesystem snapshot -'mender snapshot
      --help' for more.<br>
      =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifact n=
ame to the command
      line and exit.<br>
      =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Shows a list of commands or help for one
      command<br>
      <br>
      GLOBAL OPTIONS:<br>
      =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path.
      (default: "/etc/mender/mender.conf")<br>
      =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback configu=
ration FILE
      path. (default:<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "/var/=
lib/mender/mender.conf")<br>
      =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data DIRECT=
ORY
      path. (default: "/var/lib/mender")<br>
      =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 FILE to log to.<br>
      =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Set logging level. (default:
      "info")<br>
      =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -log-m=
odules is accepted for
      compatibility but has no effect<br>
      =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Truste=
d server certificates
      FILE path.<br>
      =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default:
      false)<br>
      =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Disable logging to syslog.
      (default: false)<br>
      =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Skip certificate verification.
      (default: false)<br>
      =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 show help (default: false)<br>
      =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
print the version (default:
      false)</p>
    <p>
      ERRO[0000] flag provided but not defined: -rootfs=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>
    </p>
  </body>
</html>

--------------RxIMzHak7xwcaN99u0s7bmgM--

--===============4077570962036658345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4077570962036658345==--
