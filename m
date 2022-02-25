Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC544C5A54
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 10:53:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B88ED384A82
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 04:53:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LLGtWq8D";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C66A384785
	for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 04:52:11 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id u3so14653964ybh.5
        for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 01:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZAQx82fe/yc707nU/Zrh0UZXWuvaQqqvZONRKPp/iu0=;
        b=LLGtWq8DSQ0QatUlrDEMbRLiJaMX5PEFSKSEniEee1FjyBv0Kfemzo3Hmw0d2c71ZJ
         6DyW0WuaxyYDeNhfdqAT0pdBfqqRgY6JGntt7TMW84RcNlbHGUPpk7cpeNdv74XCJg/v
         narUQ4Xtae0HJq5xoPet3DgiRp7hmfoxFJWf3X+iYvavNmDYNb8qDl+R3RITEKkdeSsJ
         wTWRWY1fwFbG5t3yPKKaP87ILt0EA5zwcmkAmrU2DPda3FZsS1lDlG4O7nmXsvSCZ5Q2
         rJivX0aKNLGyDOZWzsnLZDH/cUks/N9cz1cexpQEYKikposxxWhrTHIUXEpHzCX90Z8D
         4NSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZAQx82fe/yc707nU/Zrh0UZXWuvaQqqvZONRKPp/iu0=;
        b=h7SdOlGz3+31+u1SFggelwU7NgDT9S36gpXIvjlbfQR2tIbK8tc7ypox88TDVXZn1a
         pkXHRLoqXrU3ghdZIaHMYnjpqA5hkxajyNOljpYLORYM+jmySsG4S1cRvqBMB/1TZkZ/
         +ZxZbFdluNkjPBQDZrj+SfoRQGTA2uX5IZsSttiGPDwES7xxpsYAYqsgaKMbcaf4UVnl
         HqhhipEIZNfNeEQfDFjRdwmMlzfJjmhHlDU/FPN/GJsMM7rsltRNl1qPP2h3ib7QbarV
         YeioyCNOJjVLW15MnbqVNvNiajoOxUAi0fvo5C6OWDMbMmgKv8G47WfZZzMEomAwERVw
         /A6w==
X-Gm-Message-State: AOAM533GTHhpTjKk1w6CncLKM8+NZgVgC6LcRVoj3d7YDJ2AjcCvsRKt
	dZoP2ILhKTzi+GbkRv6oNkDWrEWXQeRBbXbwq/PsjkozgSDfrlEZ
X-Google-Smtp-Source: ABdhPJzhyWMWvVJBw+Wmsdfauu18YXg43gfx0uLhs6Op0QZnnxTTboQ3w1A5iQ9iV5Y4k1p4ATNHl8SAU+eEJh/YUfE=
X-Received: by 2002:a25:7455:0:b0:61a:5541:a36c with SMTP id
 p82-20020a257455000000b0061a5541a36cmr14135109ybc.148.1645955529994; Sun, 27
 Feb 2022 01:52:09 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 25 Feb 2022 13:21:03 +0330
Message-ID: <CAA=S3PsKT24Lmf=dnnZF4nP1BBLRk3Kf=tci6J0K2OxMJvas3g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DA533UGSSL6ZYJNPYZNQOHK6UAIEJNQL
X-Message-ID-Hash: DA533UGSSL6ZYJNPYZNQOHK6UAIEJNQL
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's mean .debug () in RFNOC replay block?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DA533UGSSL6ZYJNPYZNQOHK6UAIEJNQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5966793352433143108=="

--===============5966793352433143108==
Content-Type: multipart/alternative; boundary="000000000000ae777705d8fce268"

--000000000000ae777705d8fce268
Content-Type: text/plain; charset="UTF-8"

I am reading RFNOC replay block, end of the Verilog code I faced a debug
code ...
what's mean debug? what does it do?

