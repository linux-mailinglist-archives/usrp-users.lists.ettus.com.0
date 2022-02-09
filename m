Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 960BD4AF9F0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 19:29:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D7D0384940
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 13:29:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d7pUTc/n";
	dkim-atps=neutral
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 242013848FA
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 13:27:55 -0500 (EST)
Received: by mail-qv1-f47.google.com with SMTP id d7so2538788qvk.2
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 10:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=dcdabBK6Vg0UWoj6bF0fRLUQ/fG9RRNwuRhBgYjEOGg=;
        b=d7pUTc/nM8Q6AOq7XppdN/4ZGDvyGE0ElxGL/Mr3oD9nbrGBcojLg4GAUrLRRaOGUC
         6TCwtG93/WD5jhpszieJKcRR819/CNgg+maMUTkDzRavLOGIM56+i1MSh0hcYRWExg9V
         wx7j7s/AmQlnEWs3rM7Tt9GT+sc0IAfzNSXbqGAxIqab+WstZ/FwwSxQ4GQmOQn/J7b1
         VPHCv8w6k2H3WpmyJHIzZ3U0AwGmiFCPdfi+PG0hS7rlPPTrstW9h1/wyjOqrmf4WRoe
         OZHIFugwgseQFDENYHNyOo/8W1Y3W6qML1WdEaUUcHEi6u8wAs8JphZ9IfOucyVLwXO4
         sQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=dcdabBK6Vg0UWoj6bF0fRLUQ/fG9RRNwuRhBgYjEOGg=;
        b=R+m87lIaJTBJYO7IGd/MXFkjWnUWS0lsxqf1qqocQ9/Hw05sqolEeRVmIA3f/0esKL
         g0Vcnp1GRpD3ikCKNd54RmVB9gdAU6+9bVPqLTn9fi9IdhSHMB2PsownWdr84uUlQU8Q
         gF8mM2GeHEvXO1f2Zj+uoQeqcAHjwonM6O+Eyls6AMMhSVSy14CndCDouGIM3hG2t7AE
         twSAhPtDMYY7vRF4TzryNGrTA9/zWjGLjZJLrciR2VXNHvaRFKSuLwEwsblqHnWukh4k
         +7+GfUz8BqO4weMjQs3PHvcrmstDICplrkgdPebMURdTwvxKU2nrBa2zRdx1eXvzOLo5
         52cA==
X-Gm-Message-State: AOAM531CM2e5mWncYNfeP0Oekfht7oNLVkZUA3Ie6rPren5Z1S3mdyJa
	iepKbLafJa2ug9Ks4vPSmYTxzkjiwVwAzw==
X-Google-Smtp-Source: ABdhPJzoed+JCObEl3WT3vnDxt8iGjzkzL6uIFndQd6Ae7dFrPqOHol224XQJTXp5ilMWmAEABieiw==
X-Received: by 2002:ad4:5ae8:: with SMTP id c8mr2454895qvh.83.1644431275051;
        Wed, 09 Feb 2022 10:27:55 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f22sm9723062qtb.1.2022.02.09.10.27.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 10:27:54 -0800 (PST)
Message-ID: <19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com>
Date: Wed, 9 Feb 2022 13:27:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
Message-ID-Hash: ATJGKYWB3KCA46FPSJAUIKE3Y3OPAG54
X-Message-ID-Hash: ATJGKYWB3KCA46FPSJAUIKE3Y3OPAG54
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender Update Process N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATJGKYWB3KCA46FPSJAUIKE3Y3OPAG54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0257374882845160094=="

This is a multi-part message in MIME format.
--===============0257374882845160094==
Content-Type: multipart/alternative;
 boundary="------------ArHSJ0Or16z1JCyHSDYMpp0f"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ArHSJ0Or16z1JCyHSDYMpp0f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-09 09:31, Giuseppe Santaromita wrote:
>
> Hi guys,
>
> I'm trying to update the USRP N310 following this guide:=20
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide in=20
> particolar "Mender Update Process".
>
> The results is the follows.
>
> Can anyone help me?
>
> Giuseppe
>
>
To be clear, you're running this on the N310 device itself?


