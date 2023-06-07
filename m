Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 882397269D3
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 21:31:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 700C1384A59
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:31:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686166298; bh=pMYFjRbZVK0bJgAzkK3rJzEQTWZR6gUuaFC4CgotjD0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PgONNc+yrm+bl0MZQbk6RD6kubAyEfBPhNkht3u8v4CVR+HlNz5DAuz+SMw2qfFN4
	 Abe5y35HRbTDGrV2Ew5niAoKvozdvFjNJV7848Iqu7/jzWzlDyhDsdd2fWhcKXyuX5
	 dRF5Ka9LhitZ+TkMjqtVX0eC1r4NQDCVsXtpRBhwWuQ3/um/dP5sjzR2bzCfd4pUYW
	 Lekis0wgSHUaDzpE+l6wev/xCS0u/vLYwPuTc0IglOncnwz4warhTxiiUmIuP/TtVX
	 MuuIIAoN+3KTlJiDL3edGYTxZkQJpq+C6gl/lSIbqYhI7yVB0329RiraBwlOjBSv1J
	 JWuhS8x+KMmQg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 67D91384A4F
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 15:30:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Jyd/plgs";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-51496f57e59so1885068a12.2
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 12:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1686166238; x=1688758238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5xPsOwU6bQVFwkOsGo3I4sqytwuFPlhct3Gmckpt7N0=;
        b=Jyd/plgsiLV0afwm+wWH6AiGlTFiJWGzcymHo6DvStSKp4BR7m4HMsVNzDoJvbiUB3
         +7+0DbtuQgfke1WjhSXAuuYGPLk/W7TfFZcQR2GASmk07nbKs/s73VNuT5Ily5snNwrD
         z5uRMB1ytnYV3J4TyBwGFtyQR7UaeAcTFlLk9cp+EejbgZY8yzCG7dPXdP5DDi7+L68E
         SH5EfocR+a78o0yYcbg9KKcrQD6TBlCNaizoBptGBQaujqXJ0S0gL2Xr+jOwdxz5ro7P
         856HsHWQD2/tknJywhROeN0H2Yd/bY3n0TEOObEBj2b39cKa4eLGcY+eCE/N8G5MxxJD
         DQSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686166238; x=1688758238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5xPsOwU6bQVFwkOsGo3I4sqytwuFPlhct3Gmckpt7N0=;
        b=TzwY2gagDV+vSzGOpaoXGVjBpdKFTM3P9f4AyVC/hcYmMbmXUS3mXokLiO7Mhy+NzR
         M/glfWYQ5Jh3wTeuoExYJEfh65siQ01ACJM1M4IedMkJmV8dm6NPi00LAXyyTS6GCKHj
         +3gqIOpjPX4yH103cA7Q7EON6tJhh6utXmOJ+bsbQbEnMe84mkro6HU+pE+0hd02+qPB
         D2WOyI364zgID9/uqSEvou8G+TzaTfXaHlwzfwLfofP2EEzhgNZ4FHMovdIjs8V2GkIi
         1TFMZgacwFgsZqn6Xwg7OppE/uwmRLbLnifhszXUfHSdyvRSTIDkKfEHHI0Qvng0W8Xa
         AXMQ==
X-Gm-Message-State: AC+VfDw/EaOMIXD4wnFpoCl6idufe1ygsNjt0UEyYLf/5zS+seRrunCd
	nqhlyswwaziOLYuaTHMHxpfD5YbKX2/Ely7H+AiJfr1XQ/uL+wB9zsY=
X-Google-Smtp-Source: ACHHUZ7uAQLOM/zfa1HqckksxRxI+CgUSdiZbxP5Xha7UMkUg2jzFv+/ucDLGswLVE8XcrVpOp9sQDC0h4MIC0J4+ZE=
X-Received: by 2002:a17:907:6da0:b0:973:e5d9:d6ff with SMTP id
 sb32-20020a1709076da000b00973e5d9d6ffmr7342157ejc.66.1686166237939; Wed, 07
 Jun 2023 12:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0@lists.ettus.com>
