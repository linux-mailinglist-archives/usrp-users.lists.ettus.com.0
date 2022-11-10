Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9247B623D28
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 09:12:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39911383765
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 03:12:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668067954; bh=U/GQdwBZiyPre7+x9aFXmBBncMtJfl7l/y6HIk2IZLM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0/Rgp2oxyFxDCoN8rT10wn7/h9LmzW+t5c948gxlPUcnhqTe/s6Ulzgqc0za650Zu
	 oIlTzOf7cxPAaijtXqMqgGyzV9ZV4Ke9jBngPqqsJKPKs2CipeRpXy56H5euHSQzWQ
	 TjMIoPO8KZOSNQvDtMr+v15BAE4tIJL1pO/8sSbRjQi5fcNXJr1xXmThj9IDWtxUcB
	 gLcPtcPyoHxLgkhOByFzMSUiRxDfMZzquEDXcBrZ7kh/YU+Sfp7+wdKsdu4kLjE7Tc
	 tVII495Vcuz0Pmhr506UqSgruOJbHJ9BZ7HJSjTMtIniXGaNURLGhS2OJIYEb4KCfe
	 H+ObPxKJ2ZjbA==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 73E303809D2
	for <usrp-users@lists.ettus.com>; Thu, 10 Nov 2022 03:10:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vh2pO/xi";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-3775545dc24so8662027b3.7
        for <usrp-users@lists.ettus.com>; Thu, 10 Nov 2022 00:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o9YjFErpJjoqCq2AcbtsQillLPNxYT9ZEbqs1ly9szQ=;
        b=Vh2pO/xiPaPystmFlsqDmPc7ekeigHy+adoeERRI7foXe7d5IjkAp6NCK6Wa5yRh4C
         6DxWsIQNnXJwzkeIN92J+RUsVrYOWLi2/7eobOIapbRP5lLrvV0my7D2E9FJhqaL+DEk
         IHQUGTwB9VJnEnwLhftSXBTXNuh0YkeuRraNJ1uNL4uxr07FOEMjaNaznylQmgD2oXeG
         +MaQTSR81VaRa0CSCP+XfOdXR7enjH+Tbkt3yyP46pdC4S1cPFKNWo5ndKIaVH1OkFYq
         DhYdsZuqQ1Y/CgnzVxl3ddwJKdwC+p0V/Chm3Zqd6nEo329FJXhQ/C+fyK6iiSI2x1z3
         fmDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o9YjFErpJjoqCq2AcbtsQillLPNxYT9ZEbqs1ly9szQ=;
        b=w2ZEtMl75Ic1pTHP3RHtQQVbrn4tUCqycT5UOyytKX9lXsKDQPoiH7vTbw9mCMU7Dn
         FHwgVtuPIesbNFK0BmEcYlBLjS7YukE57I+wW5b1J5GeMi+6FuGvoC7VWta838XZZCcb
         hs16lGFJmlp17GGuVa9nC+XMRh3sybzaFsYwp6QO6Ga4KqOyJl8D+1FFZh3N/SVlEqzf
         hFlhcqb5t8ncAtawrwz8MWC4i7RRWafh4s7ZzYDolp2/QKyWayWpmmz0t/StV6XyQ0OW
         UZxtxpWxr83BR2NJBx2EUMFp1TBFspVB3OyNM5okcIaoGMR5fpKNylMU2xm581yUBoIN
         YFow==
X-Gm-Message-State: ANoB5pkFZqsOI3U2tCCHqKMwCsSI/8VUt9jIRhS/nnAdZdeXT43JBd77
	k1wkzDAKhEOwVCQP2X69kU5vCauUzAGlF9iwwU9NXj1+1HzUh9N1
X-Google-Smtp-Source: AA0mqf60T13dQUYvZb3MD6J+koDPxgTeJfECFJCgnu2/g+FVtKQ0pVDnAnQJCFzZQ/X9icbZRMDBHIqwJPGgqX1H1tk=
X-Received: by 2002:a0d:e043:0:b0:378:3610:9a13 with SMTP id
 j64-20020a0de043000000b0037836109a13mr1061804ywe.363.1668067849374; Thu, 10
 Nov 2022 00:10:49 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pu5s5MN=595OnmZ52To73cde5eA5nKK0GFvYAQxAg72kw@mail.gmail.com>