>
> mender -rootfs /home/root/usrp_n3xx_fs.mender
> Incorrect Usage. flag provided but not defined: -rootfs
>
> NAME:
> =C2=A0=C2=A0 mender - manage and start the Mender client.
>
> USAGE:
> =C2=A0=C2=A0 [global options] command [command options] [arguments...]
>
> VERSION:
> =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9
>
> DESCRIPTION:
> =C2=A0=C2=A0 mender integrates both the mender daemon and commands for =
manually=20
> performing tasks performed by
> =C2=A0=C2=A0 the daemon (see list of COMMANDS below).
>
> Global flag remarks:
> =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warning', 'err=
or',=20
> 'panic' and 'fatal'.
>
>
> COMMANDS:
> =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perform boot=
strap and exit.
> =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.
> =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Commit current Artifact. Returns (2) if no update=20
> in progress.
> =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Start the client as a background service.
> =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Me=
nder Artifact to install - local file or a `URL`.
> =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Rollbac=
k current Artifact. Returns (2) if no update=20
> in progress.
> =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.
> =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Perform configuration setup - 'mender setup --help'=20
> for command options.
> =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Create =
filesystem snapshot -'mender snapshot=20
> --help' for more.
> =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifact name =
to the command line=20
> and exit.
> =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Shows a list of commands or help for one command
>
> GLOBAL OPTIONS:
> =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path. (default:=20
> "/etc/mender/mender.conf")
> =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback configurati=
on FILE path.=20
> (default:
> "/var/lib/mender/mender.conf")
> =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data DIRECTORY pa=
th.=20
> (default: "/var/lib/mender")
> =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 FILE to log to.
> =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Set logging level. (default: "info")
> =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -log-modul=
es is accepted for=20
> compatibility but has no effect
> =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Trusted se=
rver certificates FILE path.
> =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default: false)
> =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Disable logging to syslog.=20
> (default: false)
> =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Skip certificate verification.=20
> (default: false)
> =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 show help (default: false)
> =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pri=
nt the version (default: false)
>
> ERRO[0000] flag provided but not defined: -rootfs
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------ArHSJ0Or16z1JCyHSDYMpp0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-09 09:31, Giuseppe
      Santaromita wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi guys,</p>
      <p>I'm trying to update the USRP N310 following this guide: <a
          class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de"
          moz-do-not-send=3D"true">https://kb.ettus.com/USRP_N300/N310/N3=
20/N321_Getting_Started_Guide</a>
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
      <p align=3D"left">mender -rootfs /home/root/usrp_n3xx_fs.mender<br>
        Incorrect Usage. flag provided but not defined: -rootfs<br>
        <br>
        NAME:<br>
        =C2=A0=C2=A0 mender - manage and start the Mender client.<br>
        <br>
        USAGE:<br>
        =C2=A0=C2=A0 [global options] command [command options] [argument=
s...]<br>
        <br>
        VERSION:<br>
        =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9<br>
        <br>
        DESCRIPTION:<br>
        =C2=A0=C2=A0 mender integrates both the mender daemon and command=
s for
        manually performing tasks performed by<br>
        =C2=A0=C2=A0 the daemon (see list of COMMANDS below).<br>
        <br>
        Global flag remarks:<br>
        =C2=A0 - Supported log levels incudes: 'debug', 'info', 'warning'=
,
        'error', 'panic' and 'fatal'.<br>
        <br>
        <br>
        COMMANDS:<br>
        =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Perfor=
m bootstrap and exit.<br>
        =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update check.<b=
r>
        =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Commit current Artifact. Returns (2) if no
        update in progress.<br>
        =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Start the client as a background service.<br>
        =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Mender Artifact to install - local file or a
        `URL`.<br>
        =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 R=
ollback current Artifact. Returns (2) if no
        update in progress.<br>
        =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.<br>
        =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Perform configuration setup - 'mender setup
        --help' for command options.<br>
        =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 C=
reate filesystem snapshot -'mender snapshot
        --help' for more.<br>
        =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current artifact=
 name to the
        command line and exit.<br>
        =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Shows a list of commands or help for one
        command<br>
        <br>
        GLOBAL OPTIONS:<br>
        =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path.
        (default: "/etc/mender/mender.conf")<br>
        =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback confi=
guration FILE
        path. (default:<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        "/var/lib/mender/mender.conf")<br>
        =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data DIRECT=
ORY
        path. (default: "/var/lib/mender")<br>
        =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 FILE to log to.<br>
        =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Set logging level. (default:
        "info")<br>
        =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 -log=
-modules is accepted for
        compatibility but has no effect<br>
        =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 Trus=
ted server certificates
        FILE path.<br>
        =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap. (default:
        false)<br>
        =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Disable logging to syslog.
        (default: false)<br>
        =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Skip certificate
        verification. (default: false)<br>
        =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 show help (default: false)<br>
        =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 print the version (default:
        false)</p>
      <p> ERRO[0000] flag provided but not defined: -rootfs=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>
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
    <br>
  </body>
</html>

--------------ArHSJ0Or16z1JCyHSDYMpp0f--

--===============0257374882845160094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0257374882845160094==--