In-Reply-To: <ck6fhiv782kadGWy6NHRKFB2WFqN9aYIIWh4yxgrZ0@lists.ettus.com>
Date: Wed, 7 Jun 2023 15:30:26 -0400
Message-ID: <CAB__hTQMmnKOgHUsPaD6Wk9dV6dFdCndyT3GoUMyDiT9p9tMJg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: ZLRMVHNKVEM7OIDANSPRUBKN3W5C2EJ5
X-Message-ID-Hash: ZLRMVHNKVEM7OIDANSPRUBKN3W5C2EJ5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLRMVHNKVEM7OIDANSPRUBKN3W5C2EJ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1995365330506056158=="

--===============1995365330506056158==
Content-Type: multipart/alternative; boundary="000000000000a5aa3705fd8f2b8f"

--000000000000a5aa3705fd8f2b8f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
It sounds like your custom image is compatible with the Ettus example
"rfnoc_replay_samples_from_file".  Have you tried this with your custom
image (as opposed to your custom software)?
Rob

On Wed, Jun 7, 2023 at 10:23=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I did run the default image and everything worked fine. I pasted my YML
> file below. Currently, the software I wrote builds a graph between the
> replay block and the radio block, I don=E2=80=99t want anything else. I d=
o have a
> custom block, but I do not need it for transmit. I tested it on the defau=
lt
> image(even though what I wrote does not call for a DUC) and it still work=
ed
> fine.
>
>
> # General parameters
>
> # -----------------------------------------
>
> schema: rfnoc_imagebuilder_args # Identifier for the schema used to
> validate this file
>
> copyright: >- # Copyright information used in file headers
>
> Ettus Research, A National Instruments Brand
>
> license: >- # License information used in file headers
>
> SPDX-License-Identifier: LGPL-3.0-or-later
>
> version: '1.0' # File version
>
> chdr_width: 64 # Bit width of the CHDR bus for this image
>
> device: 'x410' # USRP type
>
> image_core_name: 'x410_200_Trigger' # Name to use for the RFNoC Image Cor=
e
> files
>
> default_target: 'X410_X4_200' # Default make target
>
> # A list of all stream endpoints in design
>
> # ----------------------------------------
>
> stream_endpoints:
>
> ep0: # Stream endpoint name
>
> ctrl: True # Endpoint passes control traffic
>
> data: True # Endpoint passes data traffic
>
> buff_size_bytes: 262144 # Ingress buffer size for data
>
> ep1:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 262144
>
> ep2:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 262144
>
> ep3:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 262144
>
> ep4:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 32768
>
> ep5:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 32768
>
> ep6:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 32768
>
> ep7:
>
> ctrl: False
>
> data: True
>
> buff_size_bytes: 32768
>
> # A list of all NoC blocks in design
>
> # ----------------------------------
>
> noc_blocks:
>
> radio0:
>
> block_desc: 'radio.yml'
>
> parameters:
>
> NUM_PORTS: 2
>
> NIPC: RADIO_NIPC
>
> radio1:
>
> block_desc: 'radio.yml'
>
> parameters:
>
> NUM_PORTS: 2
>
> NIPC: RADIO_NIPC
>
> replay0:
>
> block_desc: 'replay.yml'
>
> parameters:
>
> NUM_PORTS: 2
>
> MEM_DATA_W: 128
>
> MEM_ADDR_W: 32
>
> trigger0:
>
> block_desc: 'trigger.yml'
>
> parameters:
>
> NUM_PORTS: 1
>
> trigger1:
>
> block_desc: 'trigger.yml'
>
> parameters:
>
> NUM_PORTS: 1
>
> # A list of all static connections in design
>
> # ------------------------------------------
>
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
>
> # - srcblk =3D Source block to connect
>
> # - srcport =3D Port on the source block to connect
>
> # - dstblk =3D Destination block to connect
>
> # - dstport =3D Port on the destination block to connect
>
> connections:
>
> #
>
> # RF A:0 TX
>
> - { srcblk: ep0, srcport: out0, dstblk: radio0, dstport: in_0 }
>
> # RF A:0 RX
>
> - { srcblk: radio0, srcport: out_0, dstblk: ep0, dstport: in0 }
>
> # RF A:1 TX
>
> - { srcblk: ep1, srcport: out0, dstblk: radio0, dstport: in_1 }
>
> # RF A:1 RX
>
> - { srcblk: radio0, srcport: out_1, dstblk: ep1, dstport: in0 }
>
> #
>
> # RF B:0 TX
>
> - { srcblk: ep2, srcport: out0, dstblk: radio1, dstport: in_0 }
>
> # RF B:0 RX
>
> - { srcblk: radio1, srcport: out_0, dstblk: ep2, dstport: in0 }
>
> # RF B:1 TX
>
> - { srcblk: ep3, srcport: out0, dstblk: radio1, dstport: in_1 }
>
> # RF B:1 RX
>
> - { srcblk: radio1, srcport: out_1, dstblk: ep3, dstport: in0 }
>
> #
>
> # Replay Connections
>
> - { srcblk: ep4, srcport: out0, dstblk: replay0, dstport: in_0 }
>
> - { srcblk: replay0, srcport: out_0, dstblk: ep4, dstport: in0 }
>
> - { srcblk: ep5, srcport: out0, dstblk: replay0, dstport: in_1 }
>
> - { srcblk: replay0, srcport: out_1, dstblk: ep5, dstport: in0 }
>
> #
>
> #trigger Connections
>
> - { srcblk: ep6, srcport: out0, dstblk: trigger0, dstport: in_0 }
>
> - { srcblk: trigger0, srcport: out_0, dstblk: ep6, dstport: in0 }
>
> - { srcblk: ep7, srcport: out0, dstblk: trigger1, dstport: in_0 }
>
> - { srcblk: trigger1, srcport: out_0, dstblk: ep7, dstport: in0 }
>
> # BSP Connections
>
> - { srcblk: radio0, srcport: ctrlport, dstblk: _device_, dstport:
> ctrlport_radio0 }
>
> - { srcblk: radio1, srcport: ctrlport, dstblk: _device_, dstport:
> ctrlport_radio1 }
>
> - { srcblk: _device_, srcport: radio0, dstblk: radio0, dstport: radio }
>
> - { srcblk: _device_, srcport: radio1, dstblk: radio1, dstport: radio }
>
> - { srcblk: _device_, srcport: time, dstblk: radio0, dstport: time }
>
> - { srcblk: _device_, srcport: time, dstblk: radio1, dstport: time }
>
> - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
>
> # A list of all clock domain connections in design
>
> # ------------------------------------------------
>
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
>
> # - srcblk =3D Source block to connect (Always "_device_")
>
> # - srcport =3D Clock domain on the source block to connect
>
> # - dstblk =3D Destination block to connect
>
> # - dstport =3D Clock domain on the destination block to connect
>
> clk_domains:
>
> - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
>
> - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
>
> - { srcblk: _device_, srcport: dram, dstblk: replay0, dstport: mem }
>
> - { srcblk: _device_, srcport: radio_2x, dstblk: trigger1, dstport: ce }
>
> - { srcblk: _device_, srcport: radio_2x, dstblk: trigger0, dstport: ce }
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a5aa3705fd8f2b8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>It sounds like your custom image is compatible=
 with the Ettus example &quot;rfnoc_replay_samples_from_file&quot;.=C2=A0 H=
