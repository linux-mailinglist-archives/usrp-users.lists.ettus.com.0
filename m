Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46628469F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 09:00:39 +0200 (CEST)
Received: from [::1] (port=48470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPgxh-0002ce-0R; Tue, 06 Oct 2020 03:00:37 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:34584)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <arash.jafari.telecom@gmail.com>)
 id 1kPgxc-0002Rr-L8
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 03:00:32 -0400
Received: by mail-ej1-f44.google.com with SMTP id u8so16047013ejg.1
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 00:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jy+iK2fQg+mlLtT/TiV6YAmvKmxDhWvPAfmGL4S7tRw=;
 b=RjjmnjFKDHTHb248FGoTwgrknqeE/5Q+WDSDAYnZyEYo66MEstj29/Bc7lWw3sVvKO
 CoU5L18qHYlTJ5Y2upkx0UsFAMm3syCNEb6wnkRHijR2gmjJewIv/AOpVr6EvXbHyMgN
 7FFdus17WiFnv61LVYWI0xLz8Vs0vnGsvPh9E2kZxYp5/WVwo7bdQKnaR+//+SqlzFxo
 FuwRgo30Mb10bsKWHO2ZBYBv8hnl/MEybuHCQ+KQvLsmjTbCRYRJIhJDhDtnXsQ93mjL
 CkEhcm1n/jxaiwyL2t/zsYZxcMpReIWSaYEElsi+QuL+Y4ASuERk0xcBLyTziIHBWzYn
 cI0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jy+iK2fQg+mlLtT/TiV6YAmvKmxDhWvPAfmGL4S7tRw=;
 b=JPakCsffizNdU7tz39dcPm+or2WwgkAuuETACaSpGK0e/CbeDsH+OZKTtb/XubW5r4
 lcvjHGGdenJ9y0Bbs5WpI2roLq9oqlmByehoTzHi1CjpOOmuD0rIkd76cguqlKd32hut
 P+asRN13FES3UdZvzjG49MqcDVCQGHhxRWdC5pDAPj0iI4MnMOWjioCWSrF4TJJrE97v
 ZiAFqdxG2bF0GaNdVgSqs2ypqmntWtS09RJlPqEMXSP2XkgfbSGoyklitB4Ert5Ius89
 tCDEYTztt+mObQ7o7YOiv9/80EDdH8bHCYmqiE3haDGiiPHbsTcrDXRU3baybduE2Zaw
 s3yQ==
X-Gm-Message-State: AOAM5317dfkZx537nTOkoSNWMC3+HrsNDgNjPoc/7EOqpUe9nSuFuh+X
 9BIz4S3cBEqj2GYeNtNyABTHv1lCQxYS3RLyIoo5wrOeFdA=
X-Google-Smtp-Source: ABdhPJz3GQfgDokgxJcm6V7P+OIk5Jqng5I3D1WhDkt1x0IkCQYb/h4NkyjJS/xvR9voUAGCJzlFWGCyS4zMeSbmeBA=
X-Received: by 2002:a17:906:2714:: with SMTP id
 z20mr3516488ejc.409.1601967591358; 
 Mon, 05 Oct 2020 23:59:51 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 Oct 2020 08:59:40 +0200
Message-ID: <CANzM3hxtiW0TL5ULrUhhKMfzYrr0z171M8RgtQ7E5-E6pwTb7w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X310 FPGA build problem
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
From: Arash Jafari via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arash Jafari <arash.jafari.telecom@gmail.com>
Content-Type: multipart/mixed; boundary="===============1284995318230772552=="
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

--===============1284995318230772552==
Content-Type: multipart/alternative; boundary="00000000000039832005b0fb25e0"

--00000000000039832005b0fb25e0
Content-Type: text/plain; charset="UTF-8"

Dear All,

