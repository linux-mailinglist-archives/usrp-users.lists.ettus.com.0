Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AF93B0CAA
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 20:14:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D70B6384AD4
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 14:14:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="OG4kNcGE";
	dkim-atps=neutral
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 6094F384653
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 14:13:15 -0400 (EDT)
Received: by mail-vs1-f51.google.com with SMTP id x12so8628vsp.4
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 11:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5XKtHs6EJABIvXFzxVKiO5cqmxJlgvW21CI5DKCoM5w=;
        b=OG4kNcGENXOxXwm7tbBVVhIcwbnY7gUg3F8aHcqDHptgWn6NX40KglBVO3mbXoODdh
         /r7YnBX6/4q4nkaZeRL/SgkOZh7D1rMCDgJBsaMgHQCep9kQeIKDaQgxgLwFv1p9gkNv
         HgzEOKgyQRfNtI/clWu4HKtZR1i0xB87wOjGaJ5JYfBpQSyRo6xL+m/BfJX4l2nXH8q2
         XZVwNMYwBxzLCxkwNj9HAy7390casEotT4rb7UnqKvPASaNYQh43N+zH5mR9uawwHb7+
         PvKHb7kkMwPEWSR3/HhPM+KRQxupZYcb2+GWK6O/U9OZTilwJ2hrJrInmrbknSlAvA0i
         5yoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5XKtHs6EJABIvXFzxVKiO5cqmxJlgvW21CI5DKCoM5w=;
        b=RUPlriK7cZDEFkgVhz+x0xDGA3x8n0dbsQlQ4btsgcPtstcmiF1ynOFJMy0a98K69S
         bOUE5pWLwTH14qO12bwFs5RrVJhogvnBJSumvrl94OnhT2v+wC9CkXM12N27TNWKeBIv
         l56t0z2xXXgFzUD7EBBrRGhBpRPkzM8qRgaw9dVR/Uwoxa6pYRaeV+5cklWep0Lxg8+e
         6i9ROgOA/30b8kFqjLl3vQeUgAlHJbT0WRIT1ui1DncHAxQr5szFbETmcs79dopFimT6
         je5Y+88MTUtpenEu53S2GQcQWsynnzC694pjr/audLbgRMl3O6rCopYbMvbuv2ZXCcpb
         tbRA==
X-Gm-Message-State: AOAM530DoGKhrayDQr7Ar0iiPmOt4/JooD+Ty5XN+gxivNCur+lRYPR5
	m5hDJWiAIVAkwSxWg1cL89fADoS/LvoSNbMO0CH8O9wFqZnQzu2o
X-Google-Smtp-Source: ABdhPJwEjSlZnZPq1y59V5MkJradgFNPccgW63Mi4i4e9h4rLM6TuSN7L2lEPCczQqEKI5umrjgdQDiuRlgfu7O/UXs=
X-Received: by 2002:a05:6102:11b:: with SMTP id z27mr23666803vsq.8.1624385594788;
 Tue, 22 Jun 2021 11:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <0d826d5c-bd63-51a3-1822-b02240199638@olifantasia.com>
In-Reply-To: <0d826d5c-bd63-51a3-1822-b02240199638@olifantasia.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 22 Jun 2021 14:12:39 -0400
Message-ID: <CAL7q81sET5pTz5pcMHao6hZNePyO6fDLq_6Gqncgyio7Wg0PCw@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: 3S626TOBZGZ5ZKW23NNJAHWZAAET7UT6
X-Message-ID-Hash: 3S626TOBZGZ5ZKW23NNJAHWZAAET7UT6
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 rfnoc_rx_to_file Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3S626TOBZGZ5ZKW23NNJAHWZAAET7UT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7041841273439588627=="

--===============7041841273439588627==
Content-Type: multipart/alternative; boundary="0000000000005b20f905c55ebe8e"

--0000000000005b20f905c55ebe8e
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

From your logs, it looks like the E310 locally is running UHD 3.15, but
your host computer is running UHD 4.0. You need to run the same version of
UHD on both the host and device. You should image your SD card to UHD 4.0
using this file:
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e310_sg1_sdimg_default-v4.0.0.0.zip
.

Jonathon

