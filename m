Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CEB166D68
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 04:22:47 +0100 (CET)
Received: from [::1] (port=33458 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4ytn-0005lX-2a; Thu, 20 Feb 2020 22:22:43 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:33174)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1j4ytj-0005Nc-KY
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 22:22:39 -0500
Received: by mail-oi1-f176.google.com with SMTP id q81so278224oig.0
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 19:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pWJlQJuWhzXYBU1NYIfGXjQJ2SemqkrmbqD+eRaBzYM=;
 b=c0sEw0u51l9CG8Zg3WHNpwzax8E9QxUaSz366sbU5p6Q++Kwe8H/ZbYpFALX5ZFrdk
 0OKuQXpt+T3eId8QojhE0lL99Qca9OECOSQdHOOn+h6TA3gSSegvjsGUIl6KZw7LrSMd
 W68kTjU6/JYpCLcoedhvIG5Pw77zteGcD/eUFxEDQQn95sf8rF8w9IHO+uSb0TW0xt9P
 kDgNPGZyuZnP+Q38iD8BblG1mG2eZad/s1DX1zD/pkA4xPp8uBzdARVy0oX5uT0VA84c
 M1S8aI1kuOIO8tv5wlnBRT/5Fsb/s4jIrE6HbTmp1uzMNL94X31ydfG+5N1D2dcObujB
 UZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pWJlQJuWhzXYBU1NYIfGXjQJ2SemqkrmbqD+eRaBzYM=;
 b=K7jCAoNrfSqzLTecvF5ty/W8D9n5cRG1x3kAEISVJ5w/Yq3r7jT0ODpRNa01cjpEXV
 N+sAYOVMQcSV8/lk458Ro1We027Pml8dX2VVM4nwOU/MUTFfFEiRUq4c7Y/Jlm/QqT47
 K5eKL1obODYK2IVAC7SMkjM7olm5J9jIaeISkamZ8bYgFz7e0rFbohFBygAdBBh+N0LJ
 w9OQRkdViImDKNr70F4lRJsXTVwD36TrCazTS2UwnHtTGHZmBdn/8F1HHdZsMSJv1vZ3
 pvAdm+7whFZldsxPH8+fVNBY9c90Bf3zwlHpKkN9siSr1+OQ5SzIWaAEZemFbnXJgI/3
 bAZg==
X-Gm-Message-State: APjAAAXh/xHQ2KuxP6gpkm0DCEhoTlY/WgtPlwAxuMqyfv/GuXLXBTas
 lxsMJsMNqWW+bpKQ255Lp3BxXUI+P36TfCaHqri/biUz
X-Google-Smtp-Source: APXvYqyxEHZ2fzqaqN8Xo2hquRtye6hqWqnOaxEgrgG/wr0O/AezJmPdZGXhuWpk52kWuyLthCnZyPqlKmkVje0EbdY=
X-Received: by 2002:aca:3f54:: with SMTP id m81mr277670oia.73.1582255318815;
 Thu, 20 Feb 2020 19:21:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR_xTy6MvgwhDqa9aSqXpCtGrK8JadJQoifL65dDcajvA@mail.gmail.com>
 <CA+JMMq8EpTeVBvr8X=mCeBg32_ETmvJrPr5siBok6Sq9bsOJGw@mail.gmail.com>
In-Reply-To: <CA+JMMq8EpTeVBvr8X=mCeBg32_ETmvJrPr5siBok6Sq9bsOJGw@mail.gmail.com>
Date: Thu, 20 Feb 2020 19:21:47 -0800
Message-ID: <CAB__hTR0RYWOXW-JME5zugCQVuqu1XejgN2MBBZwFfdYZ0_NDw@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6166232308524268104=="
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

--===============6166232308524268104==
Content-Type: multipart/alternative; boundary="000000000000390a06059f0d86c9"

--000000000000390a06059f0d86c9
Content-Type: text/plain; charset="UTF-8"

Unfortunately, I already tried that but no luck.

On Thu, Feb 20, 2020 at 9:54 PM Nick Foster <bistromath@gmail.com> wrote:

