Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAFB4C5DE8
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 18:54:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0065384C27
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 12:53:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="aXgnzy5Y";
	dkim-atps=neutral
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C84943848A3
	for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 12:53:04 -0500 (EST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-2d62593ad9bso84566037b3.8
        for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 09:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iecR1MqEtfoWMRGbVy6I0ZPR9psM5HUyozoqkjbt0jI=;
        b=aXgnzy5YnjFfoIK+GjPb2vVhOW40lUKt9qehncWV6Jrf6+vh8BDXA0DHkoqnL9rPSN
         +YNDve8X/9HCiS4lDQM/Wet4rlA3oD6JAwWG4p0dyANXIEwwX4gc428znWzKgNuUbhec
         k7b4ZpRyoCyzINd9+V0y2u9WbBoDXgo+YcDOws7CghDzEIZDp/CtZ+/hVP1YL5CHLwOV
         PK8afUHg7fXNWiPYsVuZ//jeuSod2B9EqNkMHDvH6MLNcrwhiAMgaj+ZjML2bd/fQv4D
         HNqEET522xAtzY+e06UiV+dT/lfkroH+f32p+uZOCJMdUz0F0DL6vjeD/ScinmrVm2Mq
         BWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iecR1MqEtfoWMRGbVy6I0ZPR9psM5HUyozoqkjbt0jI=;
        b=pCk/PYxorulyMY3LQKLEGyuGU0OQcsw1mrCYCDp6plcFXHL3sfmgZ97idBEh2azRO7
         4/olGylZPF9CEEFcsN00VnKjCV9tvSCXVy0Wm4naFo6nC1u0ehhSyCxP7jwDlnmNVKvL
         h2tb29PSN+N2iCrGOvZtTizWa+fpxMb9FYDmusqSFgaW08wX14jSunQ9SM0LV1Lv1IJw
         ePU3rwBnXQbLNqL+qD1iAMteHlmYxn4HfD9Lc74w+JoRlqUBGRxYYlv7UH0PNdZ2h07o
         PD8QQxe/SxGPVNk57XWV+uWWYHwDLR49h/txGJOZ3DWZgVL8/hro1Z88Ak9tOYfqvI/5
         ApBQ==
X-Gm-Message-State: AOAM531uKZ46UrZNj8hXnZ5Rp9h9DGgBWMUlRfssqp194oESRRS68PjR
	1ichOxxIyTQpsLu0uLAm8iDpSko2UbUBSlu8F8FctIy+hOIwsQ==
X-Google-Smtp-Source: ABdhPJzF/PRuS5kYkcuR8eDb8PihmD76bY9CFXqbPZ4jXh6BnSLEUH8vh62//Ltdb100FDZSqY4BU7R4JKcHgibkXGc=
X-Received: by 2002:a81:f008:0:b0:2d0:cd72:74e5 with SMTP id
 p8-20020a81f008000000b002d0cd7274e5mr17269144ywm.301.1645984384149; Sun, 27
 Feb 2022 09:53:04 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsKT24Lmf=dnnZF4nP1BBLRk3Kf=tci6J0K2OxMJvas3g@mail.gmail.com>
In-Reply-To: <CAA=S3PsKT24Lmf=dnnZF4nP1BBLRk3Kf=tci6J0K2OxMJvas3g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sun, 27 Feb 2022 11:52:49 -0600
Message-ID: <CAFche=iwKneMnTb0tMn0cwAy2e7WoqAZA2DG-3=zkKZxq=D8GQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: 5SET7WJP3D7FTXJX2PVGZE7ETCBUINCN
X-Message-ID-Hash: 5SET7WJP3D7FTXJX2PVGZE7ETCBUINCN
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's mean .debug () in RFNOC replay block?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SET7WJP3D7FTXJX2PVGZE7ETCBUINCN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1048562209199619113=="

--===============1048562209199619113==
Content-Type: multipart/alternative; boundary="00000000000086014005d9039a0e"

--00000000000086014005d9039a0e
Content-Type: text/plain; charset="UTF-8"

That port contains signals that can be useful for debugging (fixing
problems with the code). Currently it outputs the states of the
axi_dma_master's state machines. Normally it would be disconnected, but if
you were trying to understand a problem with that code then looking at the
signals on that port could help.

Wade

On Sun, Feb 27, 2022 at 3:53 AM sp h <stackprogramer@gmail.com> wrote:

> I am reading RFNOC replay block, end of the Verilog code I faced a debug
> code ...
> what's mean debug? what does it do?
>
> axi_dma_master #(
> .AWIDTH (MEM_ADDR_W),
> .DWIDTH (MEM_DATA_W)
> ) axi_dma_master_i (
> //
> // AXI4 Memory Mapped Interface to DRAM
> //
> .aclk (mem_clk),
> .areset (mem_rst),
>
> // Write control
> .m_axi_awid (m_axi_awid [ 1*i +: 1]),
> .m_axi_awaddr (m_axi_awaddr [MEM_ADDR_W*i +: MEM_ADDR_W]),
> .m_axi_awlen (m_axi_awlen [ 8*i +: 8]),
> .m_axi_awsize (m_axi_awsize [ 3*i +: 3]),
> .m_axi_awburst (m_axi_awburst [ 2*i +: 2]),
> .m_axi_awvalid (m_axi_awvalid [ 1*i +: 1]),
> .m_axi_awready (m_axi_awready [ 1*i +: 1]),
> .m_axi_awlock (m_axi_awlock [ 1*i +: 1]),
> .m_axi_awcache (m_axi_awcache [ 4*i +: 4]),
> .m_axi_awprot (m_axi_awprot [ 3*i +: 3]),
> .m_axi_awqos (m_axi_awqos [ 4*i +: 4]),
> .m_axi_awregion (m_axi_awregion[ 4*i +: 4]),
> .m_axi_awuser (m_axi_awuser [ 1*i +: 1]),
>
> // Write Data
> .m_axi_wdata (m_axi_wdata [ MEM_DATA_W*i +: MEM_DATA_W]),
> .m_axi_wstrb (m_axi_wstrb [(MEM_DATA_W/8)*i +: (MEM_DATA_W/8)]),
> .m_axi_wlast (m_axi_wlast [ 1*i +: 1]),
> .m_axi_wvalid (m_axi_wvalid[ 1*i +: 1]),
> .m_axi_wready (m_axi_wready[ 1*i +: 1]),
> .m_axi_wuser (m_axi_wuser [ 1*i +: 1]),
>
> // Write Response
> .m_axi_bid (m_axi_bid [1*i +: 1]),
> .m_axi_bresp (m_axi_bresp [2*i +: 2]),
> .m_axi_buser (m_axi_buser [1*i +: 1]),
> .m_axi_bvalid (m_axi_bvalid[1*i +: 1]),
> .m_axi_bready (m_axi_bready[1*i +: 1]),
>
> // Read Control
> .m_axi_arid (m_axi_arid [ 1*i +: 1]),
> .m_axi_araddr (m_axi_araddr [MEM_ADDR_W*i +: MEM_ADDR_W]),
> .m_axi_arlen (m_axi_arlen [ 8*i +: 8]),
> .m_axi_arsize (m_axi_arsize [ 3*i +: 3]),
> .m_axi_arburst (m_axi_arburst [ 2*i +: 2]),
> .m_axi_arvalid (m_axi_arvalid [ 1*i +: 1]),
> .m_axi_arready (m_axi_arready [ 1*i +: 1]),
> .m_axi_arlock (m_axi_arlock [ 1*i +: 1]),
> .m_axi_arcache (m_axi_arcache [ 4*i +: 4]),
> .m_axi_arprot (m_axi_arprot [ 3*i +: 3]),
> .m_axi_arqos (m_axi_arqos [ 4*i +: 4]),
> .m_axi_arregion (m_axi_arregion[ 4*i +: 4]),
> .m_axi_aruser (m_axi_aruser [ 1*i +: 1]),
>
> // Read Data
> .m_axi_rid (m_axi_rid [ 1*i +: 1]),
> .m_axi_rdata (m_axi_rdata [MEM_DATA_W*i +: MEM_DATA_W]),
> .m_axi_rresp (m_axi_rresp [ 2*i +: 2]),
> .m_axi_rlast (m_axi_rlast [ 1*i +: 1]),
> .m_axi_ruser (m_axi_ruser [ 1*i +: 1]),
> .m_axi_rvalid (m_axi_rvalid[ 1*i +: 1]),
> .m_axi_rready (m_axi_rready[ 1*i +: 1]),
>
> //
> // Interface for Write transactions
> //
> .write_addr (write_addr),
> .write_count (write_count),
> .write_ctrl_valid (write_ctrl_valid),
> .write_ctrl_ready (write_ctrl_ready),
> .write_data (write_data),
> .write_data_valid (write_data_valid),
> .write_data_ready (write_data_ready),
>
> //
> // Interface for Read transactions
> //
> .read_addr (read_addr),
> .read_count (read_count),
> .read_ctrl_valid (read_ctrl_valid),
> .read_ctrl_ready (read_ctrl_ready),
> .read_data (read_data),
> .read_data_valid (read_data_valid),
> .read_data_ready (read_data_ready),
>
> //
> // Debug
> //
> .debug ()
> );
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000086014005d9039a0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That port contains signals that can be useful for deb=
ugging (fixing problems with the code). Currently it outputs the states of =
the axi_dma_master&#39;s state machines. Normally it would be disconnected,=
 but if you were trying to understand a problem with that code then looking=
 at the signals on that port could help.</div><div><br></div><div>Wade<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sun, Feb 27, 2022 at 3:53 AM sp h &lt;<a href=3D"mailto:stackprogra=