ave you tried this with your custom image (as opposed to your custom softwa=
re)?</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Jun 7, 2023 at 10:23=E2=80=AFAM &lt;<a href=
=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>I did run =
the default image and everything worked fine. I pasted my YML file below. C=
urrently, the software I wrote builds a graph between the replay block and =
the radio block, I don=E2=80=99t want anything else. I do have a custom blo=
ck, but I do not need it for transmit. I tested it on the default image(eve=
n though what I wrote does not call for a DUC) and it still worked fine.</p=
><p><br></p><p># General parameters</p><p># -------------------------------=
----------</p><p>schema: rfnoc_imagebuilder_args         # Identifier for t=
he schema used to validate this file</p><p>copyright: &gt;-                =
           # Copyright information used in file headers</p><p>  Ettus Resea=
rch, A National Instruments Brand</p><p>license: &gt;-                     =
        # License information used in file headers</p><p>  SPDX-License-Ide=
ntifier: LGPL-3.0-or-later</p><p>version: &#39;1.0&#39;                    =
      # File version</p><p>chdr_width: 64                      # Bit width =
of the CHDR bus for this image</p><p>device: &#39;x410&#39;                =
          # USRP type</p><p>image_core_name: &#39;x410_200_Trigger&#39;    =
     # Name to use for the RFNoC Image Core files</p><p>default_target: &#3=
