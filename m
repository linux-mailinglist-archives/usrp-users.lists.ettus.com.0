Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4565F939E13
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 11:39:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E2CC385821
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 05:39:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721727588; bh=Hy537FIgR0h9DHAOMuYWfnyssvF2jweCG8hFRiXjL3Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ke2d3rSt6vdETLTVV7TlL7x+qxp/oxpDYk2b7i64V1NHd1gc9fwnIL2Gcz5IurdJ6
	 5U1AGLrnV1Wyv1nSSdEH/zrkgrqy9E7/uPnn8AqqeypNG3CxSf6F0Xb9U+jj8H7DO8
	 WJw5Ebn+XUvEHEVJ5vIJY/382TtWMANT5bjmch5Ym1OMkiLgtvZyTxTq/WgZdzYASQ
	 KO3a5j16nTnMk6vbuelfpQVCKo6utflq9laddAqpw4WWkEolHIz743ZGB839ns9IUf
	 3AkTFEE55yIjudziPyxOaXBfgtgcadAWuXt6u7ikCz3+2nSsAhmS3QdKhlAKvcPm9/
	 pdQFSULGw0gAA==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E7173857DC
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 05:39:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Voh0Z3Yo";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7a9e25008aso43098266b.0
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 02:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721727564; x=1722332364; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+c7F2QARvtYc9uR71xY41UUhZoP11W7TxVOePK/oBT0=;
        b=Voh0Z3Yo+MdNTygm+wxSp4ZQN8hyULqyqlgZD9KYwXG5A4VVJk/UbVK5pQ2y5m/zU2
         b+lr7lPQmd1YvA4K7GPtNBhbA81sut4OwzkcT2g3QLyGXnZj1dMHpW7aw3q/TuTnhB6x
         npVgFmMnXzh6xAEKAae6VTdF3ooAx8GXVVkecFGK0PGeeUIZWptkvwBPNiVvu6qiFxcR
         c359ex5bYROh8nobDrcqxk7Ut3OjFwGzM24wOzu+r6wNwiRbmTJG2G/Ne6rEwr+pfqfX
         BHG3WBP9Nj/0/m8Pu1CEXh4r+QQE+mtDV8xGercjsfd2f4ZQeJUiEAofeSHvXylQUNBq
         lNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721727564; x=1722332364;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+c7F2QARvtYc9uR71xY41UUhZoP11W7TxVOePK/oBT0=;
        b=o36QPu+097PZPeD5onpvXEitPw+kenepmGCbp+PHpnk9U3Y2h6eXDCoch9QwSRtKb/
         8MywkXTVGIma0cEt1MyEmaY9vHGZI1Ya/qSIjVNUEuduwJhu9KJErZp8rSWLqyPVPz2E
         Whkw+FsZh5yWXyc4gV8U6xkPpCfu8OntMQmzvRyakd+XrUZUgqvw9VYzTi5I12gO9M8M
         S4m3NaFs56IZUkotXDq2/2fva2Xilsam4IdlDpq+hV0lcrbcJ9t3PGHwdsJ4cwxFfXYw
         Iyq3pIBURaOodvp230j8eq4ZyaqOXb5kfn/hE3UHHZD9/bDueEmfbFkdrcnaL4B+RHL2
         Ov1A==
X-Gm-Message-State: AOJu0YzMewg2w7TZC7L8r01bt69Q84Xci6kYPABNRdF5NFi7fPboxaJe
	OvK751cRkvqYUTqR9yLLLKccD7j14o0STzjl8SfxHJ6V5MT1vPBK4WFq8j2PvbEp9iszdd5Paq1
	IvZ+5Us6xha5ShDVlj7qrUF3PnAwq4haRw7wAG3lx9Y6OYLg2KII=
X-Google-Smtp-Source: AGHT+IGRsvKC0vQPuuV7WH3fEjdWGtAl8HAY00IWarcnvGDyxtFkHSqE7FGnbqAsoZKxjYSdVaD/Tf82hTO5+wVUSAI=
X-Received: by 2002:a17:906:dc8f:b0:a6f:392d:51a9 with SMTP id
 a640c23a62f3a-a7a4bfe6b79mr704347666b.14.1721727564038; Tue, 23 Jul 2024
 02:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA@lists.ettus.com>
