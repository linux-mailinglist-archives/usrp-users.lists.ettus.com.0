Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C426585062E
	for <lists+usrp-users@lfdr.de>; Sat, 10 Feb 2024 21:05:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7A1438456F
	for <lists+usrp-users@lfdr.de>; Sat, 10 Feb 2024 15:05:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707595527; bh=GIMKUAmx41jfVkZBgyGtVDJrKzoY/tt/Qk1cCSjC2UA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=06819tP38ZX9jhWwgHVLNyYEG7xYrJSwHbKV23/IZA52MBGPFHh/Hds22uOLg0ZXx
	 ytHJ3cpeY3DEt91CBxTUh4ivVT9FIRbEmImJ2Uc8rCozejP8jtUICpCtnajr2TNYiJ
	 zxLm9H6w151/YndjbvtX/Xf1r7Vl5uifIqOFSSRpV5jZh6dhxQ94swg/YBZwbE3OBb
	 xYQY3BFFkpN4Qm3K2ZKD8r4WHY7sBiPzDWHz41aTjkuhkBMtr5wPBDh9yXcpVe1BSO
	 Vew8HnC6EwD0uoVUMV0mIATD5+cwi2Sxxw9CgTdpedNeVXmadjPdf/RLCsHURlJd/F
	 W5u4IpOxlY65Q==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C441380B3B
	for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 15:04:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zmg9ZtZr";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a293f2280c7so282560066b.1
        for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 12:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707595463; x=1708200263; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d0MXkTRviwLwkqDI6a0LTVHcHBU72Ddrt/90b3I5Ac4=;
        b=Zmg9ZtZrTdSQx25JNzvAxBA2XxjxpGjPUhpXgcLD2tlHRFdcjTP0Z7YSf8mxAI8bRf
         YQwjnjc6p3Z7KRrebuPgc5nKS9VI5DEn5gybyinqaVz+BRLW4NkLwDLpZlDA76O+zNqE
         3OA49+JVejIrqYST4XbjkMxuLWygxAikD8TqWJ4eAK/RtPys6iBkhptkbvCIqVdtGDr2
         jLiLWnkdSvlHOtEn2247IwNpQIsqpOKwVZsE8Nqhy4OlL9+E1CCFVd+tRIBQcVu2s65K
         mFEv9AEA7gdetZ9sh1EA8VYdX59POGtAW5zSAq3bY/QSpchvQdjsJBxDje8SQN9lq09a
         P03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707595463; x=1708200263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d0MXkTRviwLwkqDI6a0LTVHcHBU72Ddrt/90b3I5Ac4=;
        b=Xdi6avFkBm0rcTxvzDEg1jNrRc0bwdJ9FilrtHFN3CxyhX/lPeSUvGZBzcCSQl70Sd
         mAl4affAtHmnYiryXQRvs2sILAowtdkRLwa3nn1DyzQauhwg8mZ8YX1hoCLXweOlNxiW
         og/Nc5+EKyG0Zv5h9T1gPcw9Q1XlhCInY9n/+P78u6i1F05m+RNJEnYCCc/EhDl0xmnD
         7aFq8QcVHokjUAeUH6adC6RifMmUtZnJz7ZX572dSVCuCOhUr+vdnR4Xqepda2fD87ki
         QLx9jdcYI3G7M73/tSwycsCHwoIArVrni23/jDZUmpMIbvlRrY1qQoHWwBHvWQWoDZiA
         FfHQ==
X-Gm-Message-State: AOJu0YyA6CcxYaflg5MiQ5iOeoIjIGVP6xD7Q5FPFL3jts6HAtnzYL8T
	SfJj2SCkyZX/PDQmu3SlOKMFOM8alK1B6EIk1BYApt0A4+ZUw5wc6nXtQU6j5Oldw3O8PA4OP75
	fauvHQi77ajviJN0fAEAXVYqOnbzpuvdtTBNdSw==
X-Google-Smtp-Source: AGHT+IHfvuCEibzJ6eFcKDOVWOoKGXLGQiqcOOriL9X9qUHuFbY7NxSJn4RLm+AeXvMbukqpeHVk98d3z8o2z4fdUGE=
X-Received: by 2002:a17:906:d96f:b0:a35:b808:8f1d with SMTP id
 rp15-20020a170906d96f00b00a35b8088f1dmr2154192ejb.67.1707595462933; Sat, 10
 Feb 2024 12:04:22 -0800 (PST)
