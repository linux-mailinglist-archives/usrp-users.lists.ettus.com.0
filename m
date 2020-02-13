Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC815CAE8
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 20:08:04 +0100 (CET)
Received: from [::1] (port=38054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2JqC-0003p5-37; Thu, 13 Feb 2020 14:08:00 -0500
Received: from mail-lf1-f52.google.com ([209.85.167.52]:37893)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1j2Jq8-0003jg-1y
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 14:07:56 -0500
Received: by mail-lf1-f52.google.com with SMTP id r14so5036680lfm.5
 for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2020 11:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ynhdD8LszjhfXh9gLAJSkaM6jzp+FtrDgD0h3myAM2I=;
 b=DU9REwwPQaPffOpq1gHBRRrz3z07wAcuD5sZGfdHT+golQKC/Dy4aNoyNbSf0W7Tps
 ifdG+ihrf91MV1Jt6tCvY4K3fOF4SL3uW71AKiMBVxyX6G01dYVimVvGRgFMbfW04Z4Y
 8qbl0Ka9XfvO6Dz/lGRLsf0uppDU3qhI8qkyBmzCQW5Pdg1UHgDzUITXXU3mzmGt/ERK
 jjpvlKAK+2vVbCPlBN7nuQcGhAeHpWd8c+6hX9REP/AZJ7H+ZbnF4perWq2YV/TLCgQh
 MjZU5g1GtVn3MLSi3/uTVLfUMkO1bMkT/7Do4fJdwVzjUJ9zKY383LdLBmfyoQXTtVqK
 iXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ynhdD8LszjhfXh9gLAJSkaM6jzp+FtrDgD0h3myAM2I=;
 b=sPQsQOY3N4cVMR0xldcLJy/MoUrA8aqeuSUbo8kk0UMtEeV8WM85f6gUfmPbnwzib5
 cu3jXQb2KUAOkBf1MeFpW0ChY1R5JKNjZeSm6pvKYIS0JdzHh94xW11jUl0FVrub+b1d
 3cmXpN8KJfot8RC0KbXXOFsFzXADr2jMpFSx6OcIKX+Wz1YEH7rqmU9Y+mWjhd4Jr7QD
 CeR6QZpIwn1bo0g21wf2FYn/F0sQCZGSVFYlmwslMf3b6Mdeu2Mapaztlr5r28fsPKO7
 TsWUqEHK1mZTaMjyia4KBllzVVGBgHdIYodxHZibjympFYo8fATxox69IcNI4lurFJCo
 /vzQ==
X-Gm-Message-State: APjAAAVmDz06GFVj7ywJpYcDj6iyRLj9qrVwIL1TPwAbxtf8Us25Azp6
 43rq1gm6ZC3CenciubmMsJqKkloPABT18I0V/C0CHpm9
X-Google-Smtp-Source: APXvYqyGMS7Z72+8k2iGnmD1Ayp01bIhCqd1xzXx0U1Mn731Yt2VDbvJCfx1CsXDqQ63lZFp6yHZKqucfYIgu82KKnU=
X-Received: by 2002:ac2:5339:: with SMTP id f25mr10061164lfh.180.1581620834742; 
 Thu, 13 Feb 2020 11:07:14 -0800 (PST)
MIME-Version: 1.0
References: <dbe0e0b485ba4b2786c97ea5e0a0eee2@NAEACRANXE02V.nadsusea.nads.navy.mil>
In-Reply-To: <dbe0e0b485ba4b2786c97ea5e0a0eee2@NAEACRANXE02V.nadsusea.nads.navy.mil>
Date: Thu, 13 Feb 2020 14:06:38 -0500
Message-ID: <CAL7q81uzuFsY4rE5ZEN1aWYwJ8qR0cf=9toQ3fuVGKOrNGmEmQ@mail.gmail.com>
To: "Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (USA)"
 <andrew.payne1@navy.mil>
Subject: Re: [USRP-users] RFNOC: 2 input/2 output block,
 synchronizing their outputs to GNURadio host
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "matt.pegram@ni.com" <matt.pegram@ni.com>
Content-Type: multipart/mixed; boundary="===============2184489648264259694=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2184489648264259694==
Content-Type: multipart/alternative; boundary="0000000000000649d7059e79cc43"

--0000000000000649d7059e79cc43
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

Are you able to run any of the in-tree RFNoC blocks on your E310 without
this error? Does your block work if you make it 1 input / 1 output? Also,
do you have access to an X310? If so, can you try running your block on
there and see if it works?

Jonathon

On Thu, Feb 13, 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN NSWC
CD CRANE ID (USA) via USRP-users <usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I am trying to solve what I think is a timing issue with my RFNOC design.
> I have an E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.
>
> I have created a custom RFNOC block for GNUradio without much custom
> logic, I've managed to just reuse code blocks from the uhd-fpga repo in
> lib/rfnoc.  In particular, I am using the following blocks in this order:
> complex to magphase (ISE IP in lib/rfnoc) -> moving_sum -> keep_one_in_n ->
> fifo with size 5 (so I don't have to have RFNOC:FIFO blocks taking up room
> in the FPGA).  For moving_sum I'm trying to use 511 as the sum length and
> for keep_one_in_n I am using 512.  I have made this block a permanent 2
> input/2 output block by setting those parameters in noc_shell
> instantiation.  I am using the axi_wrappers (0 and 1) with SIMPLE MODE set
> to 0, and simply utilizing the cvita_hdr_modify.v IP exactly as utilized in
> the noc_block_keep_one_in_n.v block to set the tuser headers.
>
> In Vivado behavioral simulation the data correctly flows through but what
> I am unsure about is the fact that after synthesizing and loading the FPGA
> bit file into the e310 and running my flowgraph, it just repeatedly prints
> out timeout on channel 0.   By the way this code does work on just a single
> input/single output application but I want to consolidate it into a single
> GRC block to save space on the relatively small FPGA.  What do I need to do
> to sync the 2 e310 rx2 channels so they arrive close to on-time in GRC?  Or
> is that probably not the problem?  I assume I should be looking at how it's
> done in noc_block_ddc/duc as they have implemented timed samples within
> those?
>
> Thanks,
> Andrew
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000649d7059e79cc43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Andrew,<div><br></div><div></div><div>=
Are you able to run any of the in-tree RFNoC blocks on your E310 without th=
is error? Does your block work if you make it 1 input / 1 output? Also, do =
you have access to an X310? If so, can you try running your block on there =
and see if it works?</div><div><br></div><div>Jonathon</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 13,=
 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (U=
SA) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi,<br>
<br>
I am trying to solve what I think is a timing issue with my RFNOC design.=
=C2=A0 I have an E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.<br>
<br>
I have created a custom RFNOC block for GNUradio without much custom logic,=
 I&#39;ve managed to just reuse code blocks from the uhd-fpga repo in lib/r=
fnoc.=C2=A0 In particular, I am using the following blocks in this order: c=
omplex to magphase (ISE IP in lib/rfnoc) -&gt; moving_sum -&gt; keep_one_in=
_n -&gt; fifo with size 5 (so I don&#39;t have to have RFNOC:FIFO blocks ta=
king up room in the FPGA).=C2=A0 For moving_sum I&#39;m trying to use 511 a=
s the sum length and for keep_one_in_n I am using 512.=C2=A0 I have made th=
is block a permanent 2 input/2 output block by setting those parameters in =
noc_shell instantiation.=C2=A0 I am using the axi_wrappers (0 and 1) with S=
IMPLE MODE set to 0, and simply utilizing the cvita_hdr_modify.v IP exactly=
 as utilized in the noc_block_keep_one_in_n.v block to set the tuser header=
s.<br>
<br>
In Vivado behavioral simulation the data correctly flows through but what I=
 am unsure about is the fact that after synthesizing and loading the FPGA b=
it file into the e310 and running my flowgraph, it just repeatedly prints o=
ut timeout on channel 0. =C2=A0 By the way this code does work on just a si=
ngle input/single output application but I want to consolidate it into a si=
ngle GRC block to save space on the relatively small FPGA.=C2=A0 What do I =
need to do to sync the 2 e310 rx2 channels so they arrive close to on-time =
in GRC?=C2=A0 Or is that probably not the problem?=C2=A0 I assume I should =
be looking at how it&#39;s done in noc_block_ddc/duc as they have implement=
ed timed samples within those?<br>
<br>
Thanks,<br>
Andrew<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000649d7059e79cc43--


--===============2184489648264259694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2184489648264259694==--

