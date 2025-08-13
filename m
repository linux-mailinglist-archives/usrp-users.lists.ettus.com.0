Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60349B24297
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 09:26:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52309386606
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 03:26:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755069976; bh=K0Pt0ikRWKa9qIkImg5afbdOISOfS/NbK9sWo4N/rUc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MZbc/2I1W6x1SWEiSXD3Am/TIk2qQzdyO6QF7faVJ+mwxLPky/TSVY+9/N/BbpkXT
	 4pmIIAXIVoKxbEmEbiYTFYzWIT6bkC17zHN1swki9XzIFYdbi1EyxsK8Kp0lHZcVaA
	 s0WNH9XQZe3IwmDkzjmvVBVQ0bJMPxTyD+WLzpM6x1JSwRMWkaLsJGT1jwT+7kec1F
	 1krwl+La/jg2jbfH3P6pv+WBINeMoubONdq/gjZLflHjyXkk0MHALC1FAogGmZZxD5
	 qIrQs9GPbj8K0tMBwnVxolMMKUA7ienQ7NKdG+A65XDh1KBTPdGjLTr3jK7q7de6VG
	 JjDCOnSMg+JiQ==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D2F20386606
	for <usrp-users@lists.ettus.com>; Wed, 13 Aug 2025 03:25:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iPcmqPJI";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b78127c5d1so4066863f8f.3
        for <usrp-users@lists.ettus.com>; Wed, 13 Aug 2025 00:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755069934; x=1755674734; darn=lists.ettus.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0c3nV89t+p+rr7JA8piElTZrLtchsiad85mVw2J8uVE=;
        b=iPcmqPJIMmRtd2m4yK4/cou/889A/U4yDvpwcrzX7VbolTkuE4/e05tWo3fXnwvGSN
         w0Wff9N3rUaQIyiULaD5bVYJqywyxemrNlz67+w9k3s3vFMHvYlFKN1j6swn2A7Uy5vn
         LiM6YbYD1l7/tHc6XzamS2Nli2eTPXnPZ9dSxJaxlimYCq6BWS8+2Me/HdhMuU7Tw2kR
         0bzDdNWBuS1JfKoIsLc2/KwcLqlVxo+NgDEyy0psJAc4IEeLOWIxL8JWT85esfJ89OX+
         7sAX59EvRZRgCeyv1GV59UvbDvsXRyWYzorSM16YsgeG/i2Wn3QRK52AKbhu38Sz9LCE
         2t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755069934; x=1755674734;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0c3nV89t+p+rr7JA8piElTZrLtchsiad85mVw2J8uVE=;
        b=BMu1mL5vRYkb8ZGRoC7RS5s1twHNpLRk8eZJOdsVSzErKIfB6qFwSur9Q6X/mp62V6
         cgDjlxsrIDK9iSi6cgo5YzbRV6ZQwOvfw+MjxL2WbWMEBvXOyNzHWxFpJFRwL3/GAbYw
         45XmcLaYu2RwmD45Fhbi1NVuptqOmPdExJdSenueJkbjvf1EhmHstnY/Lle4Xu5iM7b8
         UquR6PplW19ixBZZfLLbpF5uFeWwZePZ/vczbQk9mwB9GK4lwE44gG+/RhUGxqDov6Pn
         ubIz5EFdQUkMwQc14tk5GgPx3nn9qmFteJyWoCltu5SlGHeD/KCAorwIx96Y1+Z084uG
         cvDg==
X-Forwarded-Encrypted: i=1; AJvYcCW4Fj17jp8L9ZlZgQ8w5ij3HHqoQXNUyQy79aYxglmmZhJdtlRl8L1p5RGmpMXNKmHQDldmJ9Sd4lEk@lists.ettus.com
X-Gm-Message-State: AOJu0YzRXweftslEtSl+kFUVrFGoUgpDxryHIXvjWGzhvFWsh8bqnnuI
	SWJYp1QWmkNiSkEhd2X12m+cFZOmuvuw1+csAjFtzCDO5w37p0y00K6zWaA4hw==