MIME-Version: 1.0
References: <CAEMZVF1F6HOVdSDfwBHX0byNdt1MqRZXnyem_zZAJDMNWRE-Rg@mail.gmail.com>
In-Reply-To: <CAEMZVF1F6HOVdSDfwBHX0byNdt1MqRZXnyem_zZAJDMNWRE-Rg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Sat, 10 Feb 2024 15:04:11 -0500
Message-ID: <CAEXYVK51qodaxMvZrQXPTP9u5+_zueXdn38bo5XBZ5NzZHdOhQ@mail.gmail.com>
To: Chris <gaytanc4@gmail.com>
Message-ID-Hash: 5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF
X-Message-ID-Hash: 5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Tutorial
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5JXCSAWOZJ6UEOSK3IPXZCIVS277B2SF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5309928852835522509=="

--===============5309928852835522509==
Content-Type: multipart/alternative; boundary="000000000000fcffba06110c8cf6"

--000000000000fcffba06110c8cf6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 10, 2024 at 2:47=E2=80=AFPM Chris <gaytanc4@gmail.com> wrote:

> All, I am trying to offload some of my processing power onto my X310's
> FPGA. I have the environment set up but still find myself confused on how
> to build the out of tree block. I was able to add a block and I'm not sur=
e
> what to do next?
>
>
> My design process is as follows: Matlab, get HDL code for DSP algorithms,
> and deploy it on the RFNOC?
>
> My goal is to start out with implementing an adaptive filter on the FPGA.
> When I looked in the FIR filter .v example I wasn't able to match how thi=
s
> code works with the rfnoc environment. When I add my new oot block I have
> the verilog code similar to the gain block example but not sure what else
> needs to be changed besides dropping in the verilog code into the
> newly_added_oot_block.v
>
> Is there any more documentation I can follow to make sure I am following
> the right path?
>

Using the rfnoc_image_builder tool isn't the most straightforward thing to
do, but it is a decent path.

First, I typically set things up in my environment as follows:

  export UHD_FPGA_DIR=3D/path/to/uhd/fpga
  export VIVADO_PATH=3D/path/to/Vivado
  export RFNOC_OOT=3D/path/to/oot

In the OOT directory, there are a few directories:
  - blocks: The yml definitions of your custom blocks
  - icores: The yml definitions of your entire RFNoC image, similar to the
default Ettus core:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x310_r=
fnoc_image_core.yml
  - fpga: The FPGA source for each of the RFNoC blocks

In the fpga directory, I have a Makefile.srcs which simply looks like:

  RFNOC_FPGA_DIR :=3D $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
  include $(RFNOC_FPGA_DIR)/rfnoc_block_first/Makefile.srcs
  include $(RFNOC_FPGA_DIR)/rfnoc_block_second/Makefile.srcs

So the above has two blocks that want to be included with the possibility
to build.  In each of my block directories, where the actual code lives,
there is another Makefile.srcs:

  RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
$(MAKEFILE_LIST)))), rfnoc_block_first.v someother.v another.v)

So just a list of sources

When everything is in place and is working well, then I invoke the
rfnoc_image_builder as such:

  rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y
$RFNOC_OOT/icores/x310_rfnoc_custom_config.yml --vivado-path $VIVADO _PATH
-t X310_XG -l DEBUG

The DEBUG prints more logging information about connections made during the
RFNoC core generation.

If things are completely successful, then you'll get an FPGA image popped
out at the end.  If there are issues with sources or other problems, then
you'll get some log you can try to find.

Note that I believe you can issue multiple -I to pull in disparate OOT
blocks and use them with the same icore yml file.

Good luck.  I hope this was helpful.

Brian

