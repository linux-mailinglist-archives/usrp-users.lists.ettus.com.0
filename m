Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E879616815C
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 16:21:24 +0100 (CET)
Received: from [::1] (port=50372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5A7E-0000Mb-DU; Fri, 21 Feb 2020 10:21:20 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:42697)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1j5A7A-0000BH-EZ
 for usrp-users@lists.ettus.com; Fri, 21 Feb 2020 10:21:16 -0500
Received: by mail-oi1-f178.google.com with SMTP id j132so1888442oih.9
 for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2020 07:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rnPKu2ITRwcnfVgTnmPByhIy70xOb01H6qVMbNUEJKI=;
 b=gXmCCMFWSSBIKpHkLzt+DE8DCZINKwpnCamgfB8tJ66U1s4acXGK3HwUJWK6/eW7O3
 Cummg4xkB15DAVTYr7jh/IoVEaD1OSpYF38rRYgRBkuMWZdSZs9twZSTsWySdNoV/OmJ
 XXY4+NaQpsO9BcCFVMBh5MbaokfTRGh2pSLoe3E30np7nGdW1tRf6kMn9TkFwWtKknj9
 a+aiWdJ/XdYSG6y0xaLuFjI+j4pb2ZGewKHVw0MWhbLEET+Nz17w6KvmX9iDL9P5DQUn
 4dnD5WaCP18ThuaTi3enrrUrPuEIRrg1rkvsxpEbAGso2cxhl3z/XX/NzWWwh6+ux48A
 Bdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rnPKu2ITRwcnfVgTnmPByhIy70xOb01H6qVMbNUEJKI=;
 b=gXLrgqBuV8vTHwxhpIPjoXGWqx4B0DPzN/Ob6t7O/4jbA+O0wC6rMGC5dWeCpCikjm
 mxwZ7Cbj0ZrOIbqgDiNviFEKTFQ7tbF18mToqD/7nGkKy76sILznMjv5m+1lPu0lFFy0
 FwRBymgP2Hqub9bAHQYbZ+fE4jvnl73AdNK8GpIX27V/HuoBQuWhPOeSd+mIAJijUvKf
 MjgN/8fQcdISKSch5jTavB1GCMNcxjb0Y5NPz2VUv0Whx85EIte/dOOPpPKY57AABKul
 nwm2eNgBXzOP3yLWeTuYfs4Zrvh+WRLKtOIbK+kT8SLo/m+OlQX4Bn0qM2eg+TRsJm2J
 5KrQ==
X-Gm-Message-State: APjAAAXCU4abIQxt6TdDqbU7oM6+v7iaPFEVg7TJEFL+L3EoMRazHm5t
 UVc2gQDKc3es0hxHnclhjnyI1XoQlYezKTIKxRL9OQ==
X-Google-Smtp-Source: APXvYqwJ8q3UdBA1zt3qOxJ/HYqeSu7EIk80yRI9LPRSZfqAa1y3UAI8IReFDoNZWf41Rrcao0BtuMDZHZfLWNGthTo=
X-Received: by 2002:aca:52d0:: with SMTP id g199mr2265111oib.153.1582298435549; 
 Fri, 21 Feb 2020 07:20:35 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR_xTy6MvgwhDqa9aSqXpCtGrK8JadJQoifL65dDcajvA@mail.gmail.com>
 <CA+JMMq8EpTeVBvr8X=mCeBg32_ETmvJrPr5siBok6Sq9bsOJGw@mail.gmail.com>
 <CAB__hTR0RYWOXW-JME5zugCQVuqu1XejgN2MBBZwFfdYZ0_NDw@mail.gmail.com>
 <CAL7q81sKNQ_gM4_NicTE_w3tQhm4Hr9Xn6ri7P1QDK3svh7SuQ@mail.gmail.com>
