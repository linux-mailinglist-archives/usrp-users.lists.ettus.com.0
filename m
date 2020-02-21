Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E10E9166E0F
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 04:48:47 +0100 (CET)
Received: from [::1] (port=37720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4zIz-00078w-IQ; Thu, 20 Feb 2020 22:48:45 -0500
Received: from mail-lf1-f45.google.com ([209.85.167.45]:43090)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1j4zIv-0006y3-4A
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 22:48:41 -0500
Received: by mail-lf1-f45.google.com with SMTP id s23so416876lfs.10
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 19:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DNSB52NofcamaObiVfYptj4h1+rOfLbsBqVAJwTxA30=;
 b=BhKVpGKSyR0zBbfoWhS1WDqwQf0fynQ5AXlo0Ano1vo0ogKfFDZ6xsEw8jw5JwzT2A
 ZdvZOZSgR9rdtotkY2WoyyA/5OUgTGe1qE8UqB0HztxVAPcILcHVzBQw9XHUjQ7btvZQ
 0gudnfzm6n1Gufqk+1wmJoYwQ4KuQZYZh1iwJcJGmTZBszDA3Cu/dpF8gG8cx8ARhzHr
 BFwMZ5Zx6/KHsqRUty3OEWYf/xEnh8qulyTRVrOIci0L1OyejQ7FLrP9Wto4VP6iudiU
 1OMVonwIMQrVKPeiVOARgHUSbFHogXcXnTP0o5AWgT2b/qNYgrCn0Eqhk/X+vOpZKsUE
 liVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DNSB52NofcamaObiVfYptj4h1+rOfLbsBqVAJwTxA30=;
 b=tH3MjXYwwQuGpajwo2AQPJqV9c7fx8BL7kOprAA+71LS20vevLIg8PboxxkVGf7KH0
 F59DwYrxNTHt53Nttcw90q1kmouYsOTyWdt9GReeWbYdteJZn32iMmbPHoFg2Bv0IHEf
 f6EdDIIDGwNOFsxl6+R+jKmyfpTVfJQbJLKXM3bFWc2gjGn5VwxD6BLWJ8qeqqhhxUrj
 EdjCB0bprlFAmyDtVdQ9J2O3jfprw9BSl5lzdXF/unnsjIHgjVR1oWVQDmSP+UZdmiZI
 wYdeualMZzuhgBkuB8svymQA4wRH0JzIIBYRubVkuubgTqncGwpuvsbHWuf6QvpV3sUi
 eMeQ==
X-Gm-Message-State: APjAAAWUpflgvaFznu1lR302R6RBN2qiWpDWanBtOp5Q3Me+rRfkYnk6
 QLRl+m29dEjp5d7KKObmfUamhHPpxKzftdi8nhDNBXOz
X-Google-Smtp-Source: APXvYqx36EuxQr7jfdlwGatPOMWO5ZgZETB6lWOMYeslWlyWnIPiRcgvzebvK8ATBUgIEdVlkFzCYCUzF5BY2NmGEik=
X-Received: by 2002:a19:f610:: with SMTP id x16mr18388176lfe.80.1582256879861; 
 Thu, 20 Feb 2020 19:47:59 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR_xTy6MvgwhDqa9aSqXpCtGrK8JadJQoifL65dDcajvA@mail.gmail.com>
 <CA+JMMq8EpTeVBvr8X=mCeBg32_ETmvJrPr5siBok6Sq9bsOJGw@mail.gmail.com>
 <CAB__hTR0RYWOXW-JME5zugCQVuqu1XejgN2MBBZwFfdYZ0_NDw@mail.gmail.com>
In-Reply-To: <CAB__hTR0RYWOXW-JME5zugCQVuqu1XejgN2MBBZwFfdYZ0_NDw@mail.gmail.com>
Date: Thu, 20 Feb 2020 22:47:23 -0500
Message-ID: <CAL7q81sKNQ_gM4_NicTE_w3tQhm4Hr9Xn6ri7P1QDK3svh7SuQ@mail.gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5577394744309876936=="
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

--===============5577394744309876936==
Content-Type: multipart/alternative; boundary="0000000000004493fd059f0de316"

--0000000000004493fd059f0de316
Content-Type: text/plain; charset="UTF-8"

Try removing all xml files you have in your OOT IP directory.

On Thu, Feb 20, 2020 at 10:22 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Unfortunately, I already tried that but no luck.
>
> On Thu, Feb 20, 2020 at 9:54 PM Nick Foster <bistromath@gmail.com> wrote:
>
>>
>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/
>>
>> Wipe that whole directory and try it again. If you want to be selective
>> and save some time you can wipe only the axi_mem_64k directory.
>>
>> On Thu, Feb 20, 2020 at 6:13 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I am having a problem with a Block Memory Generator IP that is working
>>> with 2017.4 but is giving me issues with 2018.3. I have tried to upgrade
>>> the IP as well as re-creating the IP from scratch in 2018.3, but I still
>>> get the same failure (see below).  I have attached the IP created from
>>> scratch in 2018.3.  Any suggestions?  I am not very experienced with FPGA
>>> development in general or Vivado specifically, so it is likely that I am
>>> missing something obvious.
>>>
>>> By the way, I am using the webpack (free) version of Vivado and
>>> attempting to build for the E310.
>>>
>>> Rob
>>>
>>>
>>> kossler@kossler-ThinkPad-P51:~/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb$
>>> make xsim
>>> BUILDER: Checking tools...
>>> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>>> * Python 2.7.17
>>> * Vivado v2018.3 (64-bit)
>>> ========================================================
>>> BUILDER: Building IP axi_mem_64k
>>> ========================================================
>>> BUILDER: Staging IP in build directory...
>>> BUILDER: Reserving IP location:
>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k
>>> BUILDER: Retargeting IP to part kintex7/xc7z020/clg484/-3...
>>> BUILDER: Building IP...
>>> [00:00:00] Executing command: vivado -mode batch -source
>>> /home/kossler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools/scripts/viv_generate_ip.tcl
>>> -log axi_mem_64k.log -nojournal
>>> WARNING: [IP_Flow 19-2162] IP 'axi_mem_64k' is locked:
>>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>>> following file is locked:
>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for
>>> the following file is locked:
>>> /home/kossler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-3/axi_mem_64k/axi_mem_64k.xci
>>>
>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004493fd059f0de316
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try removing all xml files you have in your OOT=C2=A0IP di=
rectory.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Feb 20, 2020 at 10:22 PM Rob Kossler via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div><div dir=3D"auto">Unfortunately, I already tried that but =
no luck.=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Feb 20, 2020 at 9:54 PM Nick Foster &lt;<a=
 href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div><font color=3D"#b45f06">/home/kossler/nd_overhaul/uh=
d_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/<br></font></div><div><b=
r></div><div>Wipe that whole directory and try it again. If you want to be =
selective and save some time you can wipe only the axi_mem_64k directory.<b=
r></div></div><br><div class=3D"gmail_quote"></div><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 20, 2020 at 6:13 PM Ro=
b Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div></div>=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I am having a problem with =
a Block Memory Generator IP that is working with 2017.4 but is giving me is=
sues with 2018.3. I have tried to upgrade the IP as well as re-creating the=
 IP from scratch in 2018.3, but I still get the same failure (see below).=
=C2=A0 I have attached the IP created from scratch in 2018.3.=C2=A0 Any sug=
gestions?=C2=A0 I am not very experienced with FPGA development in general =
or Vivado specifically, so it is likely that I am missing something obvious=
.</div><div><br></div><div>By the way, I am using the webpack (free) versio=
n of Vivado and attempting to build for the E310.</div><div><br></div><div>=
Rob</div><div><br><div><br></div><div>kossler@kossler-ThinkPad-P51:~/nd_ove=
rhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb$ make xsim<br>BUILDER: Ch=
ecking tools...<br>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-g=
nu)<br>* Python 2.7.17<br>* Vivado v2018.3 (64-bit)<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>BUILDER: Building IP axi_mem_64k<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: St=
aging IP in build directory...<br>BUILDER: Reserving IP location: /home/kos=
sler/nd_overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z0=
20clg484-3/axi_mem_64k<br>BUILDER: Retargeting IP to part kintex7/xc7z020/c=
lg484/-3...<br>BUILDER: Building IP...<br>[00:00:00] Executing command: viv=
ado -mode batch -source /home/kossler/uhd/UHD-3.15/uhd/fpga-src/usrp3/tools=
/scripts/viv_generate_ip.tcl -log axi_mem_64k.log -nojournal<br><font color=
=3D"#0b5394">WARNING: [IP_Flow 19-2162] IP &#39;axi_mem_64k&#39; is locked:=
</font><br><font color=3D"#b45f06">CRITICAL WARNING: [filemgmt 20-1366] Una=
ble to reset target(s) for the following file is locked: /home/kossler/nd_o=
verhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484-=
3/axi_mem_64k/axi_mem_64k.xci<br>CRITICAL WARNING: [filemgmt 20-1365] Unabl=
e to generate target(s) for the following file is locked: /home/kossler/nd_=
overhaul/uhd_nd/rfnoc/testbenches/noc_block_txarb_tb/build-ip/xc7z020clg484=
-3/axi_mem_64k/axi_mem_64k.xci</font><br></div></div></div></blockquote></d=
iv><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
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

--0000000000004493fd059f0de316--


--===============5577394744309876936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5577394744309876936==--