I followed the build instruction for generation 3 on the website.
All requirement and dependencies are fulfilled as well as Xilinx Vivado
2019.1.
I would like to save the project in Vivado for future customization,
therefore I ran "*make X310_HG GUI=1*".
The makefile launch Vivado successfully, after configuration is done when I
save the project using *save as *option in the Vivado. as I press generate
bitstream in the Vivado, It automatically starts from synthesis phase, and
it gives me the following errors in the synthesis phase:
My UHD version is currently 3.14 LTS, I tried the FPGA source from
different branches (e.g uhd3.14 LTS and uhd3.15 LTS) always results in the
same errors.



*[Synth 8-1766] cannot open include file
../../lib/io_port2/LvFpga_Chinch_Interface.vh
["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":18]*


*[Synth 8-2715] syntax error near ;
["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":656]*


*[Synth 8-1031] DMA_STREAM_WIDTH is not declared
["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":664]*

*[Common 17-69] Command failed: Synthesis failed - please see the console
or run log file for details*

I'm absolutely blocked, any help is highly appreciated.

Kind Regards,

-----------------------------------------
Dipl.-Ing. Arash Jafari

Phone: +43 650 844 3617
E-mail: arash.jafari.telecom@gmail.com

--00000000000039832005b0fb25e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>I followed the build instruct=
ion for generation 3 on the website.</div><div>All requirement and dependen=
cies are fulfilled as well as Xilinx Vivado 2019.1.</div><div>I would like =
to save the project in Vivado for future customization, therefore I ran &qu=
ot;<b>make X310_HG GUI=3D1</b>&quot;.</div><div>The makefile launch Vivado =
successfully, after configuration is done when I save the project using <b>=
save as=C2=A0</b>option in the Vivado. as I press generate bitstream in the=
 Vivado, It automatically=C2=A0starts from synthesis phase, and it gives me=
 the following errors in the synthesis phase:</div><div>My UHD version is c=
urrently 3.14 LTS, I tried the FPGA source from different branches (e.g uhd=
3.14 LTS and uhd3.15 LTS) always results in the same errors.</div><div><i><=
br></i></div><div><i><br></i></div><div><i>[Synth 8-1766] cannot open inclu=
de file ../../lib/io_port2/LvFpga_Chinch_Interface.vh [&quot;/home/scoe-adm=
/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1=
/imports/usrp3/top/x300/x300.v&quot;:18]<br></i></div><div><i><br></i></div=
><div><i>[Synth 8-2715] syntax error near ; [&quot;/home/scoe-adm/Downloads=
/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/u=
srp3/top/x300/x300.v&quot;:656]<br></i></div><div><i><br></i></div><div><di=
v><i>[Synth 8-1031] DMA_STREAM_WIDTH is not declared [&quot;/home/scoe-adm/=
Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/=
imports/usrp3/top/x300/x300.v&quot;:664]<br></i></div><div><i><br></i></div=
><div><i>[Common 17-69] Command failed: Synthesis failed - please see the c=
onsole or run log file for details</i><br></div><div><br></div><div>I&#39;m=
 absolutely blocked, any help is highly appreciated.</div><div><br></div><d=
iv>Kind Regards,</div><div><br></div>--------------------------------------=
---<br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:monospace,monospace">D=
ipl.-Ing. Arash Jafari</span><font face=3D"monospace, monospace" color=3D"#=
000000" size=3D"2">=C2=A0</font><div><br></div><font color=3D"#000000" size=
=3D"2"><span style=3D"font-family:monospace">Phone: +43 650 844 3617</span>=
<br clear=3D"none" style=3D"font-family:monospace"></font><div><span style=
=3D"font-family:monospace"><font color=3D"#000000" size=3D"2">E-mail: <a hr=
ef=3D"mailto:arash.jafari.telecom@gmail.com" target=3D"_blank">arash.jafari=
.telecom@gmail.com</a></font></span></div></div></div></div></div></div></d=
iv></div></div>

--00000000000039832005b0fb25e0--


--===============1284995318230772552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1284995318230772552==--