In-Reply-To: <CAL7q81sKNQ_gM4_NicTE_w3tQhm4Hr9Xn6ri7P1QDK3svh7SuQ@mail.gmail.com>
Date: Fri, 21 Feb 2020 10:20:24 -0500
Message-ID: <CAB__hTTcn4CovxN_MgYAZPCO0+r3J9BJW-FmtxzEM2HF1ED1qw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============2175383281080728130=="
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

--===============2175383281080728130==
Content-Type: multipart/alternative; boundary="0000000000002e3a88059f1790a8"

--0000000000002e3a88059f1790a8
Content-Type: text/plain; charset="UTF-8"

The problem was I had not changed the ARCH to zynq in viv_sim_preamble.mak
- it was still at kintex7.  For some reason this worked with 3.14 (Viv
2017.4).  Thanks for your help.
Rob

On Thu, Feb 20, 2020 at 10:48 PM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Try removing all xml files you have in your OOT IP directory.
>
> On Thu, Feb 20, 2020 at 10:22 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Unfortunately, I already tried that but no luck.
>>
>> On Thu, Feb 20, 2020 at 9:54 PM Nick Foster <bistromath@gmail.com> wrote:
>>
>>>
>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/
>>>
>>> Wipe that whole directory and try it again. If you want to be selective
>>> and save some time you can wipe only the axi_mem_64k directory.
>>>
>>> On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> I am having a problem with a Block Memory Generator IP that is working
>>>> with 2017.4 but is giving me issues with 2018.3. I have tried to upgrade
>>>> the IP as well as re-creating the IP from scratch in 2018.3, but I still
>>>> get the same failure (see below).  I have attached the IP created from
>>>> scratch in 2018.3.  Any suggestions?  I am not very experienced with FPGA
>>>> development in general or Vivado specifically, so it is likely that I am
>>>> missing something obvious.
>>>>
>>>> By the way, I am using the webpack (free) version of Vivado and
>>>> attempting to build for the E310.
>>>>
>>>> Rob
>>>>
>>>>
>>>> kossler@kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb$
>>>> make xsim
>>>> BUILDER: Checking tools...
>>>> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>>>> * Python 2.7.17
>>>> * Vivado v2018.3 (64-bit)
>>>> ========================================================
>>>> BUILDER: Building IP axi_mem_64k
>>>> ========================================================
>>>> BUILDER: Staging IP in build directory...
>>>> BUILDER: Reserving IP location:
>>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k
>>>> BUILDER: Retargeting IP to part kintex7/xc7z020/clg484/-3...
>>>> BUILDER: Building IP...
>>>> [00:00:00] Executing command: vivado -mode batch -source
>>>> /home/kossler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl
>>>> -log axi_mem_64k.log -nojournal
>>>> WARNING: [IP_Flow 19-2162] IP 'axi_mem_64k' is locked:
>>>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>>>> following file is locked:
>>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>>>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for
>>>> the following file is locked:
>>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>>>>
>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002e3a88059f1790a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The problem was I had not changed the ARCH to zynq in viv_=
sim_preamble.mak - it was still at kintex7.=C2=A0 For some reason this work=
ed with 3.14 (Viv 2017.4).=C2=A0 Thanks for your help.<div>Rob</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Feb 20, 2020 at 10:48 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.p=
endlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Try removing a=
ll xml files you have in your OOT=C2=A0IP directory.</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 20, 2020 at=
 10:22 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"au=
to">Unfortunately, I already tried that but no luck.=C2=A0</div></div><div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Feb 20, 2020 at 9:54 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmai=
l.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><font co=
lor=3D"#b45f06">/home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_bloc=
k_txarb_tb/build-ip/<br></font></div><div><br></div><div>Wipe that whole di=
rectory and try it again. If you want to be selective and save some time yo=
u can wipe only the axi_mem_64k directory.<br></div></div><br><div class=3D=
"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
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
ont><br></div></div></div></blockquote></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002e3a88059f1790a8--


--===============2175383281080728130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2175383281080728130==--

