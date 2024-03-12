Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3523E879C52
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 20:39:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DDC5385032
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 15:39:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710272375; bh=eOI+8zhM/cBu2BA6d+QSbvdBqwnD+qWNmwm3Efwbdso=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qKQIMCaJcQjzF+2wEm2f29zC0b1s87+wBI8mKRxOpjk2jnfRNym6sgwNkKR1/VtFZ
	 7eHkjCafSKZEaSGRfma250LFesL9n1YMLLc+MF5anQfO+R77cIVg9/ypmemLaPSU/7
	 KGxRukKvrPxPh2shXxJcH7Q94SYQsrtxspt8jolDQggzZ2FJnv/yY6C+IbNt2WXYtx
	 rzwyWuM4i2ctMo+PdZHJxHkiXlmdNHSPMfs4WoBhCQXO2mdrF6cA27mBCb9I62WhHW
	 Emlh/vaH6Lli4uHtiJtjIelzAUH38fTQY7n8m+xAIvEQLxeaI7I7vqh00sBF8RXerI
	 GWfTtjDQqNVvw==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 37C25384E9D
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 15:39:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="KOlOx4tX";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-568241f40e9so6260906a12.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 12:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1710272354; x=1710877154; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mtyNhRPkxYbrUjvK+89RhCOX5j9H6vCIXh44Jzg5Mr0=;
        b=KOlOx4tXiC5IOV6WSrQH9IB3MQ36CoC7upM7TDTMse9wNaSNCx3o9Md8JBRz7NPVHq
         k5tBu5hXK+KFZ3A9ZXs0CMZD8eAv/fNAjPijs8+6EC8pqb37uO+32qIynDi18qMeUvI8
         FFP0sdIXr9Md+kwhR2EcCt8uf+keflpyP7HBv5KRe0YodUKYoCuWIMIjwQmTC4QzmW/N
         feGatGMQRGbT/eCQIy1XoOjIZ4/uGyoacAteVgYcAqaQ8OTEgWOnpGq+piBewMat9Wq9
         R0NSJ6c6UgDqn4oO38iitHflAUhLzVHALJIyO14tEZzpbRzH4jksaMICIi1D4JKUY7iS
         bIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710272354; x=1710877154;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mtyNhRPkxYbrUjvK+89RhCOX5j9H6vCIXh44Jzg5Mr0=;
        b=WLBRw/7PBZj0BpztQfm50AXz4CVND4SyfzAY79iH/5iImc51Qkl+N1yRK834Avj1rO
         MkcutP897fmw3MNliH+Gr2jdzpKj5vFwWhjHdqeI4Y1vMT1xZnSFSD46GUE1EppkjQqQ
         BukjcLlRuOo5yao1XnSztizRedLCm3Pj56iabrmV778f0a/54hyALDpjjhWZ91WFEete
         iGlIjbYdbUjSeG4YejnyF3rC2BOQdBo4Bdm42N7vJAIrOKBdZKJ7Ewc9Ok681jUAgEE8
         UX1BKUpBIN/6d2OleJsQ+cmXdofchjNJBVFji4f+nW6vZ6FA5sD5hClKbjrqyBPcl9xH
         GeMQ==
X-Gm-Message-State: AOJu0YwrV9+WDN/0Dj4KUXKP9JdKlK2P6QToq5xPdrQBK07Wf7Zi4jQc
	Io3vBsDBEG0AKZRZA/uxa7m1swJ0rFaMdF/Zlgc43+dMq6z6lpwwuLdaBEhcel/pP5cjm0feBVI
	z4BSsT/PRzRbIw8vmxRIRDQ7eZUj408Zvks9YnIS0/7gwMN8=
X-Google-Smtp-Source: AGHT+IGlcN/Ik/oSiqsDJ/eb8laGbBj29SCkTd8jW3zDJfCkZ+Z0V4J62RgDNFS5mNowsUz4hY7Io/wsZuqZhh45tMc=
X-Received: by 2002:a50:cc9c:0:b0:567:fb9b:37d5 with SMTP id
 q28-20020a50cc9c000000b00567fb9b37d5mr7205164edi.32.1710272353663; Tue, 12
 Mar 2024 12:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ@lists.ettus.com>
