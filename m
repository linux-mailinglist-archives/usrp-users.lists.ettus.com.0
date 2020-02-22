Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2EF168C05
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2020 03:20:22 +0100 (CET)
Received: from [::1] (port=47178 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5KOu-00079i-9Y; Fri, 21 Feb 2020 21:20:16 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:35024)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1j5KOq-00072k-Qq
 for USRP-users@lists.ettus.com; Fri, 21 Feb 2020 21:20:12 -0500
Received: by mail-lj1-f180.google.com with SMTP id q8so4193426ljb.2
 for <USRP-users@lists.ettus.com>; Fri, 21 Feb 2020 18:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tcmeTfEbDCprI8ogLrcyG8sTGY0XtEOBS0r2QIGh5a0=;
 b=dafUXId1/bYog3NSvsabPC18dFIT9bmyv1LERlwtLh51ZXigi2nlyf1GUcNNrZxuNH
 j6fllk4nuzvC74QsovgbWf44LTKaTzIjnKIuc+GkX2dLLJ/cchccCpaMyp0MINkjuf6J
 3rqz/u3lT5PqDqAaezKq/slas1RDjmzZJZJ4U0DN1NxaVzROVTxHZIfTj/8XIWHI2RZE
 zuQutGtx/cngruXDseuVcw9/OA1auJnKgC5hVx/Ug9EuQWVqMB/0HhPYHkD8/iCzg5gH
 0Kg9mqreMq3+7dHa8cMBCN53dqVa6/3/O5KS3pKAhv/l3Axa3eeDG3lxh0ZvJAW2kehs
 sy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tcmeTfEbDCprI8ogLrcyG8sTGY0XtEOBS0r2QIGh5a0=;
 b=hMjloq6t2U6SbrJremDfwaZ2ytJIP886PX7/bkxh/c1GfljIX0j2Q6hfWi4NNYHNHw
 qZJZ1G8XkcqRQ5lHKEpXH0f0vjm3FmkEpctSbip4GvRBaO6KUtHoOyld6e7dwcx5sb1v
 YDVRpvWfc41n+2FQcGmfdE+UpDr3Adi2lUV2NwhMBqXlFKVJsHKsfwh0P6yICEfVxlGz
 R3BsZROu8FHX0MM0BcHVAHQRKml2YOmVk60RqNMkq5ePphcHTnfFcP9tYsR3XgYUVIy0
 e9uQSaEA0xaEJ1UcMOeBsElVGHiYBUe0NLj54qXjhduJEEKNw1NrWj9MQf0OxIsE+byg
 El8w==
X-Gm-Message-State: APjAAAWTT0y2PSgwZ1HlCJ5aOQctHC7DZbg4vpA16wOwT1BYkge925a7
 bTWyMrx+ioy5DhQ0A1oocofd6N3WO6qt/bReTo0=
X-Google-Smtp-Source: APXvYqy6B6I5PtEY1bs8U4pP12dRRiPamjn8e+jqODI95o3DIintZdTMRQnwAmBBsJ6NaN9rK050yN8KsTHX7bDtXBs=
X-Received: by 2002:a2e:7d01:: with SMTP id y1mr24808404ljc.100.1582337971559; 
 Fri, 21 Feb 2020 18:19:31 -0800 (PST)
MIME-Version: 1.0
References: <CA+JMMq-fdsxg05hjVTtN2PZuMYjZ0XRLQ4R8jYTrTL8qrB5mOg@mail.gmail.com>
In-Reply-To: <CA+JMMq-fdsxg05hjVTtN2PZuMYjZ0XRLQ4R8jYTrTL8qrB5mOg@mail.gmail.com>
Date: Fri, 21 Feb 2020 21:19:19 -0500
Message-ID: <CADRnH20VZcEfe7fZe1QWS3SATcwVDJupNx6edRXe9989ioXtQA@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] Block parameters in NOC block testbenches
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4767915791894060806=="
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

--===============4767915791894060806==
Content-Type: multipart/alternative; boundary="000000000000b5a32c059f20c498"

--000000000000b5a32c059f20c498
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

I feel like you might be looking for something like this-- just a defparam
inside the testbench after the RFNOC_ADD_BLOCK macro?
https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/testbenches/noc_block_ddc_1_to_n_tb/noc_block_ddc_1_to_n_tb.sv#L25

Let me know if you had something else in mind though...
EJ

On Fri, Feb 21, 2020, 3:16 PM Nick Foster via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I'm wondering if there's any good way to instantiate blocks in testbenches
> with testbench-defined block parameters. The macro `RFNOC_ADD_BLOCK takes
> care of defining all the NOC bus interfaces, but there's no place to define
> block parameters.
>
> Say I have a NOC block which takes a parameter N_TAPS. How can I
> instantiate the block in the testbench with a testbench-defined N_TAPS
> parameter without setting it as the default in the block's module?
>
> Nick
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b5a32c059f20c498
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Nick,<div dir=3D"auto"><br></div><di=
v dir=3D"auto">I feel like you might be looking for something like this-- j=
ust a defparam inside the testbench after the RFNOC_ADD_BLOCK macro?=C2=A0<=
a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga=
-rfnoc/testbenches/noc_block_ddc_1_to_n_tb/noc_block_ddc_1_to_n_tb.sv#L25" =
target=3D"_blank" rel=3D"noreferrer">https://gitlab.com/theseus-cores/these=
us-cores/-/blob/master/fpga-rfnoc/testbenches/noc_block_ddc_1_to_n_tb/noc_b=
lock_ddc_1_to_n_tb.sv#L25</a></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Let me know if you had something else in mind though...</div><div dir=
=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Feb 21, 2020, 3:16 PM Nick Foster via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I=
&#39;m wondering if there&#39;s any good way to instantiate blocks in testb=
enches with testbench-defined block parameters. The macro `RFNOC_ADD_BLOCK =
takes care of defining all the NOC bus interfaces, but there&#39;s no place=
 to define block parameters. <br></div><div><br></div><div>Say I have a NOC=
 block which takes a parameter N_TAPS. How can I instantiate the block in t=
he testbench with a testbench-defined N_TAPS parameter without setting it a=
s the default in the block&#39;s module?</div><div><br></div><div>Nick<br><=
/div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b5a32c059f20c498--


--===============4767915791894060806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4767915791894060806==--

