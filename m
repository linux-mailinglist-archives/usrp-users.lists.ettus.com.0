Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D14F3B78
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2019 23:33:54 +0100 (CET)
Received: from [::1] (port=56142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSqLg-0002Vy-Ph; Thu, 07 Nov 2019 17:33:52 -0500
Received: from mail-io1-f48.google.com ([209.85.166.48]:42520)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1iSqLd-0002IR-26
 for usrp-users@lists.ettus.com; Thu, 07 Nov 2019 17:33:49 -0500
Received: by mail-io1-f48.google.com with SMTP id g15so4137343iob.9
 for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2019 14:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4KCgQ7VFZeekuM7bo09ecR2Dvz57DlkLk3oZscpeBKA=;
 b=cVTbjuSF48vsvRl+TLosMsg8lgLzlwg1MUQc42FJrYIkAJzFgE01Nf4nYwPlEruTET
 iF4fb611FW2a6zCconpZ4HulzFoGzGLKRskDjFhp8f7n/E67Vx+04v13oCE6fdkCM/3K
 6fSndXREmLOWKAMkwqwLwMVtSeOin0oy9pvKV/U1PzElUVRmA+K90RsTq01ENdwC/W4q
 FlRVoov4Fh9Pzi2AjOCBvk2CoJAGgHkvjPVSCELXd3aQXqeSTKsF3W2LwwXZLvXcFMll
 yTWOgsvZbDq8OtTYPZUnxbQk44BEK++ph1MnwU6N+rArkdkcUb9ukx325nlZfw9b5oip
 epVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4KCgQ7VFZeekuM7bo09ecR2Dvz57DlkLk3oZscpeBKA=;
 b=NKN3GxCuMyFB+B2c/lFec67xtvWLENkUzn8QCzpGHsitCTk1sFPTnbFDIUZE9uLKPF
 VjBceD+IHVgW91dgwBsOL9XOeE5gUKIPIFjtKjZZPW6aVv7K8cspiVSlf0fuZ/aoBN1C
 8b8HehQZJ8o+JvMb6iQK+nX6objCtVP2e+n+6FF3FnZRGoSnulaT5ByHlwhSE43YtLly
 eETulw82NK8eG7F1nOlGG/8ckICuV56eeU8h+/LryKod/AMt0cCQnVoa836IAeUzxJb0
 koPFdGCU9HBOl++J0sxebALf8/E2L/j1Ezv6+3OVNnfb5Fk/RGi9mkFsiF8X1Qhr/EDL
 zAog==
X-Gm-Message-State: APjAAAUPWoRYB4cKOHUenNcGP8OG40nYt+l4oJIHjrfdwq7zdxf0bzt+
 h2Q7r1HilX7qyrBpaYGGcCJGiRwwSCsru+6nXT+HIw==
X-Google-Smtp-Source: APXvYqzYer7uJ451NluY0mdpr9fBuPDc2DE6yPCbIbNp1oQMjZHsEtoTL1g/zSh5JNPXOHoyyzQ61eZUxYsZhdZ5ONk=
X-Received: by 2002:a5d:87d7:: with SMTP id q23mr6327649ios.304.1573165988124; 
 Thu, 07 Nov 2019 14:33:08 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK3V1J+r2Vrf1gw=-Ok=L9OoAks-oqkBPFqtcnRusLomw@mail.gmail.com>
In-Reply-To: <CALY+5sK3V1J+r2Vrf1gw=-Ok=L9OoAks-oqkBPFqtcnRusLomw@mail.gmail.com>
Date: Thu, 7 Nov 2019 14:32:37 -0800
Message-ID: <CA+JMMq9wAx+ML3=AsrSjyi+-E0gQrub0UnV8BC_wS7+ypANkFg@mail.gmail.com>
To: Jonathan Lockhart <jlockhartrt@gmail.com>
Subject: Re: [USRP-users] Receiving IO Block Error when Using RFNoC Split
 Stream
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9041724729441401669=="
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

--===============9041724729441401669==
Content-Type: multipart/alternative; boundary="000000000000e520140596c93f5a"

--000000000000e520140596c93f5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you be more specific about what your flowgraph looks like?

On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Greetings,
>
> I was wondering if anyone had encountered the following error and had a
> way to fix it?
>
> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
> UHD_3.14.1.HEAD-0-g0347a6d8
> [INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...
> [INFO] [E300] FPGA image loaded
> [INFO] [E300] Detecting internal GPS
> .... [INFO] [E300] GPSDO found
> [INFO] [E300] Initializing core control (global registers)...
>
> [INFO] [E300] Performing register loopback test...
> [INFO] [E300] Register loopback test passed
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000=
)
> [WARNING] [RFNOC] Can't find a block controller for key SplitStream, usin=
g
> default block controller!
> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
> 0x5757000000000000)
> [ERROR] [UHD] Exception caught in safe-call.
>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
>   at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_01_Port_21) no response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =
=3D
> long long unsigned int]
>   at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Traceback (most recent call last):
>   File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
>     main()
>   File "rfnoc_fosphor_network_usrp.py", line 272, in main
>     tb =3D top_block_cls(fft_size=3Doptions.fft_size,
> fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptions.gain,
> host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_rate,
> tdecay=3Doptions.tdecay, trise=3Doptions.trise)
>   File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
>     self.device3 =3D variable_uhd_device3_0 =3D
> ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
> "master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) ))
>   File
> "/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/ettus_swig=
.py",
> line 1307, in make
>     return _ettus_swig.device3_make(*args, **kwargs)
> RuntimeError: EnvironmentError: IOError: [0/SplitStream_0] sr_read64()
> failed: EnvironmentError: IOError: Block ctrl (CE_01_Port_21) no response
> packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =
=3D
> long long unsigned int]
>   at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> This is only occurring when I use the split stream block in RFNoC. I have
> tried the fixes in [1] but unfortunately they have not helped. Also, fix =
1,
> I can't seem to before b/c I am missing the file
> rfnoc_ce_auto_inst_<device>.v  as shown from the output when attempting a
> "find" command in Ubuntu.
>
> find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file or direct=
ory
>
> I ran it on both ~/* and /* with no luck.
>
> Regards,
> Jon Lockhart
>
> [1] https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e520140596c93f5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you be more specific about what your flowgraph looks l=
ike?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was wondering if =
anyone had encountered the following error and had a way to fix it?</div><d=
iv><br></div><div>[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA image: /home/root=
/localinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO] [E30=
0] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO] [E30=
0] Initializing core control (global registers)...<br><br>[INFO] [E300] Per=
forming register loopback test... <br>[INFO] [E300] Register loopback test =
passed<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000=
00000000)<br>[WARNING] [RFNOC] Can&#39;t find a block controller for key Sp=
litStream, using default block controller!<br>[INFO] [0/SplitStream_0] Init=
ializing block control (NOC ID: 0x5757000000000000)<br>[ERROR] [UHD] Except=
ion caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~=
ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uhd::endianness_=
t)1u]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_ifa=
ce.cpp:52<br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOE=
rror: Block ctrl (CE_01_Port_21) no response packet - AssertionError: bool(=
buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ac=
k(bool, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)=
1u; uint64_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.=
1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br><br>Traceback (most recent=
 call last):<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line=
 283, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_=
fosphor_network_usrp.py&quot;, line 272, in main<br>=C2=A0 =C2=A0 tb =3D to=
p_block_cls(fft_size=3Doptions.fft_size, fpga_path=3Doptions.fpga_path, fre=
q=3Doptions.freq, gain=3Doptions.gain, host_ip_addr=3Doptions.host_ip_addr,=
 samp_rate=3Doptions.samp_rate, tdecay=3Doptions.tdecay, trise=3Doptions.tr=
ise)<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 43, in =
__init__<br>=C2=A0 =C2=A0 self.device3 =3D variable_uhd_device3_0 =3D ettus=
.device3(uhd.device_addr_t( &quot;,&quot;.join((&#39;type=3De3x0&#39;, &quo=
t;master_clock_rate=3D%d,fpga=3D%s&quot; % (samp_rate,fpga_path))) ))<br>=
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
"https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F" targe=
t=3D"_blank">https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_err=
or.3F</a></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e520140596c93f5a--


--===============9041724729441401669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9041724729441401669==--

