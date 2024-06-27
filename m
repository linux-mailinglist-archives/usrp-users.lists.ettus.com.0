Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A2591B0C1
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 22:46:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FAF1385659
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 16:46:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719521211; bh=zpIkw6P+ninOSahJ8hW95XYP7rWgyC6n/lpb+ABZkvM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fz2WPYZLx8lDIxA5nugW/5eldBSnnirtPT9L5FiGU7YJR6Fz5N1NrJbqc4hYs9ASm
	 lUFrTOzUm1799AECSiUQX+8BREjBau2lIw6FKgOklZLfeO0CFhurDk/rfJxzysQB4w
	 MoGGG/tHbpP9dobbRCkyoQumscJBppyUlI66RuSEUUHx0rKw/CSLe3fB+RCR4bZMPW
	 Z9pS1vLKddwsTn+w5kWuPiWWqez6W9Bjd8m4KuCpMrCDIUXrxYgnjzktirgxEYXPax
	 MKiVmF3WKlomG6yeU6RqFurhJq+Mh0nrJGg88MCvaENjimsxusy0zX92JQfWLcOU1g
	 SCcdZWygcfZTQ==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id CDAB1385618
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 16:46:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ored134Y";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-44639c3d8e7so9716471cf.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 13:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719521170; x=1720125970; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCvYhaEmkSJ9ynt4F+BxFIVB6K81KdAVI9gUt84FipE=;
        b=Ored134YO9cqTM8FoXevced1+qNKLLdpvgfKBl0og3mj9wp0to1Jy8ChloqldvbLOF
         35miNep8Xkc56ThTDMw15AJrfZOsD63cKPLfTVY8nedSsn8+w5ILeIUEjeD6x4Cwgkw2
         GnQEFNVHh4NhXZM8T7wOwJiUdQispWNHK7hntISVB55uf78hmAGoP09IpmE7GX2yBwTF
         mtC5MBMwjSFsatnqcDtqCWz0BZL/oRd2622A5Di20G558envpYdhBzgn55TosL1igwcV
         Qg4HB6BY7kfDxcw+avtSQaZR8EoEZuJoH7++9rkh8h3raD1veedXEIAJuWUjJYJ/CS3y
         Hx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719521170; x=1720125970;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FCvYhaEmkSJ9ynt4F+BxFIVB6K81KdAVI9gUt84FipE=;
        b=mt6gwS2VXFd/sTmnnv3NeE0shKh2MAR3lrSFjBQv/m8vMnt5xOUH+Q3s3z91BOJWGJ
         sga/huBGUBl3EKG1l+2X+VamH0+w7m9wcvS+65kuEof48h8N3lQzrB34j/tKNt2dwskx
         P/CfJalUVqGn/fzI7qXeGP+2vTdCGelRil+LpHfu/Vd6e9T3eJaYKxpHuB20eU5nRiwY
         6H3hVP0hc4x+LTVoPXk1ASwMPuzXx5rbqf6WaBJTVhj5LWVi+DHs/UPBYN9EVoCasuHt
         nbk5gmlD3YkvuiEapDuGg79LGzwMwY6uq6STV7FcuvlgYngNWWxuCRnAbzIOLisG7At6
         xZYA==
X-Gm-Message-State: AOJu0Yx7zxjXHdhvalJjmrJwfzKhKyIDMUiGYtq95czaP+rR4S8N9Khq
	wR3u83Dcxm42xcO/k8lVbxtLwewz0tyI3H3s7YA1IoB0+zDA99gQXnUBlg==
X-Google-Smtp-Source: AGHT+IHYy6wHxRastUbBu1YtIDrgePH2h2y9+BNsRL3Q2dZnFvA2DVe3ZH9HnLcrY8LyDYovFvQfuA==
X-Received: by 2002:a05:622a:1a16:b0:43e:3d64:8c1 with SMTP id d75a77b69052e-444d656f96emr164025151cf.55.1719521169921;
        Thu, 27 Jun 2024 13:46:09 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-446514984d1sm1629821cf.69.2024.06.27.13.46.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 13:46:09 -0700 (PDT)
Message-ID: <2a2f652c-3de3-4174-aed6-db3acc2dd7d2@gmail.com>
Date: Thu, 27 Jun 2024 16:45:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs@lists.ettus.com>
Message-ID-Hash: PWKOETUY2OHMFYXXALFXNKEYQ3BQGIAP
X-Message-ID-Hash: PWKOETUY2OHMFYXXALFXNKEYQ3BQGIAP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PWKOETUY2OHMFYXXALFXNKEYQ3BQGIAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6111836663218905624=="

This is a multi-part message in MIME format.
--===============6111836663218905624==
Content-Type: multipart/alternative;
 boundary="------------xAY0gm17ZJoCOUS9FrWaM3Mm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xAY0gm17ZJoCOUS9FrWaM3Mm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/06/2024 15:41, cjohnson@serranosystems.com wrote:
>
> Hi,
>
> Can you help me figure out what the problem is using the modified=20
> example (I provided in last response), a fast machine which has the=20
> tips and tricks implemented?
>
> I directly connected our 64 core / 4 GPU / >250GI RAM workstation with=20
> 10G output directly to the X310 10G, which should easily keep up with=20
> 200Msps.
>
> I ran the same program I provided above (I just modified your example=20
> program tx_timed_samples.cpp) and now it outputs S=E2=80=99s instead of=
 U=E2=80=99s.
