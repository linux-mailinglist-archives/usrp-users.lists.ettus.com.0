Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 448E31ACAF
	for <lists+usrp-users@lfdr.de>; Sun, 12 May 2019 16:43:27 +0200 (CEST)
Received: from [::1] (port=37188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPph7-00037e-Kw; Sun, 12 May 2019 10:43:17 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:46134)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hPpgZ-00032O-8O
 for usrp-users@lists.ettus.com; Sun, 12 May 2019 10:43:13 -0400
Received: by mail-oi1-f171.google.com with SMTP id 203so7559317oid.13
 for <usrp-users@lists.ettus.com>; Sun, 12 May 2019 07:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3t5h2UTc+jWOt5qpzhHnbskENV/eSumCWTUEsPEMe8s=;
 b=bw1m3YHUvl4dCPO4z/Z7UqMm04qOXIw9cVMVhf2XjKvaUDsWRtMGU6boOrelIPFgs7
 k2HyKh4Fy31HD/FRzupw8nDukuzS5obW0NlNLRXVCCNfJUtMje+Qc/0I9wQnRPJHCf5z
 K/Hml1S1CxS1W5UYsLMcD3I+NyYeoZy581BoI6+EygwauwgkED1z1VBxR8v+VmfdeItB
 0O4huw6N3vRwNo6fCy2ly8cJQf7C2MGzbfc7nNGw3iFEynrkXj0+xwSx1wFP9ZDII30h
 x8me1PyKGNM8oEEXzWSrIr509z84iTO6ZJSEwrfOy/XZf7s/FqbrfpIiCqwx6p5501kv
 zOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3t5h2UTc+jWOt5qpzhHnbskENV/eSumCWTUEsPEMe8s=;
 b=g1IT30ocMtvJxCcsIUqwFH8sNlc4T6gWe1TE+lgHdn+wEYeSoSVyUnYPc9y73tguDe
 fqHdo1DrnNhCGZYQHbU4V1lPJ5VU9OY02EFI9DTi1yxKGM2XdaezO9ySdwURnTfRJvjG
 Uj9LvLI3gBUksOnLWgNBFuITfDdHbZbusprxj4via1Y9M24WDwgBYiCBpg3sHSHFfHV+
 AQZZXSdAdQ7DrskE4QZ+1CO2ep7aCb4oGi1IP2Rtk8o1WMwsGsLtzTjI8BwGhNMTKvd1
 v77zVOsQnLFlAByL7IbR0N9vUY528kF98q8LQNvxgUZKOhr1rWZ2WJkvzAmkW4wRDUFC
 mCxA==
X-Gm-Message-State: APjAAAVsd3VvDl+yqdyBhBNRkl7xScjcLQiQkW3anLV+muP9LJyNftjL
 4X9abqSgj7zFN5RHTpDQgALwwIOwY1dlQF9oIFA=
X-Google-Smtp-Source: APXvYqy8W2PZUbFUD2EEhhUDjBf5IU9wFfqBfxqdB1RGRvLdtUIXF4UznORVFPZ0M/NxRu5r6widzXflUwVKrJlDW74=
X-Received: by 2002:aca:4a97:: with SMTP id x145mr5067163oia.161.1557672122377; 
 Sun, 12 May 2019 07:42:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk56Y5gxnbEfy2nqiY1y6oE9YYRD+6JfLiE40rH4Sh8EA8w@mail.gmail.com>
In-Reply-To: <CAE_Rk56Y5gxnbEfy2nqiY1y6oE9YYRD+6JfLiE40rH4Sh8EA8w@mail.gmail.com>
Date: Sun, 12 May 2019 10:41:50 -0400
Message-ID: <CAEXYVK5kSHxM2W+c+BvsjCbTw99p=f3PAptNamsERTUWigo7iQ@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Writing and reading from ddr3 in usrp x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6064277030042106139=="
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

--===============6064277030042106139==
Content-Type: multipart/alternative; boundary="00000000000087ea9f0588b1cd6a"

--00000000000087ea9f0588b1cd6a
Content-Type: text/plain; charset="UTF-8"

On Sun, May 12, 2019 at 6:34 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
> Im trying to write and read data from the ddr3 ram in the usrp x310 using
> the fpga.
> I wasn't able to find if there is any other blocks that use the ram (in
> the defualt image  ) .
> Also are there any rfnoc blocks that uses the ram ? Thx
>

The DRAM FIFO and the Relay blocks are the only two I am aware of
personally.

Brian

--00000000000087ea9f0588b1cd6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, May 12, 2019 at 6:34 AM Daniel Oz=
er via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hello,<div =
dir=3D"auto">Im trying to write and read data from the ddr3 ram in the usrp=
 x310 using the fpga.</div><div dir=3D"auto">I wasn&#39;t able to find if t=
here is any other blocks that use the ram (in the defualt image=C2=A0 ) .</=
div><div dir=3D"auto">Also are there any rfnoc blocks that uses the ram ? T=
hx</div></div></blockquote><div><br></div><div>The DRAM FIFO and the Relay =
blocks are the only two I am aware of personally.</div><div><br></div><div>=
Brian</div></div></div>

--00000000000087ea9f0588b1cd6a--


--===============6064277030042106139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6064277030042106139==--