--000000000000fcffba06110c8cf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Feb 10, 2024 at 2:47=E2=80=AFPM C=
hris &lt;<a href=3D"mailto:gaytanc4@gmail.com">gaytanc4@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto">All, I am trying to offload some of my p=
rocessing power onto my X310&#39;s FPGA. I have the environment set up but =
still find myself confused on how to build the out of tree block. I was abl=
e to add a block and I&#39;m not sure what to do next?<div dir=3D"auto"><br=
></div><div dir=3D"auto"><br></div><div dir=3D"auto">My design process is a=
s follows: Matlab, get HDL code for DSP algorithms, and deploy it on the RF=
NOC?</div><div dir=3D"auto"><br></div><div dir=3D"auto">My goal is to start=
 out with implementing an adaptive filter on the FPGA. When I looked in the=
 FIR filter .v example I wasn&#39;t able to match how this code works with =
the rfnoc environment. When I add my new oot block I have the verilog code =
similar to the gain block example but not sure what else needs to be change=
d besides dropping in the verilog code into the newly_added_oot_block.v=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Is there any more do=
cumentation I can follow to make sure I am following the right path?</div><=
/div></blockquote><div><br></div><div>Using the rfnoc_image_builder tool is=
n&#39;t the most straightforward thing to do, but it is a decent path.</div=
><div><br></div><div>First, I typically set things up in my environment as =
follows:</div><div><br></div><div>=C2=A0 export UHD_FPGA_DIR=3D/path/to/uhd=
/fpga</div><div>=C2=A0 export VIVADO_PATH=3D/path/to/Vivado</div><div>=C2=
=A0 export RFNOC_OOT=3D/path/to/oot</div><div><br></div><div>In the OOT dir=
ectory, there are a few directories:</div><div>=C2=A0 - blocks: The yml def=
initions of your custom blocks</div><div>=C2=A0 - icores: The yml definitio=
ns of your entire RFNoC image, similar to the default Ettus core:=C2=A0<a h=
ref=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300=
/x310_rfnoc_image_core.yml">https://github.com/EttusResearch/uhd/blob/maste=
r/fpga/usrp3/top/x300/x310_rfnoc_image_core.yml</a></div><div>=C2=A0 - fpga=
: The FPGA source for each of the RFNoC blocks</div><div><br></div><div>In =
the fpga directory, I have a Makefile.srcs which simply looks like:</div><d=
iv><br></div><div>=C2=A0 RFNOC_FPGA_DIR :=3D $(dir $(abspath $(lastword $(M=
AKEFILE_LIST))))</div><div>=C2=A0 include $(RFNOC_FPGA_DIR)/rfnoc_block_fir=
st/Makefile.srcs</div><div>=C2=A0 include $(RFNOC_FPGA_DIR)/rfnoc_block_sec=
ond/Makefile.srcs</div><div><br></div><div>So the above has two blocks that=
 want to be included with the possibility to build.=C2=A0 In each of my blo=
ck directories, where the actual code lives, there is another Makefile.srcs=
:</div><div><br></div><div>=C2=A0 RFNOC_OOT_SRCS=C2=A0+=3D $(addprefix $(di=
r $(abspath $(lastword $(MAKEFILE_LIST)))), rfnoc_block_first.v someother.v=
=C2=A0another.v)</div><div><br></div><div>So just a list of sources=C2=A0</=
div><div><br></div><div>When everything is in place and is working well, th=
en I invoke the rfnoc_image_builder as such:</div><div><br></div><div>=C2=
=A0 rfnoc_image_builder -F $UHD_FPGA_DIR -I $RFNOC_OOT -y $RFNOC_OOT/icores=
/x310_rfnoc_custom_config.yml --vivado-path $VIVADO _PATH -t X310_XG -l DEB=
UG</div><div><br></div><div>The DEBUG prints more logging information about=
 connections made during the RFNoC core generation.</div><div><br></div><di=
v>If things are completely successful, then you&#39;ll get an FPGA image po=
pped out at the end.=C2=A0 If there are issues with sources or other proble=
ms, then you&#39;ll get some log you can try to find.</div><div><br></div><=
div>Note that I believe you can issue multiple -I to pull in disparate OOT =
blocks and use them with the same icore yml file.</div><div><br></div><div>=
Good luck.=C2=A0 I hope this was helpful.</div><div><br></div><div>Brian</d=
iv></div></div>

--000000000000fcffba06110c8cf6--

--===============5309928852835522509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5309928852835522509==--
