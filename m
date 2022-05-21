Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 128CE52FA1B
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 10:50:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCF7D384A01
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 04:50:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653123012; bh=AJN7EwEo2VmRiafVTviIXM63XfdXiAsi74eg5xt6meA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GvaPXImwZclaebpLZNsx5RhGYIvUE+PN2DHd+3VjQhnemsi8txpS2AZ+cqN9763LS
	 Unizyv1NtfvxU0sAIwaUyTCqOa5ybtisGguLJ6hFy9kIlKboa/YZ6j7S03ed41C0ga
	 T6xjtk+s6FRj3RP1OclO2lY5oo7yrAQwW8jXVlqO0u2PGZxR5N56MAdIiJekWoYnNh
	 LXQ+acZQZClMiH+sQqyywzwbDvIJ1jaTaQCdF9xXhh+pKY2D6ttkxjWH+RVNhNAXGi
	 0xaJ978pyV7Svc70pn+jQxLNcAiQbxY+ZCoCARN13RE42rFvXAVEh4xHDcEhOgtBpS
	 RJ4JfD9K11k7Q==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id EE07038497A
	for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 04:49:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BaTwg+7o";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id i11so17644474ybq.9
        for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 01:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=IK3YYJWuOaZiHczHGdRJEBG+uQy78bc9P6IRw2OvIQg=;
        b=BaTwg+7opwjxsgudQdnSf3WWo7BoKglkxKJlzmaYwmVTVKnx/CFWk2tbem1Ej8NF/t
         iCVaejD4xqW+jqwTH7RJGJmvIJsNCo5sSlA2w5UvVopvt2XJXE2SnrFTdFvoqRzwBGhf
         Z4tCMUCVlU8qUNFgi03rhkOpnz8QN343SGT6VTOEUmV8+s9eVQjNaqphQY+AlG62aDYr
         UPX83Qf8yjOQcr1uQ4lNUqw43GFdMJmj5dOw8zZNKFm/hf5i/Dmf4UrwZ4uTkc1rq9fP
         YXu7BOro4YDbTmIgNfT+x1Iw6c0wri36znVxQH123pZAZ7KU1M9f0zXukS+o19UCBnW5
         JSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IK3YYJWuOaZiHczHGdRJEBG+uQy78bc9P6IRw2OvIQg=;
        b=cnJfxKJVUyu9yZGp8t9KSA0gQTEDKDx91GUw6gORutgU76PJZEYECcU248DkGcYrXR
         efILhk36mboJErAVCHRM+/mgdvQSxTbt73mz3fmF8aJux9gTkDelHw2G0tMyczG4Wd3q
         3ZPV1gtAil3pYiY2Pix5PtLkw+ilOogQsUM3TCHy8weXsyPH4yVCCtLO/8uUxjYeEzts
         37egA6vo6VEByuwdr6llxh2P+NSLd8R+8au9eUhc05+TOa97Qus2PDkELw0LBa7qP8l9
         ajEllPF4KODRSGl/KstphKyX5WHHVxqBUsYg7BwqEIBFmwCDtRZ5bQkqOkg8YuINouZn
         TgLA==
X-Gm-Message-State: AOAM530fHbAIcbFrTu6b684UMM+P+aGDFUDMLAWKbCYpP9WZYQeANCTV
	vG2pRU/ttJb3xgzsthyc+c5m1OG+zM8+7F1zESB0wrABRMIV9ECEZw8=
X-Google-Smtp-Source: ABdhPJzawvwhZQYg7eVXEqQGnUXqt4UXTIWOvHkYtj1cHshZot9zW1isyGellHfpHbIcyPqvFTgino0C4u5dAo+I/o8=
X-Received: by 2002:a25:ba91:0:b0:64f:5f75:b6b1 with SMTP id
 s17-20020a25ba91000000b0064f5f75b6b1mr6336435ybg.368.1653122943624; Sat, 21
 May 2022 01:49:03 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 21 May 2022 13:18:52 +0430
Message-ID: <CAA=S3PsDhJg_=X4Cet6LmyPPQA2=U+x9ODEwoM-X2fB6cj8eGA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WXD6DZR2WUZOGXGO3RREX5PG23IFLH4V
X-Message-ID-Hash: WXD6DZR2WUZOGXGO3RREX5PG23IFLH4V
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Clock incompatibility in UHD example UHD-4.1.0.5,Can any developer examine it?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXD6DZR2WUZOGXGO3RREX5PG23IFLH4V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0194216256261880529=="

--===============0194216256261880529==
Content-Type: multipart/alternative; boundary="000000000000d328c905df81addc"