X-Gm-Gg: ASbGnctInwQO/mbdJNoS8b8nJqHGVK96dMBbTlMk6iAlt4d3TMxgMFUByxGpHbPkI4D
	UtytRrd0P24uFFD6F1kgcQ/QDa2SC54uYvdvcwDY0vLpwBiaRjentDGZ5gLvs/BXDGLDtvbaumw
	6ZQSvB4mQ8RmhviYu8s2ZvXPinfG9aeYa/b++Lgpuz64L9qYJq0OeruwjeCBHtgEvX22O26oNhD
	Eyn5YzhONVgT073yGp4iSuZL0I8kAGiUzngNIs55WqSlX+6Ndt2l3nsVULns1ieFMH7ab70yRAs
	nmIwP0P4tzi+bXGYgJsB0vap/z/NPhn/laBbdfvdjwo8yjg4QznB503d527cZXPC7qLE2H1iL0m
	K1UZ0A5KriOD0MM6bR8MEjA0TOF/SbWjtoIwQCg==
X-Google-Smtp-Source: AGHT+IE0YK1soFJBn8ZhIGWWSjUKySO0lEELFJ0NrBx+Jaz54muEeatyqOsKm1fmWmjIG2xcpcHV+w==
X-Received: by 2002:a05:6000:2891:b0:3b7:95ae:2b24 with SMTP id ffacd0b85a97d-3b917ea4b4dmr1259702f8f.32.1755069933404;
        Wed, 13 Aug 2025 00:25:33 -0700 (PDT)
Received: from [192.168.101.110] ([102.220.209.175])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b910180aebsm7202456f8f.59.2025.08.13.00.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 00:25:33 -0700 (PDT)
Date: Wed, 13 Aug 2025 09:25:16 +0200
From: Kevin Williams <zs1kwa@gmail.com>
To: 285270@mail.muni.cz, usrp-users@lists.ettus.com
Message-ID: <ea8cc5d4-42d6-4b32-bab0-6479ac36b904@Spark>
In-Reply-To: <ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s@lists.ettus.com>
References: <ONRZzpRpu8HUVXp6L06tdW7oGg1kRiDVrgb82K0R35s@lists.ettus.com>
X-Readdle-Message-ID: ea8cc5d4-42d6-4b32-bab0-6479ac36b904@Spark
MIME-Version: 1.0
Message-ID-Hash: ULZQKSHQLHHKQMVPWC6H3AXHXH3B7YPX
X-Message-ID-Hash: ULZQKSHQLHHKQMVPWC6H3AXHXH3B7YPX
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc block gain option IN_TREE_IP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULZQKSHQLHHKQMVPWC6H3AXHXH3B7YPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3340284422214843394=="

--===============3340284422214843394==
Content-Type: multipart/alternative; boundary="689c3de9_e8b04d9b_11f68"

--689c3de9_e8b04d9b_11f68
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi Ludek,

This is an annoying "known issue" with Vivado.

It is mentioned here: https://files.ettus.com/manual/md_usrp3_build_instructions.html