axi_dma_master #(
.AWIDTH (MEM_ADDR_W),
.DWIDTH (MEM_DATA_W)
) axi_dma_master_i (
//
// AXI4 Memory Mapped Interface to DRAM
//
.aclk (mem_clk),
.areset (mem_rst),

// Write control
.m_axi_awid (m_axi_awid [ 1*i +: 1]),
.m_axi_awaddr (m_axi_awaddr [MEM_ADDR_W*i +: MEM_ADDR_W]),
.m_axi_awlen (m_axi_awlen [ 8*i +: 8]),
.m_axi_awsize (m_axi_awsize [ 3*i +: 3]),
.m_axi_awburst (m_axi_awburst [ 2*i +: 2]),
.m_axi_awvalid (m_axi_awvalid [ 1*i +: 1]),
.m_axi_awready (m_axi_awready [ 1*i +: 1]),
.m_axi_awlock (m_axi_awlock [ 1*i +: 1]),
.m_axi_awcache (m_axi_awcache [ 4*i +: 4]),
.m_axi_awprot (m_axi_awprot [ 3*i +: 3]),
.m_axi_awqos (m_axi_awqos [ 4*i +: 4]),
.m_axi_awregion (m_axi_awregion[ 4*i +: 4]),
.m_axi_awuser (m_axi_awuser [ 1*i +: 1]),

// Write Data
.m_axi_wdata (m_axi_wdata [ MEM_DATA_W*i +: MEM_DATA_W]),
.m_axi_wstrb (m_axi_wstrb [(MEM_DATA_W/8)*i +: (MEM_DATA_W/8)]),
.m_axi_wlast (m_axi_wlast [ 1*i +: 1]),
.m_axi_wvalid (m_axi_wvalid[ 1*i +: 1]),
.m_axi_wready (m_axi_wready[ 1*i +: 1]),
.m_axi_wuser (m_axi_wuser [ 1*i +: 1]),

// Write Response
.m_axi_bid (m_axi_bid [1*i +: 1]),
.m_axi_bresp (m_axi_bresp [2*i +: 2]),
.m_axi_buser (m_axi_buser [1*i +: 1]),
.m_axi_bvalid (m_axi_bvalid[1*i +: 1]),
.m_axi_bready (m_axi_bready[1*i +: 1]),

// Read Control
.m_axi_arid (m_axi_arid [ 1*i +: 1]),
.m_axi_araddr (m_axi_araddr [MEM_ADDR_W*i +: MEM_ADDR_W]),
.m_axi_arlen (m_axi_arlen [ 8*i +: 8]),
.m_axi_arsize (m_axi_arsize [ 3*i +: 3]),
.m_axi_arburst (m_axi_arburst [ 2*i +: 2]),
.m_axi_arvalid (m_axi_arvalid [ 1*i +: 1]),
.m_axi_arready (m_axi_arready [ 1*i +: 1]),
.m_axi_arlock (m_axi_arlock [ 1*i +: 1]),
.m_axi_arcache (m_axi_arcache [ 4*i +: 4]),
.m_axi_arprot (m_axi_arprot [ 3*i +: 3]),
.m_axi_arqos (m_axi_arqos [ 4*i +: 4]),
.m_axi_arregion (m_axi_arregion[ 4*i +: 4]),
.m_axi_aruser (m_axi_aruser [ 1*i +: 1]),

// Read Data
.m_axi_rid (m_axi_rid [ 1*i +: 1]),
.m_axi_rdata (m_axi_rdata [MEM_DATA_W*i +: MEM_DATA_W]),
.m_axi_rresp (m_axi_rresp [ 2*i +: 2]),
.m_axi_rlast (m_axi_rlast [ 1*i +: 1]),
.m_axi_ruser (m_axi_ruser [ 1*i +: 1]),
.m_axi_rvalid (m_axi_rvalid[ 1*i +: 1]),
.m_axi_rready (m_axi_rready[ 1*i +: 1]),

//
// Interface for Write transactions
//
.write_addr (write_addr),
.write_count (write_count),
.write_ctrl_valid (write_ctrl_valid),
.write_ctrl_ready (write_ctrl_ready),
.write_data (write_data),
.write_data_valid (write_data_valid),
.write_data_ready (write_data_ready),

//
// Interface for Read transactions
//
.read_addr (read_addr),
.read_count (read_count),
.read_ctrl_valid (read_ctrl_valid),
.read_ctrl_ready (read_ctrl_ready),
.read_data (read_data),
.read_data_valid (read_data_valid),
.read_data_ready (read_data_ready),

//
// Debug
//
.debug ()
);

