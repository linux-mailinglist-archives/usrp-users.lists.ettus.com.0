Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F259391D5
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 17:31:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E33F3855DF
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 11:31:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721662268; bh=GapYZwkK+w1g/dQEcbKPOzPopaKUwKHri97Ff+/FG2s=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SwHiWqhGRlEKsIVzNb+/HpFHxGhQ7UuTDUwG2HWD8q77o/IXLQ8gfA/S/zKZiltZg
	 9MXbVwOTea6s5n05o5pN3xqzq/kSPibKdW4BWqZ7MLcN37OEULS+rxWbuNtZYQMXY8
	 SorLmcMoOHwW2PmiukU0i0RkK1YomlPut0yqKlQ+pn3N4jiAFmVC90ocyd6uA51OS8
	 E3qjtf/Fk83k8byoDnOYbhDF6EE/dCu1NDFbFc0HOnq787GkKMAaHgoj3+ZoycteTO
	 eDKqDiYgix+TJCjrMFJc7YO8wOli2M9MjB4vTWvcoZTpItro6N3iLP7PlIq6cEsl06
	 YHBiXoCtRJlyA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 039D8385448
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 11:30:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721662252; bh=uA3zZp8ucuYsKWogou84xAsFtHbC8OPW6e+wvf41JpI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ymj5xoO/3dFXsAqz26Ngei8bINeG8Sl8QPGP42deDaNrKFCYG6hEHNYkKwD6qWi8w
	 k6CrfS6Kz/x0XsAQxXXGP89aBTNaDXHEpKrnZK/u1aEQG+HZFF0QRQ+YP1VrUZHDMD
	 ohn/+Qz5iF9g1psvJM2ZtMtVGeze0zTfmVlxpevgL0s2XeVVRB1eiP3h3YUu3ULkVI
	 Q6BpWx8h2l39W9WqRFDXuVNzOpHfndaFKU6m7mv9G9nYNNefKkghOjgwPNI3J3HJkG
	 KY44dwlS6koXJTYYSETM/709kJ8EyTdkmSPkY88FRRciQwVroCTcg6FXllWy2/XgGg
	 LZWs0JgJX3/9w==
Date: Mon, 22 Jul 2024 15:30:52 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BgvAfvdJK6XnagdUAy6oV0RWmaiCyIRhTQtiw9mL2M@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 4FJ7M5WSEKBG5I67VFNSIB2ZODWJMFBN
X-Message-ID-Hash: 4FJ7M5WSEKBG5I67VFNSIB2ZODWJMFBN
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building rfnoc-example FPGA - UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FJ7M5WSEKBG5I67VFNSIB2ZODWJMFBN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4047863970414693614=="

This is a multi-part message in MIME format.

--===============4047863970414693614==
Content-Type: multipart/alternative;
 boundary="b1_NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Further to my last message:

After reading this:=20

https://lists.ettus.com/empathy/thread/FZYNEWJQYBKFJWC5LASSD5LOL6J765KU?h=
ash=3D5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF#5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF

I tried this:

```
export UHD_FPGA_DIR=3D~/git/uhd/fpga/
```

```
export RFNOC_OOT=3D~/git/uhd/host/examples/rfnoc-example
```

```
cd fpga/usrp3/top/x300/
```

```
source setupenv.sh
```

```
rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores/x=
310_rfnoc_image_core.yml -t X310_XG -l DEBUG
```

`gssltest@gssltest-sff:~/git/uhd/fpga/usrp3/top/x300$ rfnoc_image_builder=
 -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores/x310_rfnoc_image_cor=
e.yml -t X310_XG -l DEBUG`

`[debug] Loading configuration /home/gssltest/git/uhd/host/examples/rfnoc=
-example/icores/x310_rfnoc_image_core.yml...`

`[debug] Configuration successful loaded.`

`[debug] Validating against schema rfnoc_imagebuilder_args...`

`[debug] Using schema file /usr/local/share/uhd/rfnoc/core/rfnoc_imagebui=
lder_args.json.`

`[debug] Configuration successful validated.`

`Using FPGA directory /home/gssltest/git/uhd/fpga`

`Selected device: x310`

`[debug] Image core name: x310_rfnoc_image_core`

`[debug] Using build artifacts directory: /home/gssltest/git/uhd/host/exa=
mples/rfnoc-example/icores/build-x310_rfnoc_image_core`

`Build artifacts directory already exists (contents will be overwritten).=
`