In-Reply-To: <CAA=S3Pu5s5MN=595OnmZ52To73cde5eA5nKK0GFvYAQxAg72kw@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Thu, 10 Nov 2022 08:10:38 +0000
Message-ID: <CAA=S3PtURr5Mjp73MJckJu_SA20bTSuvKfLAUgrs3dYVKYDFaQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: UZVZ2NGXJZ3V3Q6AZ7622UHLZANWSVPY
X-Message-ID-Hash: UZVZ2NGXJZ3V3Q6AZ7622UHLZANWSVPY
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why when I changed inputs of RFNOC blocks it is not changed in file x300_rfnoc_image_core.v
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZVZ2NGXJZ3V3Q6AZ7622UHLZANWSVPY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1143770344764602790=="

--===============1143770344764602790==
Content-Type: multipart/alternative; boundary="0000000000009f8f2c05ed194f12"

--0000000000009f8f2c05ed194f12
Content-Type: text/plain; charset="UTF-8"

Hi, My problem is solved.  By adding the option -n I force
rfnoc_image_builder to use that image core that I define it.

rfnoc_image_builder    -n
 /home/sp/rfnoc-test/rfnoc/icores/x300_rfnoc_image_core2.v

On Thu, Nov 10, 2022 at 6:01 AM sp <stackprogramer@gmail.com> wrote:

> I used an RFNOC gain example file when I want to change the input of the
> gain block as below.......
>
>
> module rfnoc_block_gain #(
>   parameter [9:0] THIS_PORTID     = 10'd0,
>   parameter       CHDR_W          = 64,
>   parameter [5:0] MTU             = 10,
>   parameter       NUM_PORTS       = 1
> )(
>   // RFNoC Framework Clocks and Resets
>   input  wire                   rfnoc_chdr_clk,
>   input  wire                   rfnoc_ctrl_clk,
>   input  wire                   ce_clk,
>   //Add shared reg
>   input wire [31:0]  s_impedance,
>   output wire [31:0] s_threshold,
>
>   // RFNoC Backend Interface
>   input  wire [511:0]           rfnoc_core_config,
>   output wire [511:0]           rfnoc_core_status,
>   // AXIS-CHDR Input Ports (from framework)
>   input  wire [(0+NUM_PORTS)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
>   input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tlast,
>   input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tvalid,
>   output wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tready,
>   // AXIS-CHDR Output Ports (to framework)
>   output wire [(0+NUM_PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
>   output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tlast,
>   output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tvalid,
>   input  wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tready,
>   // AXIS-Ctrl Input Port (from framework)
>   input  wire [31:0]            s_rfnoc_ctrl_tdata,
>   input  wire                   s_rfnoc_ctrl_tlast,
>   input  wire                   s_rfnoc_ctrl_tvalid,
>   output wire                   s_rfnoc_ctrl_tready,
>   // AXIS-Ctrl Output Port (to framework)
>   output wire [31:0]            m_rfnoc_ctrl_tdata,
>   output wire                   m_rfnoc_ctrl_tlast,
>   output wire                   m_rfnoc_ctrl_tvalid,
>   input  wire                   m_rfnoc_ctrl_tready
> );
>
> I can not see any change in RFNOC image core ( x300_rfnoc_image_core.v).In
> this file, you can see the gain definition section...
>
> //-----------------------------------
> // gain0
> //-----------------------------------
>
> wire gain0_ce_clk;
> wire [CHDR_W-1:0] s_gain0_in_0_tdata ;
> wire s_gain0_in_0_tlast ;
> wire s_gain0_in_0_tvalid;
> wire s_gain0_in_0_tready;
> wire [CHDR_W-1:0] m_gain0_out_0_tdata ;
> wire m_gain0_out_0_tlast ;
> wire m_gain0_out_0_tvalid;
> wire m_gain0_out_0_tready;
>
> rfnoc_block_gain #(
> .THIS_PORTID (9),
> .CHDR_W (CHDR_W),
> .NUM_PORTS (1),
> .MTU (MTU)
> ) b_gain0_7 (
> .rfnoc_chdr_clk (rfnoc_chdr_clk),
> .rfnoc_ctrl_clk (rfnoc_ctrl_clk),
> .ce_clk (gain0_ce_clk),
> .rfnoc_core_config (rfnoc_core_config[512*8-1:512*7]),
> .rfnoc_core_status (rfnoc_core_status[512*8-1:512*7]),
> .s_rfnoc_chdr_tdata ({s_gain0_in_0_tdata }),
> .s_rfnoc_chdr_tlast ({s_gain0_in_0_tlast }),
> .s_rfnoc_chdr_tvalid ({s_gain0_in_0_tvalid}),
> .s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),
> .m_rfnoc_chdr_tdata ({m_gain0_out_0_tdata }),
> .m_rfnoc_chdr_tlast ({m_gain0_out_0_tlast }),
> .m_rfnoc_chdr_tvalid ({m_gain0_out_0_tvalid}),
> .m_rfnoc_chdr_tready ({m_gain0_out_0_tready}),
> .s_rfnoc_ctrl_tdata (s_gain0_ctrl_tdata),
> .s_rfnoc_ctrl_tlast (s_gain0_ctrl_tlast),
> .s_rfnoc_ctrl_tvalid (s_gain0_ctrl_tvalid),
> .s_rfnoc_ctrl_tready (s_gain0_ctrl_tready),
> .m_rfnoc_ctrl_tdata (m_gain0_ctrl_tdata),
> .m_rfnoc_ctrl_tlast (m_gain0_ctrl_tlast),
> .m_rfnoc_ctrl_tvalid (m_gain0_ctrl_tvalid),
> .m_rfnoc_ctrl_tready (m_gain0_ctrl_tready)
> );
>
>
>

--0000000000009f8f2c05ed194f12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, My problem is solved.=C2=A0 By adding the option -n I =
force rfnoc_image_builder to use that image core that I define it.<div><div=
><br></div><div>rfnoc_image_builder=C2=A0 =C2=A0 -n =C2=A0/home/sp/rfnoc-te=
st/rfnoc/icores/x300_rfnoc_image_core2.v<br></div></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 10, 202=
2 at 6:01 AM sp &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogra=
mer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">I used an RFNOC gain example file when I want=
 to change the input of the gain block as below.......<div><br><br>module r=
fnoc_block_gain #(<br>=C2=A0 parameter [9:0] THIS_PORTID =C2=A0 =C2=A0 =3D =
10&#39;d0,<br>=C2=A0 parameter =C2=A0 =C2=A0 =C2=A0 CHDR_W =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D 64,<br>=C2=A0 parameter [5:0] MTU =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D 10,<br>=C2=A0 parameter =C2=A0 =C2=A0 =C2=A0 N=
UM_PORTS =C2=A0 =C2=A0 =C2=A0 =3D 1<br>)(<br>=C2=A0 // RFNoC Framework Cloc=
ks and Resets<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_chdr_clk,<br>=C2=A0 input =C2=A0wire =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_ctrl_clk,=
<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ce_clk,<br>=C2=A0 //Add shared reg<br>=C2=A0 input wire [=
31:0] =C2=A0s_impedance,<br>=C2=A0 output wire [31:0] s_threshold,<br><br>=
=C2=A0 // RFNoC Backend Interface<br>=C2=A0 input =C2=A0wire [511:0] =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_core_config,<br>=C2=A0 output wire [511:=
0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_core_status,<br>=C2=A0 // AXIS-=
CHDR Input Ports (from framework)<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)=
*CHDR_W-1:0] s_rfnoc_chdr_tdata,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-=
1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tlast,<br>=C2=A0 input =C2=A0w=
ire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tvalid,<br>=
=C2=A0 output wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_c=
hdr_tready,<br>=C2=A0 // AXIS-CHDR Output Ports (to framework)<br>=C2=A0 ou=
tput wire [(0+NUM_PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,<br>=C2=A0 output w=
ire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_chdr_tlast,<br>=
=C2=A0 output wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_c=
hdr_tvalid,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0m_rfnoc_chdr_tready,<br>=C2=A0 // AXIS-Ctrl Input Port (from f=
ramework)<br>=C2=A0 input =C2=A0wire [31:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0s_rfnoc_ctrl_tdata,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tlast,<br>=C2=A0=
 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 s_rfnoc_ctrl_tvalid,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tready,<br>=C2=A0 // AX=
IS-Ctrl Output Port (to framework)<br>=C2=A0 output wire [31:0] =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_ctrl_tdata,<br>=C2=A0 output wire =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl=
_tlast,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tvalid,<br>=C2=A0 input =C2=A0wire =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tready=
<br>);<br><div><br></div><div>I can not see any change in RFNOC image core =
(=C2=A0x300_rfnoc_image_core.v).In this file, you can see the gain definiti=
on section...</div><div><br></div><div><div style=3D"color:rgb(0,0,0);font-=
family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Dr=
oid Sans Fallback&quot;;font-size:14px;line-height:19px;white-space:pre-wra=
p"><div><span style=3D"color:rgb(0,128,0)">//------------------------------=
-----</span></div><div>  <span style=3D"color:rgb(0,128,0)">// gain0</span>=
</div><div>  <span style=3D"color:rgb(0,128,0)">//-------------------------=
----------</span></div><br><div>  <span style=3D"color:rgb(0,0,255)">wire</=
span>              gain0_ce_clk;</div><div>  <span style=3D"color:rgb(0,0,2=
55)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span=
 style=3D"color:rgb(9,134,88)">0</span>] s_gain0_in_0_tdata ;</div><div>  <=
