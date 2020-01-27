Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2A114A751
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 16:38:27 +0100 (CET)
Received: from [::1] (port=38988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw6T3-0002vS-VP; Mon, 27 Jan 2020 10:38:25 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:46361)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iw6T0-0002qV-8v
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 10:38:22 -0500
Received: by mail-ot1-f51.google.com with SMTP id g64so8728684otb.13
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 07:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zc1ksogu8X3dHpwWrcNo6jhN8I3dPu9vrD/hrdCMcT0=;
 b=G3Wp59OEpepcvT+Ks09bQEzCQL6Bz92D8Pd3loBMZesnJYLxUkghQ26+Uz7Hk+D9GK
 GewhwQuvHG+Rr3wEgtrGM/t8x5NuiYfnziK0tUZSrxDO622Uneevw6jA01nYQV4irbi5
 uhJKX84IASeo321Fql4Naxex3ljiNx4ELcW3KBttNlSE8kJ/FBIBsxnm+xqJMYdYvi9O
 qZKzLm0lgpJhbcbzbLl70s7yFaqrvhp8lWcyFqxVrqv0ytugpEWn9D69WNTXuSr8GR7r
 DTmRCneY1j5tVCO4mRX78guYYAJaUTrbmlptpar0NV6euSQCIi6cGha8ZhFcteGueE91
 Hj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zc1ksogu8X3dHpwWrcNo6jhN8I3dPu9vrD/hrdCMcT0=;
 b=A2od0Z20S4oc0DFhvDYZnceaB5Jq/1t7damCIk4POg2k6IGPpwdj1OdWN/jT8LvUdh
 GwRUww7hIB34kp28E+rMFGm1+gwT7jZPQ4dwT01uuoY9CnDHJgGsgX/ZbmjagEpaz20J
 OYZO05mDSCNlQW8yFQGshUiKkSpEAfLBPSyvZkIj2ZfKYIg9L/ACdnvuJWu8z0hLB/ox
 qrVoqqmmqHE7RHGy/y61VsyXRqqNZHnM0VgnElU+My8olggWAYjxcZC5NykcrtrS7iOP
 0T0Z7EOPJePOK3bwmB4/Oc3yUxXtT/PrRGV3ZPf31CaAaz5ZjGfyNuJ/tsrg2ryG3NTF
 4wtQ==
X-Gm-Message-State: APjAAAV6f0OWErBOx+xB2TGF5v7kenVhGoICjSSu1Oe/9R/bWbdaHknw
 GRECu+aNwwXcDRGNTj9Q9UplxjAKTPIUH0/yPkd/PQ==
X-Google-Smtp-Source: APXvYqx/Q8pZhJYrdCf4TL1E5eGUCmsIeU/Ny9uyWdVkmjyLIEwu55kD3tZVhZiDTv1Ii0M3hpAERrXv3i8Yo72AA8A=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr12343286otp.211.1580139461446; 
 Mon, 27 Jan 2020 07:37:41 -0800 (PST)
MIME-Version: 1.0
References: <CAEnX9dGbEkF43zt==5ftvefUY1A7vd6FBSUy4GJfWnhpgtof4g@mail.gmail.com>
In-Reply-To: <CAEnX9dGbEkF43zt==5ftvefUY1A7vd6FBSUy4GJfWnhpgtof4g@mail.gmail.com>
Date: Mon, 27 Jan 2020 10:37:30 -0500
Message-ID: <CAB__hTRTQnCgRczj70+UtSg_XR9XtP-J_gjBF4HurpK3r9UtZg@mail.gmail.com>
To: Joe crossen <jmcrossen80@gmail.com>
Subject: Re: [USRP-users] Read-all USRP parameters
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6020711191399579583=="
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

--===============6020711191399579583==
Content-Type: multipart/alternative; boundary="0000000000004bbed6059d20e377"

--0000000000004bbed6059d20e377
Content-Type: text/plain; charset="UTF-8"

