Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68112F3B56
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2019 23:23:00 +0100 (CET)
Received: from [::1] (port=54042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSqB3-0001nL-Je; Thu, 07 Nov 2019 17:22:53 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:42764)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iSqAz-0001is-Cf
 for usrp-users@lists.ettus.com; Thu, 07 Nov 2019 17:22:49 -0500
Received: by mail-lj1-f176.google.com with SMTP id n5so4035091ljc.9
 for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2019 14:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vLXBSdpzbpRjdW3UMQALqZ03vc1rV60hZag9/HLR55s=;
 b=inL6emGDXu0Mz3g8qdOqBBcMiTe87sY4+yVYenm/S8zt3DzJqaXUyE4gqyscRZgZ6M
 fGfG33c3PjMgCnTVAItGOgoL/9VvUd8ZSoY+Gqg0q6qd7w7hdAjRXvgAsU1jiSVKFIgC
 i6ocJfWsZE6zFDq94HIp1MtBlg1fPDnIZL5Ff84XTOBxa04mcEp1Z/AD4vqArnhHZ41x
 bqV4fOaYTCrVsxzRpuqEqTi/sY527GCsxzhs8my42AeSRucxZSGN1JUbROt59XMR4Yha
 6aU/DTCq7K8zj2N6yH3QPW5n3sfyQFqOH0I0ZpT01+ZsTtLjjZ2yMPqJake8E+GJaJNm
 IAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vLXBSdpzbpRjdW3UMQALqZ03vc1rV60hZag9/HLR55s=;
 b=n33kheeSN/ZLT+wnpEguGQuV22zRwF5Ht2WyrPT87Joa/0QDRVJb9NoHyOhcFi5Y5K
 FSacMy2SjTCVMRIgIXf27PQDaYVcuUjWdy2iEUKqj1BgtDEg545CxedlEDxzRna8uYB9
 0Tvri0ZnomHvM61AB/JN+pAGwhKj8ni8504IBG+rH/nEdOtP1jWT1xFTsnrLc9Py2kV9
 3DUiOJdv8vdJznNPpvO+FgEVvSUlezaWt1AyCf6XM4PTdO9QmMlFQQ4/N8K/S/jsy0o3
 eg3f7bzB1Mn23plCz2zxpvE+4jcv7iWe43/JgOFm1PHc/Nnm3VOLrU2a8UQ3lW9ygl/1
 3AgA==
X-Gm-Message-State: APjAAAX98FBBksO4GgpkWdHi7pQkcVLd5pIF/0+y644mC8rmpeWuOK3e
 9tti27A8tMgwF1+emHM3ee1rsbv7HEJPy0ZzFmMfqqqW
X-Google-Smtp-Source: APXvYqxNJwZ6Rkg6OjQO2Mi6iDHDqIgIUZCQAeSlnulMkRsbixQ7+ys/vF/LJp9w3x8Bq6vry562u+ErJFd0YYQU4hU=
X-Received: by 2002:a2e:8e28:: with SMTP id r8mr4108934ljk.21.1573165327470;
 Thu, 07 Nov 2019 14:22:07 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 7 Nov 2019 17:19:29 -0500
Message-ID: <CALY+5sK3V1J+r2Vrf1gw=-Ok=L9OoAks-oqkBPFqtcnRusLomw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 support@ettus.com
Subject: [USRP-users] Receiving IO Block Error when Using RFNoC Split Stream
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Content-Type: multipart/mixed; boundary="===============2120121373552476648=="
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

--===============2120121373552476648==
Content-Type: multipart/alternative; boundary="0000000000008453420596c918fc"

--0000000000008453420596c918fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings,

I was wondering if anyone had encountered the following error and had a way
to fix it?

[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_3.14.1.HEAD-0-g0347a6d8
[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...
[INFO] [E300] FPGA image loaded
[INFO] [E300] Detecting internal GPS
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test...
[INFO] [E300] Register loopback test passed
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using
default block controller!
[INFO] [0/SplitStream_0] Initializing block control (NOC ID:
0x5757000000000000)
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
  at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_01_Port_21) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =3D
long long unsigned int]
  at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

