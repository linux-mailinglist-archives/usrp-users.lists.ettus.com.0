Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA1D73230
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 16:52:36 +0200 (CEST)
Received: from [::1] (port=33816 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqId8-0007CV-PM; Wed, 24 Jul 2019 10:52:34 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:41281)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1hqId5-00074O-7y
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 10:52:31 -0400
Received: by mail-ot1-f46.google.com with SMTP id o101so48113387ota.8
 for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2019 07:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wO/tNaLLDXmOqYf47it2YZUxCl/p0kilQ4sOnxrOgjE=;
 b=VKZU0IMhXiBWJrpW/coGJ0q0H3jQC+M1HyBfDDb4vCXTDMNlIawEGxtNplGuV7hXnH
 PkGy6zZdUcK4GOJdlMKn9lG33UUOPPeGGLan0HI3uTOT9nIpMlmzOmD1Sf87dbYwHmVi
 FTA1uBjN43L3e791ykff3yY+P98jDp21N9Fp8eqHsqaulgcepdUbhA6+CuNrwjEwksah
 ci58pYp2Ha9G0KaSIqyOh4iJwUHXFlYo3SEsKCcjOYyFO93nsjVPTWfkPm/OBbvrUaG0
 4+M2brRNzdNWAySwdTgiXAHBav2PceO0BNCyTiAo6B2vYoWPY4VSYBMFn2YiL175FK53
 H8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wO/tNaLLDXmOqYf47it2YZUxCl/p0kilQ4sOnxrOgjE=;
 b=cOsmwqIM1zdVdTfBmqLjdfThEJ6l9wJdfNEc9SLbPD6iyQH9jorF8VGYrioWXct6uG
 uFItQI14DSyyGz9REvaqhqzuIVdYs+wL5yc/yzwaUKdQQaxSiXGxU2hVq6ZasXdTKzLI
 3kZJxETUP7jR45ADpOE1eZ7psg8tGzhtBT4nNLz8D2U75OgdGR0GzaHAN4xP/n9RTcJI
 u9HLgppqUYL3SVBzqOlaCQUulDK2R0wg7sOXGHZyPM0cmT7+ftj0yUVXFEIi73QoKey5
 NtuGZGazMnp8gpIAVR4BPI2Ef6U8SDGAgA+cMAufR8i6zs5usz0P3+pv9sJ+vqFw3qkH
 Mk8A==
X-Gm-Message-State: APjAAAVJGfnrG0GUN/RmKOjOR0mfs0CZlIA5rjQAWwM7llJak6J25a+M
 Hnhpr/m0C3BGVe1J3FbS+l0izgNFOoHqq0BCAy4=
X-Google-Smtp-Source: APXvYqycxLmnGy5s9VpEgHbzjvW237z7SDMde58IJf1gVhjPQTE2JIws6YAoCiPQbOkFB9QtjVBeD0/oguW+RwiwBPc=
X-Received: by 2002:a9d:729a:: with SMTP id t26mr59677208otj.13.1563979910376; 
 Wed, 24 Jul 2019 07:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
In-Reply-To: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
Date: Wed, 24 Jul 2019 10:51:39 -0400
Message-ID: <CAEXYVK6WSc77QJACE+kxjAFVzwk3oPd5fCWcWZ1aJTcMZ5VWbA@mail.gmail.com>
To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
Subject: Re: [USRP-users] UHD not showing USB version through which my X310
 is connected
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0463816218017236515=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0463816218017236515==
Content-Type: multipart/alternative; boundary="000000000000fe7285058e6e7237"

--000000000000fe7285058e6e7237
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 24, 2019 at 8:11 AM Rodolphe Bertolini via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I apologize if this is a duplicated email.
>
> Hello community,
>
> uhd_usrp_probe (and all the others commands) doesn't log the USB version
> to which the USRP is operating.
>
> Instead it gives me the following:
>
> $ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.1.0-release
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> [...]
>
> Any thought?
>

The X310 has a USB JTAG connection but that isn't really handled through
UHD.

What are you hoping to do over USB with UHD on an X310?

Brian

--000000000000fe7285058e6e7237
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jul 24, 2019 at 8:11 AM Rodolphe =
Bertolini via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr">I apologize if this is a duplicated email.</div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr">Hello community,<div><br></div><div>uhd_usrp_p=
robe (and all the others commands) doesn&#39;t log the USB version to which=
 the USRP is operating.</div><div><br></div><div>Instead it gives me the fo=
llowing:</div><div><pre style=3D"white-space:pre-wrap">$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.=
1.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
[...]</pre></div><div>Any thought?</div></div></div></blockquote><div><br><=
/div><div>The X310 has a USB JTAG connection but that isn&#39;t really hand=
led through UHD.</div><div><br></div><div>What are you hoping to do over US=
B with UHD on an X310?</div><div><br></div><div>Brian</div></div></div>

--000000000000fe7285058e6e7237--


--===============0463816218017236515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0463816218017236515==--

