Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E36861A46A3
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 15:16:39 +0200 (CEST)
Received: from [::1] (port=53836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMtWM-0007CQ-FL; Fri, 10 Apr 2020 09:16:34 -0400
Received: from mail-yb1-f180.google.com ([209.85.219.180]:33045)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jMtWI-00077l-PK
 for usrp-users@lists.ettus.com; Fri, 10 Apr 2020 09:16:30 -0400
Received: by mail-yb1-f180.google.com with SMTP id e17so1203030ybq.0
 for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2020 06:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TwIMXdtp2JyHOfi7QyUYAv0sJrRMuuxb02gK9KVVnVE=;
 b=WOJgPa2k81Rqfb6u7j67O4+YvenjduIKv7fWF1hrfaLkP3tFT+Pg0o2iLbloxUINPi
 w+/p6Z6U/k8GjVzJEb2+PitFlZa4IJIQvno+fBRYWpSuFXdgVOr/HsPW4iRo8wwKq274
 DXstgK1ymdth6S55+hccnMhYtA6lCDGeiiv08kIQfIHZ1HS6vFMHFPWfBXNOIIFxTFgW
 M+tQCWUzL5uwvYgvq4oeEGvMtd2x91eUvk7at5av2GWuD/55axA/56idQgGQVt0MgLSj
 /hASooGcwTtjgjkfHEZ0Ezqd6AcTjfTJhNo89R3zbIRrE5VapWExy2/cOJQFVjTyC99u
 H2fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TwIMXdtp2JyHOfi7QyUYAv0sJrRMuuxb02gK9KVVnVE=;
 b=bBQJP7Ss28CU+vX7ttOgp74C8O+yzjey/6j1/5WRY2zV87/FMePkHIJ+rKBmcH30Kr
 QNOv5a/UDcC6NnibvUesgMrI5NcD3M5IdU06AcfmHprmvs2EwmJ4V0L2zbx5BgZtP5cL
 XY+gOwwUWqye06C7efB9AWOfDnwqy12opf9VEdTGvj4vpfeugvqvKTL5+0DAe45Ymth3
 Tp1WHGfJrdGAKuoxP1y+ne5wfcQMD+Us7P1QHYxeWIQ/6mATfgaCi1bWan/s3O9HKxEX
 YBGy4v4CRs27k0ym67wfX0VPidV7TiCyfIqURjHA0qdTjYPfdKTeK+TKyBAp3UAXSR5i
 k0jw==
X-Gm-Message-State: AGi0PuYkrN4ItnoF+/js5W4UT0A/GLgEANPsp2FbAD4PXkv8k7Bxoae0
 MKTfVOdTvC3wzcfkOTYlMwMW11onME+vIQPVMO0=
X-Google-Smtp-Source: APiQypKZJtN3f+gsYeAlQZThYkOKcEr3/DfDNwNgPPEEY1FdsV/QbqlczMQXEFyYPoj0xyD/ZDVB1gwBSKKAR/AoVdU=
X-Received: by 2002:a25:a0ca:: with SMTP id i10mr7021707ybm.281.1586524550127; 
 Fri, 10 Apr 2020 06:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
 <BYAPR03MB4678BE943BAAE738CFFB24B4D3C10@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678BE943BAAE738CFFB24B4D3C10@BYAPR03MB4678.namprd03.prod.outlook.com>
Date: Fri, 10 Apr 2020 08:15:49 -0500
Message-ID: <CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Subject: Re: [USRP-users] E312 fails to run uhd_usrp_probe from host
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3072469395466872559=="
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

--===============3072469395466872559==
Content-Type: multipart/alternative; boundary="0000000000003ce4e805a2ef88f3"

--0000000000003ce4e805a2ef88f3
Content-Type: text/plain; charset="UTF-8"

Francisco,

The FPGA update sounds like a good step. I also notice that the 'addr'
argument you pass seems to be interpreted as a 'mgmt_addr' based on the
[INFO] output. In newer embedded devices like the N3xx, I wouldn't expect
you to be able to successfully run a uhd_usrp_probe over that mgmt address
- you can't pass CHDR packets over the mgmt interface. On the N3xx, I'd
tell you to connect over the SFP+ port(s) and try again. The E312 obviously
doesn't have SFP+ ports, so I think you'd need to set it up to operate in
"network mode" to enable this CHDR streaming over the RJ45. I'm not sure
what the state of network mode is on the E31x in UHD 3.15.

Alternatively, you could try SSH'ing into your E312 over that mgmt port,
and then run the uhd_usrp_probe directly on the device. I'd expect that to
work over the mgmt port every time.

-Sam

On Thu, Apr 9, 2020 at 12:48 PM Minutolo, Lorenzo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Francisco,
> I had the same problem with a brand new N321. Deleting, downloading again
> and reloading the FPGA image from the host did the trick in my case.
> Note: I did't try to reproduce the condition so I'm not 100% sure of
> validity of the solution, just saying it's worth a test.
>
> Best,
> Lorenzo
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Francisco Salomon via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, April 9, 2020 9:36 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] E312 fails to run uhd_usrp_probe from host
>
> Hi all,
> I'm trying uhd_usrp_probe on my host to get information of my E312 (when I
> run it locally on the E312 it's fine), and it fails to get the data with
> the following error:
>
> me@myhost: ~/rfnoc/uhd$ uhd_usrp_probe --args type=e3xx,addr=192.168.3.2
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.3.2,type=e3xx,product=e310_sg3,serial=30D84C7,claimed=False,addr=192.168.3.2
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [ERROR] [MPMD] Failure during block enumeration: RuntimeError: Error
> during RPC call to `request_xport'. Error message: rpc::rpc_error during
> call
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.3.2,product=e310_sg3'.
> [ERROR] [MPM.RPCServer] Uncaught exception in method request_xport :
>  Traceback (most recent call last):
>   File "/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server.py", line
> 182, in new_claimed_function
>     return function(*args)
>   File "/usr/lib/python3.5/site-packages/usrp_mpm/periph_manager/e31x.py",
> line 525, in request_xport
>     assert self.mboard_info['rpc_connection'] in ('local')
> AssertionError
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
> Have you seen this kind of error for E310/E310?
> Does E312 accept requests from the host?
> I did manage to load the FPGA image from the host by running:
> me@myhost:~rfnoc/uhd$ uhd_image_loader --args type=e3xx,addr=192.168.3.2
>
> The sdcard image on the E312 is the one from
> http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15.0.0.zip,
> and I think the UHD version on the E312 matches the one on the host:
> root@ni-e31x-30D84C7:~# uhd_config_info --version
> UHD 3.15.0.0-0-gaea0e2de
> me@myhost: ~/rfnoc/uhd$  uhd_config_info --version
> UHD 3.15.0.HEAD-0-gaea0e2de
>
> Any clue?
> Many thanks!
>
> Francisco
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003ce4e805a2ef88f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Francisco,<div><br></div><div>The FPGA update sounds like =
a good step. I also notice that the &#39;addr&#39;=C2=A0 argument you pass =
seems to be interpreted as a &#39;mgmt_addr&#39; based on the [INFO] output=
. In newer embedded devices like the N3xx, I wouldn&#39;t expect you to be =
able to successfully run a uhd_usrp_probe over that mgmt address - you can&=
#39;t pass CHDR packets over the mgmt interface. On the N3xx, I&#39;d tell =
you to connect over the SFP+ port(s) and try again. The E312 obviously does=
n&#39;t have SFP+ ports, so I think you&#39;d need to set it up to operate =
in &quot;network mode&quot; to enable this CHDR streaming over the RJ45. I&=
#39;m not sure what the state of network mode is on the E31x in UHD 3.15.=
=C2=A0</div><div><br></div><div>Alternatively, you could try SSH&#39;ing in=
to your E312 over that mgmt port, and then run the uhd_usrp_probe directly =
on the device. I&#39;d expect that to work over the mgmt port every time.</=
div><div><br></div><div>-Sam</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 9, 2020 at 12:48 PM Minutolo,=
 Lorenzo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Francisco,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I had the same problem with a brand new N321. Deleting, downloading again a=
nd reloading the FPGA image from the host did the trick in my case.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Note: I did&#39;t try to reproduce the condition so I&#39;m not 100% sure o=
f validity of the solution, just saying it&#39;s worth a test.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Best,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo</div>
<div id=3D"gmail-m_-7104824046358444290appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7104824046358444290divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Francisco Salomon via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, April 9, 2020 9:36 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] E312 fails to run uhd_usrp_probe from host</fo=
nt>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi all,=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I&#39;m trying uhd_usrp_probe on my host to get information of my E312 (whe=
n I run it locally on the E312=C2=A0it&#39;s fine), and it fails to get the=
 data with the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span>me@myhost: ~/rfnoc/uhd$=C2=A0</span>uhd_usrp_probe --args type=3De3xx=
,addr=3D192.168.3.2</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<div>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.15.0.HE=
AD-0-gaea0e2de<br>
</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.3.2,type=3De3xx,product=3De310_sg3,serial=3D30D84C7,claimed=3DF=
alse,addr=3D192.168.3.2<br>
</div>
<div>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
</div>
<div>[ERROR] [MPMD] Failure during block enumeration: RuntimeError: Error d=
uring RPC call to `request_xport&#39;. Error message: rpc::rpc_error during=
 call<br>
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.3.2,product=3De310_sg3&#39;.<br>
</div>
<div>[ERROR] [MPM.RPCServer] Uncaught exception in method request_xport : <=
br>
</div>
<div>=C2=A0Traceback (most recent call last):<br>
</div>
<div>=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server=
.py&quot;, line 182, in new_claimed_function<br>
</div>
<div>=C2=A0 =C2=A0 return function(*args)<br>
</div>
<div>=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/periph_man=
ager/e31x.py&quot;, line 525, in request_xport<br>
</div>
<div>=C2=A0 =C2=A0 assert self.mboard_info[&#39;rpc_connection&#39;] in (&#=
39;local&#39;)<br>
</div>
<div>AssertionError</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Have you seen this kind of error for E310/E310?=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Does E312 accept requests from the host?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
</div>
I did manage to load the FPGA image from the host by running:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span>me@myhost:~rfnoc/uhd$ uhd_image_loader --args type=3De3xx,addr=3D192.=
168.3.2</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The sdcard image on the E312 is the one from=C2=A0<span style=3D"font-famil=
y:Calibri,Arial,Helvetica,sans-serif;color:rgb(0,0,0);background-color:rgb(=
255,255,255);display:inline"><a href=3D"http://files.ettus.com/binaries/cac=
he/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15.0.0.zip" id=
=3D"gmail-m_-7104824046358444290LPlnk528920" target=3D"_blank">http://files=
.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_def=
ault-v3.15.0.0.zip</a>,
 and I think</span><span style=3D"font-family:Calibri,Arial,Helvetica,sans-=
serif;font-size:12pt">=C2=A0the UHD version on the E312 matches the one on =
the host:</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span>root@ni-e31x-30D84C7:~# uhd_config_info --version<br>
</span>
<div>UHD 3.15.0.0-0-gaea0e2de<br>
</div>
<span></span><span>me@myhost: ~/rfnoc/uhd$=C2=A0 u<span>hd_config_info --ve=
rsion<br>
</span>
<div>UHD 3.15.0.HEAD-0-gaea0e2de<br>
</div>
<span></span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Any clue?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Many thanks!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Francisco</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003ce4e805a2ef88f3--


--===============3072469395466872559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3072469395466872559==--