mer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am reading RFNOC =
replay block, end of the Verilog code I faced a debug code ...<div>what&#39=
;s mean debug? what does it do?<br><div><br></div><div><div style=3D"color:=
rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mo=
nospace,&quot;Droid Sans Fallback&quot;;font-size:14px;line-height:19px;whi=
te-space:pre-wrap"><div><span style=3D"color:rgb(128,0,0)">axi_dma_master</=
span> #(</div><div>        .AWIDTH (MEM_ADDR_W),</div><div>        .DWIDTH =
(MEM_DATA_W)</div><div>      ) <span style=3D"color:rgb(128,0,0)">axi_dma_m=
aster_i</span> (</div><div>        <span style=3D"color:rgb(0,128,0)">//</s=
pan></div><div>        <span style=3D"color:rgb(0,128,0)">// AXI4 Memory Ma=
pped Interface to DRAM</span></div><div>        <span style=3D"color:rgb(0,=
128,0)">//</span></div><div>        .aclk   (mem_clk),</div><div>        .a=
reset (mem_rst),</div><br><div>        <span style=3D"color:rgb(0,128,0)">/=
/ Write control</span></div><div>        .m_axi_awid     (m_axi_awid    [  =
       <span style=3D"color:rgb(9,134,88)">1</span>*i +:          <span sty=
le=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_awaddr   (m=
_axi_awaddr  [MEM_ADDR_W*i +: MEM_ADDR_W]),</div><div>        .m_axi_awlen =
   (m_axi_awlen   [         <span style=3D"color:rgb(9,134,88)">8</span>*i =
+:          <span style=3D"color:rgb(9,134,88)">8</span>]),</div><div>     =
   .m_axi_awsize   (m_axi_awsize  [         <span style=3D"color:rgb(9,134,=
88)">3</span>*i +:          <span style=3D"color:rgb(9,134,88)">3</span>]),=
</div><div>        .m_axi_awburst  (m_axi_awburst [         <span style=3D"=
color:rgb(9,134,88)">2</span>*i +:          <span style=3D"color:rgb(9,134,=
88)">2</span>]),</div><div>        .m_axi_awvalid  (m_axi_awvalid [        =
 <span style=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"=
color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_awready  (m_axi_a=
wready [         <span style=3D"color:rgb(9,134,88)">1</span>*i +:         =
 <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_a=
wlock   (m_axi_awlock  [         <span style=3D"color:rgb(9,134,88)">1</spa=
n>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>=
        .m_axi_awcache  (m_axi_awcache [         <span style=3D"color:rgb(9=
,134,88)">4</span>*i +:          <span style=3D"color:rgb(9,134,88)">4</spa=
n>]),</div><div>        .m_axi_awprot   (m_axi_awprot  [         <span styl=
e=3D"color:rgb(9,134,88)">3</span>*i +:          <span style=3D"color:rgb(9=
,134,88)">3</span>]),</div><div>        .m_axi_awqos    (m_axi_awqos   [   =
      <span style=3D"color:rgb(9,134,88)">4</span>*i +:          <span styl=
e=3D"color:rgb(9,134,88)">4</span>]),</div><div>        .m_axi_awregion (m_=
axi_awregion[         <span style=3D"color:rgb(9,134,88)">4</span>*i +:    =
      <span style=3D"color:rgb(9,134,88)">4</span>]),</div><div>        .m_=
axi_awuser   (m_axi_awuser  [         <span style=3D"color:rgb(9,134,88)">1=
</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div>=
<br><div>        <span style=3D"color:rgb(0,128,0)">// Write Data</span></d=
iv><div>        .m_axi_wdata  (m_axi_wdata [    MEM_DATA_W*i +:     MEM_DAT=
A_W]),</div><div>        .m_axi_wstrb  (m_axi_wstrb [(MEM_DATA_W/<span styl=
e=3D"color:rgb(9,134,88)">8</span>)*i +: (MEM_DATA_W/<span style=3D"color:r=
gb(9,134,88)">8</span>)]),</div><div>        .m_axi_wlast  (m_axi_wlast [  =
           <span style=3D"color:rgb(9,134,88)">1</span>*i +:              <=
span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_wva=
lid (m_axi_wvalid[             <span style=3D"color:rgb(9,134,88)">1</span>=
*i +:              <span style=3D"color:rgb(9,134,88)">1</span>]),</div><di=
v>        .m_axi_wready (m_axi_wready[             <span style=3D"color:rgb=
(9,134,88)">1</span>*i +:              <span style=3D"color:rgb(9,134,88)">=
1</span>]),</div><div>        .m_axi_wuser  (m_axi_wuser [             <spa=
n style=3D"color:rgb(9,134,88)">1</span>*i +:              <span style=3D"c=
olor:rgb(9,134,88)">1</span>]),</div><br><div>        <span style=3D"color:=
rgb(0,128,0)">// Write Response</span></div><div>        .m_axi_bid    (m_a=
xi_bid   [<span style=3D"color:rgb(9,134,88)">1</span>*i +: <span style=3D"=
color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_bresp  (m_axi_bre=
sp [<span style=3D"color:rgb(9,134,88)">2</span>*i +: <span style=3D"color:=
rgb(9,134,88)">2</span>]),</div><div>        .m_axi_buser  (m_axi_buser [<s=
pan style=3D"color:rgb(9,134,88)">1</span>*i +: <span style=3D"color:rgb(9,=
134,88)">1</span>]),</div><div>        .m_axi_bvalid (m_axi_bvalid[<span st=
yle=3D"color:rgb(9,134,88)">1</span>*i +: <span style=3D"color:rgb(9,134,88=
)">1</span>]),</div><div>        .m_axi_bready (m_axi_bready[<span style=3D=
"color:rgb(9,134,88)">1</span>*i +: <span style=3D"color:rgb(9,134,88)">1</=
span>]),</div><br><div>        <span style=3D"color:rgb(0,128,0)">// Read C=
ontrol</span></div><div>        .m_axi_arid     (m_axi_arid    [         <s=
pan style=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"col=
or:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_araddr   (m_axi_arad=
dr  [MEM_ADDR_W*i +: MEM_ADDR_W]),</div><div>        .m_axi_arlen    (m_axi=
_arlen   [         <span style=3D"color:rgb(9,134,88)">8</span>*i +:       =
   <span style=3D"color:rgb(9,134,88)">8</span>]),</div><div>        .m_axi=
_arsize   (m_axi_arsize  [         <span style=3D"color:rgb(9,134,88)">3</s=
pan>*i +:          <span style=3D"color:rgb(9,134,88)">3</span>]),</div><di=
v>        .m_axi_arburst  (m_axi_arburst [         <span style=3D"color:rgb=
(9,134,88)">2</span>*i +:          <span style=3D"color:rgb(9,134,88)">2</s=
pan>]),</div><div>        .m_axi_arvalid  (m_axi_arvalid [         <span st=
yle=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rgb=
(9,134,88)">1</span>]),</div><div>        .m_axi_arready  (m_axi_arready [ =
        <span style=3D"color:rgb(9,134,88)">1</span>*i +:          <span st=
yle=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_arlock   (=
m_axi_arlock  [         <span style=3D"color:rgb(9,134,88)">1</span>*i +:  =
        <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .=
m_axi_arcache  (m_axi_arcache [         <span style=3D"color:rgb(9,134,88)"=
>4</span>*i +:          <span style=3D"color:rgb(9,134,88)">4</span>]),</di=
v><div>        .m_axi_arprot   (m_axi_arprot  [         <span style=3D"colo=
r:rgb(9,134,88)">3</span>*i +:          <span style=3D"color:rgb(9,134,88)"=
>3</span>]),</div><div>        .m_axi_arqos    (m_axi_arqos   [         <sp=
an style=3D"color:rgb(9,134,88)">4</span>*i +:          <span style=3D"colo=
r:rgb(9,134,88)">4</span>]),</div><div>        .m_axi_arregion (m_axi_arreg=
ion[         <span style=3D"color:rgb(9,134,88)">4</span>*i +:          <sp=
an style=3D"color:rgb(9,134,88)">4</span>]),</div><div>        .m_axi_aruse=
r   (m_axi_aruser  [         <span style=3D"color:rgb(9,134,88)">1</span>*i=
 +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><br><div>=
        <span style=3D"color:rgb(0,128,0)">// Read Data</span></div><div>  =
      .m_axi_rid    (m_axi_rid   [         <span style=3D"color:rgb(9,134,8=
8)">1</span>*i +:          <span style=3D"color:rgb(9,134,88)">1</span>]),<=
/div><div>        .m_axi_rdata  (m_axi_rdata [MEM_DATA_W*i +: MEM_DATA_W]),=
</div><div>        .m_axi_rresp  (m_axi_rresp [         <span style=3D"colo=
r:rgb(9,134,88)">2</span>*i +:          <span style=3D"color:rgb(9,134,88)"=
>2</span>]),</div><div>        .m_axi_rlast  (m_axi_rlast [         <span s=
tyle=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=3D"color:rg=
b(9,134,88)">1</span>]),</div><div>        .m_axi_ruser  (m_axi_ruser [    =
     <span style=3D"color:rgb(9,134,88)">1</span>*i +:          <span style=
=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_rvalid (m_axi=
_rvalid[         <span style=3D"color:rgb(9,134,88)">1</span>*i +:         =
 <span style=3D"color:rgb(9,134,88)">1</span>]),</div><div>        .m_axi_r=
ready (m_axi_rready[         <span style=3D"color:rgb(9,134,88)">1</span>*i=
 +:          <span style=3D"color:rgb(9,134,88)">1</span>]),</div><br><div>=
        <span style=3D"color:rgb(0,128,0)">//</span></div><div>        <spa=
n style=3D"color:rgb(0,128,0)">// Interface for Write transactions</span></=
div><div>        <span style=3D"color:rgb(0,128,0)">//</span></div><div>   =
     .write_addr       (write_addr),</div><div>        .write_count      (w=
rite_count),</div><div>        .write_ctrl_valid (write_ctrl_valid),</div><=
div>        .write_ctrl_ready (write_ctrl_ready),</div><div>        .write_=
data       (write_data),</div><div>        .write_data_valid (write_data_va=
lid),</div><div>        .write_data_ready (write_data_ready),</div><br><div=
>        <span style=3D"color:rgb(0,128,0)">//</span></div><div>        <sp=
an style=3D"color:rgb(0,128,0)">// Interface for Read transactions</span></=
div><div>        <span style=3D"color:rgb(0,128,0)">//</span></div><div>   =
     .read_addr       (read_addr),</div><div>        .read_count      (read=
_count),</div><div>        .read_ctrl_valid (read_ctrl_valid),</div><div>  =
      .read_ctrl_ready (read_ctrl_ready),</div><div>        .read_data     =
  (read_data),</div><div>        .read_data_valid (read_data_valid),</div><=
div>        .read_data_ready (read_data_ready),</div><br><div>        <span=
 style=3D"color:rgb(0,128,0)">//</span></div><div>        <span style=3D"co=
lor:rgb(0,128,0)">// Debug</span></div><div>        <span style=3D"color:rg=
b(0,128,0)">//</span></div><div>        .debug ()</div><div>      );</div><=
/div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000086014005d9039a0e--

--===============1048562209199619113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1048562209199619113==--