Kind regards, Kevin
On Aug 13, 2025, 9:18 AM +0200, 285270@mail.muni.cz, wrote:
> Hi,
> I tried to build image for x310 with rfnoc block gain. In case of default parameter IP_OPTION "HDL_IP" everything went ok, but when I changed in second trial parameter IP_OPTION to "IN_TREE_IP", it led to this error:
> ERROR: [Route 35-9] Router encountered a fatal exception of type 'N2rt13HDRTExceptionE' - 'Trying to tool lock on already tool locked arc
> ERROR: [Common 17-39] 'route_design' failed due to earlier errors.
> [00:40:17] Current task: Routing +++ Current Phase: 13.4.1 Update Timing
> [00:40:17] Current task: Routing +++ Current Phase: Finished
> [00:40:17] Process terminated. Status: Failure
> ========================================================
> Warnings: 1100
> Critical Warnings: 68
> Errors: 2
> make[5]: *** [Makefile.x300.inc:129: bin] Error 1
> make[4]: *** [Makefile:135: X310_HG] Error 2
> Build finished with return code 512.
> It was launched with the following settings:
> * FPGA Directory: /home/oper/inst/uhd-UHD-4.8/fpga/usrp3/top/x300
> * Build Artifacts Directory: /home/oper/rfnoc-gain/build/build-x310_rfnoc_image_core
> * Build Output Directory: /home/oper/rfnoc-gain/build
> * Build IP Directory: /home/oper/rfnoc-gain/build/build-ip
> make[3]: *** [icores/CMakeFiles/x310_rfnoc_image_core.dir/build.make:70: icores/CMakeFiles/x310_rfnoc_image_core] Error 255
> make[2]: *** [CMakeFiles/Makefile2:354: icores/CMakeFiles/x310_rfnoc_image_core.dir/all] Error 2
> make[1]: *** [CMakeFiles/Makefile2:361: icores/CMakeFiles/x310_rfnoc_image_core.dir/rule] Error 2
> make: *** [Makefile:208: x310_rfnoc_image_core] Error 2
> I'll appreciate any advice how to solve it.
> -Ludek
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--689c3de9_e8b04d9b_11f68
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div><span style=3D=22font-family:Arial, Helvetica, sans-serif;=22>Hi Lud=
ek,</span></div>
<div>&=23160;</div>
<div><span style=3D=22font-family:Arial, Helvetica, sans-serif;=22>This i=
s an annoying =22known issue=22 with Vivado.</span></div>
<div>&=23160;</div>
<div><span style=3D=22font-family:Arial, Helvetica, sans-serif;=22>It is =
mentioned here:</span> <a href=3D=22https://files.ettus.com/manual/md=5Fu=
srp3=5Fbuild=5Finstructions.html=22><span style=3D=22font-family:Arial, H=
elvetica, sans-serif;=22>https://files.ettus.com/manual/md=5Fusrp3=5Fbuil=
d=5Finstructions.html</span></a></div>
<div>&=23160;</div>
<div><span style=3D=22font-family:Arial, Helvetica, sans-serif;=22>Kind r=
egards, Kevin</span></div>
</div>
<div name=3D=22messageReplySection=22>On Aug 13, 2025, 9:18 AM +0200, 285=
270=40mail.muni.cz, wrote:<br />
<blockquote type=3D=22cite=22>
<p>Hi,</p>
<p>I tried to build image for x310 with rfnoc block gain. In case of defa=
ult parameter IP=5FOPTION =22HDL=5FIP=22 everything went ok, but when I c=
hanged in second trial parameter IP=5FOPTION to =22IN=5FTREE=5FIP=22, it =
led to this error:</p>
<p>ERROR: =5BRoute 35-9=5D Router encountered a fatal exception of type '=
N2rt13HDRTExceptionE' - 'Trying to tool lock on already tool locked arc</=
p>
<p>ERROR: =5BCommon 17-39=5D 'route=5Fdesign' failed due to earlier error=
s.</p>
<p>=5B00:40:17=5D Current task: Routing +++ Current Phase: 13.4.1 Update =
Timing</p>
<p>=5B00:40:17=5D Current task: Routing +++ Current Phase: =46inished</p>=

<p>=5B00:40:17=5D Process terminated. Status: =46ailure</p>
<p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</p>
<p>Warnings: 1100</p>
<p>Critical Warnings: 68</p>
<p>Errors: 2</p>
<p>make=5B5=5D: *** =5BMakefile.x300.inc:129: bin=5D Error 1</p>
<p>make=5B4=5D: *** =5BMakefile:135: X310=5FHG=5D Error 2</p>
<p>Build finished with return code 512.</p>
<p>It was launched with the following settings:</p>
<p>* =46PGA Directory: /home/oper/inst/uhd-UHD-4.8/fpga/usrp3/top/x300</p=
>
<p>* Build Artifacts Directory: /home/oper/rfnoc-gain/build/build-x310=5F=
rfnoc=5Fimage=5Fcore</p>
<p>* Build Output Directory: /home/oper/rfnoc-gain/build</p>
<p>* Build IP Directory: /home/oper/rfnoc-gain/build/build-ip</p>
<p>make=5B3=5D: *** =5Bicores/CMake=46iles/x310=5Frfnoc=5Fimage=5Fcore.di=
r/build.make:70: icores/CMake=46iles/x310=5Frfnoc=5Fimage=5Fcore=5D Error=
 255</p>
<p>make=5B2=5D: *** =5BCMake=46iles/Makefile2:354: icores/CMake=46iles/x3=
10=5Frfnoc=5Fimage=5Fcore.dir/all=5D Error 2</p>
<p>make=5B1=5D: *** =5BCMake=46iles/Makefile2:361: icores/CMake=46iles/x3=
10=5Frfnoc=5Fimage=5Fcore.dir/rule=5D Error 2</p>
<p>make: *** =5BMakefile:208: x310=5Frfnoc=5Fimage=5Fcore=5D Error 2</p>
<p>I'll appreciate any advice how to solve it.</p>
<p>-Ludek</p>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list -- usrp-users=40lists.ettus.com<br />
To unsubscribe send an email to usrp-users-leave=40lists.ettus.com<br /><=
/blockquote>
</div>
</body>
</html>

--689c3de9_e8b04d9b_11f68--

--===============3340284422214843394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3340284422214843394==--
