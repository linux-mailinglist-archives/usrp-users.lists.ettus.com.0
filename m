Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DD1CCF43
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 03:46:53 +0200 (CEST)
Received: from [::1] (port=50526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jXxWq-0005Ow-NR; Sun, 10 May 2020 21:46:48 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:33540)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jXxWm-0005L7-W0
 for usrp-users@lists.ettus.com; Sun, 10 May 2020 21:46:45 -0400
Received: by mail-ua1-f50.google.com with SMTP id g35so2806076uad.0
 for <usrp-users@lists.ettus.com>; Sun, 10 May 2020 18:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2mqB5vTG0IZeJnzL/DpzOE9IdkK3GaCAVQbc+FyzP7Y=;
 b=XQgTLh4b6UShzVdvoWsjA4j0j1/DhbHQnUs+ENmlizYkItspt1BS35N4lEKuaygVfs
 Rv4rvWGUVGZRlLYNOztzdhSfw824MMyia100CLv1tRdEs5x8FB3RCe+tZRwqLdhFpaiV
 lWy3jlmFJcQiEwQwn4gnup8ozFql25ShP2sBPRbHM+9eUX4f0J+NUSN04MAmJRcFO8bf
 1xTSphWZ+PRqeFyQLXw/5nfzf5sHZhrvZd4Me7EV8WMTfLb7bl8xp71IlnlO9QGMj7x0
 /0fCT8IbrvjRvCfBoNI17c21ce1PWYxHRdxUrIoRf/isjo4VZ4PF008G9hbw04IgZcKK
 ZZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2mqB5vTG0IZeJnzL/DpzOE9IdkK3GaCAVQbc+FyzP7Y=;
 b=brmuI6ANh/K95bA8szYYp/JdMuKnf9vRIoslv+u3D8vh0ZQdPTWGiMfycRgtEZFRms
 cTVqf8ebcnOUB7CXgwDrPHKsw1sFaFWHiItzcj+ZX0YTsFJBFBmNkNUMOdyA69k7qMaL
 iNXRizFY/pndR1+7LL+yMvkipJVCJlL3MWgj8t2vDqoArzCKcW45i8BtsTZCNp4Gps7B
 uvw8S+N9tK7/MBBncvmdcnquNCVPNyoO1Z0s8n+A6dJA90C33Zt14iDRy6gV4S/sBHgp
 GE3RGJfZRB3taS+ioKXXMg4Kow9klnsfzh+IOgOmFAMj9NsHBMwuecaBTXrPZseOVNz2
 u4aw==
X-Gm-Message-State: AGi0PuZG1UiFtUDTq9nDgMaN2XnCgrr1JCiXTYxxGJDJmm/xKvrifTfQ
 Alf7GWE/34jfVu18X0QOwy2j3VJ3ugKdONDzw58G8Jzf
X-Google-Smtp-Source: APiQypKrXroSA4NwFXR+0FPAOobd5oHpTQKu24j3WVRfrFQ0aaYhkzoSV64KWEf2b+N1llwnEf6RD2WotWlMXbOKyrA=
X-Received: by 2002:ab0:1c18:: with SMTP id a24mr9316028uaj.44.1589161564383; 
 Sun, 10 May 2020 18:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxstLciU5Dh1bP7KkTMGBzjOu1pMmj4s=ECFcP6xYcLMTg@mail.gmail.com>
In-Reply-To: <CAPRRyxstLciU5Dh1bP7KkTMGBzjOu1pMmj4s=ECFcP6xYcLMTg@mail.gmail.com>
Date: Sun, 10 May 2020 21:45:28 -0400
Message-ID: <CAL7q81t96z7e_B4ADotPsZdeREdJRRk-A4NC41Nu=QLGwGoMXA@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] disabling ddc duc blocks in rfnoc usrp e310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============5897991289631049784=="
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

--===============5897991289631049784==
Content-Type: multipart/alternative; boundary="0000000000008940be05a55582ba"

--0000000000008940be05a55582ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan,

When you build a custom RFNoC image for the E310 using uhd_image_builder,
only the radio core RFNoC block is included automatically. If you did not
specifically include a DDC or DUC block, then they were not included in the
build. The E310 is based on the Zynq 7020 and has limited resources. The
Fosphor example by itself uses up almost all of the device's FPGA resources
and adding another RFNoC block without modifying the design is not possible=
.

One experiment you could try is modifying line 11 in noc_block_fosphor.v to
increase the MTU size from 11 to 13 or 14. That may allow you to no longer
need the AXI FIFO RFNoC blocks. Without those blocks, you might be able to
fit in the FIR filter RFNoC block.

Jonathon

On Sun, May 10, 2020 at 7:10 AM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello. I want to create an image of fosphor, window, fft, 2x AXI FIFOs,
> FIR for USRP E310. I need to change the spectral bandwidth. But with the
> samp_rate parameter this does not work out very well. Therefore, I want t=
o
> use the FIR filter for these purposes, but when building the bit file, I =
do
> not have enough space on the FPGA. Therefore, I decided to turn off the D=
DC
> and DUC blocks, but I don=E2=80=99t know how to do it. I would be gratefu=
l for any
> information.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008940be05a55582ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan,<div><br></div><div>When you build a custom RFNoC =
image for the E310 using uhd_image_builder, only the radio core RFNoC block=
 is included automatically. If you did not specifically include a DDC or DU=
C block, then they were not included in the build. The E310 is based on the=
 Zynq 7020 and has limited resources. The Fosphor example by itself uses up=
 almost all of the device&#39;s FPGA resources and adding another RFNoC blo=
ck without modifying the design is not possible.</div><div><br></div><div>O=
ne experiment you could try is modifying line 11 in noc_block_fosphor.v to =
increase the MTU size from 11 to 13 or 14. That may allow you to no longer =
need the AXI FIFO RFNoC blocks. Without those blocks, you might be able to =
fit in the FIR filter RFNoC block.</div><div><br></div><div>Jonathon</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Sun, May 10, 2020 at 7:10 AM Ivan Zahartchuk via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello. I want to create an image of fosphor, window, fft, 2x AXI F=
IFOs, FIR for USRP E310.
I need to change the spectral bandwidth. But with the samp_rate parameter t=
his does not work out very well. Therefore, I want to use the FIR filter fo=
r these purposes, but when building the bit file, I do not have enough spac=
e on the FPGA. Therefore, I decided to turn off the DDC and DUC blocks, but=
 I don=E2=80=99t know how to do it. I would be grateful for any information=
.</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008940be05a55582ba--


--===============5897991289631049784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5897991289631049784==--