In-Reply-To: <Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ@lists.ettus.com>
Date: Tue, 12 Mar 2024 15:39:02 -0400
Message-ID: <CAB__hTStH_tXoNdu8c2jHUn4GYf5f_r+6NzapQG_L8t2FmodpA@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: WOOEK5LW6K2I4P56X6C2MFZ2ZQZGSGKC
X-Message-ID-Hash: WOOEK5LW6K2I4P56X6C2MFZ2ZQZGSGKC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOOEK5LW6K2I4P56X6C2MFZ2ZQZGSGKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2530198255962087755=="

--===============2530198255962087755==
Content-Type: multipart/alternative; boundary="0000000000001c35fe06137bd047"

--0000000000001c35fe06137bd047
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zack,
I would not count on equal performance between saving to a RAM file system
versus allocating your own buffers, but I don't know the reason. I think it
is worth a try to configure as large a RAM file system as you can and run
rx_samples_to_file (which will not create large RAM buffers).  Plus, this
is a pretty easy test to run.

I can tell you that long ago I got pretty good performance by writing to
files in RAM (up to a predetermined fixed length) such that after a fixed
number of samples, I closed those files and opened new ones and continued
writing to the new ones.  As a separate process, the closed files were
moved to persistent storage thus free-ing up RAM.  This sounds a lot like
your circular buffer in RAM concept but I was never able to get the
circular buffer architecture working as well.
Rob

On Tue, Mar 12, 2024 at 1:00=E2=80=AFPM <zackkomo@utexas.edu> wrote:

> Hey Rob,
>
> Saving to dev/null worked just fine, and didn=E2=80=99t even output the =
=E2=80=9CDisk
> write test indicates that an overflow is likely to occur=E2=80=9D warning=
.
>
> In terms of saving to RAM, isn=E2=80=99t this essentially what my custom =
script
> does? I reserve all my buffers (which increases my RAM usage by a lot) an=
d
> have a separate thread write from these to the filesystem.
>
> Would anything be different if I used a ramdisk? I can try it out.
>
> As for DPDK, I tried in the past to get it working but keep running into
> issues. I will post the output below, but it may warrant a separate post.
>
> When running:
>
> ./rx_samples_to_file --args "addr=3D192.168.10.2,second_addr=3D192.168.20=
.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1" --file /dev/null --duration 10 --=
rate 491.52e6 --freq 1575.42e6
>
> I get:
>
> Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
>
> EAL: Detected 24 lcore(s)
>
> EAL: Detected 2 NUMA nodes
>
> EAL: Multi-process socket /run/user/1001/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'VA'
>
> EAL: No available hugepages reported in hugepages-1048576kB
>
> EAL: Probing VFIO support...
>
> EAL: VFIO support initialized
>
> EAL: get_seg_fd(): open '/dev/hugepages/rtemap_0' failed: Permission deni=
ed
>
> EAL: Couldn't get fd on hugepage file
>
> EAL: get_seg_fd(): open '/dev/hugepages/rtemap_32768' failed: Permission =
denied
>
> EAL: Couldn't get fd on hugepage file
>
> EAL: error allocating rte services array
>
> EAL: FATAL: rte_service_init() failed
>
> EAL: rte_service_init() failed
>
> [ERROR] [DPDK] Error with EAL initialization
>
> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initia=
lization
>
> EAL: FATAL: already called initialization.
>
> EAL: already called initialization.
>
> [ERROR] [DPDK] Error with EAL initialization
>
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
>     addr: 192.168.10.2
>
>     second_addr: 192.168.20.2
>
>     mgmt_addr: 192.168.1.19
>
> use_dpdk: 1
>
>
> When I run the same command as the root user, I get:
>
> Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
>
> EAL: Detected 24 lcore(s)
>
> EAL: Detected 2 NUMA nodes
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'VA'
>
> EAL: No available hugepages reported in hugepages-1048576kB
>
> EAL: Probing VFIO support...
>
> EAL: VFIO support initialized
>
> EAL: PCI device 0000:31:00.0 on NUMA socket 0
>
> EAL:   probe driver: 15b3:101d net_mlx5
>
> EAL: PCI device 0000:31:00.1 on NUMA socket 0
>
> EAL:   probe driver: 15b3:101d net_mlx5
>
> [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
>
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not=
 find route to destination address 192.168.10.2
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-=
326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192=
.168.20.2,use_dpdk=3D1
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_400,=
mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_addr=
=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Dinternal=
,initializing=3DTrue'.
>
> [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
>
> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.16=
8.10.2: RuntimeError: DPDK: Could not find route to destination address 192=
.168.10.2
>
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: Timed out getting recv b=
uff for management transaction
>
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environ=
mentError: IOError: Timed out getting recv buff for management transaction
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001c35fe06137bd047
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Zack,<div>I would not count on equal performance betwee=
n saving to a RAM file system versus allocating your own buffers, but I don=
&#39;t know the reason. I think it is worth a try to configure as large a R=
AM file system as you can and run rx_samples_to_file (which will not create=
 large RAM buffers).=C2=A0 Plus, this is a pretty easy test to run.=C2=A0=
=C2=A0</div><div><br></div><div>I can tell you that long ago I got pretty g=
ood performance by writing to files in RAM (up to a predetermined fixed len=
gth) such that after a fixed number of samples, I closed those files and op=
ened new ones and continued writing to the new ones.=C2=A0 As a separate pr=
ocess, the closed files were moved to persistent storage thus free-ing up R=
AM.=C2=A0 This sounds a lot like your circular buffer in RAM concept but I =
was never able to get the circular buffer architecture working as well.</di=
v><div><div>Rob</div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2024 at 1:00=E2=80=AFPM &lt;<a h=
ref=3D"mailto:zackkomo@utexas.edu">zackkomo@utexas.edu</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hey Rob,</p><p>Sav=
ing to dev/null worked just fine, and didn=E2=80=99t even output the =E2=80=
=9CDisk write test indicates that an overflow is likely to occur=E2=80=9D w=
arning.</p><p>In terms of saving to RAM, isn=E2=80=99t this essentially wha=
t my custom script does? I reserve all my buffers (which increases my RAM u=
sage by a lot) and have a separate thread write from these to the filesyste=
m. </p><p>Would anything be different if I used a ramdisk? I can try it out=
. </p><p>As for DPDK, I tried in the past to get it working but keep runnin=
g into issues. I will post the output below, but it may warrant a separate =
post.</p><p>When running:</p><pre><code>./rx_samples_to_file --args &quot;a=
ddr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_=
dpdk=3D1&quot; --file /dev/null --duration 10 --rate 491.52e6 --freq 1575.4=
2e6</code></pre><p>I get:</p><pre><code>Creating the usrp device with: addr=
=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19,use_dpd=
k=3D1...</code></pre><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; =
Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><code=
>EAL: Detected 24 lcore(s)</code></pre><pre><code>EAL: Detected 2 NUMA node=
s</code></pre><pre><code>EAL: Multi-process socket /run/user/1001/dpdk/rte/=
mp_socket</code></pre><pre><code>EAL: Selected IOVA mode &#39;VA&#39;</code=
></pre><pre><code>EAL: No available hugepages reported in hugepages-1048576=
kB</code></pre><pre><code>EAL: Probing VFIO support...</code></pre><pre><co=
de>EAL: VFIO support initialized</code></pre><pre><code>EAL: get_seg_fd(): =
open &#39;/dev/hugepages/rtemap_0&#39; failed: Permission denied</code></pr=
e><pre><code>EAL: Couldn&#39;t get fd on hugepage file</code></pre><pre><co=
de>EAL: get_seg_fd(): open &#39;/dev/hugepages/rtemap_32768&#39; failed: Pe=
rmission denied</code></pre><pre><code>EAL: Couldn&#39;t get fd on hugepage=
 file</code></pre><pre><code>EAL: error allocating rte services array</code=
></pre><pre><code>EAL: FATAL: rte_service_init() failed</code></pre><pre><c=
ode>EAL: rte_service_init() failed</code></pre><pre><code>[ERROR] [DPDK] Er=
ror with EAL initialization</code></pre><pre><code>[ERROR] [UHD] Device dis=
covery error: RuntimeError: Error with EAL initialization</code></pre><pre>=
<code>EAL: FATAL: already called initialization.</code></pre><pre><code>EAL=
: already called initialization.</code></pre><pre><code>[ERROR] [DPDK] Erro=
r with EAL initialization</code></pre><pre><code>[ERROR] [X300] X300 Networ=
k discovery error RuntimeError: Error with EAL initialization</code></pre><=
pre><code>Error: LookupError: KeyError: No devices found for -----&gt;</cod=
e></pre><pre><code>Device Address:</code></pre><pre><code>    addr: 192.168=
.10.2</code></pre><pre><code>    second_addr: 192.168.20.2</code></pre><pre=
><code>    mgmt_addr: 192.168.1.19</code></pre><p>    use_dpdk: 1     </p><=
p><br></p><p>When I run the same command as the root user, I get:</p><pre><=
code>Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.1=
68.20.2,mgmt_addr=3D192.168.1.19,use_dpdk=3D1...</code></pre><pre><code>[IN=
FO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0=
.HEAD-0-g50fa3baa</code></pre><pre><code>EAL: Detected 24 lcore(s)</code></=
pre><pre><code>EAL: Detected 2 NUMA nodes</code></pre><pre><code>EAL: Multi=
-process socket /var/run/dpdk/rte/mp_socket</code></pre><pre><code>EAL: Sel=
ected IOVA mode &#39;VA&#39;</code></pre><pre><code>EAL: No available hugep=
ages reported in hugepages-1048576kB</code></pre><pre><code>EAL: Probing VF=
IO support...</code></pre><pre><code>EAL: VFIO support initialized</code></=
pre><pre><code>EAL: PCI device 0000:31:00.0 on NUMA socket 0</code></pre><p=
re><code>EAL:   probe driver: 15b3:101d net_mlx5</code></pre><pre><code>EAL=
: PCI device 0000:31:00.1 on NUMA socket 0</code></pre><pre><code>EAL:   pr=
obe driver: 15b3:101d net_mlx5</code></pre><pre><code>[ERROR] [DPDK] Could =
not find route to destination address 192.168.10.2</code></pre><pre><code>[=
ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not fi=
nd route to destination address 192.168.10.2</code></pre><pre><code>[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.=
1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-326E872,fpg=
a=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192.168.20.2,u=
se_dpdk=3D1</code></pre><pre><code>[WARNING] [MPM.RPCServer] A timeout even=
t occured!</code></pre><pre><code>[INFO] [MPM.PeriphManager] init() called =
with device args `fpga=3DCG_400,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326=
E872,product=3Dx410,second_addr=3D192.168.20.2,use_dpdk=3D1,clock_source=3D=
internal,time_source=3Dinternal,initializing=3DTrue&#39;.</code></pre><pre>=
<code>[ERROR] [DPDK] Could not find route to destination address 192.168.10=
.2</code></pre><pre><code>[WARNING] [MPMD::XPORT::UDP] Error during MTU dis=
covery on address <a href=3D"http://192.168.10.2" target=3D"_blank">192.168=
.10.2</a>: RuntimeError: DPDK: Could not find route to destination address =
192.168.10.2</code></pre><pre><code>[ERROR] [RFNOC::MGMT] EnvironmentError:=
 IOError: Timed out getting recv buff for management transaction</code></pr=
e><pre><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Env=
ironmentError: IOError: Timed out getting recv buff for management transact=
ion</code></pre><pre><code>[ERROR] [RFNOC::GRAPH] Caught exception while in=
itializing graph: EnvironmentError: IOError: Timed out getting recv buff fo=
r management transaction</code></pre><pre><code>Error: RuntimeError: Failur=
e to create rfnoc_graph.</code></pre>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001c35fe06137bd047--

--===============2530198255962087755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2530198255962087755==--