In-Reply-To: <NWEOMJoQHs5syUP2xXOuLIoOUTl1kHS8QoUxtv6uA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 23 Jul 2024 11:39:13 +0200
Message-ID: <CAFOi1A5RG1fvdvakrMF5ac3zVNSkpyj9=qiYrT-s1vS9DK02QA@mail.gmail.com>
To: cyberphox@gmail.com
Message-ID-Hash: P6PPQ6MB7SQT645WMZQDBIIXXMS5KAB7
X-Message-ID-Hash: P6PPQ6MB7SQT645WMZQDBIIXXMS5KAB7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building rfnoc-example FPGA - UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6PPQ6MB7SQT645WMZQDBIIXXMS5KAB7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8152829603556746277=="

--===============8152829603556746277==
Content-Type: multipart/alternative; boundary="000000000000dad9ff061de6ef70"

--000000000000dad9ff061de6ef70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marino,

you can use --ignore-warnings for this case. We have a fix in the pipeline
for this issue.

An explanation: There's nothing broken here, but we've added a *lot* more
checks to rfnoc_image_builder in the latest version of UHD, and we've made
it harder to accidentally build broken designs. This example slipped
through the cracks because we added some more checks close to the 4.7
release. But like I said, the YAML is not actually broken, you can build
this particular bitfile with --ignore-warnings. Of course, we don't
generally recommend that!

--M