`[debug] Looking for block descriptors in:`

`[debug]     /usr/local/share/uhd/rfnoc/blocks`

`[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/blocks`

`[debug] Adding file siggen.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file radio.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file axi_ram_fifo.yml (/usr/local/share/uhd/rfnoc/blocks)=
.`

`[debug] Adding file null_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks=
).`

`[debug] Adding file logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file fosphor.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file fft_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file replay.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file addsub.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file license_check.yml (/usr/local/share/uhd/rfnoc/blocks=
).`

`[debug] Adding file fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file split_stream.yml (/usr/local/share/uhd/rfnoc/blocks)=
.`

`[debug] Adding file duc.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file window.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file ddc.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file siggen_sff.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).=
`

`[debug] Adding file moving_avg.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file vector_iir.yml (/usr/local/share/uhd/rfnoc/blocks).`

`[debug] Adding file keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/blocks=
).`

`[debug] Adding file gain.yml (/home/gssltest/git/uhd/host/examples/rfnoc=
-example/blocks).`

`[debug] Looking for module descriptors in:`

`[debug]     /usr/local/share/uhd/rfnoc/modules`

`[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/modules`

`[debug] Adding file device_dna.yml (/usr/local/share/uhd/rfnoc/modules).=
`

`[debug] Looking for transport_adapter descriptors in:`

`[debug]     /usr/local/share/uhd/rfnoc/transport_adapters`

`[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/transport=
_adapters`

`[debug] Adding file x4xx_eth.yml (/usr/local/share/uhd/rfnoc/transport_a=
dapters).`

`[debug] Adding file chdr_dma.yml (/usr/local/share/uhd/rfnoc/transport_a=
dapters).`

`[debug] Looking for include descriptors in:`

`[debug]     /usr/local/share/uhd/rfnoc/includes`

`[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/includes`

`[debug] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.`

`[debug] Loaded 9 IO signatures`

`[debug] 	ctrlport [core]`

`[debug] 	timekeeper [core]`

`[debug] 	radio [core]`

`[debug] 	axi4_mm [core]`

`[debug] 	axis_chdr [core]`

`[debug] 	pps [core]`

`[debug] 	device_dna [device_dna.yml]`

`[debug] 	x4xx_qsfp [x4xx_eth.yml]`

`[debug] 	license_enable [license_check.yml]`

`[debug] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.`

`[debug] Populating config with default secure core.`

`[debug] Assigning clock index 11 to clock _device_.radio.`

`[debug] Assigning clock index 12 to clock _device_.ce.`

`[debug] Assigning clock index 13 to clock _device_.dram.`

`[debug] Adding required clock not present in BSP: rfnoc_ctrl`

`[debug] Adding required clock not present in BSP: rfnoc_chdr`

`=E2=9A=A0   Block port radio0.in_1 is not connected`

`=E2=9A=A0   Block port radio1.in_1 is not connected`

`[debug] Generating edge table...`

`[debug]   ep0-out0 (1,0) =3D> duc0-in_0 (6,0)`

`[debug]   duc0-out_0 (6,0) =3D> radio0-in_0 (8,0)`

`[debug]   radio0-out_0 (8,0) =3D> ddc0-in_0 (7,0)`

`[debug]   ddc0-out_0 (7,0) =3D> ep0-in0 (1,0)`

`[debug]   radio0-out_1 (8,1) =3D> ddc0-in_1 (7,1)`

`[debug]   ddc0-out_1 (7,1) =3D> ep1-in0 (2,0)`

`[debug]   ep2-out0 (3,0) =3D> duc1-in_0 (9,0)`

`[debug]   duc1-out_0 (9,0) =3D> radio1-in_0 (11,0)`

`[debug]   radio1-out_0 (11,0) =3D> ddc1-in_0 (10,0)`

`[debug]   ddc1-out_0 (10,0) =3D> ep2-in0 (3,0)`

`[debug]   radio1-out_1 (11,1) =3D> ddc1-in_1 (10,1)`

`[debug]   ddc1-out_1 (10,1) =3D> ep3-in0 (4,0)`

`[debug]   ep4-out0 (5,0) =3D> gain0-in (12,0)`

`[debug]   gain0-out (12,0) =3D> ep4-in0 (5,0)`

`[debug] Running checks on the current configuration...`

`[debug] Generating default crossbar routes...`

`=E2=9B=94   Image configuration contains issues: Skipping build. Use --i=
gnore-warnings to build despite warnings.`