>
> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/
>
> Wipe that whole directory and try it again. If you want to be selective
> and save some time you can wipe only the axi_mem_64k directory.
>
> On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am having a problem with a Block Memory Generator IP that is working
>> with 2017.4 but is giving me issues with 2018.3. I have tried to upgrade
>> the IP as well as re-creating the IP from scratch in 2018.3, but I still
>> get the same failure (see below).  I have attached the IP created from
>> scratch in 2018.3.  Any suggestions?  I am not very experienced with FPGA
>> development in general or Vivado specifically, so it is likely that I am
>> missing something obvious.
>>
>> By the way, I am using the webpack (free) version of Vivado and
>> attempting to build for the E310.
>>
>> Rob
>>
>>
>> kossler@kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb$
>> make xsim
>> BUILDER: Checking tools...
>> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>> * Python 2.7.17
>> * Vivado v2018.3 (64-bit)
>> ========================================================
>> BUILDER: Building IP axi_mem_64k
>> ========================================================
>> BUILDER: Staging IP in build directory...
>> BUILDER: Reserving IP location:
>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k
>> BUILDER: Retargeting IP to part kintex7/xc7z020/clg484/-3...
>> BUILDER: Building IP...
>> [00:00:00] Executing command: vivado -mode batch -source
>> /home/kossler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl
>> -log axi_mem_64k.log -nojournal
>> WARNING: [IP_Flow 19-2162] IP 'axi_mem_64k' is locked:
>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>> following file is locked:
>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
>> following file is locked:
>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>>
> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000390a06059f0d86c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Unfortunately, I already tried that but no luck.=C2=
=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 20, 2020 at 9:54 PM Nick Foster &lt;<a href=3D"=
mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><font color=3D"#b45f06"=
>/home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/buil=
d-ip/<br></font></div><div><br></div><div>Wipe that whole directory and try=
 it again. If you want to be selective and save some time you can wipe only=
 the axi_mem_64k directory.<br></div></div><br><div class=3D"gmail_quote"><=
/div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"></blockquote></div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<=
div>I am having a problem with a Block Memory Generator IP that is working =
with 2017.4 but is giving me issues with 2018.3. I have tried to upgrade th=
e IP as well as re-creating the IP from scratch in 2018.3, but I still get =
the same failure (see below).=C2=A0 I have attached the IP created from scr=
atch in 2018.3.=C2=A0 Any suggestions?=C2=A0 I am not very experienced with=
 FPGA development in general or Vivado specifically, so it is likely that I=
 am missing something obvious.</div><div><br></div><div>By the way, I am us=
ing the webpack (free) version of Vivado and attempting to build for the E3=
10.</div><div><br></div><div>Rob</div><div><br><div><br></div><div>kossler@=
kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb=
_tb$ make xsim<br>BUILDER: Checking tools...<br>* GNU bash, version 4.4.20(=
1)-release (x86_64-pc-linux-gnu)<br>* Python 2.7.17<br>* Vivado v2018.3 (64=
-bit)<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Building IP axi_mem_64k<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>BUILDER: Staging IP in build directory...<br>BUILDER: Reser=
ving IP location: /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_bl=
ock_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k<br>BUILDER: Retargeting I=
P to part kintex7/xc7z020/clg484/-3...<br>BUILDER: Building IP...<br>[00:00=
:00] Executing command: vivado -mode batch -source /home/kossler/uhd/UHD-3.=
15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_mem_64k.lo=
g -nojournal<br><font color=3D"#0b5394">WARNING: [IP_Flow 19-2162] IP &#39;=
axi_mem_64k&#39; is locked:</font><br><font color=3D"#b45f06">CRITICAL WARN=
ING: [filemgmt 20-1366] Unable to reset target(s) for the following file is=
 locked: /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb=
_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci<br>CRITICAL WARNIN=
G: [filemgmt 20-1365] Unable to generate target(s) for the following file i=
s locked: /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txar=
b_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci</font><br></div><=
/div></div></blockquote></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000390a06059f0d86c9--


--===============6166232308524268104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6166232308524268104==--