9;X410_X4_200&#39;           # Default make target</p><p># A list of all st=
ream endpoints in design</p><p># ----------------------------------------</=
p><p>stream_endpoints:</p><p>  ep0:                                  # Stre=
am endpoint name</p><p>    ctrl: True                          # Endpoint p=
asses control traffic</p><p>    data: True                          # Endpo=
int passes data traffic</p><p>    buff_size_bytes: 262144             # Ing=
ress buffer size for data</p><p>  ep1:</p><p>    ctrl: False</p><p>    data=
: True</p><p>    buff_size_bytes: 262144</p><p>  ep2:</p><p>    ctrl: False=
</p><p>    data: True</p><p>    buff_size_bytes: 262144</p><p>  ep3:</p><p>=
    ctrl: False</p><p>    data: True</p><p>    buff_size_bytes: 262144</p><=
p>  ep4:</p><p>    ctrl: False</p><p>    data: True</p><p>    buff_size_byt=
es: 32768</p><p>  ep5:</p><p>    ctrl: False</p><p>    data: True</p><p>   =
 buff_size_bytes: 32768</p><p>  ep6:</p><p>    ctrl: False</p><p>    data: =
True</p><p>    buff_size_bytes: 32768</p><p>  ep7:</p><p>    ctrl: False</p=
><p>    data: True</p><p>    buff_size_bytes: 32768</p><p># A list of all N=
oC blocks in design</p><p># ----------------------------------</p><p>noc_bl=
ocks:</p><p>  radio0:</p><p>    block_desc: &#39;radio.yml&#39;</p><p>    p=
arameters:</p><p>      NUM_PORTS: 2</p><p>      NIPC: RADIO_NIPC</p><p>  ra=
dio1:</p><p>    block_desc: &#39;radio.yml&#39;</p><p>    parameters:</p><p=
>      NUM_PORTS: 2</p><p>      NIPC: RADIO_NIPC</p><p>  replay0:</p><p>   =
 block_desc: &#39;replay.yml&#39;</p><p>    parameters:</p><p>      NUM_POR=
TS: 2</p><p>      MEM_DATA_W: 128</p><p>      MEM_ADDR_W: 32</p><p>  trigge=
r0:</p><p>    block_desc: &#39;trigger.yml&#39;</p><p>    parameters:</p><p=
>      NUM_PORTS: 1</p><p>  trigger1:</p><p>    block_desc: &#39;trigger.ym=
l&#39;</p><p>    parameters:</p><p>      NUM_PORTS: 1</p><p># A list of all=
 static connections in design</p><p># -------------------------------------=
-----</p><p># Format: A list of connection maps (list of key-value pairs) w=
ith the following keys</p><p>#   - srcblk  =3D Source block to connect</p><=
p>#   - srcport =3D Port on the source block to connect</p><p>#   - dstblk =
 =3D Destination block to connect</p><p>#   - dstport =3D Port on the desti=