On Mon, Jul 22, 2024 at 5:31=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Further to my last message:
>
> After reading this:
>
>
> https://lists.ettus.com/empathy/thread/FZYNEWJQYBKFJWC5LASSD5LOL6J765KU?h=
ash=3D5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF#5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF
>
> I tried this:
>
> export UHD_FPGA_DIR=3D~/git/uhd/fpga/
>
> export RFNOC_OOT=3D~/git/uhd/host/examples/rfnoc-example
>
> cd fpga/usrp3/top/x300/
>
> source setupenv.sh
>
> rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores/x=
310_rfnoc_image_core.yml -t X310_XG -l DEBUG
>
>
> gssltest@gssltest-sff:~/git/uhd/fpga/usrp3/top/x300$ rfnoc_image_builder
> -F $UHD_FPGA_DIR -I $RFNOC_OOT -y
> $RFNOC_OOT/icores/x310_rfnoc_image_core.yml -t X310_XG -l DEBUG
>
> [debug] Loading configuration
> /home/gssltest/git/uhd/host/examples/rfnoc-example/icores/x310_rfnoc_imag=
e_core.yml...
>
> [debug] Configuration successful loaded.
>
> [debug] Validating against schema rfnoc_imagebuilder_args...
>
> [debug] Using schema file
> /usr/local/share/uhd/rfnoc/core/rfnoc_imagebuilder_args.json.
>
> [debug] Configuration successful validated.
>
> Using FPGA directory /home/gssltest/git/uhd/fpga
>
> Selected device: x310
>
> [debug] Image core name: x310_rfnoc_image_core
>
> [debug] Using build artifacts directory:
> /home/gssltest/git/uhd/host/examples/rfnoc-example/icores/build-x310_rfno=
c_image_core
>
> Build artifacts directory already exists (contents will be overwritten).
>
> [debug] Looking for block descriptors in:
>
> [debug] /usr/local/share/uhd/rfnoc/blocks
>
> [debug] /home/gssltest/git/uhd/host/examples/rfnoc-example/blocks
>
> [debug] Adding file siggen.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file radio.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file axi_ram_fifo.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file null_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks)=
.
>
> [debug] Adding file logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file fosphor.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file fft_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file replay.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file addsub.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file license_check.yml (/usr/local/share/uhd/rfnoc/blocks)=
.
>
> [debug] Adding file fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file split_stream.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file duc.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file window.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file ddc.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file siggen_sff.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file moving_avg.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file vector_iir.yml (/usr/local/share/uhd/rfnoc/blocks).
>
> [debug] Adding file keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/blocks)=
.
>
> [debug] Adding file gain.yml
> (/home/gssltest/git/uhd/host/examples/rfnoc-example/blocks).
>
> [debug] Looking for module descriptors in:
>
> [debug] /usr/local/share/uhd/rfnoc/modules
>
> [debug] /home/gssltest/git/uhd/host/examples/rfnoc-example/modules
>
> [debug] Adding file device_dna.yml (/usr/local/share/uhd/rfnoc/modules).
>
> [debug] Looking for transport_adapter descriptors in:
>
> [debug] /usr/local/share/uhd/rfnoc/transport_adapters
>
> [debug]
> /home/gssltest/git/uhd/host/examples/rfnoc-example/transport_adapters
>
> [debug] Adding file x4xx_eth.yml
> (/usr/local/share/uhd/rfnoc/transport_adapters).
>
> [debug] Adding file chdr_dma.yml
> (/usr/local/share/uhd/rfnoc/transport_adapters).
>
> [debug] Looking for include descriptors in:
>
> [debug] /usr/local/share/uhd/rfnoc/includes
>
> [debug] /home/gssltest/git/uhd/host/examples/rfnoc-example/includes
>
> [debug] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.
>
> [debug] Loaded 9 IO signatures
>
> [debug] ctrlport [core]
>
> [debug] timekeeper [core]
>
> [debug] radio [core]
>
> [debug] axi4_mm [core]
>
> [debug] axis_chdr [core]
>
> [debug] pps [core]
>
> [debug] device_dna [device_dna.yml]
>
> [debug] x4xx_qsfp [x4xx_eth.yml]
>
> [debug] license_enable [license_check.yml]
>
> [debug] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.
>
> [debug] Populating config with default secure core.
>
> [debug] Assigning clock index 11 to clock _device_.radio.
>
> [debug] Assigning clock index 12 to clock _device_.ce.
>
> [debug] Assigning clock index 13 to clock _device_.dram.
>
> [debug] Adding required clock not present in BSP: rfnoc_ctrl
>
> [debug] Adding required clock not present in BSP: rfnoc_chdr
>
> =E2=9A=A0 Block port radio0.in_1 is not connected
>
> =E2=9A=A0 Block port radio1.in_1 is not connected
>
> [debug] Generating edge table...
>
> [debug] ep0-out0 (1,0) =3D> duc0-in_0 (6,0)
>
> [debug] duc0-out_0 (6,0) =3D> radio0-in_0 (8,0)
>
> [debug] radio0-out_0 (8,0) =3D> ddc0-in_0 (7,0)
>
> [debug] ddc0-out_0 (7,0) =3D> ep0-in0 (1,0)
>
> [debug] radio0-out_1 (8,1) =3D> ddc0-in_1 (7,1)
>
> [debug] ddc0-out_1 (7,1) =3D> ep1-in0 (2,0)
>
> [debug] ep2-out0 (3,0) =3D> duc1-in_0 (9,0)
>
> [debug] duc1-out_0 (9,0) =3D> radio1-in_0 (11,0)
>
> [debug] radio1-out_0 (11,0) =3D> ddc1-in_0 (10,0)
>
> [debug] ddc1-out_0 (10,0) =3D> ep2-in0 (3,0)
>
> [debug] radio1-out_1 (11,1) =3D> ddc1-in_1 (10,1)
>
> [debug] ddc1-out_1 (10,1) =3D> ep3-in0 (4,0)
>
> [debug] ep4-out0 (5,0) =3D> gain0-in (12,0)
>
> [debug] gain0-out (12,0) =3D> ep4-in0 (5,0)
>
> [debug] Running checks on the current configuration...
>
> [debug] Generating default crossbar routes...
>
> =E2=9B=94 Image configuration contains issues: Skipping build. Use
> --ignore-warnings to build despite warnings.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dad9ff061de6ef70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marino,</div><div><br></div><div>you can use --ign=
ore-warnings for this case. We have a fix in the pipeline for this issue.</=
div><div><br></div><div>An explanation: There&#39;s nothing broken here, bu=
t we&#39;ve added a *lot* more checks to rfnoc_image_builder in the latest =
version of UHD, and we&#39;ve made it harder to accidentally build broken d=
esigns. This example slipped through the cracks because we added some more =
checks close to the 4.7 release. But like I said, the YAML is not actually =
broken, you can build this particular bitfile with --ignore-warnings. Of co=
urse, we don&#39;t generally recommend that!</div><div><br></div><div>--M<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, Jul 22, 2024 at 5:31=E2=80=AFPM &lt;<a href=3D"mailto:cyber=
phox@gmail.com">cyberphox@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><p>Further to my last message:</p><p>Aft=
er reading this: </p><p><a href=3D"https://lists.ettus.com/empathy/thread/F=
ZYNEWJQYBKFJWC5LASSD5LOL6J765KU?hash=3D5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF#5JX=
CSAWOZJ6UEOSK3IPXZCIVS277B2SF" target=3D"_blank">https://lists.ettus.com/em=
pathy/thread/FZYNEWJQYBKFJWC5LASSD5LOL6J765KU?hash=3D5JXCSAWOZJ6UEOSK3IPXZC=
IVS277B2SF#5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF</a></p><p>I tried this:</p><pre=
><code>export UHD_FPGA_DIR=3D~/git/uhd/fpga/</code></pre><pre><code>export =
RFNOC_OOT=3D~/git/uhd/host/examples/rfnoc-example</code></pre><pre><code>cd=
 fpga/usrp3/top/x300/</code></pre><pre><code>source setupenv.sh</code></pre=