--b1_NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Further to my last message:</p><p>After reading this: </p><p>https://lis=
ts.ettus.com/empathy/thread/FZYNEWJQYBKFJWC5LASSD5LOL6J765KU?hash=3D5JXCSAW=
OZJ6UEOSK3IPXZCIVS277B2SF#5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF</p><p>I tried th=
is:</p><pre><code>export UHD_FPGA_DIR=3D~/git/uhd/fpga/</code></pre><pre><c=
ode>export RFNOC_OOT=3D~/git/uhd/host/examples/rfnoc-example</code></pre><p=
re><code>cd fpga/usrp3/top/x300/</code></pre><pre><code>source setupenv.sh<=
/code></pre><pre><code>rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -=
y $RFNOC_OOT/icores/x310_rfnoc_image_core.yml -t X310_XG -l DEBUG</code></p=
re><p><br></p><p><code>gssltest@gssltest-sff:~/git/uhd/fpga/usrp3/top/x300$=
 rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores/x3=
10_rfnoc_image_core.yml -t X310_XG -l DEBUG</code></p><p><code>[debug] Load=
ing configuration /home/gssltest/git/uhd/host/examples/rfnoc-example/icores=
/x310_rfnoc_image_core.yml...</code></p><p><code>[debug] Configuration succ=
essful loaded.</code></p><p><code>[debug] Validating against schema rfnoc_i=
magebuilder_args...</code></p><p><code>[debug] Using schema file /usr/local=
/share/uhd/rfnoc/core/rfnoc_imagebuilder_args.json.</code></p><p><code>[deb=
ug] Configuration successful validated.</code></p><p><code>Using FPGA direc=
tory /home/gssltest/git/uhd/fpga</code></p><p><code>Selected device: x310</=
code></p><p><code>[debug] Image core name: x310_rfnoc_image_core</code></p>=
<p><code>[debug] Using build artifacts directory: /home/gssltest/git/uhd/ho=
st/examples/rfnoc-example/icores/build-x310_rfnoc_image_core</code></p><p><=
code>Build artifacts directory already exists (contents will be overwritten=
).</code></p><p><code>[debug] Looking for block descriptors in:</code></p><=
p><code>[debug]     /usr/local/share/uhd/rfnoc/blocks</code></p><p><code>[d=
ebug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/blocks</code><=
/p><p><code>[debug] Adding file siggen.yml (/usr/local/share/uhd/rfnoc/bloc=
ks).</code></p><p><code>[debug] Adding file radio.yml (/usr/local/share/uhd=
/rfnoc/blocks).</code></p><p><code>[debug] Adding file axi_ram_fifo.yml (/u=
sr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file nu=
ll_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[de=
bug] Adding file logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p>=
<p><code>[debug] Adding file fosphor.yml (/usr/local/share/uhd/rfnoc/blocks=
).</code></p><p><code>[debug] Adding file fft_1x64.yml (/usr/local/share/uh=
d/rfnoc/blocks).</code></p><p><code>[debug] Adding file replay.yml (/usr/lo=
cal/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file addsub.=
yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding =
file license_check.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><c=
ode>[debug] Adding file fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).=
</code></p><p><code>[debug] Adding file split_stream.yml (/usr/local/share/=
uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file duc.yml (/usr/loc=
al/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file window.y=
ml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding f=
ile ddc.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug]=
 Adding file siggen_sff.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p>=
<p><code>[debug] Adding file switchboard.yml (/usr/local/share/uhd/rfnoc/bl=
ocks).</code></p><p><code>[debug] Adding file moving_avg.yml (/usr/local/sh=
are/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file vector_iir.ym=
l (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding fi=
le keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><cod=
e>[debug] Adding file gain.yml (/home/gssltest/git/uhd/host/examples/rfnoc-=
example/blocks).</code></p><p><code>[debug] Looking for module descriptors =
in:</code></p><p><code>[debug]     /usr/local/share/uhd/rfnoc/modules</code=
></p><p><code>[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-exampl=
e/modules</code></p><p><code>[debug] Adding file device_dna.yml (/usr/local=
/share/uhd/rfnoc/modules).</code></p><p><code>[debug] Looking for transport=
_adapter descriptors in:</code></p><p><code>[debug]     /usr/local/share/uh=
d/rfnoc/transport_adapters</code></p><p><code>[debug]     /home/gssltest/gi=
t/uhd/host/examples/rfnoc-example/transport_adapters</code></p><p><code>[de=
bug] Adding file x4xx_eth.yml (/usr/local/share/uhd/rfnoc/transport_adapter=
s).</code></p><p><code>[debug] Adding file chdr_dma.yml (/usr/local/share/u=
hd/rfnoc/transport_adapters).</code></p><p><code>[debug] Looking for includ=
e descriptors in:</code></p><p><code>[debug]     /usr/local/share/uhd/rfnoc=
/includes</code></p><p><code>[debug]     /home/gssltest/git/uhd/host/exampl=
es/rfnoc-example/includes</code></p><p><code>[debug] Using io_signatures.ym=
l from /usr/local/share/uhd/rfnoc/core.</code></p><p><code>[debug] Loaded 9=
 IO signatures</code></p><p><code>[debug] =09ctrlport [core]</code></p><p><=
code>[debug] =09timekeeper [core]</code></p><p><code>[debug] =09radio [core=
]</code></p><p><code>[debug] =09axi4_mm [core]</code></p><p><code>[debug] =
=09axis_chdr [core]</code></p><p><code>[debug] =09pps [core]</code></p><p><=
code>[debug] =09device_dna [device_dna.yml]</code></p><p><code>[debug] =09x=
4xx_qsfp [x4xx_eth.yml]</code></p><p><code>[debug] =09license_enable [licen=
se_check.yml]</code></p><p><code>[debug] Using x310_bsp.yml from /usr/local=
/share/uhd/rfnoc/core.</code></p><p><code>[debug] Populating config with de=
fault secure core.</code></p><p><code>[debug] Assigning clock index 11 to c=
lock _device_.radio.</code></p><p><code>[debug] Assigning clock index 12 to=
 clock _device_.ce.</code></p><p><code>[debug] Assigning clock index 13 to =
clock _device_.dram.</code></p><p><code>[debug] Adding required clock not p=
resent in BSP: rfnoc_ctrl</code></p><p><code>[debug] Adding required clock =
not present in BSP: rfnoc_chdr</code></p><p><code>=E2=9A=A0   Block port ra=
dio0.in_1 is not connected</code></p><p><code>=E2=9A=A0   Block port radio1=
.in_1 is not connected</code></p><p><code>[debug] Generating edge table...<=
/code></p><p><code>[debug]   ep0-out0 (1,0) =3D&gt; duc0-in_0 (6,0)</code><=
/p><p><code>[debug]   duc0-out_0 (6,0) =3D&gt; radio0-in_0 (8,0)</code></p>=
<p><code>[debug]   radio0-out_0 (8,0) =3D&gt; ddc0-in_0 (7,0)</code></p><p>=
<code>[debug]   ddc0-out_0 (7,0) =3D&gt; ep0-in0 (1,0)</code></p><p><code>[=
debug]   radio0-out_1 (8,1) =3D&gt; ddc0-in_1 (7,1)</code></p><p><code>[deb=
ug]   ddc0-out_1 (7,1) =3D&gt; ep1-in0 (2,0)</code></p><p><code>[debug]   e=
p2-out0 (3,0) =3D&gt; duc1-in_0 (9,0)</code></p><p><code>[debug]   duc1-out=
_0 (9,0) =3D&gt; radio1-in_0 (11,0)</code></p><p><code>[debug]   radio1-out=
_0 (11,0) =3D&gt; ddc1-in_0 (10,0)</code></p><p><code>[debug]   ddc1-out_0 =
(10,0) =3D&gt; ep2-in0 (3,0)</code></p><p><code>[debug]   radio1-out_1 (11,=
1) =3D&gt; ddc1-in_1 (10,1)</code></p><p><code>[debug]   ddc1-out_1 (10,1) =
=3D&gt; ep3-in0 (4,0)</code></p><p><code>[debug]   ep4-out0 (5,0) =3D&gt; g=
ain0-in (12,0)</code></p><p><code>[debug]   gain0-out (12,0) =3D&gt; ep4-in=
0 (5,0)</code></p><p><code>[debug] Running checks on the current configurat=
ion...</code></p><p><code>[debug] Generating default crossbar routes...</co=
de></p><p><code>=E2=9B=94   Image configuration contains issues: Skipping b=
uild. Use --ignore-warnings to build despite warnings.</code></p>

--b1_NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA--

--===============4047863970414693614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4047863970414693614==--