nation block to connect</p><p>connections:</p><p>  #</p><p>    # RF A:0 TX<=
/p><p>  - { srcblk: ep0,    srcport: out0,  dstblk: radio0, dstport: in_0 }=
</p><p>  # RF A:0 RX</p><p>  - { srcblk: radio0, srcport: out_0, dstblk: ep=
0,    dstport: in0  }</p><p>  # RF A:1 TX</p><p>  - { srcblk: ep1,    srcpo=
rt: out0,  dstblk: radio0, dstport: in_1 }</p><p>  # RF A:1 RX</p><p>  - { =
srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }</p><p>  #</=
p><p>  # RF B:0 TX</p><p>  - { srcblk: ep2,    srcport: out0,  dstblk: radi=
o1, dstport: in_0 }</p><p>  # RF B:0 RX</p><p>  - { srcblk: radio1, srcport=
: out_0, dstblk: ep2,    dstport: in0  }</p><p>  # RF B:1 TX</p><p>  - { sr=
cblk: ep3,    srcport: out0,  dstblk: radio1, dstport: in_1 }</p><p>  # RF =
B:1 RX</p><p>  - { srcblk: radio1, srcport: out_1, dstblk: ep3,    dstport:=
 in0  }</p><p>  #</p><p>  # Replay Connections</p><p>  - { srcblk: ep4,    =
  srcport: out0,     dstblk: replay0,  dstport: in_0            }</p><p>  -=
 { srcblk: replay0,  srcport: out_0,    dstblk: ep4,      dstport: in0     =
        }</p><p>  - { srcblk: ep5,      srcport: out0,     dstblk: replay0,=
  dstport: in_1            }</p><p>  - { srcblk: replay0,  srcport: out_1, =
   dstblk: ep5,      dstport: in0             }</p><p>  #</p><p>  #trigger =
Connections</p><p>  - { srcblk: ep6,      srcport: out0,     dstblk: trigge=
r0,  dstport: in_0            }</p><p>  - { srcblk: trigger0,  srcport: out=
_0,    dstblk: ep6,      dstport: in0             }</p><p>  - { srcblk: ep7=
,      srcport: out0,     dstblk: trigger1,  dstport: in_0            }</p>=
<p>  - { srcblk: trigger1,  srcport: out_0,    dstblk: ep7,      dstport: i=
n0             }</p><p>  # BSP Connections</p><p>  - { srcblk: radio0,   sr=
cport: ctrlport, dstblk: _device_, dstport: ctrlport_radio0 }</p><p>  - { s=
rcblk: radio1,   srcport: ctrlport, dstblk: _device_, dstport: ctrlport_rad=
io1 }</p><p>  - { srcblk: _device_, srcport: radio0,   dstblk: radio0,   ds=
tport: radio           }</p><p>  - { srcblk: _device_, srcport: radio1,   d=
stblk: radio1,   dstport: radio           }</p><p>  - { srcblk: _device_, s=
rcport: time,     dstblk: radio0,   dstport: time            }</p><p>  - { =
srcblk: _device_, srcport: time,     dstblk: radio1,   dstport: time       =
     }</p><p>  - { srcblk: replay0,  srcport: axi_ram,  dstblk: _device_, d=
stport: dram            }</p><p># A list of all clock domain connections in=
 design</p><p># ------------------------------------------------</p><p># Fo=
rmat: A list of connection maps (list of key-value pairs) with the followin=
g keys</p><p>#   - srcblk  =3D Source block to connect (Always &quot;_devic=
e_&quot;)</p><p>#   - srcport =3D Clock domain on the source block to conne=
ct</p><p>#   - dstblk  =3D Destination block to connect</p><p>#   - dstport=
 =3D Clock domain on the destination block to connect</p><p>clk_domains:</p=
><p>  - { srcblk: _device_, srcport: radio, dstblk: radio0,  dstport: radio=
 }</p><p>  - { srcblk: _device_, srcport: radio, dstblk: radio1,  dstport: =
radio }</p><p>  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstp=
ort: mem   }</p><p>  - { srcblk: _device_, srcport: radio_2x, dstblk: trigg=
er1,    dstport: ce    }</p><p>  - { srcblk: _device_, srcport: radio_2x, d=
stblk: trigger0,    dstport: ce    }</p><p><br></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a5aa3705fd8f2b8f--

--===============1995365330506056158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1995365330506056158==--
