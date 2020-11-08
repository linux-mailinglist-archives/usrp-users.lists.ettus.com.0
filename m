Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6722AAE55
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 00:38:30 +0100 (CET)
Received: from [::1] (port=49154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kbuGT-0001qJ-A5; Sun, 08 Nov 2020 18:38:29 -0500
Received: from mail-vs1-f50.google.com ([209.85.217.50]:36994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kbuGP-0001jT-AW
 for usrp-users@lists.ettus.com; Sun, 08 Nov 2020 18:38:25 -0500
Received: by mail-vs1-f50.google.com with SMTP id l22so3996174vsa.4
 for <usrp-users@lists.ettus.com>; Sun, 08 Nov 2020 15:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+NnyuZPPVj75pOHSMKYHYyY87n/MhmxcKLVZglvUWqA=;
 b=nEnm0pHBaO19WUFpGcxi9C+8YIc4McF8OnrMu9/3Ztl2wfRZ2MeZiJCLmq0L7tSCzF
 jORiXyP9R+7TQQVaFh9ATUD+7uyGgsocNdmDm9W1vB41hGK7J+Fe1QZeDHGnkh5Ie5x7
 MRE5mi3HfZ0WN5CXlUmATRTHMBXUad+a0ZAW7Zh8mcfUbm7mp4685Aw8KRI5EM3rkwUI
 JpLgMGX5JtTSNaAogoIr1KRWNbr13SYa2Nn1z+so0XmQ90Obd51h5nMW9rLRLDznaEtR
 rOjRYo7jUQ9WiahFdpYP6jKN6vWbfowYDK0jc6bWBBzuc8Csq0WVcXw8AH73XzuQUefY
 QVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+NnyuZPPVj75pOHSMKYHYyY87n/MhmxcKLVZglvUWqA=;
 b=EAgoOJLu+2xSfGaXcLEHwQbeXIPDZPfq81x9hEJU1yHc+vutPao8G1tpDnkIxpVlCb
 +j8ADSzwSSgLNWuRlGK45oJwISd+YSp8mew7Mzmh6VYZs4wDwNJRRI58xbXGRHLtWFGH
 0WU96zsgN06cP8aq9grrdDv2QHI+M9FZRoG1gUTvSc9qNAqOAhGa8oKkdlSo5TBiqUcf
 NltVGnon+aJBQIFiZtG+cdS4K51WRASmtcvTwhnDjNQec3+U49494vKLGod8rVFPU2BF
 9NMLc9d+FbezKqe3fH+XPZwLWz9DT7x7wjVrVRZQ3sWzdkdy73MfvmMgN/oY6OZpsUh8
 hXYA==
X-Gm-Message-State: AOAM532dqeedrqsJ5aDF/T2lYTH4PYFCf66e7622Au7JSTnnJEi1H776
 3VRrrydAslJKVhKW0cWTLM1/cJnubCRhdGd54/r503Vr
X-Google-Smtp-Source: ABdhPJx4XStLe5OfH18M5gVgS7z8Cj0+oT0TCFBOi63mY1JN+Bta+A6Rl697gFrttxopr+sUK5p4XKqBO3A50d8hhPY=
X-Received: by 2002:a67:8091:: with SMTP id b139mr6565519vsd.7.1604878664555; 
 Sun, 08 Nov 2020 15:37:44 -0800 (PST)
MIME-Version: 1.0
References: <d0b84626-5145-ca2f-cd0f-484c0a5728e9.ref@verizon.net>
 <d0b84626-5145-ca2f-cd0f-484c0a5728e9@verizon.net>
 <bda720bd-736a-9c07-ec43-c9a8462073bb@verizon.net>
In-Reply-To: <bda720bd-736a-9c07-ec43-c9a8462073bb@verizon.net>
Date: Sun, 8 Nov 2020 18:37:08 -0500
Message-ID: <CAL7q81t7Ns6wOXVk6_CJDr1jvyGbZ5cG3r9gEFXMrS7QB4R_ww@mail.gmail.com>
To: Mike <mikerd1@verizon.net>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E310 FPGA Development
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============2990144528172267709=="
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

--===============2990144528172267709==
Content-Type: multipart/alternative; boundary="000000000000b571a605b3a0ee21"

--000000000000b571a605b3a0ee21
Content-Type: text/plain; charset="UTF-8"

Hi Mike,

Do not use pybombs, as the recipes are out of date and will just cause
confusion.

Make sure for UHD you are using the UHD-3.15.LTS branch and run "git
submodule update --init" so the fpga-src directory is updated to the
correct commit. Then try building your FPGA image again.

Jonathon

On Sat, Nov 7, 2020 at 9:44 PM Mike via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Wanted to add some additional information in hopes it might help point
> the way.
>
> An interesting thing that I found was that I was not able to get a
> working SD image through what I thought was the "normal" way.  I
> installed UHD v3.15.0.0 and then ran "uhd_images_downloader -t e310 -t
> sdimg".  This provided a file called usrp_e310_fs.sdimg in the
> /share/uhd/images folder.  I used both dd and bmaptool to copy the image
> onto a freshly erased SD card (partitions deleted).  The end result of
> both these methods was a SD card with 4 partitions (boot, data, primary,
> secondary).  Each time I installed this into the E310 it would error out
> in uboot with "ERROR: can't get kernel image".
>
> After some trial and error and poking around the Ettus web-site I found
> a directory of images:
>
>
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip.
>
> When I installed this image the E310 booted fine.  So, I downloaded the
> SDK that was in the same directory and was able to cross-compile UHD
> (and gnuradio) and see everything execute on the E310.  Everything seems
> great except the FPGA builds don't seem to work with this version of UHD.
>
> Another thing I noted was that when I installed the SDK it created a
> directory in the oe/sysroots folder for
> cortexa9t2hf-neon-oe-linux-musleabi whereas the pybombs installation is
> using:
>
> armv7ahf-vfp-neon-oe-linux-gnueabi
>
> Anyway, it seems like I'm trying to mix apples and oranges and I'm not
> sure what the correct combination is.
>
> Any ideas are greatly appreciated.
>
> Mike
>
> On 11/6/20 3:01 PM, Mike via USRP-users wrote:
> > Hi all - just joined today as I have recently started using the E310.
> >
> > My goal is to get a customized FPGA build running on the E310.
> >
> > Using the various application notes on the Ettus site I have been able
> > to install (manually with source) UHD, GNU Radio, gr-ettus. I've also
> > downloaded the SDK and cross-compiled each for the E310.  I've been
> > able to flash a SD image to a 32G SD card and then copy the newly
> > compiled development environment over to the E310.  I've been able to
> > verify gnuradio operation by implementing the simple FM receiver that
> > runs both on the embedded device and on the host.
> >
> > For the FPGA environment I used pybombs to install the rfnoc recipe. I
> > modified the rfnoc recipe as follows: (thinking that I need to ensure
> > FPGA is at 3.15 level which is what I manually cross-compiled the UHD
> > with)
> >
> > config:
> >     packages:
> >         uhd:
> >             gitbranch: UHD-3.15.LTS
> >             forcebuild: True
> >             vars:
> >               config_opt: " -DENABLE_RFNOC=ON "
> >         gnuradio:
> >             gitbranch: maint-3.7
> >             forcebuild: True
> >         gr-ettus:
> >             gitbranch: maint-3.7
> >             forcebuild: True
> >         uhd-fpga:
> >             gitbranch: UHD-3.15.LTS
> >
> > I also have Xilinx, Vivado 2018.3.  I've been stepping through the
> > AN-823 (getting started with RFNOC).  Before getting into the more
> > complex development with rfnocmodtool, I started with simply creating
> > a new FPGA file with existing RFNOC modules.  I ran the script:
> > "./uhd_image_builder.py window fft -d e310 -t E310 -m 5
> > --fill-with-fifos" and successfully got the output files
> > (usrp_e310_sg1_fpga.bit/dts/rpt).  I then copied the output files onto
> > the E310 device into ~/fpga_bit.
> >
> > This is where I started to run into problems.  First, I verified that
> > I was using the newly installed version of UHD. I ran "which
> > uhd_usrp_probe" to verify
> > "/data/localinstall/usr/bin/uhd_usrp_probe".  I also checked the version:
> >
> > root@ni-e31x:/data/localinstall/usr/share/uhd/images# uhd_usrp_probe
> > --version
> > 3.15.0.HEAD-0-gaea0e2de
> >
> > Then I ran "uhd_image_loader --args type=e3xx --fpga-path
> > ~/fpga_bit/usrp_e310_sg1_fpga.bit"root@ni-e31x:/data/localinstall/usr/share/uhd/images#
>
> > uhd_image_loader --args type=e3xx --fpga-path
> > ~/fpga_bit/usrp_e310_sg1_fpga.bit
> >
> > With the following output:
> >
> > [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> > UHD_3.15.0.HEAD-0-gaea0e2de
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False,skip_init=1
> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> > [INFO] [MPMD] Claimed device without full initialization.
> > [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> > [INFO] [MPM.PeriphManager] Updating component `fpga'
> > [INFO] [MPM.PeriphManager] Updating component `dts'
> > [INFO] [MPM.RPCServer] Resetting peripheral manager.
> > [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
> > [INFO] [MPM.PeriphManager] Device serial number: 3092E3A
> > [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> > [WARNING] [MPM.GPSDIface] Could not connect to GPSd! None of the GPS
> > sensors will work!
> > root@ni-e31x:/data/localinstall/usr/share/uhd/images#
> >
> > Then run "uhd_usrp_probe" gives:
> >
> > root@ni-e31x:/data/localinstall/usr/share/uhd/images# uhd_usrp_probe
> > [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> > UHD_3.15.0.HEAD-0-gaea0e2de
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False
> > [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never
> > fully initialized!
> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> > [ERROR] [MPM.PeriphManager] Major compat number mismatch for component
> > `FPGA': Expected: 1.0 Actual: 5.0
> > [ERROR] [MPM.PeriphManager] Failed to initialize motherboard: Major
> > compat number mismatch for component `FPGA': Expected: 1.0 Actual: 5.0
> > Error: RuntimeError: Device is in bad state: Major compat number
> > mismatch for component `FPGA': Expected: 1.0 Actual: 5.0
> > root@ni-e31x:/data/localinstall/usr/share/uhd/images#
> >
> >
> > So, a major compat mismatch seems like I'm using the wrong FPGA
> > version with the UHD version.  But I think I have UHD-3.15.LTS for
> > both UHD and FPGA.
> >
> > Something is wrong between what I'm using for the FPGA files and what
> > I'm using for the UHD.  I seem to be close but thought I would ask for
> > a little input to help get me straightened out.
> >
> > Thanks for any assistance.
> >
> > Mike
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b571a605b3a0ee21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mike,<div><br></div><div>Do not use pybombs, as the rec=
ipes are out of date and will just cause confusion.</div><div><br></div><di=
v>Make sure for UHD you are using the UHD-3.15.LTS branch and run &quot;git=
 submodule update --init&quot; so the fpga-src directory is updated to the =
correct commit. Then try building your FPGA image again.</div><div><br></di=
v><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Nov 7, 2020 at 9:44 PM Mike via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Wa=
nted to add some additional information in hopes it might help point <br>
the way.<br>
<br>
An interesting thing that I found was that I was not able to get a <br>
working SD image through what I thought was the &quot;normal&quot; way.=C2=
=A0 I <br>
installed UHD v3.15.0.0 and then ran &quot;uhd_images_downloader -t e310 -t=
 <br>
sdimg&quot;.=C2=A0 This provided a file called usrp_e310_fs.sdimg in the <b=
r>
/share/uhd/images folder.=C2=A0 I used both dd and bmaptool to copy the ima=
ge <br>
onto a freshly erased SD card (partitions deleted).=C2=A0 The end result of=
 <br>
both these methods was a SD card with 4 partitions (boot, data, primary, <b=
r>
secondary).=C2=A0 Each time I installed this into the E310 it would error o=
ut <br>
in uboot with &quot;ERROR: can&#39;t get kernel image&quot;.<br>
<br>
After some trial and error and poking around the Ettus web-site I found <br=
>
a directory of images:<br>
<br>
<a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0=
/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip" rel=3D"noreferrer" target=3D"_b=
lank">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx=
_e310_sg1_sdimg_default-v3.15.0.0.zip</a>. <br>
When I installed this image the E310 booted fine.=C2=A0 So, I downloaded th=
e <br>
SDK that was in the same directory and was able to cross-compile UHD <br>
(and gnuradio) and see everything execute on the E310.=C2=A0 Everything see=
ms <br>
great except the FPGA builds don&#39;t seem to work with this version of UH=
D.<br>
<br>
Another thing I noted was that when I installed the SDK it created a <br>
directory in the oe/sysroots folder for <br>
cortexa9t2hf-neon-oe-linux-musleabi whereas the pybombs installation is <br=
>
using:<br>
<br>
armv7ahf-vfp-neon-oe-linux-gnueabi<br>
<br>
Anyway, it seems like I&#39;m trying to mix apples and oranges and I&#39;m =
not <br>
sure what the correct combination is.<br>
<br>
Any ideas are greatly appreciated.<br>
<br>
Mike<br>
<br>
On 11/6/20 3:01 PM, Mike via USRP-users wrote:<br>
&gt; Hi all - just joined today as I have recently started using the E310.<=
br>
&gt;<br>
&gt; My goal is to get a customized FPGA build running on the E310.<br>
&gt;<br>
&gt; Using the various application notes on the Ettus site I have been able=
 <br>
&gt; to install (manually with source) UHD, GNU Radio, gr-ettus. I&#39;ve a=
lso <br>
&gt; downloaded the SDK and cross-compiled each for the E310.=C2=A0 I&#39;v=
e been <br>
&gt; able to flash a SD image to a 32G SD card and then copy the newly <br>
&gt; compiled development environment over to the E310.=C2=A0 I&#39;ve been=
 able to <br>
&gt; verify gnuradio operation by implementing the simple FM receiver that =
<br>
&gt; runs both on the embedded device and on the host.<br>
&gt;<br>
&gt; For the FPGA environment I used pybombs to install the rfnoc recipe. I=
 <br>
&gt; modified the rfnoc recipe as follows: (thinking that I need to ensure =
<br>
&gt; FPGA is at 3.15 level which is what I manually cross-compiled the UHD =
<br>
&gt; with)<br>
&gt;<br>
&gt; config:<br>
&gt; =C2=A0=C2=A0=C2=A0 packages:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git=
branch: UHD-3.15.LTS<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for=
cebuild: True<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 var=
s:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 config_opt: &quot; -DENABLE_RFNOC=3DON &quot;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gnuradio:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git=
branch: maint-3.7<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for=
cebuild: True<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gr-ettus:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git=
branch: maint-3.7<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for=
cebuild: True<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd-fpga:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git=
branch: UHD-3.15.LTS<br>
&gt;<br>
&gt; I also have Xilinx, Vivado 2018.3.=C2=A0 I&#39;ve been stepping throug=
h the <br>
&gt; AN-823 (getting started with RFNOC).=C2=A0 Before getting into the mor=
e <br>
&gt; complex development with rfnocmodtool, I started with simply creating =
<br>
&gt; a new FPGA file with existing RFNOC modules.=C2=A0 I ran the script: <=
br>
&gt; &quot;./uhd_image_builder.py window fft -d e310 -t E310 -m 5 <br>
&gt; --fill-with-fifos&quot; and successfully got the output files <br>
&gt; (usrp_e310_sg1_fpga.bit/dts/rpt).=C2=A0 I then copied the output files=
 onto <br>
&gt; the E310 device into ~/fpga_bit.<br>
&gt;<br>
&gt; This is where I started to run into problems.=C2=A0 First, I verified =
that <br>
&gt; I was using the newly installed version of UHD. I ran &quot;which <br>
&gt; uhd_usrp_probe&quot; to verify <br>
&gt; &quot;/data/localinstall/usr/bin/uhd_usrp_probe&quot;.=C2=A0 I also ch=
ecked the version:<br>
&gt;<br>
&gt; root@ni-e31x:/data/localinstall/usr/share/uhd/images# uhd_usrp_probe <=
br>
&gt; --version<br>
&gt; 3.15.0.HEAD-0-gaea0e2de<br>
&gt;<br>
&gt; Then I ran &quot;uhd_image_loader --args type=3De3xx --fpga-path <br>
&gt; ~/fpga_bit/usrp_e310_sg1_fpga.bit&quot;root@ni-e31x:/data/localinstall=
/usr/share/uhd/images# <br>
&gt; uhd_image_loader --args type=3De3xx --fpga-path <br>
&gt; ~/fpga_bit/usrp_e310_sg1_fpga.bit<br>
&gt;<br>
&gt; With the following output:<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
&gt; UHD_3.15.0.HEAD-0-gaea0e2de<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
&gt; mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D3092E3A,=
claimed=3DFalse,skip_init=3D1<br>
&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
&gt; [INFO] [MPMD] Claimed device without full initialization.<br>
&gt; [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `fpga&#39;<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `dts&#39;<br>
&gt; [INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
&gt; [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!<br>
&gt; [INFO] [MPM.PeriphManager] Device serial number: 3092E3A<br>
&gt; [INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
&gt; [WARNING] [MPM.GPSDIface] Could not connect to GPSd! None of the GPS <=
br>
&gt; sensors will work!<br>
&gt; root@ni-e31x:/data/localinstall/usr/share/uhd/images#<br>
&gt;<br>
&gt; Then run &quot;uhd_usrp_probe&quot; gives:<br>
&gt;<br>
&gt; root@ni-e31x:/data/localinstall/usr/share/uhd/images# uhd_usrp_probe<b=
r>
&gt; [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
&gt; UHD_3.15.0.HEAD-0-gaea0e2de<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
&gt; mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D3092E3A,=
claimed=3DFalse<br>
&gt; [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never <b=
r>
&gt; fully initialized!<br>
&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
&gt; [ERROR] [MPM.PeriphManager] Major compat number mismatch for component=
 <br>
&gt; `FPGA&#39;: Expected: 1.0 Actual: 5.0<br>
&gt; [ERROR] [MPM.PeriphManager] Failed to initialize motherboard: Major <b=
r>
&gt; compat number mismatch for component `FPGA&#39;: Expected: 1.0 Actual:=
 5.0<br>
&gt; Error: RuntimeError: Device is in bad state: Major compat number <br>
&gt; mismatch for component `FPGA&#39;: Expected: 1.0 Actual: 5.0<br>
&gt; root@ni-e31x:/data/localinstall/usr/share/uhd/images#<br>
&gt;<br>
&gt;<br>
&gt; So, a major compat mismatch seems like I&#39;m using the wrong FPGA <b=
r>
&gt; version with the UHD version.=C2=A0 But I think I have UHD-3.15.LTS fo=
r <br>
&gt; both UHD and FPGA.<br>
&gt;<br>
&gt; Something is wrong between what I&#39;m using for the FPGA files and w=
hat <br>
&gt; I&#39;m using for the UHD.=C2=A0 I seem to be close but thought I woul=
d ask for <br>
&gt; a little input to help get me straightened out.<br>
&gt;<br>
&gt; Thanks for any assistance.<br>
&gt;<br>
&gt; Mike<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b571a605b3a0ee21--


--===============2990144528172267709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2990144528172267709==--

