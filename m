Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A360623B94
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 07:02:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 225C13837B2
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 01:02:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668060172; bh=00Dfj2vI+SI3VmFV+fzikmj9nG2aHsTxg/zJjKJ1z9E=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sMq9bn7MEsrreSl2wh2zCJKYz+kHu7JnUhTbk6N0Xye+tJSoCNZFzsOWnjtwn9bAe
	 /rJ/VTGSHoAofWEHT4StF5aUKuLga0f8qSyF5Gpkl0mmfYMeE7l1krRV6lrthNL7gQ
	 wJrEts1aBV7GlLQqELh7gZDfgcn/U649A+/BwlpcgU9rG/84axkqa6Xye6VtwzLEv3
	 FgU7I+tTzF7jaMqYJi9rKvPpqk+szRutTVpoCscAMt72CBoUjqUdbtyjhuLvoUkRkJ
	 4y8VC4YpQbzk7Dk1rmcWLzOs340IYWARQsc1PvUGQQq5vaMITVnN+D1TKpXDVohYFN
	 N3hjJ+TDx/hCA==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F04A38102A
	for <usrp-users@lists.ettus.com>; Thu, 10 Nov 2022 01:01:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="phzYBgfB";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id f201so483yba.12
        for <usrp-users@lists.ettus.com>; Wed, 09 Nov 2022 22:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JGuPSenVXGhjs68O8rMh/xVT5hDA2kCwN/sKcSnoggY=;
        b=phzYBgfB+s1XIB3gOMzWKnL0flpqGG3z6N2f9h589sV/20EOIZ9Peiui6pvN/5F2Li
         KB6UA79kypUF7qfh3+EPqqo0f4IqQvx85W+9l3ySKpAcAYSi1dWSU1y75ZQwb+n7rTm9
         LdeOB25aTZyotc85ipbufKt00OOdRKGqAuOkRCn5bBvHLicp2MzxN3V5OcuFv/v5mlk/
         7v+UFzHTb/lGiMM5jsx321x1rsbPFyUWl690536wwYQ2HQ9rg9bkFInCcQ+BRq5xbcaO
         uQgIgV+S2EtjLuJwv8aT3yYOf54RTXOs170GAlMWv1vx18DT6YrEQaNhJwIbMOYATrjh
         Y80w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JGuPSenVXGhjs68O8rMh/xVT5hDA2kCwN/sKcSnoggY=;
        b=lPj0uy4YZEwP+0P+DmgwVvnME6oH5+8xnsTfvVp7OWPRfuNSC/8+XZfdhgCa1g5GyF
         UNjO8PQpraiP2QR4yeXvTxaeRdQIGFONODhisqGpdtj27qDpoyeHxX9oSNnVksH01H25
         5fquBxoBy2ScUJThPZZU1rJPJSHe9hU11VhioL6m76EEMrhmiPCfFzA29CqCgHvbmm3I
         5C7OP2SoCV5HcSvqhGJb4rL6b5p9v+L+cuq0mFCm2rjdh+RG8dv21zXWbokSn3OIXMdS
         yZ91jifz928+ONhWSpPFdOg+GG9Iiri+QfIGRJ3nrMWeQmliXlJhbQbXni4/B9pHerPA
         CrzQ==
X-Gm-Message-State: ACrzQf34+4raaRpWhKk42aNx0/vmqc2OjHEjADDa5h57eWzScPMR24Yk
	tYCSkjoHcS5IGxHuqFNSoa50pqfqyDNwhd0WTK4JvOUeJQOFMhpm
X-Google-Smtp-Source: AMsMyM6Nza4anqpFRp72/OhIB7NpIEWB7silDABwIcDNgBt4sg/9n1gnYGgSOVyKw+wweHnZT2qeXLwAxQqZK0ZAYB4=
X-Received: by 2002:a25:6e07:0:b0:6ca:22bd:761b with SMTP id
 j7-20020a256e07000000b006ca22bd761bmr60967888ybc.229.1668060103057; Wed, 09
 Nov 2022 22:01:43 -0800 (PST)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Thu, 10 Nov 2022 06:01:32 +0000