Traceback (most recent call last):
  File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
    main()
  File "rfnoc_fosphor_network_usrp.py", line 272, in main
    tb =3D top_block_cls(fft_size=3Doptions.fft_size,
fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptions.gain,
host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_rate,
tdecay=3Doptions.tdecay, trise=3Doptions.trise)
  File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
    self.device3 =3D variable_uhd_device3_0 =3D
ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
"master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) ))
  File
"/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/ettus_swig.p=
y",
line 1307, in make
    return _ettus_swig.device3_make(*args, **kwargs)
RuntimeError: EnvironmentError: IOError: [0/SplitStream_0] sr_read64()
failed: EnvironmentError: IOError: Block ctrl (CE_01_Port_21) no response
packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =3D
long long unsigned int]
  at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

This is only occurring when I use the split stream block in RFNoC. I have
tried the fixes in [1] but unfortunately they have not helped. Also, fix 1,
I can't seem to before b/c I am missing the file
rfnoc_ce_auto_inst_<device>.v  as shown from the output when attempting a
"find" command in Ubuntu.

find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file or director=
y

I ran it on both ~/* and /* with no luck.

Regards,
Jon Lockhart

[1] https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F

--0000000000008453420596c918fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was wondering i=
f anyone had encountered the following error and had a way to fix it?</div>=
<div><br></div><div>[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700=
; UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA image: /home/ro=
ot/localinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO] [E=
300] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO] [E=
300] Initializing core control (global registers)...<br><br>[INFO] [E300] P=
erforming register loopback test... <br>[INFO] [E300] Register loopback tes=
t passed<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10=
0000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block controller for key =
SplitStream, using default block controller!<br>[INFO] [0/SplitStream_0] In=
itializing block control (NOC ID: 0x5757000000000000)<br>[ERROR] [UHD] Exce=
ption caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;:=
:~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uhd::endiannes=
s_t)1u]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_i=
face.cpp:52<br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: I=
OError: Block ctrl (CE_01_Port_21) no response packet - AssertionError: boo=
l(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_=
ack(bool, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_=
t)1u; uint64_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.1=
4.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br><br>Traceback (most rece=
nt call last):<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, li=
ne 283, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfno=
c_fosphor_network_usrp.py&quot;, line 272, in main<br>=C2=A0 =C2=A0 tb =3D =
top_block_cls(fft_size=3Doptions.fft_size, fpga_path=3Doptions.fpga_path, f=
req=3Doptions.freq, gain=3Doptions.gain, host_ip_addr=3Doptions.host_ip_add=
r, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.tdecay, trise=3Doptions.=
trise)<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 43, i=
n __init__<br>=C2=A0 =C2=A0 self.device3 =3D variable_uhd_device3_0 =3D ett=
us.device3(uhd.device_addr_t( &quot;,&quot;.join((&#39;type=3De3x0&#39;, &q=
uot;master_clock_rate=3D%d,fpga=3D%s&quot; % (samp_rate,fpga_path))) ))<br>=
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/e=
ttus/ettus_swig.py&quot;, line 1307, in make<br>=C2=A0 =C2=A0 return _ettus=
_swig.device3_make(*args, **kwargs)<br>RuntimeError: EnvironmentError: IOEr=
ror: [0/SplitStream_0] sr_read64() failed: EnvironmentError: IOError: Block=
 ctrl (CE_01_Port_21) no response packet - AssertionError: bool(buff)<br>=
=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint6=
4_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/u=
hd/host/lib/rfnoc/ctrl_iface.cpp:142</div><div><br></div><div>This is only =
occurring when I use the split stream block in RFNoC. I have tried the fixe=
s in [1] but unfortunately they have not helped. Also, fix 1, I can&#39;t s=
eem to before b/c I am missing the file <code>rfnoc_ce_auto_inst_&lt;device=
&gt;.v</code>=C2=A0 as shown from the output when attempting a &quot;find&q=
uot; command in Ubuntu.=C2=A0</div><div><br></div><div>find: =E2=80=98rfnoc=
_ce_auto_inst_e310.v=E2=80=99: No such file or directory</div><div><br></di=
v><div>I ran it on both ~/* and /* with no luck. <br></div><div><br></div><=
div>Regards,</div><div>Jon Lockhart</div><div><br></div><div>[1] <a href=3D=
"https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F">https=
://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F</a></div><di=
v><br></div></div>

--0000000000008453420596c918fc--


--===============2120121373552476648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2120121373552476648==--

