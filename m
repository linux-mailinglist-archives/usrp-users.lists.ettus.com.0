Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4C6878AAE
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 23:25:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 975CC385AF9
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 18:25:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710195927; bh=Y8sLzrKxSZ/cg09Yo3s2bEB32Fivr0bjd2KaDsYCO8s=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EA2Dkul80w5Ea4A9mG0ijaQQFNZ4EYzDpRLR4iMLl76Kgk7wY5QSe0SdaGNgLCnrj
	 bCw4VKuffLgpsHemKft9SMsV9I+PLrl1q21FjjP9cqFpjWoBWY/bhK+xXYQNy3wULT
	 JZT+HVpyuswxBfsOvzIAkzQScE2GUXSbWsTs/31CvAMyhvJV83+XZRBzIqVy3OTuiu
	 eqjsabjCfJvGJF8ETmPfK0KlAZmuwuQDoHtPbFz7ZLnzTjA2NaHHXdfKgyAqfG8ThI
	 MxCPA57utGS+lSWi9Rh0bc0M1/PepPfGSKms4b6a6Qi6pqZnG3JYi0jUpdr5A9/Lc1
	 6zqOoKeHwI/rQ==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C58293854D4
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 18:25:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WuFseChA";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5684f95cc9bso3076419a12.1
        for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 15:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1710195906; x=1710800706; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OFkg2y5wBaxd9+MO+bB0DYGvXWFmFhwqHbn0mJzUyS4=;
        b=WuFseChAT05CrLFkYAzc95Kh261j9m5C4MMrwsD9Cwcq3vQt118Kf1jx/LtYSFcWv7
         7e3Lv4yeoefpUDcDjl12jO4tNJkZ0z1mjX+M1Vo14CMTQrWw9UzRmySNTPVr/sl62Zw3
         eQhPdPia12cYZ8I1CUPSeqs7OskwndGMVKr8Jhi4i4gfH4ihOCYzYh/oJ/nBiILmsHP8
         zXs9Ve77Tvh4D/AV5a9hZ03Pw1gSzFld4Z0Sya33+MUk0/Gqy+AQzBJ3/r3O8HWBVdj9
         PX6zxtjn6TUgGA0RWGdesrG8Caxiezii4XX18UL4L7XcnejAvdvBSChxHg1ppZkOhv1J
         L1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710195906; x=1710800706;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFkg2y5wBaxd9+MO+bB0DYGvXWFmFhwqHbn0mJzUyS4=;
        b=b5GQhR0fVgA5U9yxfuUJzvtFIOvKmnjNCm/TlOsPIfuxEotireoKrFF5Du8MU0/vOL
         7tAoDwYMc3d0ah2umBpSHi1JX/HsZ2RdTaCX/MFKFXUVlQ2cuMBDSQI9Q7QhUFbIdc9/
         So/nvBardWwlg1f5y2L5mi/KIbApFQx+8L1n3SXonU3LJzpbTd3t8TtxFAmFB91HYZVB
         1T92exjdjZg34zeqbY1TGCuD0nASivOWhp5RgTsaRRxmNUR8t70bp22wclifwoQXvG8Q
         mg2sdvmuugUz6v8YHkGMgqQYuh2+BdW/Dwc27C/xsuSBb50ZLsaecU83Rjw7BJVKuZSy
         or/w==
X-Gm-Message-State: AOJu0Yxsz5u3vDp8KFQNeQfc/l59xT6u2j8hRCp5JPX1J97Bm0fPWH+4
	M0d/OqtDJ82d2t6wwMt1uszjAs3yi6WXtgDaGjwkLETMxHx0VJzV17Epjr8aUMmVrEUNcVrQ3cX
	QLjuGW23KfTgNwsdtI074JE2FIadqyf8B3gpRKpcOgh8VW8E=
X-Google-Smtp-Source: AGHT+IE8UfGq/w3Df8QHgcIEH2ABqeJFXX0KPvrYaP4GITEiDIokIz90V8XkB9y0BhpTwpqfGPTLTPPnuTzVgj+h25g=
X-Received: by 2002:a50:c053:0:b0:566:be4a:21ec with SMTP id
 u19-20020a50c053000000b00566be4a21ecmr9135268edd.16.1710195906400; Mon, 11
 Mar 2024 15:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE@lists.ettus.com>