--000000000000d328c905df81addc
Content-Type: text/plain; charset="UTF-8"

When I want to build the rfnoc-example that is in the UHD-4.1.05 folder I
am faced with the  ce_clock error...
In this example, there is an Incompatibility clock domain.In file gain.yml
we see that there not any ce_clock domain...

//gain.yml  section
clocks:
  - name: rfnoc_chdr
    freq: "[]"
  - name: rfnoc_ctrl
    freq: "[]"

But in file x310_rfnoc_image_core.yml we have not defined any clock for
gain blocks.
Why this RFNOC example not build successfully? Anyone has a idea? when I
added ce clock domain in file image core and defined
a wire ce_clk, Even bitstream is generated but block not work correctly in
Gnuradio and we have bad packet errors...
//x310_rfnoc_image_core.yml
clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc0,   dstport: ce    }
    - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc1,   dstport: ce    }

Error ce_clk:

[00:00:22] Starting Synthesis Command
ERROR: [Synth 8-448] named port connection 'ce_clk' does not exist for
instance 'b_gain0_6' of module 'rfnoc_block_gain'
[/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x300_rfnoc_image_core.v:1058]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
[/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x300_rfnoc_image_core.v:24]
ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
console or run log file for details
[00:03:42] Current task: Synthesis +++ Current Phase: Starting
[00:03:43] Current task: Synthesis +++ Current Phase: Finished
[00:03:43] Process terminated. Status: Failure

========================================================
Warnings:           315
Critical Warnings:  1
Errors:             6

--000000000000d328c905df81addc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I want to build the rfnoc-example that is in the UHD-=
4.1.05 folder I am faced with the=C2=A0 ce_clock error...<div>In this examp=
le, there is an=C2=A0Incompatibility clock domain.In file gain.yml we see t=
hat there not any ce_clock domain...</div><div><br></div><div>//gain.yml=C2=
=A0 section</div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droi=
d Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback=
&quot;;line-height:19px;white-space:pre"><div style=3D"">clocks:<br>=C2=A0 =
- name: rfnoc_chdr<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A0 - name: =
rfnoc_ctrl<br>=C2=A0 =C2=A0 freq: &quot;[]&quot;<br></div><div style=3D""><=
br></div><div style=3D"">But in file x310_rfnoc_image_core.yml we have not =
defined any clock for gain blocks. <span style=3D"font-size:14px"><br></spa=
n></div><div style=3D"">Why this RFNOC example not build successfully? Anyo=
ne has a idea? when I added ce clock domain in file image core and defined =
</div><div style=3D"">a wire ce_clk, Even bitstream is generated but block =
not work correctly in Gnuradio and we have bad packet errors...</div><div s=
tyle=3D"">//x310_rfnoc_image_core.yml</div><div style=3D""><div style=3D"fo=
nt-size:14px;line-height:19px"><div>clk_domains:<br>=C2=A0 =C2=A0 - { srcbl=
k: _device_, srcport: radio, dstblk: radio0, dstport: radio }<br>=C2=A0 =C2=
=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk: ddc0, =C2=A0 ds=
tport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce=
, =C2=A0 =C2=A0dstblk: duc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =
=C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio=
 }<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk:=
 ddc1, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _devi=
ce_, srcport: ce, =C2=A0 =C2=A0dstblk: duc1, =C2=A0 dstport: ce =C2=A0 =C2=
=A0}<br></div><br></div></div><div style=3D"">Error ce_clk:</div><div style=
=3D""><br></div></div></div><div><div>[00:00:22] Starting Synthesis Command=
<br>ERROR: [Synth 8-448] named port connection &#39;ce_clk&#39; does not ex=
ist for instance &#39;b_gain0_6&#39; of module &#39;rfnoc_block_gain&#39; [=
/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x300_rfnoc_image_core.v:1=
058]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_image_c=
ore&#39; [/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x300_rfnoc_imag=
e_core.v:24]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;bus_i=
nt&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br=
>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_core&#39; [/hom=
e/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>ERROR: [Sy=
nth 8-6156] failed synthesizing module &#39;x300&#39; [/home/sp/Documents/u=
hd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69] Command =
failed: Synthesis failed - please see the console or run log file for detai=
ls<br>[00:03:42] Current task: Synthesis +++ Current Phase: Starting<br>[00=
:03:43] Current task: Synthesis +++ Current Phase: Finished<br>[00:03:43] P=
rocess terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 315<br>Critical Warnings: =C2=A01<br>Err=
ors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6<br><br><div><br></div><div=
><br></div></div></div></div>

--000000000000d328c905df81addc--

--===============0194216256261880529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0194216256261880529==--
