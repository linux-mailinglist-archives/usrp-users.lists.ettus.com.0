Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F634B5575
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 16:58:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A801738511F
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 10:57:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GIj2MGAv";
	dkim-atps=neutral
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B394384FDC
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 10:57:01 -0500 (EST)
Received: by mail-wm1-f46.google.com with SMTP id j9-20020a05600c190900b0037bff8a24ebso7510268wmq.4
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 07:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=iBYKWeoHDwXCVBzoklg8yxgbVtawgabrBfPGh872jQM=;
        b=GIj2MGAv/Snt+fMuo0R1sYpcn/S6e230sU+XuKRkIIDuz/sdsXQQfxN1pV7RqKRNsI
         RbscVPR0dgpAEhwLhM67OmjUKTmOKJeakyPM9mNPIk9xzZrjyqQOZuxiuoInwET6kMfo
         fcyYuNZ7k6OoBYhEn96Jc5hh0v6ZIA7qvCrExnARlGq7/f4G6tfmHwdVZXol1v4NtzT0
         yQsMNugBLZZYzIva8dfqTgNPm2XPoL7WTlC9cAJoZUSSIlcSK8cvMMQ3xLWfgeDOUa9Q
         8x6v8Q5lO9Mm1q7Y23d9HiFhnFLejEwAy1Q5YC16QmzoZnktFaufSPQJbOI43XP+Zbbl
         FfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=iBYKWeoHDwXCVBzoklg8yxgbVtawgabrBfPGh872jQM=;
        b=1hm8nW49CpSfjXykOR4x0d4cPopoirQno/bsc1etC2kopMZnNu6PwnzNOGHmDFKBQu
         1abtdxhjLFY14Sn7hW/kDYe4w1GctrVNsUE5P+PFEXLfqlPp8X4K7ltjjxrnwA1GS7Um
         pECAbvjRhoHHctd1hO5TbIqq+p4QIM9Vf5TfUi3643MnmIh2x8sFTyEsCkK0QTHwibIw
         /yx8Q5pe3HvFHfgh09i6xGTE+ya1X0T5iI3zWs7NnRIkEJp3JkmqTdyunl7SN/6Jrp4z
         nEdWri1c2Z1xLsElJswQJngUsAOQVGwz4a6Skq/Kw5JxWeM3KKBkN0FISG1vvgPw3092
         szzA==
X-Gm-Message-State: AOAM532ktCfWHhzs7IY5tiPpYaFM8GIEIzDF4Hk8iUJjX49uuxfMOZ+b
	1wrxKTMy3bYxbtvYKWRGYbTRVtzHFsw=
X-Google-Smtp-Source: ABdhPJyDTP5BK6nLfBOuU6VpRkyBNxD8FofZOplgBW7h/GJalsJUFBgxlj6lcMfPrUR2zA7RjKvRNA==
X-Received: by 2002:a05:600c:1e88:: with SMTP id be8mr51110wmb.125.1644854220363;
        Mon, 14 Feb 2022 07:57:00 -0800 (PST)
Received: from ?IPV6:2a02:8084:ac1:9d80:7871:d580:5931:a32d? ([2a02:8084:ac1:9d80:7871:d580:5931:a32d])
        by smtp.gmail.com with ESMTPSA id s26sm12462451wmh.47.2022.02.14.07.56.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 07:56:59 -0800 (PST)
Message-ID: <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
Date: Mon, 14 Feb 2022 16:56:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
Message-ID-Hash: M3OHNPNIRDS5QM2PLRVF3PAZOTRIQ7ES
X-Message-ID-Hash: M3OHNPNIRDS5QM2PLRVF3PAZOTRIQ7ES
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogTWVuZGVyIFVwZGF0ZSBQcm9jZXNzIE4zMTA=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3OHNPNIRDS5QM2PLRVF3PAZOTRIQ7ES/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3862769495689187633=="

This is a multi-part message in MIME format.
--===============3862769495689187633==
Content-Type: multipart/alternative;
 boundary="------------5rP744m7H5ppQDb52eGsg88n"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5rP744m7H5ppQDb52eGsg88n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable


What is the correct upgrade process? I update the Linux File System=20
first and then the FPGA, following the link. The problem is that I think=20
something went wrong, because in the past the -roofs worked.

Giuseppe

Il 10/2/22 3:34, zeyuan.li@zengyi-tech.com ha scritto:
>
> I have used this way updated successfully.Please checkout your update=20
> process.
>
> =E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=
=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>
> =E6=9D=8E=E6=B3=BD=E8=BF=9C|=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=88
>
> =E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=
=E5=85=AC=E5=8F=B8
>
> =E6=89=8B=E6=9C=BA=EF=BC=9A13121162044
>
> =E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=
=E5=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=
=9D=91SOHO 1108
> =E7=BD=91=E5=9D=80=EF=BC=9A_www.zengyi-tech.com <http://www.zengyi-tech=
.com>_
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Giuseppe Santaromita <giuseppe.santaromit=
a1@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2022=E5=B9=B42=E6=9C=889=E6=97=A5=
22:32
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*usrp-users@lists.ettus.com
> *=E4=B8=BB=E9=A2=98:*[USRP-users] Mender Update Process N310
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
--------------5rP744m7H5ppQDb52eGsg88n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <p>What is the correct upgrade process? I update the Linux File
      System first and then the FPGA, following the link. The problem is
      that I think something went wrong, because in the past the -roofs
      worked.</p>
    <p>Giuseppe<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 10/2/22 3:34,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> ha scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:014601d81e26$cb469260$61d3b720$@zengyi-tech.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">I have
            used this way updated successfully.Please checkout your
            update process.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal">=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=
=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=
=E8=81=94=E7=B3=BB=EF=BC=81<span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94<span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=9D=8E=E6=
=B3=BD=E8=BF=9C<span
                lang=3D"EN-US">|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=
=E5=B8=88</span><span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=8C=97=E4=
=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=
=B8</span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=89=8B=E6=
=9C=BA=EF=BC=9A<span
                lang=3D"EN-US">13121162044</span></span><span lang=3D"EN-=
US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=9C=B0=E5=
=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=
=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span
                lang=3D"EN-US">SOHO 1108<br>
              </span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3D"EN-US"><=
a
                    href=3D"http://www.zengyi-tech.com"
                    moz-do-not-send=3D"true"><span style=3D"color:#0563C1=
">www.zengyi-tech.com</span></a></span></u></span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF=
">=E5=8F=91=E4=BB=B6=E4=BA=BA<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF"=
 lang=3D"EN-US">
                Giuseppe Santaromita
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:giusepp=
e.santaromita1@gmail.com">&lt;giuseppe.santaromita1@gmail.com&gt;</a> <br=
>
              </span><b><span style=3D"font-size:11.0pt;font-family:=E7=AD=
=89=E7=BA=BF">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF"=
 lang=3D"EN-US">
                2022</span><span style=3D"font-size:11.0pt;font-family:=E7=
=AD=89=E7=BA=BF">=E5=B9=B4<span
                  lang=3D"EN-US">2</span>=E6=9C=88<span lang=3D"EN-US">9<=
/span>=E6=97=A5<span
                  lang=3D"EN-US"> 22:32<br>
                </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US"=
>:</span></b><span
                  lang=3D"EN-US"> <a class=3D"moz-txt-link-abbreviated" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><=
br>
                </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span>=
</b><span
                  lang=3D"EN-US"> [USRP-users] Mender Update Process N310=
<o:p></o:p></span></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p><span lang=3D"EN-US">Hi guys,<o:p></o:p></span></p>
        <p><span lang=3D"EN-US">I'm trying to update the USRP N310
            following this guide: <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a>
            in particolar "Mender Update Process".<o:p></o:p></span></p>
        <p><span lang=3D"EN-US">The results is the follows.<o:p></o:p></s=
pan></p>
        <p><span lang=3D"EN-US">Can anyone help me? <o:p></o:p></span></p=
