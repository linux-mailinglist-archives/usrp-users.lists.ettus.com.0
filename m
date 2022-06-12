Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEFB547936
	for <lists+usrp-users@lfdr.de>; Sun, 12 Jun 2022 09:40:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B24693844F6
	for <lists+usrp-users@lfdr.de>; Sun, 12 Jun 2022 03:40:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655019619; bh=zO14raDvRfjn3S9rv0Sb23wBpx3aSzIPj8ircEX32h8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rMmEt6XFn7U6xZZLQzRq5qzoPSkTt/+E0JOsWIATCpa0TxKcNoLd70cUdZ1yYvl/w
	 KzWO6bSghkbkNgpgjYEWymqmhx4FyXtyYbjcC0kntdIq/Xx/I8DjVfbyeggKnIp74h
	 fmfS4BnLLTsBtq/wHipdSkj3XCBRNQeJYNYHDC+7mlaQ/g04+ccpF3oK6QGrGhJxzg
	 sBgnYSFvGWpTgCkuzrKqv261wvgzC6lq7iVwTIF3PK7/XdrgiklY19+vLw+CYMrnXk
	 ZT/14YrwhLuHXBzx5qoBx299Gds+SCyz0J3TbbbML/npowYG4uuKvrQaavvCw65fcX
	 2LrYjLbVKauVA==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F87938445A
	for <usrp-users@lists.ettus.com>; Sun, 12 Jun 2022 03:39:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AnhQHCrx";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id e184so5255550ybf.8
        for <usrp-users@lists.ettus.com>; Sun, 12 Jun 2022 00:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=wDPmLFFS6XIOzVnTIgYrda4+llaxkrbmRU/aJLz7/qo=;
        b=AnhQHCrx+o7rgo9eK2z6a00C9lzJyzbHWLPs8Iv7xOx1PIAeCQhXbxyyPsSUrL1lXn
         NmOK5VVm4K/iMb4FBi2Ap1py2TdvHBWKjz8MkEUn2S25h0rn2074AOgsCHu1bgwe61Nh
         UfkNfjsD3w6tw686XF5fZ++ta0gkgxTW6xxWSUrGIClAwAD4lu1RgwVJ9Asr95xO8upv
         MpABLCETIra2O0SZjRrF8tdZe/FY5mHtVd9b+4QMpK/QTANWjodbqD1QyDnL8TJtxAYT
         LmV2aYDpH1bJrHq/CbpNH6nW+rc4NJKTSwbF5HhCsz2YY+HT6ljFoIGaCwtyUp+HF+Ab
         q4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wDPmLFFS6XIOzVnTIgYrda4+llaxkrbmRU/aJLz7/qo=;
        b=dBTx+7HKW8bLaRsNKvqYkLc6i5uluGSBuUc9JdiFhd8lReLF4AP0S5iz1edZ47f4IU
         nDf3LMeK+u10qFlIXc/ldnJZwrcO1DzbHOYhNiQuR+paSsNYhjY/OT2lc3ChnHRg4qyR
         kZyS1nvfvHerzM0kb1WVVJNY5ThOF71rPhdl9GreMwuWMTCu9p/EVFEv71+LHz+tz3LG
         VNQ6wyqzrUoiMPbIad25iAnJ/pSX1ibDZlKIDL4rPUMbb5VU8XQYdms4+T3b2SMwl5pG
         bkM3THQgTJ8EMFAo7mofyj7ugYqncJ1TtuRq+R3qHnuMCPVo8bvEC4/+jsjmzpRzypsf
         cnYA==
X-Gm-Message-State: AOAM530viTWw3zWZd6Q6lCw1SQeHQKjgP8WqFLAVW1+/Xh/sQO0pFz1h
	vrB/ho/IkVNqSvWQhg31Gb87IMkLcj/InB/liUhwedyUm1M/cjBr44M=
X-Google-Smtp-Source: ABdhPJzOHjJsTpwUaIBtxDjDbW6i5dFhnzDEWqVJa927WnfKUfD0RAiIFIzvBmuvIfEQXW/7Bh8+xf7A5LLt0FNOppo=
X-Received: by 2002:a25:23c6:0:b0:664:945f:2077 with SMTP id
 j189-20020a2523c6000000b00664945f2077mr4888516ybj.132.1655019550259; Sun, 12
 Jun 2022 00:39:10 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 12 Jun 2022 12:08:59 +0430
Message-ID: <CAA=S3PudkcunngQmNBfv4KB=pvkdHhd5JtOLP3tzs3hRz0q0xQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: P4H4JHJYUAFC65UVM3WLVXRRXZZHL3FW
X-Message-ID-Hash: P4H4JHJYUAFC65UVM3WLVXRRXZZHL3FW
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it possible that synthesis and generating bitstream in RFNOC blocks make faster??!!!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P4H4JHJYUAFC65UVM3WLVXRRXZZHL3FW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4348585530073101188=="

--===============4348585530073101188==
Content-Type: multipart/alternative; boundary="00000000000063bd2105e13b44e0"

--00000000000063bd2105e13b44e0
Content-Type: text/plain; charset="UTF-8"

Is it possible that synthesis and generating bitstream in RFNOC blocks make
faster??!!!
I developed a custom RFNOC block, (I used example gain for RFNOC block) but
when I want to synthesize Verilog code It takes long about 2 hours...
For building the RFNOC bitstream image I used the below command:


>      rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
> /home/sp/Documents/rfnoc-module -p /home/sp/xilinx/Vivado -y
> /home/sp/Documents/rfnoc-module/rfnoc/icores/gain_x300_rfnoc_image_core.yml


My question is there any option that makes RFNOC synthesis faster? like
incremental-implementation-vivado or any same case.
https://www.xilinx.com/video/hardware/incremental-implementation-vivado.html

Thanks in advance

--00000000000063bd2105e13b44e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible that synthesis and generating bitstream in =
RFNOC blocks make faster??!!!<div>I developed a custom RFNOC block, (I used=
 example gain for RFNOC block) but when I want to synthesize Verilog code I=
t takes long about 2 hours...</div><div>For building the RFNOC bitstream im=
age I used the below command:</div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>=C2=A0 =C2=A0 =C2=A0rfnoc_image_builder -F /ho=
me/sp/Documents/uhd-4.1.0.5/fpga -I /home/sp/Documents/rfnoc-module -p /hom=
e/sp/xilinx/Vivado -y /home/sp/Documents/rfnoc-module/rfnoc/icores/gain_x30=
0_rfnoc_image_core.yml</blockquote><div><br></div><div>My question is there=
 any option that makes RFNOC synthesis=C2=A0faster? like=C2=A0 incremental-=
implementation-vivado or any same case.</div><div><a href=3D"https://www.xi=
linx.com/video/hardware/incremental-implementation-vivado.html">https://www=
.xilinx.com/video/hardware/incremental-implementation-vivado.html</a><br></=
div><div><br></div><div>Thanks in advance</div></div>

--00000000000063bd2105e13b44e0--

--===============4348585530073101188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4348585530073101188==--
