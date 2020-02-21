Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 967AB166D2B
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 03:55:01 +0100 (CET)
Received: from [::1] (port=56822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4ySy-00041E-Dd; Thu, 20 Feb 2020 21:55:00 -0500
Received: from mail-io1-f45.google.com ([209.85.166.45]:41103)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1j4ySu-0003sY-P6
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 21:54:56 -0500
Received: by mail-io1-f45.google.com with SMTP id m25so788867ioo.8
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 18:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BE0BjiYAgvgbxwKU+32gvYQc9AqeSPIwB1uoDTSj1sQ=;
 b=H3mk3yvuJuF2r33jZGUqhETDWCTw6Ujm30FW1eTTUxkD7Db9ZpWEjwKtl0jHB+l6ik
 EQB/yCXy3yEIQeVbmyaFd4u13oNfzEzv9/Syxw9fvgBnn/OxmgnWDDegMIzKaV4COVbA
 rm41vvm8tSbD7idSATwTPLg5miVimMEMcu4Lo47X3oiDYIlwkLhsvQatdJaJQWp0qItC
 SKvkHBthpuB8sytKc194bqOqeZRxWaJNSLVEb/UteBygNOZixdazJcKl64t63FDiyIN5
 A4j7jBTAh3OYdapKaeuhieJzZ5Ix/mL4BbGWG2qDruI3CEwomSH22Jb5aZyZnWlupfDe
 Hn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BE0BjiYAgvgbxwKU+32gvYQc9AqeSPIwB1uoDTSj1sQ=;
 b=K4643Ue+sqbGU3c6R+pI/mb+SHCZgLbSfgx0yRmIMgA4puQiMeTr2/SzAw0h0NCPpx
 V6fel86vJE0QYvCZMFOFZ/A5mCpO8mpr9L2Mm1VOk15+dkadNeoxgMsAfqRW82CNFExs
 Bc1muHbSKEUL0ApIOtPEDIu0EJh23kHs6YvwQMAWPHHY37UF23AVPfwkoqLPwBn+y4bR
 IYYzjw4rEPWXZbwfD4XwdfVHC5YB7sPH/FTq5kZO3nvHjgW8h/pXWXzI8eJs48U5+42I
 jsBx2FX+my6qVMRbkFI7Fxddyr/eSV+qvYlisupCHYSn5yxjizQnAH8h9KiLxsdg8GpQ
 MGWg==
X-Gm-Message-State: APjAAAXUb2KoAaYA4qS1cV634flZ82Yzec3vDQD/jHNEiNGK12ZVhBWL
 FqNSmhyXJkK0h9aiJyQz9cn/4ASuayDx2cHp9uk=
X-Google-Smtp-Source: APXvYqznDJgEpr+6OYXZysxDMeKynGc4clMXj2urXv3PYDMjQrhguT+NdWJEqY2mnrnvycX+MoPYQwKsq/y4yQBW6+s=
X-Received: by 2002:a02:2101:: with SMTP id e1mr29002620jaa.29.1582253655894; 
 Thu, 20 Feb 2020 18:54:15 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR_xTy6MvgwhDqa9aSqXpCtGrK8JadJQoifL65dDcajvA@mail.gmail.com>
In-Reply-To: <CAB__hTR_xTy6MvgwhDqa9aSqXpCtGrK8JadJQoifL65dDcajvA@mail.gmail.com>
Date: Thu, 20 Feb 2020 18:53:55 -0800
Message-ID: <CA+JMMq8EpTeVBvr8X=mCeBg32_ETmvJrPr5siBok6Sq9bsOJGw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Vivado IP locked issue
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2561076868290922688=="
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

--===============2561076868290922688==
Content-Type: multipart/alternative; boundary="0000000000001aad05059f0d23db"

--0000000000001aad05059f0d23db
Content-Type: text/plain; charset="UTF-8"

/home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/

Wipe that whole directory and try it again. If you want to be selective and
save some time you can wipe only the axi_mem_64k directory.

On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am having a problem with a Block Memory Generator IP that is working
> with 2017.4 but is giving me issues with 2018.3. I have tried to upgrade
> the IP as well as re-creating the IP from scratch in 2018.3, but I still
> get the same failure (see below).  I have attached the IP created from
> scratch in 2018.3.  Any suggestions?  I am not very experienced with FPGA
> development in general or Vivado specifically, so it is likely that I am
> missing something obvious.
>
> By the way, I am using the webpack (free) version of Vivado and attempting
> to build for the E310.
>
> Rob
>
>
> kossler@kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb$
> make xsim
> BUILDER: Checking tools...
> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.17
> * Vivado v2018.3 (64-bit)
> ========================================================
> BUILDER: Building IP axi_mem_64k
> ========================================================
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location:
> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k
> BUILDER: Retargeting IP to part kintex7/xc7z020/clg484/-3...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source
> /home/kossler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl
> -log axi_mem_64k.log -nojournal
> WARNING: [IP_Flow 19-2162] IP 'axi_mem_64k' is locked:
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001aad05059f0d23db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font color=3D"#b45f06">/home/kossler/nd_overhaul/uhd=
_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/<br></font></div><div><br=
></div><div>Wipe that whole directory and try it again. If you want to be s=
elective and save some time you can wipe only the axi_mem_64k directory.<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<div>I am having a problem with a Block Memory Generator IP tha=
t is working with 2017.4 but is giving me issues with 2018.3. I have tried =
to upgrade the IP as well as re-creating the IP from scratch in 2018.3, but=
 I still get the same failure (see below).=C2=A0 I have attached the IP cre=
ated from scratch in 2018.3.=C2=A0 Any suggestions?=C2=A0 I am not very exp=
erienced with FPGA development in general or Vivado specifically, so it is =
likely that I am missing something obvious.</div><div><br></div><div>By the=
 way, I am using the webpack (free) version of Vivado and attempting to bui=
ld for the E310.</div><div><br></div><div>Rob</div><div><br><div><br></div>=
<div>kossler@kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/no=
c_block_txarb_tb$ make xsim<br>BUILDER: Checking tools...<br>* GNU bash, ve=
rsion 4.4.20(1)-release (x86_64-pc-linux-gnu)<br>* Python 2.7.17<br>* Vivad=
o v2018.3 (64-bit)<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Building IP axi_mem_=
64k<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Staging IP in build directory...<br=
>BUILDER: Reserving IP location: /home/kossler/nd_overhaul/uhd_nd/rfnoc/tes=
tbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k<br>BUILDER=
: Retargeting IP to part kintex7/xc7z020/clg484/-3...<br>BUILDER: Building =
IP...<br>[00:00:00] Executing command: vivado -mode batch -source /home/kos=
sler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl -log=
 axi_mem_64k.log -nojournal<br><font color=3D"#0b5394">WARNING: [IP_Flow 19=
-2162] IP &#39;axi_mem_64k&#39; is locked:</font><br><font color=3D"#b45f06=
">CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the fo=
llowing file is locked: /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/=
noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci<br>=
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches=
/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci</f=
ont><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001aad05059f0d23db--


--===============2561076868290922688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2561076868290922688==--

