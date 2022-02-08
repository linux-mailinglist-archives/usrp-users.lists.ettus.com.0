Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A99E4AD23F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 08:35:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6672384DB5
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 02:35:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hFv+tq76";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C96D8384D86
	for <usrp-users@lists.ettus.com>; Tue,  8 Feb 2022 02:34:29 -0500 (EST)
Received: by mail-yb1-f170.google.com with SMTP id c6so47412828ybk.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 23:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=dzsrskLjf09DDfJ9fD/8YGFDfgDB6/ZbVpfJ6d4aB6o=;
        b=hFv+tq76CL25sT6mpgQ289cwLfzhn9NflINaSq7olgNh8ERx/DwC4tmk7MuJmLXpkt
         QUxiZKN1B77zJObV5+Rh46FQS8Vs/9tBt7QI7KhGTu4UAtVbdnSXh/F7BajkuoC+8MbR
         YvV07wldeYE9K4hYLC3nfssuu2XwSPRkLIAFCfVMSjLjldm90aVhMV8FrFv/8gaPdt1P
         5QBJuys9RbRf3dYoO7FUlUkYto3fR5/SwXuepUQfXaPp8WA6Dp1jsXadNnVv0BJnsNEX
         M1AeksTMPG3QqWFai14dBG0Cob5KkSMsYXJEOamNxO+rLv64Wgga1hXuHJRj2iy14JKt
         DuaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dzsrskLjf09DDfJ9fD/8YGFDfgDB6/ZbVpfJ6d4aB6o=;
        b=YLNKjVbsuF9wDQ1YNI7rPPk9VoJT3mnfXtjTkFIrt1uLOvXEUKsd8tZEPZgKUnBD3B
         v3h45YfvIHjDo8EQrTvuvRqJZEOwk8q0HndyAR7CeRkoi7wQLwJhKc+Hj+DXU1LQYppK
         ujiLrRy+GMiL4oieBm9wR3vTykw6nreuLkR75GBo62ohAAp4qaV47+ACHGZQnx14Yk21
         4bm5AqOXNLynabYA3/z1mxVrIUt+Lf9Ei6acw3JgHr0HE85Em1Z3UKv5t7KOSHzCzU8K
         aa3rgsX6XuV6u6L3Qa6nrPIg4DL8vGKgURSf6kN4fQVX2ABW/7pziYeYwbpRxYYM/u/B
         MQbw==
X-Gm-Message-State: AOAM530rq7uXHxkIQHW7/oO8zxEIiwGPV7U4aR0mkV6ET2Zs5xKDMLgw
	V5iqRrH+y2bdeh6pxlXRMuwzyNcu5nXWlC6Vn/gh9rfCoXVnaaMM
X-Google-Smtp-Source: ABdhPJwwntP7CIxtBopg1SBB8WbqMzJD04LvwBjeuof1lz3nyI4ZanoVzrdqjUxOewLMQTyTEynqSymIwePdss6nOEU=
X-Received: by 2002:a25:be43:: with SMTP id d3mr3356411ybm.454.1644305668473;
 Mon, 07 Feb 2022 23:34:28 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Tue, 8 Feb 2022 11:04:08 +0330
Message-ID: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: R4JMAQ3YVRAKG5IIIHKZH4YFJFPSMDKX
X-Message-ID-Hash: R4JMAQ3YVRAKG5IIIHKZH4YFJFPSMDKX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why RFNOC gain example building FPGA, I faced with module 'rfnoc_block_gain' not found?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4JMAQ3YVRAKG5IIIHKZH4YFJFPSMDKX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8704549791621964949=="

--===============8704549791621964949==
Content-Type: multipart/alternative; boundary="0000000000004585fa05d77cbf6e"

--0000000000004585fa05d77cbf6e
Content-Type: text/plain; charset="UTF-8"

I copied RFNOC gain example from UHD folder, I installed it successfully in
Gnuradio, But for building FPGA
I was faced with these errors.
How can I solve this problem?

Thanks in advance

ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
[/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
[/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
console or run log file for details
[00:04:05] Current task: Synthesis +++ Current Phase: Starting
[00:04:05] Current task: Synthesis +++ Current Phase: Finished
[00:04:05] Process terminated. Status: Failure

--0000000000004585fa05d77cbf6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I copied RFNOC gain example from UHD folder, I installed i=
t successfully=C2=A0in Gnuradio, But for building FPGA=C2=A0<div>I was=C2=
=A0faced with these errors.</div><div>How can I solve this problem?</div><d=
iv><br></div><div>Thanks in advance</div><div><br></div><div>ERROR: [Synth =
8-439] module &#39;rfnoc_block_gain&#39; not found [/home/sp/Documents/rfno=
c-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]<br>ERROR: [Synth 8-61=
56] failed synthesizing module &#39;rfnoc_image_core&#39; [/home/sp/Documen=
ts/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]<br>ERROR: [Synth=
 8-6156] failed synthesizing module &#39;bus_int&#39; [/home/sp/Documents/u=
hd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br>ERROR: [Synth 8-6156] failed=
 synthesizing module &#39;x300_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fp=
ga/usrp3/top/x300/x300_core.v:9]<br>ERROR: [Synth 8-6156] failed synthesizi=
ng module &#39;x300&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x30=
0/x300.v:20]<br>ERROR: [Common 17-69] Command failed: Synthesis failed - pl=
ease see the console or run log file for details<br>[00:04:05] Current task=
: Synthesis +++ Current Phase: Starting<br>[00:04:05] Current task: Synthes=
is +++ Current Phase: Finished<br>[00:04:05] Process terminated. Status: Fa=
ilure<br></div></div>

--0000000000004585fa05d77cbf6e--

--===============8704549791621964949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8704549791621964949==--