Hi Joe,
The errors you are getting indicate that the FPGA image on the device is
not compatible with the UHD driver on the host (either the E310 ARM with
UHD 3.11 or the host machine with UHD 3.14.1).  With the E310, I believe
that the FPGA image is loaded when you run your app (such
usrp_burn_mb_eeprom) from a default location but you can override to load a
non-default fpga image when your app starts up using a command line
parameter (perhaps in the 'args' ).  Perhaps try the following:
- run the uhd_images_downloader program which should be smart enough to
download the UHD-compatible FPGA image into the default location such that
it will then be loaded each time by default. This should work on either the
E310 itself via ssh or from the host.
- alternatively, play around with specifically identifying which FPGA image
you want (rather than having it load the default) at startup.

Rob

On Wed, Jan 22, 2020 at 7:13 PM Joe crossen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I know there is a manual for this -
> http://files.ettus.com/manual/page_identification.html#id_naming
> Though I'm still having difficulties.
>
> Firstly, can the eeprom of the device be read/changed from the device
> itself?
> I have ssh'd into the USRP, and get the following when attempting to
> read-all:
>
> root@ettus-e3xx-sg3:/usr/lib/uhd/utils# ./usrp_burn_mb_eeprom --read-all
> Creating USRP device from address:
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400;
> UHD_3.11.0.1-0-unknown
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=288000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=288000
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=288000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=288000
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=288000
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 288000 bytes.
> Actual sock buff size: 163840 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=288000
> [INFO] [E300] Detecting internal GPS
> [ERROR] [E300] An error occured making GPSDd interface: RuntimeError:
> Failed to connect to gpsd: can't connect to host/port pair
> [INFO] [E300] Initializing core control...
> [INFO] [E300] Performing register loopback test...
> [INFO] [E300] Register loopback test passed
> Error: RuntimeError: Expected FPGA compatibility number 17.x, but got 16.0:
> The FPGA build is not compatible with the host code build.
> Please run:
>
>  "/usr/lib/uhd/utils/uhd_images_downloader.py"
>
> Failing this, I attempted the same from my host machine (with the USRP
> device in usrp_e3x0_
> network_mode).
> /usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args="serial=3174549"
> --read-all
> This resulted in a very similar output with the error:
> Error: RuntimeError: Expected FPGA compatibility number 255.x, but got
> 16.0:
>
> *Note: *my host machine is running UHD 3.14.1 and I suspect this doesn't
> help the matter- I've attempted to roll this version back by downloading
> older uhd binaries - https://files.ettus.com/binaries/uhd/
> though was getting all of these dependency issues. I'm new to Linux and
> this has been a head-f**k.
>
> I'm not sure how to troubleshoot this.
> Any advice would be great!
> Thanks,
> Joe
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004bbed6059d20e377
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Joe,<div>The errors you are getting in=
dicate that the FPGA image on the device is not compatible with the UHD dri=
ver on the host (either the E310 ARM with UHD 3.11 or the host machine with=
 UHD 3.14.1).=C2=A0 With the E310, I believe that the FPGA image is loaded =