In-Reply-To: <u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE@lists.ettus.com>
Date: Mon, 11 Mar 2024 18:24:55 -0400
Message-ID: <CAB__hTQUkt9LKwWQuMzQ1Z4mckxV90TWAmZbU+Stcu6ij6n1oQ@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: KLAB2BNOC3I5SOVD3CYG2NM5UDYFZ4DU
X-Message-ID-Hash: KLAB2BNOC3I5SOVD3CYG2NM5UDYFZ4DU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLAB2BNOC3I5SOVD3CYG2NM5UDYFZ4DU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1527441481703425205=="

--===============1527441481703425205==
Content-Type: multipart/alternative; boundary="0000000000007ff2d606136a0380"

--0000000000007ff2d606136a0380
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zack,
I don't know the answers to your issues, but I'm wondering if you can just
use benchmark_rate rather than your custom code to evaluate performance. If
benchmark_rate can't run at the rate you want, it is unlikely that your
custom code will succeed.
Rob

On Mon, Mar 11, 2024 at 2:35=E2=80=AFPM <zackkomo@utexas.edu> wrote:

> Hello!
>
> I am having trouble using a USRP X410 to capture some high-rate data. I
> would appreciate any insight or help. Below is a diagram of how our x410 =
is
> connected to our host device.
>
> *---------------------*                 *---------------------*
>
> |   | NIC QSFP Port 0 |                 | QSFP28 Port 1   |   |
>
> |   |    ens1f0np0    <>---------------<>       sfp1      |   |
>
> |   |  192.168.20.1   |                 |  192.168.20.2   |   |
>
> |   |-----------------|                 |-----------------|   |
>
> | H | NIC QSFP Port 1 |                 | QSFP28 Port 0   | X |
>
> | O |    ens1f1np1    <>---------------<>       sfp0      | 4 |
>
> | S |  192.168.10.1   |                 |  192.168.10.2   | 1 |
>
> | T |-----------------|  *-----------*  |-----------------| 0 |
>
> |   | Ethernet Port 1 |  |Router     |  |  Ethernet Port  |   |
>
> |   |     eno8403     <>-|192.168.1.1|-<>      eth0       |   |
>
> |   |  192.168.1.20   |  |           |  |  192.168.1.19   |   |
>
> *---------------------*  *-----------*  *---------------------*
>
> When I run $ uhd_find_devices
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
>     serial: [serial number]
>
>     addr: 192.168.20.2
>
>     claimed: False
>
>     fpga: CG_400
>
>     mgmt_addr: 192.168.1.19
>
>     mgmt_addr: 192.168.10.2
>
>     mgmt_addr: 192.168.20.2
>
>     name: [name]
>
>     product: x410
>
>     type: x4xx
>
> I am using two images for the FPGA, each of which has different
> capabilities:
>
> - UC_200, which on the wiki lists Port 0 as "unused" and can achieve up t=
o
> 250 Msps per channel.
>
> - CG_400, which lists both ports on the wiki as "100 GbE" and can achieve
> up to 500 Msps per channel.
>
> I am using UHD's C++ API to instruct the x410. My capture process tries t=
o
> call "recv" as soon as possible without waiting to write the previous
> buffer to a file. The psudocode is as follows:
>
> - Initialize "circular" buffer of arrays. Each array is "spb" samples
> long, and there are N such buffers.
>
> - Start a "writing" thread that writes data from a queue to a file.
>
> - Set the number of samples I need (nsamps_requested), set the current
> number of samples to 0 (nsamps),
>
> - set the current buffer index to 0 (buff_idx)
>
> - set up rx_streamer to start 0.1 seconds in the future and issue
> STREAM_MODE_START_CONTINUOUS command.
>
> While (nsamps <=3D nsamps_requested || not_error)
>
> -Get a pointer to the buffer at buff_idx
>
> -num_rx_samps <- recv(buffer...)
>
> -check metadata returned object
>
> -add the buffer to the queue, increment the buffer index
>
> - stop streaming
>
> When I use the process above, I can get very long captures using the
> UC_200 image, with 250 Msps, and by parsing the args
> "addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19" when creating the multiusr=
p
> pointer.
>
> When I switch to the CG_400 image, I can barely record a few seconds wort=
h
> of data. I parse the args
> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19"=
. I
> changed the logger level to get a better idea of what might be going on,
> below are some outputs for spb at 5000:
>
> [DEBUG] [RFNOC::MGMT] Established a route from EPID=3D4 (SW) to EPID=3D3
>
> [DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
>
> [DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3D3
>
> [DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3D3
>
> [DEBUG] [0/Radio#0] spp value 2032 exceeds MTU of 8016! Coercing to 1988
>
> ....
>
> [DEBUG] [RxStreamer#0] Received overrun message on port 0
>
> After the last logger message, I catc this in my "check metadata returned
> object" step and stop the loop.
>
> When this happens, I sometimes get 0 samples back, and sometimes get less
> than the samples per buffer I feed the recv command. I also found that
> while waiting for the issued command to take effect, instead of adding
> empty buffers to my queue, I check for ERROR_CODE_TIMEOUT and just contin=
ue
> the while loop.
>
> I would imagine if I can handle half the rate at 250 Msps for minutes of
> continuous capture, going to 500 Msps I could get more than a couple
> seconds. Is this because the UC_200 image has 4GiB of DRAM and the CG_400
> doesn't list any on the wiki? Is there something better I can be doing
> about the spb (I tried larger and smaller, with some luck around 50000
> spb)? Am I properly configuring the x410 to use both QSFP28 ports for the
> CG_400 image?
>
> Thanks!
>
> Zack
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007ff2d606136a0380
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Zack,<div>I don&#39;t know the answers to your issues, =
but I&#39;m wondering if you can just use benchmark_rate rather than your c=
ustom code to evaluate performance. If benchmark_rate can&#39;t run at the =
rate you want, it is unlikely that your custom code will=C2=A0succeed.</div=
><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Mar 11, 2024 at 2:35=E2=80=AFPM &lt;<a href=3D"mail=
to:zackkomo@utexas.edu">zackkomo@utexas.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p>Hello!</p><p>I am having trou=
ble using a USRP X410 to capture some high-rate data. I would appreciate an=
y insight or help. Below is a diagram of how our x410 is connected to our h=
ost device.</p><pre><code>*---------------------*                 *--------=
-------------* </code></pre><pre><code>|   | NIC QSFP Port 0 |             =
    | QSFP28 Port 1   |   | </code></pre><pre><code>|   |    ens1f0np0    &=
lt;&gt;---------------&lt;&gt;       sfp1      |   | </code></pre><pre><cod=
e>|   |  192.168.20.1   |                 |  192.168.20.2   |   | </code></=
pre><pre><code>|   |-----------------|                 |-----------------| =
  | </code></pre><pre><code>| H | NIC QSFP Port 1 |                 | QSFP2=
8 Port 0   | X | </code></pre><pre><code>| O |    ens1f1np1    &lt;&gt;----=
-----------&lt;&gt;       sfp0      | 4 | </code></pre><pre><code>| S |  19=
2.168.10.1   |                 |  192.168.10.2   | 1 | </code></pre><pre><c=
ode>| T |-----------------|  *-----------*  |-----------------| 0 | </code>=
</pre><pre><code>|   | Ethernet Port 1 |  |Router     |  |  Ethernet Port  =
|   | </code></pre><pre><code>|   |     eno8403     &lt;&gt;-|192.168.1.1|-=
&lt;&gt;      eth0       |   | </code></pre><pre><code>|   |  192.168.1.20 =
  |  |           |  |  192.168.1.19   |   | </code></pre><pre><code>*------=
---------------*  *-----------*  *---------------------*  </code></pre><p>W=
hen I run $ uhd_find_devices </p><pre><code>[INFO] [UHD] linux; GNU C++ ver=
sion 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pr=
e><pre><code>--------------------------------------------------</code></pre=
><pre><code>-- UHD Device 0</code></pre><pre><code>------------------------=
--------------------------</code></pre><pre><code>Device Address:</code></p=
re><pre><code>    serial: [serial number]</code></pre><pre><code>    addr: =
192.168.20.2</code></pre><pre><code>    claimed: False</code></pre><pre><co=
de>    fpga: CG_400</code></pre><pre><code>    mgmt_addr: 192.168.1.19</cod=
e></pre><pre><code>    mgmt_addr: 192.168.10.2</code></pre><pre><code>    m=
gmt_addr: 192.168.20.2</code></pre><pre><code>    name: [name]</code></pre>=
<pre><code>    product: x410</code></pre><pre><code>    type: x4xx</code></=
pre><p>I am using two images for the FPGA, each of which has different capa=
bilities:</p><p>- UC_200, which on the wiki lists Port 0 as &quot;unused&qu=
ot; and can achieve up to 250 Msps per channel.</p><p>- CG_400, which lists=
 both ports on the wiki as &quot;100 GbE&quot; and can achieve up to 500 Ms=
ps per channel.</p><p>I am using UHD&#39;s C++ API to instruct the x410. My=
 capture process tries to call &quot;recv&quot; as soon as possible without=
 waiting to write the previous buffer to a file. The psudocode is as follow=
s:</p><p>-  Initialize &quot;circular&quot; buffer of arrays. Each array is=
 &quot;spb&quot; samples long, and there are N such buffers.</p><p>-  Start=
 a &quot;writing&quot; thread that writes data from a queue to a file.</p><=
p>-  Set the number of samples I need (nsamps_requested), set the current n=
umber of samples to 0 (nsamps),</p><p>-  set the current buffer index to 0 =
(buff_idx)</p><p>-  set up rx_streamer to start 0.1 seconds in the future a=
nd issue STREAM_MODE_START_CONTINUOUS command.</p><p>   </p><p>   While (ns=
amps &lt;=3D nsamps_requested || not_error)</p><p>   -Get a pointer to the =
buffer at buff_idx</p><p>   -num_rx_samps &lt;- recv(buffer...)</p><p>   -c=
heck metadata returned object</p><p>   -add the buffer to the queue, increm=
ent the buffer index</p><p>   </p><p>- stop streaming</p><p>When I use the =
process above, I can get very long captures using the UC_200 image, with 25=
0 Msps, and by parsing the args &quot;addr=3D192.168.20.2,mgmt_addr=3D192.1=
68.1.19&quot; when creating the multiusrp pointer.</p><p>When I switch to t=
he CG_400 image, I can barely record a few seconds worth of data. I parse t=
he args &quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D19=
2.168.1.19&quot;. I changed the logger level to get a better idea of what m=
ight be going on, below are some outputs for spb at 5000:</p><pre><code>[DE=
BUG] [RFNOC::MGMT] Established a route from EPID=3D4 (SW) to EPID=3D3</code=
></pre><pre><code>[DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% =
(0x0)</code></pre><pre><code>[DEBUG] [RFNOC::MGMT] Initiated RX stream setu=
p for EPID=3D3</code></pre><pre><code>[DEBUG] [RFNOC::MGMT] Finished RX str=
eam setup for EPID=3D3</code></pre><pre><code>[DEBUG] [0/Radio#0] spp value=
 2032 exceeds MTU of 8016! Coercing to 1988</code></pre><pre><code>....</co=
de></pre><pre><code>[DEBUG] [RxStreamer#0] Received overrun message on port=
 0</code></pre><p>After the last logger message, I catc this in my &quot;ch=
eck metadata returned object&quot; step and stop the loop.</p><p>When this =
happens, I sometimes get 0 samples back, and sometimes get less than the sa=
mples per buffer I feed the recv command. I also found that while waiting f=
or the issued command to take effect, instead of adding empty buffers to my=
 queue, I check for ERROR_CODE_TIMEOUT and just continue the while loop.</p=
><p>I would imagine if I can handle half the rate at 250 Msps for minutes o=
f continuous capture, going to 500 Msps I could get more than a couple seco=
nds. Is this because the UC_200 image has 4GiB of DRAM and the CG_400 doesn=
&#39;t list any on the wiki? Is there something better I can be doing about=
 the spb (I tried larger and smaller, with some luck around 50000 spb)? Am =
I properly configuring the x410 to use both QSFP28 ports for the CG_400 ima=
ge?</p><p>Thanks!</p><p>Zack</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007ff2d606136a0380--

--===============1527441481703425205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1527441481703425205==--