><pre><code>rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OO=
T/icores/x310_rfnoc_image_core.yml -t X310_XG -l DEBUG</code></pre><p><br><=
/p><p><code>gssltest@gssltest-sff:~/git/uhd/fpga/usrp3/top/x300$ rfnoc_imag=
e_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores/x310_rfnoc_im=
age_core.yml -t X310_XG -l DEBUG</code></p><p><code>[debug] Loading configu=
ration /home/gssltest/git/uhd/host/examples/rfnoc-example/icores/x310_rfnoc=
_image_core.yml...</code></p><p><code>[debug] Configuration successful load=
ed.</code></p><p><code>[debug] Validating against schema rfnoc_imagebuilder=
_args...</code></p><p><code>[debug] Using schema file /usr/local/share/uhd/=
rfnoc/core/rfnoc_imagebuilder_args.json.</code></p><p><code>[debug] Configu=
ration successful validated.</code></p><p><code>Using FPGA directory /home/=
gssltest/git/uhd/fpga</code></p><p><code>Selected device: x310</code></p><p=
><code>[debug] Image core name: x310_rfnoc_image_core</code></p><p><code>[d=
ebug] Using build artifacts directory: /home/gssltest/git/uhd/host/examples=
/rfnoc-example/icores/build-x310_rfnoc_image_core</code></p><p><code>Build =
artifacts directory already exists (contents will be overwritten).</code></=
p><p><code>[debug] Looking for block descriptors in:</code></p><p><code>[de=
bug]     /usr/local/share/uhd/rfnoc/blocks</code></p><p><code>[debug]     /=
home/gssltest/git/uhd/host/examples/rfnoc-example/blocks</code></p><p><code=
>[debug] Adding file siggen.yml (/usr/local/share/uhd/rfnoc/blocks).</code>=
</p><p><code>[debug] Adding file radio.yml (/usr/local/share/uhd/rfnoc/bloc=
ks).</code></p><p><code>[debug] Adding file axi_ram_fifo.yml (/usr/local/sh=
are/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file null_src_sink=
.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding=
 file logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[d=
ebug] Adding file fosphor.yml (/usr/local/share/uhd/rfnoc/blocks).</code></=
p><p><code>[debug] Adding file fft_1x64.yml (/usr/local/share/uhd/rfnoc/blo=
cks).</code></p><p><code>[debug] Adding file replay.yml (/usr/local/share/u=
hd/rfnoc/blocks).</code></p><p><code>[debug] Adding file addsub.yml (/usr/l=
ocal/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file licens=
e_check.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug]=
 Adding file fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p>=
<p><code>[debug] Adding file split_stream.yml (/usr/local/share/uhd/rfnoc/b=
locks).</code></p><p><code>[debug] Adding file duc.yml (/usr/local/share/uh=
d/rfnoc/blocks).</code></p><p><code>[debug] Adding file window.yml (/usr/lo=
cal/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file ddc.yml=
 (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding fil=
e siggen_sff.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[d=
ebug] Adding file switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).</cod=
e></p><p><code>[debug] Adding file moving_avg.yml (/usr/local/share/uhd/rfn=
oc/blocks).</code></p><p><code>[debug] Adding file vector_iir.yml (/usr/loc=
al/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] Adding file keep_one=
_in_n.yml (/usr/local/share/uhd/rfnoc/blocks).</code></p><p><code>[debug] A=
dding file gain.yml (/home/gssltest/git/uhd/host/examples/rfnoc-example/blo=
cks).</code></p><p><code>[debug] Looking for module descriptors in:</code><=
/p><p><code>[debug]     /usr/local/share/uhd/rfnoc/modules</code></p><p><co=
de>[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-example/modules</=
code></p><p><code>[debug] Adding file device_dna.yml (/usr/local/share/uhd/=
rfnoc/modules).</code></p><p><code>[debug] Looking for transport_adapter de=
scriptors in:</code></p><p><code>[debug]     /usr/local/share/uhd/rfnoc/tra=
nsport_adapters</code></p><p><code>[debug]     /home/gssltest/git/uhd/host/=
examples/rfnoc-example/transport_adapters</code></p><p><code>[debug] Adding=
 file x4xx_eth.yml (/usr/local/share/uhd/rfnoc/transport_adapters).</code><=
/p><p><code>[debug] Adding file chdr_dma.yml (/usr/local/share/uhd/rfnoc/tr=
ansport_adapters).</code></p><p><code>[debug] Looking for include descripto=
rs in:</code></p><p><code>[debug]     /usr/local/share/uhd/rfnoc/includes</=
code></p><p><code>[debug]     /home/gssltest/git/uhd/host/examples/rfnoc-ex=
ample/includes</code></p><p><code>[debug] Using io_signatures.yml from /usr=
/local/share/uhd/rfnoc/core.</code></p><p><code>[debug] Loaded 9 IO signatu=
res</code></p><p><code>[debug] 	ctrlport [core]</code></p><p><code>[debug] =
	timekeeper [core]</code></p><p><code>[debug] 	radio [core]</code></p><p><c=
ode>[debug] 	axi4_mm [core]</code></p><p><code>[debug] 	axis_chdr [core]</c=
ode></p><p><code>[debug] 	pps [core]</code></p><p><code>[debug] 	device_dna=
 [device_dna.yml]</code></p><p><code>[debug] 	x4xx_qsfp [x4xx_eth.yml]</cod=
e></p><p><code>[debug] 	license_enable [license_check.yml]</code></p><p><co=
de>[debug] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.</code><=
/p><p><code>[debug] Populating config with default secure core.</code></p><=
p><code>[debug] Assigning clock index 11 to clock _device_.radio.</code></p=
><p><code>[debug] Assigning clock index 12 to clock _device_.ce.</code></p>=
<p><code>[debug] Assigning clock index 13 to clock _device_.dram.</code></p=
><p><code>[debug] Adding required clock not present in BSP: rfnoc_ctrl</cod=
e></p><p><code>[debug] Adding required clock not present in BSP: rfnoc_chdr=
</code></p><p><code>=E2=9A=A0   Block port radio0.in_1 is not connected</co=
de></p><p><code>=E2=9A=A0   Block port radio1.in_1 is not connected</code><=
/p><p><code>[debug] Generating edge table...</code></p><p><code>[debug]   e=
p0-out0 (1,0) =3D&gt; duc0-in_0 (6,0)</code></p><p><code>[debug]   duc0-out=
_0 (6,0) =3D&gt; radio0-in_0 (8,0)</code></p><p><code>[debug]   radio0-out_=
0 (8,0) =3D&gt; ddc0-in_0 (7,0)</code></p><p><code>[debug]   ddc0-out_0 (7,=
0) =3D&gt; ep0-in0 (1,0)</code></p><p><code>[debug]   radio0-out_1 (8,1) =
=3D&gt; ddc0-in_1 (7,1)</code></p><p><code>[debug]   ddc0-out_1 (7,1) =3D&g=
t; ep1-in0 (2,0)</code></p><p><code>[debug]   ep2-out0 (3,0) =3D&gt; duc1-i=
n_0 (9,0)</code></p><p><code>[debug]   duc1-out_0 (9,0) =3D&gt; radio1-in_0=
 (11,0)</code></p><p><code>[debug]   radio1-out_0 (11,0) =3D&gt; ddc1-in_0 =
(10,0)</code></p><p><code>[debug]   ddc1-out_0 (10,0) =3D&gt; ep2-in0 (3,0)=
</code></p><p><code>[debug]   radio1-out_1 (11,1) =3D&gt; ddc1-in_1 (10,1)<=
/code></p><p><code>[debug]   ddc1-out_1 (10,1) =3D&gt; ep3-in0 (4,0)</code>=
</p><p><code>[debug]   ep4-out0 (5,0) =3D&gt; gain0-in (12,0)</code></p><p>=
<code>[debug]   gain0-out (12,0) =3D&gt; ep4-in0 (5,0)</code></p><p><code>[=
debug] Running checks on the current configuration...</code></p><p><code>[d=
ebug] Generating default crossbar routes...</code></p><p><code>=E2=9B=94   =
Image configuration contains issues: Skipping build. Use --ignore-warnings =
to build despite warnings.</code></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dad9ff061de6ef70--

--===============8152829603556746277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8152829603556746277==--