when you run your app (such usrp_burn_mb_eeprom) from a default location bu=
t you can override to load a non-default fpga image when your app starts up=
 using a command line parameter (perhaps in the &#39;args&#39; ).=C2=A0 Per=
haps try the following:</div><div>- run the uhd_images_downloader program w=
hich should be smart enough to download the UHD-compatible FPGA image into =
the default location such that it will then be loaded each time by default.=
 This should work on either the E310 itself via ssh or from the host.</div>=
<div>- alternatively, play around with specifically identifying which FPGA =
image you want (rather than having it load the default) at startup.</div><d=
iv><br></div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2020 at 7:13 PM Joe crossen via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I k=
now there is a manual for this - <a href=3D"http://files.ettus.com/manual/p=
age_identification.html#id_naming" target=3D"_blank">http://files.ettus.com=
/manual/page_identification.html#id_naming</a></div><div></div><div>Though =
I&#39;m still having difficulties. <br></div><div><br></div><div>Firstly, c=
an the eeprom of the device be read/changed from the device itself?</div><d=
iv>I have ssh&#39;d into the USRP, and get the following when attempting to=
 read-all:<br></div><div><br></div><div style=3D"margin-left:40px">root@ett=
us-e3xx-sg3:/usr/lib/uhd/utils# ./usrp_burn_mb_eeprom --read-all<br>Creatin=
g USRP device from address: <br>[INFO] [UHD] linux; GNU C++ version 7.3.0; =
Boost_106400; UHD_3.11.0.1-0-unknown<br>[WARNING] [UDP] The recv buffer cou=
ld not be resized sufficiently.<br>Target sock buff size: 288000 bytes.<br>=
Actual sock buff size: 163840 bytes.<br>See the transport application notes=
 on buffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D2880=
00<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br=
>Target sock buff size: 288000 bytes.<br>Actual sock buff size: 163840 byte=
s.<br>See the transport application notes on buffer resizing.<br>Please run=
: sudo sysctl -w net.core.wmem_max=3D288000<br>[WARNING] [UDP] The recv buf=
fer could not be resized sufficiently.<br>Target sock buff size: 288000 byt=
es.<br>Actual sock buff size: 163840 bytes.<br>See the transport applicatio=
n notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=
=3D288000<br>[WARNING] [UDP] The send buffer could not be resized sufficien=
tly.<br>Target sock buff size: 288000 bytes.<br>Actual sock buff size: 1638=
40 bytes.<br>See the transport application notes on buffer resizing.<br>Ple=
ase run: sudo sysctl -w net.core.wmem_max=3D288000<br>[WARNING] [UDP] The r=
ecv buffer could not be resized sufficiently.<br>Target sock buff size: 288=
000 bytes.<br>Actual sock buff size: 163840 bytes.<br>See the transport app=
lication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.r=
mem_max=3D288000<br>[WARNING] [UDP] The send buffer could not be resized su=
fficiently.<br>Target sock buff size: 288000 bytes.<br>Actual sock buff siz=
e: 163840 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.wmem_max=3D288000<br>[INFO] [E300] =
Detecting internal GPS <br>[ERROR] [E300] An error occured making GPSDd int=
erface: RuntimeError: Failed to connect to gpsd: can&#39;t connect to host/=
port pair<br>[INFO] [E300] Initializing core control...<br>[INFO] [E300] Pe=
rforming register loopback test... <br>[INFO] [E300] Register loopback test=
 passed<br>Error: RuntimeError: Expected FPGA compatibility number 17.x, bu=
t got 16.0:<br>The FPGA build is not compatible with the host code build.<b=
r>Please run:<br><br>=C2=A0&quot;/usr/lib/uhd/utils/uhd_images_downloader.p=
y&quot;<br></div><div><br></div><div>Failing this, I attempted the same fro=
m my host machine (with the USRP device in usrp_e3x0_<br></div><div>network=
_mode). <br></div><div style=3D"margin-left:40px">/usr/local/lib/uhd/utils$=
 ./usrp_burn_mb_eeprom --args=3D&quot;serial=3D3174549&quot; --read-all<br>=
</div><div>This resulted in a very similar output with the error:</div><div=
 style=3D"margin-left:40px">Error: RuntimeError: Expected FPGA compatibilit=
y number 255.x, but got 16.0:<br></div><div></div><div><br></div><div><b>No=
te: </b>my host machine is running UHD 3.14.1 and I suspect this doesn&#39;=
t help the matter- I&#39;ve attempted to roll this version back by download=
ing older uhd binaries - <a href=3D"https://files.ettus.com/binaries/uhd/" =
target=3D"_blank">https://files.ettus.com/binaries/uhd/</a></div><div>thoug=
h was getting all of these dependency issues. I&#39;m new to Linux and this=
 has been a head-f**k.<br></div><div><br></div><div>I&#39;m not sure how to=
 troubleshoot this.</div><div>Any advice would be great!</div><div>Thanks,<=
/div><div>Joe<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004bbed6059d20e377--


--===============6020711191399579583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6020711191399579583==--