>
        <p><span lang=3D"EN-US">Giuseppe<o:p></o:p></span></p>
        <p><span lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p><span lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p><span lang=3D"EN-US">mender -rootfs
            /home/root/usrp_n3xx_fs.mender<br>
            Incorrect Usage. flag provided but not defined: -rootfs<br>
            <br>
            NAME:<br>
            =C2=A0=C2=A0 mender - manage and start the Mender client.<br>
            <br>
            USAGE:<br>
            =C2=A0=C2=A0 [global options] command [command options] [argu=
ments...]<br>
            <br>
            VERSION:<br>
            =C2=A0=C2=A0 a78b45e=C2=A0 runtime: go1.12.9<br>
            <br>
            DESCRIPTION:<br>
            =C2=A0=C2=A0 mender integrates both the mender daemon and com=
mands for
            manually performing tasks performed by<br>
            =C2=A0=C2=A0 the daemon (see list of COMMANDS below).<br>
            <br>
            Global flag remarks:<br>
            =C2=A0 - Supported log levels incudes: 'debug', 'info',
            'warning', 'error', 'panic' and 'fatal'.<br>
            <br>
            <br>
            COMMANDS:<br>
            =C2=A0=C2=A0 bootstrap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pe=
rform bootstrap and exit.<br>
            =C2=A0=C2=A0 check-update=C2=A0=C2=A0=C2=A0 Force update chec=
k.<br>
            =C2=A0=C2=A0 commit=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Commit current Artifact. Returns (2) if
            no update in progress.<br>
            =C2=A0=C2=A0 daemon=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Start the client as a background service.<br>
            =C2=A0=C2=A0 install=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Mender Artifact to install - local file
            or a `URL`.<br>
            =C2=A0=C2=A0 rollback=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Rollback current Artifact. Returns (2) if
            no update in progress.<br>
            =C2=A0=C2=A0 send-inventory=C2=A0 Force inventory update.<br>
            =C2=A0=C2=A0 setup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Perform configuration setup - 'mender
            setup --help' for command options.<br>
            =C2=A0=C2=A0 snapshot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Create filesystem snapshot -'mender
            snapshot --help' for more.<br>
            =C2=A0=C2=A0 show-artifact=C2=A0=C2=A0 Print the current arti=
fact name to the
            command line and exit.<br>
            =C2=A0=C2=A0 help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Shows a list of commands or help for one
            command<br>
            <br>
            GLOBAL OPTIONS:<br>
            =C2=A0=C2=A0 --config FILE, -c FILE=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Configuration FILE path.
            (default: "/etc/mender/mender.conf")<br>
            =C2=A0=C2=A0 --fallback-config FILE, -b FILE=C2=A0 Fallback c=
onfiguration
            FILE path. (default:<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            "/var/lib/mender/mender.conf")<br>
            =C2=A0=C2=A0 --data DIR, -d DIR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mender state data
            DIRECTORY path. (default: "/var/lib/mender")<br>
            =C2=A0=C2=A0 --log-file FILE, -L FILE=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 FILE to log to.<br>
            =C2=A0=C2=A0 --log-level level, -l level=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Set logging level.
            (default: "info")<br>
            =C2=A0=C2=A0 --log-modules value, -m value=C2=A0=C2=A0=C2=A0 =
-log-modules is accepted
            for compatibility but has no effect<br>
            =C2=A0=C2=A0 --trusted-certs FILE, -E FILE=C2=A0=C2=A0=C2=A0 =
Trusted server
            certificates FILE path.<br>
            =C2=A0=C2=A0 --forcebootstrap, -F=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Force bootstrap.
            (default: false)<br>
            =C2=A0=C2=A0 --no-syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Disable logging to
            syslog. (default: false)<br>
            =C2=A0=C2=A0 --skipverify=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Skip certificate
            verification. (default: false)<br>
            =C2=A0=C2=A0 --help, -h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 show help (default:
            false)<br>
            =C2=A0=C2=A0 --version, -v=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 print the version
            (default: false)<o:p></o:p></span></p>
        <p><span lang=3D"EN-US">ERRO[0000] flag provided but not defined:
            -rootfs=C2=A0=C2=A0=C2=A0=C2=A0 <o:p></o:p></span></p>
      </div>
    </blockquote>
  </body>
</html>

--------------5rP744m7H5ppQDb52eGsg88n--

--===============3862769495689187633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3862769495689187633==--