Message-ID: <CAA=S3Pu5s5MN=595OnmZ52To73cde5eA5nKK0GFvYAQxAg72kw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 5RLHAHB5H7G6Q3YCVI5LBMQV4LR6SBJC
X-Message-ID-Hash: 5RLHAHB5H7G6Q3YCVI5LBMQV4LR6SBJC
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why when I changed inputs of RFNOC blocks it is not changed in file x300_rfnoc_image_core.v
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5RLHAHB5H7G6Q3YCVI5LBMQV4LR6SBJC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1801819814465695499=="

--===============1801819814465695499==
Content-Type: multipart/alternative; boundary="000000000000e8274f05ed1781fe"

--000000000000e8274f05ed1781fe
Content-Type: text/plain; charset="UTF-8"

I used an RFNOC gain example file when I want to change the input of the
gain block as below.......


module rfnoc_block_gain #(
  parameter [9:0] THIS_PORTID     = 10'd0,
  parameter       CHDR_W          = 64,
  parameter [5:0] MTU             = 10,
  parameter       NUM_PORTS       = 1
)(
  // RFNoC Framework Clocks and Resets
  input  wire                   rfnoc_chdr_clk,
  input  wire                   rfnoc_ctrl_clk,
  input  wire                   ce_clk,
  //Add shared reg
  input wire [31:0]  s_impedance,
  output wire [31:0] s_threshold,

  // RFNoC Backend Interface
  input  wire [511:0]           rfnoc_core_config,
  output wire [511:0]           rfnoc_core_status,
  // AXIS-CHDR Input Ports (from framework)
  input  wire [(0+NUM_PORTS)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
  input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tlast,
  input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tvalid,
  output wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tready,
  // AXIS-CHDR Output Ports (to framework)
  output wire [(0+NUM_PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
  output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tlast,
  output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tvalid,
  input  wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tready,
  // AXIS-Ctrl Input Port (from framework)
  input  wire [31:0]            s_rfnoc_ctrl_tdata,
  input  wire                   s_rfnoc_ctrl_tlast,
  input  wire                   s_rfnoc_ctrl_tvalid,
  output wire                   s_rfnoc_ctrl_tready,
  // AXIS-Ctrl Output Port (to framework)
  output wire [31:0]            m_rfnoc_ctrl_tdata,
  output wire                   m_rfnoc_ctrl_tlast,
  output wire                   m_rfnoc_ctrl_tvalid,
  input  wire                   m_rfnoc_ctrl_tready
);

I can not see any change in RFNOC image core ( x300_rfnoc_image_core.v).In
this file, you can see the gain definition section...

//-----------------------------------
// gain0
//-----------------------------------

wire gain0_ce_clk;
wire [CHDR_W-1:0] s_gain0_in_0_tdata ;
wire s_gain0_in_0_tlast ;
wire s_gain0_in_0_tvalid;
wire s_gain0_in_0_tready;
wire [CHDR_W-1:0] m_gain0_out_0_tdata ;
wire m_gain0_out_0_tlast ;
wire m_gain0_out_0_tvalid;
wire m_gain0_out_0_tready;

rfnoc_block_gain #(
.THIS_PORTID (9),
.CHDR_W (CHDR_W),
.NUM_PORTS (1),
.MTU (MTU)
) b_gain0_7 (
.rfnoc_chdr_clk (rfnoc_chdr_clk),
.rfnoc_ctrl_clk (rfnoc_ctrl_clk),
.ce_clk (gain0_ce_clk),
.rfnoc_core_config (rfnoc_core_config[512*8-1:512*7]),
.rfnoc_core_status (rfnoc_core_status[512*8-1:512*7]),
.s_rfnoc_chdr_tdata ({s_gain0_in_0_tdata }),
.s_rfnoc_chdr_tlast ({s_gain0_in_0_tlast }),
.s_rfnoc_chdr_tvalid ({s_gain0_in_0_tvalid}),
.s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),
.m_rfnoc_chdr_tdata ({m_gain0_out_0_tdata }),
.m_rfnoc_chdr_tlast ({m_gain0_out_0_tlast }),
.m_rfnoc_chdr_tvalid ({m_gain0_out_0_tvalid}),
.m_rfnoc_chdr_tready ({m_gain0_out_0_tready}),
.s_rfnoc_ctrl_tdata (s_gain0_ctrl_tdata),
.s_rfnoc_ctrl_tlast (s_gain0_ctrl_tlast),
.s_rfnoc_ctrl_tvalid (s_gain0_ctrl_tvalid),
.s_rfnoc_ctrl_tready (s_gain0_ctrl_tready),
.m_rfnoc_ctrl_tdata (m_gain0_ctrl_tdata),
.m_rfnoc_ctrl_tlast (m_gain0_ctrl_tlast),
.m_rfnoc_ctrl_tvalid (m_gain0_ctrl_tvalid),
.m_rfnoc_ctrl_tready (m_gain0_ctrl_tready)
);

--000000000000e8274f05ed1781fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I used an RFNOC gain example file when I want to change th=
e input of the gain block as below.......<div><br><br>module rfnoc_block_ga=
in #(<br>=C2=A0 parameter [9:0] THIS_PORTID =C2=A0 =C2=A0 =3D 10&#39;d0,<br=
>=C2=A0 parameter =C2=A0 =C2=A0 =C2=A0 CHDR_W =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D 64,<br>=C2=A0 parameter [5:0] MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D 10,<br>=C2=A0 parameter =C2=A0 =C2=A0 =C2=A0 NUM_PORTS =C2=
=A0 =C2=A0 =C2=A0 =3D 1<br>)(<br>=C2=A0 // RFNoC Framework Clocks and Reset=
s<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 rfnoc_chdr_clk,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_ctrl_clk,<br>=C2=A0 =
input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ce_clk,<br>=C2=A0 //Add shared reg<br>=C2=A0 input wire [31:0] =C2=
=A0s_impedance,<br>=C2=A0 output wire [31:0] s_threshold,<br><br>=C2=A0 // =
RFNoC Backend Interface<br>=C2=A0 input =C2=A0wire [511:0] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 rfnoc_core_config,<br>=C2=A0 output wire [511:0] =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_core_status,<br>=C2=A0 // AXIS-CHDR I=
nput Ports (from framework)<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)*CHDR_=
W-1:0] s_rfnoc_chdr_tdata,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-1:0] =
=C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tlast,<br>=C2=A0 input =C2=A0wire [=
(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tvalid,<br>=C2=
=A0 output wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr=
_tready,<br>=C2=A0 // AXIS-CHDR Output Ports (to framework)<br>=C2=A0 outpu=
t wire [(0+NUM_PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,<br>=C2=A0 output wire=
 [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_chdr_tlast,<br>=C2=
=A0 output wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_chdr=
_tvalid,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=
=A0 =C2=A0m_rfnoc_chdr_tready,<br>=C2=A0 // AXIS-Ctrl Input Port (from fram=
ework)<br>=C2=A0 input =C2=A0wire [31:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0s_rfnoc_ctrl_tdata,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tlast,<br>=C2=A0 inp=
ut =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 s_rfnoc_ctrl_tvalid,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tready,<br>=C2=A0 // AXIS-C=
trl Output Port (to framework)<br>=C2=A0 output wire [31:0] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_ctrl_tdata,<br>=C2=A0 output wire =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tlast=
,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 m_rfnoc_ctrl_tvalid,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tready<br>);=
<br><div><br></div><div>I can not see any change in RFNOC image core (=C2=
=A0x300_rfnoc_image_core.v).In this file, you can see the gain definition s=
ection...</div><div><br></div><div><div style=3D"color:rgb(0,0,0);font-fami=
ly:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid =
Sans Fallback&quot;;font-size:14px;line-height:19px;white-space:pre"><div><=
span style=3D"color:rgb(0,128,0)">//-----------------------------------</sp=
an></div><div>  <span style=3D"color:rgb(0,128,0)">// gain0</span></div><di=
v>  <span style=3D"color:rgb(0,128,0)">//----------------------------------=
-</span></div><br><div>  <span style=3D"color:rgb(0,0,255)">wire</span>    =
          gain0_ce_clk;</div><div>  <span style=3D"color:rgb(0,0,255)">wire=
</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D=
"color:rgb(9,134,88)">0</span>] s_gain0_in_0_tdata ;</div><div>  <span styl=
e=3D"color:rgb(0,0,255)">wire</span>              s_gain0_in_0_tlast ;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span>              s_gain0=
_in_0_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>   =
           s_gain0_in_0_tready;</div><div>  <span style=3D"color:rgb(0,0,25=
5)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span =
style=3D"color:rgb(9,134,88)">0</span>] m_gain0_out_0_tdata ;</div><div>  <=
span style=3D"color:rgb(0,0,255)">wire</span>              m_gain0_out_0_tl=
ast ;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>           =
   m_gain0_out_0_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wir=
e</span>              m_gain0_out_0_tready;</div><br><div>  <span style=3D"=
color:rgb(128,0,0)">rfnoc_block_gain</span> #(</div><div>    .THIS_PORTID  =
       (<span style=3D"color:rgb(9,134,88)">9</span>),</div><div>    .CHDR_=
W              (CHDR_W),</div><div>    .NUM_PORTS           (<span style=3D=
"color:rgb(9,134,88)">1</span>),</div><div>    .MTU                 (MTU)</=
div><div>  ) <span style=3D"color:rgb(128,0,0)">b_gain0_7</span> (</div><di=
v>    .rfnoc_chdr_clk      (rfnoc_chdr_clk),</div><div>    .rfnoc_ctrl_clk =
     (rfnoc_ctrl_clk),</div><div>    .ce_clk              (gain0_ce_clk),</=
div><div>    .rfnoc_core_config   (rfnoc_core_config[<span style=3D"color:r=
gb(9,134,88)">512</span>*<span style=3D"color:rgb(9,134,88)">8</span>-<span=
 style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)"=
>512</span>*<span style=3D"color:rgb(9,134,88)">7</span>]),</div><div>    .=
rfnoc_core_status   (rfnoc_core_status[<span style=3D"color:rgb(9,134,88)">=
512</span>*<span style=3D"color:rgb(9,134,88)">8</span>-<span style=3D"colo=
r:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">512</span>*<s=
pan style=3D"color:rgb(9,134,88)">7</span>]),</div><div>    .s_rfnoc_chdr_t=
data  ({s_gain0_in_0_tdata }),</div><div>    .s_rfnoc_chdr_tlast  ({s_gain0=
_in_0_tlast }),</div><div>    .s_rfnoc_chdr_tvalid ({s_gain0_in_0_tvalid}),=
</div><div>    .s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),</div><div>    =
.m_rfnoc_chdr_tdata  ({m_gain0_out_0_tdata }),</div><div>    .m_rfnoc_chdr_=
tlast  ({m_gain0_out_0_tlast }),</div><div>    .m_rfnoc_chdr_tvalid ({m_gai=
n0_out_0_tvalid}),</div><div>    .m_rfnoc_chdr_tready ({m_gain0_out_0_tread=
y}),</div><div>    .s_rfnoc_ctrl_tdata  (s_gain0_ctrl_tdata),</div><div>   =
 .s_rfnoc_ctrl_tlast  (s_gain0_ctrl_tlast),</div><div>    .s_rfnoc_ctrl_tva=
lid (s_gain0_ctrl_tvalid),</div><div>    .s_rfnoc_ctrl_tready (s_gain0_ctrl=
_tready),</div><div>    .m_rfnoc_ctrl_tdata  (m_gain0_ctrl_tdata),</div><di=
v>    .m_rfnoc_ctrl_tlast  (m_gain0_ctrl_tlast),</div><div>    .m_rfnoc_ctr=
l_tvalid (m_gain0_ctrl_tvalid),</div><div>    .m_rfnoc_ctrl_tready (m_gain0=
_ctrl_tready)</div><div>  );</div><br></div></div><div><br></div></div></di=
v>

--000000000000e8274f05ed1781fe--

--===============1801819814465695499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1801819814465695499==--