On Mon, Jun 21, 2021 at 11:48 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> Hi,
>
> I am trying to run the RFNoC example rfnoc_rx_to_file on a E310 sg1.
>
> When I run it directly on the E310 hardware it succeeds.
> But if I run it from a host-computer (connected to the E310 over
> ethernet) it fails with:
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function
> 'set_device_id'
>
> The only place I found that does set_device_id is in
> host/lib/usrp/mpmd/mpmd_mb_iface.cpp
>
> mpmd_mboard_impl::mpmd_mb_iface::mpmd_mb_iface(
>      const uhd::device_addr_t& mb_args, uhd::rpc_client::sptr rpc)
>      : _mb_args(mb_args), _rpc(rpc),
> _link_if_mgr(xport::mpmd_link_if_mgr::make(mb_args))
> {
>      _remote_device_id = allocate_device_id();
>      UHD_LOG_TRACE("MPMD::MB_IFACE", "Assigning device_id " <<
> _remote_device_id);
>      _rpc->notify_with_token("set_device_id", _remote_device_id);
> }
>
>
> But I am not sure what this code does, or why it is run and fails here.
>
> Here is the output of the failing remote and succeeding local runs:
>
> Running from a host-computer fails:
> nldudok1@rojo:/opt/uhd40/src/uhd40/host/examples$
> /opt/uhd40/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0
>
> Creating the RFNoC graph with args: ...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-133-g7ec04886
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>
> mgmt_addr=192.168.1.102,type=e3xx,product=e310_sg1,serial=F661C4,claimed=False,addr=192.168.1.102
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function
> 'set_device_id'
>
>
> Running directly on the E310 succeeds:
> root@ni-e31x:~# /usr/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0
> Creating the USRP device with: ...
> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=F661C4,claimed=False
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [MPM.PeriphManager] init() called with device args
> `product=e310_sg1,mgmt_addr=127.0.0.1'.
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> Using radio 0, channel 0
> Setting RX Rate: 1.000000 Msps...
> Actual RX Rate: 1.000000 Msps...
>
> Setting RX Freq: 0.000000 MHz...
> Actual RX Freq: 70.000000 MHz...
>
> Samples per packet: 2044
> Using streamer args: block_id=0/Radio_0,block_port=0,spp=2044
> Press Ctrl + C to stop streaming...
> Issuing stream cmd
> Issuing stop stream cmd
>
> Done!
>
> Thanks in advance for any clue.
>
> Best regards,
>
> Martin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005b20f905c55ebe8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>From your logs, it looks lik=
e the E310 locally is running UHD 3.15, but your host computer is running U=
HD 4.0. You need to run the same version of UHD on both the host and device=
. You should image your SD card to UHD 4.0 using this file:=C2=A0<a href=3D=
"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e310_=
sg1_sdimg_default-v4.0.0.0.zip">https://files.ettus.com/binaries/cache/e3xx=
/meta-ettus-v4.0.0.0/e3xx_e310_sg1_sdimg_default-v4.0.0.0.zip</a>.</div><di=
v><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jun 21, 2021 at 11:48 AM Martin &lt;=
<a href=3D"mailto:usrp-users-list@olifantasia.com">usrp-users-list@olifanta=
sia.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi,<br>
<br>
I am trying to run the RFNoC example rfnoc_rx_to_file on a E310 sg1.<br>
<br>
When I run it directly on the E310 hardware it succeeds.<br>
But if I run it from a host-computer (connected to the E310 over <br>
ethernet) it fails with:<br>
<br>
Error: rpc::timeout: Timeout of 2000ms while calling RPC function <br>
&#39;set_device_id&#39;<br>
<br>
The only place I found that does set_device_id is in<br>
host/lib/usrp/mpmd/mpmd_mb_iface.cpp<br>
<br>
mpmd_mboard_impl::mpmd_mb_iface::mpmd_mb_iface(<br>
=C2=A0 =C2=A0 =C2=A0const uhd::device_addr_t&amp; mb_args, uhd::rpc_client:=
:sptr rpc)<br>
=C2=A0 =C2=A0 =C2=A0: _mb_args(mb_args), _rpc(rpc), <br>
_link_if_mgr(xport::mpmd_link_if_mgr::make(mb_args))<br>
{<br>
=C2=A0 =C2=A0 =C2=A0_remote_device_id =3D allocate_device_id();<br>
=C2=A0 =C2=A0 =C2=A0UHD_LOG_TRACE(&quot;MPMD::MB_IFACE&quot;, &quot;Assigni=
ng device_id &quot; &lt;&lt; <br>
_remote_device_id);<br>
=C2=A0 =C2=A0 =C2=A0_rpc-&gt;notify_with_token(&quot;set_device_id&quot;, _=
remote_device_id);<br>
}<br>
<br>
<br>
But I am not sure what this code does, or why it is run and fails here.<br>
<br>
Here is the output of the failing remote and succeeding local runs:<br>
<br>
Running from a host-computer fails:<br>
nldudok1@rojo:/opt/uhd40/src/uhd40/host/examples$ <br>
/opt/uhd40/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; <br>
UHD_4.0.0.0-133-g7ec04886<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3D192.168.1.102,type=3De3xx,product=3De310_sg1,serial=3DF661C4,cl=
aimed=3DFalse,addr=3D192.168.1.102<br>
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
Error: rpc::timeout: Timeout of 2000ms while calling RPC function <br>
&#39;set_device_id&#39;<br>
<br>
<br>
Running directly on the E310 succeeds:<br>
root@ni-e31x:~# /usr/lib/uhd/examples/rfnoc_rx_to_file --duration 1.0<br>
Creating the USRP device with: ...<br>
[INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
UHD_3.15.0.0-0-gaea0e2de<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3DF661C4,claime=
d=3DFalse<br>
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`product=3De310_sg1,mgmt_addr=3D127.0.0.1&#39;.<br>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)<br=
>
[INFO] [0/Radio_0] Performing CODEC loopback test...<br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
[INFO] [0/Radio_0] Performing CODEC loopback test...<br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
Using radio 0, channel 0<br>
Setting RX Rate: 1.000000 Msps...<br>
Actual RX Rate: 1.000000 Msps...<br>
<br>
Setting RX Freq: 0.000000 MHz...<br>
Actual RX Freq: 70.000000 MHz...<br>
<br>
Samples per packet: 2044<br>
Using streamer args: block_id=3D0/Radio_0,block_port=3D0,spp=3D2044<br>
Press Ctrl + C to stop streaming...<br>
Issuing stream cmd<br>
Issuing stop stream cmd<br>
<br>
Done!<br>
<br>
Thanks in advance for any clue.<br>
<br>
Best regards,<br>
<br>
Martin<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005b20f905c55ebe8e--

--===============7041841273439588627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7041841273439588627==--