--000000000000ae777705d8fce268
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am reading RFNOC replay block, end of the Verilog code I=
 faced a debug code ...<div>what&#39;s mean debug? what does it do?<br><div=
><br></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans=
 Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;=
;font-size:14px;line-height:19px;white-space:pre"><div><span style=3D"color=
:rgb(128,0,0)">axi_dma_master</span> #(</div><div>        .AWIDTH (MEM_ADDR=
_W),</div><div>        .DWIDTH (MEM_DATA_W)</div><div>      ) <span style=
=3D"color:rgb(128,0,0)">axi_dma_master_i</span> (</div><div>        <span s=
tyle=3D"color:rgb(0,128,0)">//</span></div><div>        <span style=3D"colo=
r:rgb(0,128,0)">// AXI4 Memory Mapped Interface to DRAM</span></div><div>  =
      <span style=3D"color:rgb(0,128,0)">//</span></div><div>        .aclk =
  (mem_clk),</div><div>        .areset (mem_rst),</div><br><div>        <sp=
an style=3D"color:rgb(0,128,0)">// Write control</span></div><div>        .=
m_axi_awid     (m_axi_awid    [         <span style=3D"color:rgb(9,134,88)"=
>1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</di=
v><div>        .m_axi_awaddr   (m_axi_awaddr  [MEM_ADDR_W*i +: MEM_ADDR_W])=
,</div><div>        .m_axi_awlen    (m_axi_awlen   [         <span style=3D=
"color:rgb(9,134,88)">8</span>*i +:          <span style=3D"color:rgb(9,134=
,88)">8</span>]),</div><div>        .m_axi_awsize   (m_axi_awsize  [       =
  <span style=3D"color:rgb(9,134,88)">3</span>*i +:          <span style=3D=
"color:rgb(9,134,88)">3</span>]),</div><div>        .m_axi_awburst  (m_axi_=
awburst [         <span style=3D"color:rgb(9,134,88)">2</span>*i +:        =
  <span style=3D"color:rgb(9,134,88)">2</span>]),</div><div>        .m_axi_=
awvalid  (m_axi_awvalid [         <span style=3D"color:rgb(9,134,88)">1</sp=
an>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div=
>        .m_axi_awready  (m_axi_awready [         <span style=3D"color:rgb(=
9,134,88)">1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</sp=
an>]),</div><div>        .m_axi_awlock   (m_axi_awlock  [         <span sty=
le=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb(=
9,134,88)">1</span>]),</div><div>        .m_axi_awcache  (m_axi_awcache [  =
       <span style=3D"color:rgb(9,134,88)">4</span>*i +:          <span sty=
le=3D"color:rgb(9,134,88)">4</span>]),</div><div>        .m_axi_awprot   (m=
_axi_awprot  [         <span style=3D"color:rgb(9,134,88)">3</span>*i +:   =
       <span style=3D"color:rgb(9,134,88)">3</span>]),</div><div>        .m=
_axi_awqos    (m_axi_awqos   [         <span style=3D"color:rgb(9,134,88)">=
4</span>*i +:          <span style=3D"color:rgb(9,134,88)">4</span>]),</div=
><div>        .m_axi_awregion (m_axi_awregion[         <span style=3D"color=
:rgb(9,134,88)">4</span>*i +:          <span style=3D"color:rgb(9,134,88)">=
4</span>]),</div><div>        .m_axi_awuser   (m_axi_awuser  [         <spa=
n style=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color=
:rgb(9,134,88)">1</span>]),</div><br><div>        <span style=3D"color:rgb(=
0,128,0)">// Write Data</span></div><div>        .m_axi_wdata  (m_axi_wdata=
 [    MEM_DATA_W*i +:     MEM_DATA_W]),</div><div>        .m_axi_wstrb  (m_=
axi_wstrb [(MEM_DATA_W/<span style=3D"color:rgb(9,134,88)">8</span>)*i +: (=
MEM_DATA_W/<span style=3D"color:rgb(9,134,88)">8</span>)]),</div><div>     =
   .m_axi_wlast  (m_axi_wlast [             <span style=3D"color:rgb(9,134,=
88)">1</span>*i +:              <span style=3D"color:rgb(9,134,88)">1</span=
>]),</div><div>        .m_axi_wvalid (m_axi_wvalid[             <span style=
=3D"color:rgb(9,134,88)">1</span>*i +:              <span style=3D"color:rg=
b(9,134,88)">1</span>]),</div><div>        .m_axi_wready (m_axi_wready[    =
         <span style=3D"color:rgb(9,134,88)">1</span>*i +:              <sp=
an style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_wuser=
  (m_axi_wuser [             <span style=3D"color:rgb(9,134,88)">1</span>*i=
 +:              <span style=3D"color:rgb(9,134,88)">1</span>]),</div><br><=
div>        <span style=3D"color:rgb(0,128,0)">// Write Response</span></di=
v><div>        .m_axi_bid    (m_axi_bid   [<span style=3D"color:rgb(9,134,8=
8)">1</span>*i +: <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div=
>        .m_axi_bresp  (m_axi_bresp [<span style=3D"color:rgb(9,134,88)">2<=
/span>*i +: <span style=3D"color:rgb(9,134,88)">2</span>]),</div><div>     =
   .m_axi_buser  (m_axi_buser [<span style=3D"color:rgb(9,134,88)">1</span>=
*i +: <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_=
axi_bvalid (m_axi_bvalid[<span style=3D"color:rgb(9,134,88)">1</span>*i +: =
<span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_br=
eady (m_axi_bready[<span style=3D"color:rgb(9,134,88)">1</span>*i +: <span =
style=3D"color:rgb(9,134,88)">1</span>]),</div><br><div>        <span style=
=3D"color:rgb(0,128,0)">// Read Control</span></div><div>        .m_axi_ari=
d     (m_axi_arid    [         <span style=3D"color:rgb(9,134,88)">1</span>=
*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>  =
      .m_axi_araddr   (m_axi_araddr  [MEM_ADDR_W*i +: MEM_ADDR_W]),</div><d=
iv>        .m_axi_arlen    (m_axi_arlen   [         <span style=3D"color:rg=
b(9,134,88)">8</span>*i +:          <span style=3D"color:rgb(9,134,88)">8</=
span>]),</div><div>        .m_axi_arsize   (m_axi_arsize  [         <span s=
tyle=3D"color:rgb(9,134,88)">3</span>*i +:          <span style=3D"color:rg=
b(9,134,88)">3</span>]),</div><div>        .m_axi_arburst  (m_axi_arburst [=
         <span style=3D"color:rgb(9,134,88)">2</span>*i +:          <span s=
tyle=3D"color:rgb(9,134,88)">2</span>]),</div><div>        .m_axi_arvalid  =
(m_axi_arvalid [         <span style=3D"color:rgb(9,134,88)">1</span>*i +: =
         <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        =
.m_axi_arready  (m_axi_arready [         <span style=3D"color:rgb(9,134,88)=
">1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</d=
iv><div>        .m_axi_arlock   (m_axi_arlock  [         <span style=3D"col=
or:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb(9,134,88)=
">1</span>]),</div><div>        .m_axi_arcache  (m_axi_arcache [         <s=
pan style=3D"color:rgb(9,134,88)">4</span>*i +:          <span style=3D"col=
or:rgb(9,134,88)">4</span>]),</div><div>        .m_axi_arprot   (m_axi_arpr=
ot  [         <span style=3D"color:rgb(9,134,88)">3</span>*i +:          <s=
pan style=3D"color:rgb(9,134,88)">3</span>]),</div><div>        .m_axi_arqo=
s    (m_axi_arqos   [         <span style=3D"color:rgb(9,134,88)">4</span>*=
i +:          <span style=3D"color:rgb(9,134,88)">4</span>]),</div><div>   =
     .m_axi_arregion (m_axi_arregion[         <span style=3D"color:rgb(9,13=
4,88)">4</span>*i +:          <span style=3D"color:rgb(9,134,88)">4</span>]=
),</div><div>        .m_axi_aruser   (m_axi_aruser  [         <span style=
=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb(9,=
134,88)">1</span>]),</div><br><div>        <span style=3D"color:rgb(0,128,0=
)">// Read Data</span></div><div>        .m_axi_rid    (m_axi_rid   [      =
   <span style=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=
=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_rdata  (m_axi=
_rdata [MEM_DATA_W*i +: MEM_DATA_W]),</div><div>        .m_axi_rresp  (m_ax=
i_rresp [         <span style=3D"color:rgb(9,134,88)">2</span>*i +:        =
  <span style=3D"color:rgb(9,134,88)">2</span>]),</div><div>        .m_axi_=
rlast  (m_axi_rlast [         <span style=3D"color:rgb(9,134,88)">1</span>*=
i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>   =
     .m_axi_ruser  (m_axi_ruser [         <span style=3D"color:rgb(9,134,88=
)">1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</=
div><div>        .m_axi_rvalid (m_axi_rvalid[         <span style=3D"color:=
rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1=
</span>]),</div><div>        .m_axi_rready (m_axi_rready[         <span sty=
le=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb(=
9,134,88)">1</span>]),</div><br><div>        <span style=3D"color:rgb(0,128=
,0)">//</span></div><div>        <span style=3D"color:rgb(0,128,0)">// Inte=
rface for Write transactions</span></div><div>        <span style=3D"color:=
rgb(0,128,0)">//</span></div><div>        .write_addr       (write_addr),</=
div><div>        .write_count      (write_count),</div><div>        .write_=
ctrl_valid (write_ctrl_valid),</div><div>        .write_ctrl_ready (write_c=
trl_ready),</div><div>        .write_data       (write_data),</div><div>   =
     .write_data_valid (write_data_valid),</div><div>        .write_data_re=
ady (write_data_ready),</div><br><div>        <span style=3D"color:rgb(0,12=
8,0)">//</span></div><div>        <span style=3D"color:rgb(0,128,0)">// Int=
erface for Read transactions</span></div><div>        <span style=3D"color:=
rgb(0,128,0)">//</span></div><div>        .read_addr       (read_addr),</di=
v><div>        .read_count      (read_count),</div><div>        .read_ctrl_=
valid (read_ctrl_valid),</div><div>        .read_ctrl_ready (read_ctrl_read=
y),</div><div>        .read_data       (read_data),</div><div>        .read=
_data_valid (read_data_valid),</div><div>        .read_data_ready (read_dat=
a_ready),</div><br><div>        <span style=3D"color:rgb(0,128,0)">//</span=
></div><div>        <span style=3D"color:rgb(0,128,0)">// Debug</span></div=
><div>        <span style=3D"color:rgb(0,128,0)">//</span></div><div>      =
  .debug ()</div><div>      );</div></div></div></div></div>

--000000000000ae777705d8fce268--

--===============5966793352433143108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5966793352433143108==--