>
> Here is the output:
>
> |cjohnson@demo:~/uhd_versions/uhd_4.4.0.0/host/build/examples$=20
> ./tx_timed_samples Creating the usrp device with:=20
> type=3Dx300,addr=3D192.168.30.2... [INFO] [UHD] linux; GNU C++ version=20
> 11.4.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b [INFO] [X300] X300=20
> initialization sequence... [INFO] [X300] Maximum frame size: 8000=20
> bytes. [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev=20
> 0.929a [INFO] [X300] Radio 1x clock: 200 MHz Using Device: Single=20
> USRP: Device: X-Series Device Mboard 0: X310 RX Channel: 0 RX DSP: 0=20
> RX Dboard: A RX Subdev: UBX RX RX Channel: 1 RX DSP: 1 RX Dboard: B RX=20
> Subdev: UBX RX TX Channel: 0 TX DSP: 0 TX Dboard: A TX Subdev: UBX TX=20
> TX Channel: 1 TX DSP: 1 TX Dboard: B TX Subdev: UBX TX Setting TX=20
> Rate: 200.000000 Msps... Actual TX Rate: 200.000000 Msps... Setting=20
> device timestamp to 0... [WARNING] [0/Radio#0] Attempting to set tick=20
> rate to 0. Skipping. Send timeout... Send timeout... Send timeout...=20
> Send timeout... Send timeout... Send timeout... Send timeout...=20
> SSSSSSSS (... more S's)|
>
> I verified the interface is setup for 9000 MTU, and that I have made=20
> the adjustments indicated in=20
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
> except for Specture / bios changes). This includes Ring Buffers for=20
> NIC and Network Buffers
>
> |(Below, same for CPU 0-63) analyzing CPU 63: driver: intel_cpufreq=20
> CPUs which run at the same hardware frequency: 63 CPUs which need to=20
> have their frequency coordinated by software: 63 maximum transition=20
> latency: 20.0 us. hardware limits: 800 MHz - 3.50 GHz available=20
> cpufreq governors: conservative, ondemand, userspace, powersave,=20
> performance, schedutil current policy: frequency should be within 800=20
> MHz and 3.50 GHz. The governor "performance" may decide which speed to=20
> use within this range. current CPU frequency is 3.50 GHz.|
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'll note that 'S' errors generally indicate that packets are being=20
dropped somewhere in the network stack after they leave UHD, and before=20
they get delivered to the radio.

What type of network interface do you have on your 64-core server?=C2=A0=C2=
=A0=C2=A0=20
Are we maybe dealing with a PHY-level issue
 =C2=A0 that is dropping frames?

What OS are you using?=C2=A0 Is this within a VM or on "base metal"??


--------------xAY0gm17ZJoCOUS9FrWaM3Mm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/06/2024 15:41,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:X3ZQq1WK9FKaebxQLVydYx74Pkdc3EISGVbmWJ5PPs@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,</p>
      <p>Can you help me figure out what the problem is using the
        modified example (I provided in last response), a fast machine
        which has the tips and tricks implemented?</p>
      <p>I directly connected our 64 core / 4 GPU / &gt;250GI RAM
        workstation with 10G output directly to the X310 10G, which
        should easily keep up with 200Msps.</p>
      <p>I ran the same program I provided above (I just modified your
        example program tx_timed_samples.cpp) and now it outputs S=E2=80=99=
s
        instead of U=E2=80=99s.</p>
      <p>Here is the output:<br>
        <br>
      </p>
      <pre><code><a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjo=
hnson@demo:~/uhd_versions/uhd_4.4.0.0/host/build/examples$">cjohnson@demo=
:~/uhd_versions/uhd_4.4.0.0/host/build/examples$</a> ./tx_timed_samples

Creating the usrp device with: type=3Dx300,addr=3D192.168.30.2...
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.4.0.HEAD-=
0-g5fac246b
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

Setting TX Rate: 200.000000 Msps...
Actual TX Rate: 200.000000 Msps...

Setting device timestamp to 0...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
Send timeout...
SSSSSSSS (... more S's)</code></pre>
      <p class=3D"">I verified the interface is setup for 9000 MTU, and
        that I have made the adjustments indicated in <a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><br>
        except for Specture / bios changes). This includes Ring Buffers
        for NIC and Network Buffers<br>
        <br>
      </p>
      <pre><code>(Below, same for CPU 0-63)
analyzing CPU 63:
  driver: intel_cpufreq
  CPUs which run at the same hardware frequency: 63
  CPUs which need to have their frequency coordinated by software: 63
  maximum transition latency: 20.0 us.
  hardware limits: 800 MHz - 3.50 GHz
  available cpufreq governors: conservative, ondemand, userspace, powersa=
ve, performance, schedutil
  current policy: frequency should be within 800 MHz and 3.50 GHz.
                  The governor "performance" may decide which speed to us=
e
                  within this range.
  current CPU frequency is 3.50 GHz.</code></pre>
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
    I'll note that 'S' errors generally indicate that packets are being
    dropped somewhere in the network stack after they leave UHD, and
    before they get delivered to the radio.<br>
    <br>
    What type of network interface do you have on your 64-core
    server?=C2=A0=C2=A0=C2=A0 Are we maybe dealing with a PHY-level issue=
<br>
    =C2=A0 that is dropping frames?<br>
    <br>
    What OS are you using?=C2=A0 Is this within a VM or on "base metal"??=
<br>
    <br>
    <br>
  </body>
</html>

--------------xAY0gm17ZJoCOUS9FrWaM3Mm--

--===============6111836663218905624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6111836663218905624==--