span style=3D"color:rgb(0,0,255)">wire</span>              s_gain0_in_0_tla=
st ;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>            =
  s_gain0_in_0_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire<=
/span>              s_gain0_in_0_tready;</div><div>  <span style=3D"color:r=
gb(0,0,255)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</spa=
n>:<span style=3D"color:rgb(9,134,88)">0</span>] m_gain0_out_0_tdata ;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span>              m_gain0=
_out_0_tlast ;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>  =
            m_gain0_out_0_tvalid;</div><div>  <span style=3D"color:rgb(0,0,=
255)">wire</span>              m_gain0_out_0_tready;</div><br><div>  <span =
style=3D"color:rgb(128,0,0)">rfnoc_block_gain</span> #(</div><div>    .THIS=
_PORTID         (<span style=3D"color:rgb(9,134,88)">9</span>),</div><div> =
   .CHDR_W              (CHDR_W),</div><div>    .NUM_PORTS           (<span=
 style=3D"color:rgb(9,134,88)">1</span>),</div><div>    .MTU               =
  (MTU)</div><div>  ) <span style=3D"color:rgb(128,0,0)">b_gain0_7</span> (=
</div><div>    .rfnoc_chdr_clk      (rfnoc_chdr_clk),</div><div>    .rfnoc_=
ctrl_clk      (rfnoc_ctrl_clk),</div><div>    .ce_clk              (gain0_c=
e_clk),</div><div>    .rfnoc_core_config   (rfnoc_core_config[<span style=
=3D"color:rgb(9,134,88)">512</span>*<span style=3D"color:rgb(9,134,88)">8</=
span>-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb=
(9,134,88)">512</span>*<span style=3D"color:rgb(9,134,88)">7</span>]),</div=
><div>    .rfnoc_core_status   (rfnoc_core_status[<span style=3D"color:rgb(=
9,134,88)">512</span>*<span style=3D"color:rgb(9,134,88)">8</span>-<span st=
yle=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">51=
2</span>*<span style=3D"color:rgb(9,134,88)">7</span>]),</div><div>    .s_r=
fnoc_chdr_tdata  ({s_gain0_in_0_tdata }),</div><div>    .s_rfnoc_chdr_tlast=
  ({s_gain0_in_0_tlast }),</div><div>    .s_rfnoc_chdr_tvalid ({s_gain0_in_=
0_tvalid}),</div><div>    .s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),</di=
v><div>    .m_rfnoc_chdr_tdata  ({m_gain0_out_0_tdata }),</div><div>    .m_=
rfnoc_chdr_tlast  ({m_gain0_out_0_tlast }),</div><div>    .m_rfnoc_chdr_tva=
lid ({m_gain0_out_0_tvalid}),</div><div>    .m_rfnoc_chdr_tready ({m_gain0_=
out_0_tready}),</div><div>    .s_rfnoc_ctrl_tdata  (s_gain0_ctrl_tdata),</d=
iv><div>    .s_rfnoc_ctrl_tlast  (s_gain0_ctrl_tlast),</div><div>    .s_rfn=
oc_ctrl_tvalid (s_gain0_ctrl_tvalid),</div><div>    .s_rfnoc_ctrl_tready (s=
_gain0_ctrl_tready),</div><div>    .m_rfnoc_ctrl_tdata  (m_gain0_ctrl_tdata=
),</div><div>    .m_rfnoc_ctrl_tlast  (m_gain0_ctrl_tlast),</div><div>    .=
m_rfnoc_ctrl_tvalid (m_gain0_ctrl_tvalid),</div><div>    .m_rfnoc_ctrl_trea=
dy (m_gain0_ctrl_tready)</div><div>  );</div><br></div></div><div><br></div=
></div></div>
</blockquote></div>

--0000000000009f8f2c05ed194f12--

--===============1143770344764602790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1143770344764602790==--
