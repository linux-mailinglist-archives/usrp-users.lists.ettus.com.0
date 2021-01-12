Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D12F265D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 03:42:06 +0100 (CET)
Received: from [::1] (port=60180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz9dC-0007pC-M5; Mon, 11 Jan 2021 21:42:02 -0500
Received: from mail-vs1-f52.google.com ([209.85.217.52]:45500)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kz9d9-0007kj-AE
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 21:41:59 -0500
Received: by mail-vs1-f52.google.com with SMTP id e20so644253vsr.12
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 18:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=YdLR9fnCrCkwyUNTRw9BzZPID8vqYiLMKRHhnOUafnE=;
 b=KFOi5Y6HpF5SzuAt9A0KN6aBhfxuB76inS8JvQKLWgZgygGfkq/6d9Mx7dcVNbseSq
 X8+nsoUGLz3vVIMstbYlefYh6mHqz7xTUby6A0DLL1rIOC9VaGEe2vyhmnmvzBJRlFwf
 e0fUIKBOq76JrGNpPLoJjX6GA5VCnx98b8S7PlNFKsdIBdLd/VfNJKRGu3hrjMdkLNU7
 9ABM5pE6gamjVbfvIKzVNpeByY4DvefYdVcj/YTlqUh1cIn6yctq9Xy3N8P1Zh9jAitM
 +/x7VtsDlqF9ANwiy7lEdfI6EJ/DzmG7UD82d6MsZxfdlZlwq83fArNRRUFAaeOtLYkk
 YBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=YdLR9fnCrCkwyUNTRw9BzZPID8vqYiLMKRHhnOUafnE=;
 b=tUlLmrdRDM1IAcLEjuoreGXupzCaTmmOF1/svlhW7c/36uQXaalg+2ujqROFMeL5ky
 VYkotcd6ugO8xd++9sf/vmLroz898mSPkXgUllMDANuGL907nhGersXlRTbkEjSgyL2e
 nM9acMC7y7qaK/oeftImhAH2HVyRZ8u2z4ezv+XQgL8B2nkG/WsbMG9kB/6edLGv2eeB
 5rWlgUjoG0hLcFtqy4XFrAVMQWqAk/MwlfDtAzSsA2OouAbzvza0N4sWlpxkPC69konK
 9ZmiGZtvqsfHAm3hHsbWslNUuOGA9uDwmJVZrMHZv3bHX4Nww3mbTIwaSZeNnvq7t65d
 yYXQ==
X-Gm-Message-State: AOAM5325t6G8VcP3iLP4n8AEF1UWeYegus9mjYN3/zsIPXGcy7PeECOH
 yf0HSAaSFWB0/fcj7qTm5NQhfeEsqiagAc+Oo3wQyf86
X-Google-Smtp-Source: ABdhPJw7mNK1I5naj1EKsrO4+5X8H/YGp44KGAZglwNB4BMMptYk1Xdtl6MglEj5PLGCHqESaZPs6NIPjEk6lhla8pQ=
X-Received: by 2002:a67:cd8e:: with SMTP id r14mr2105791vsl.8.1610419278588;
 Mon, 11 Jan 2021 18:41:18 -0800 (PST)
MIME-Version: 1.0
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
In-Reply-To: <20210107174911.gjgjjt5rff43rrp2@barbe>
Date: Mon, 11 Jan 2021 21:40:42 -0500
Message-ID: <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4.0 RFNoC testbench throws fatal error with
 GUI xsim
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============1987926142424106414=="
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

--===============1987926142424106414==
Content-Type: multipart/alternative; boundary="0000000000000a414605b8aaf54d"

--0000000000000a414605b8aaf54d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cedric,

Does the issue go away if you comment out test.start_tb(...) and all
instances of test.start_test(...) and test.end_test() in the testbench?

Jonathon

On Thu, Jan 7, 2021, 12:49 C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> I have an issue with a testbench for a custom RFNoC block.
> The testbench template is taken from host/example/rfnoc-example
> and generated with rfnoc_create_verilog.py,
> as stated in the wiki [1].
>
> Running "make testbenches" completes without issue.
> However, running the testbench with GUI ("make testbenches GUI=3D1")
> failed with "FATAL_ERROR: Vivado Simulator kernel has discovered
> an exceptional condition from which it cannot recover" during the wave
> generation (1%), making the soft unusable.
> Files: Block [2], testbench [3], log [4].
> Version: UHD 4.0, Vivado 2019.1.
>
> I would like to simulate signal waveforms to check latency/timing.
>
> Any idea how to fix or to check latency/timing?
>
> [1]
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Generating_You=
r_Block_Using_the_ModTool
> [2] https://paste.debian.net/hidden/5fa3b59e/
> [3] https://paste.debian.net/hidden/281ffb17/
> [4] https://paste.debian.net/hidden/db686780/
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000a414605b8aaf54d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Cedric,<div dir=3D"auto"><br></div><d=
iv>Does the issue go away if you comment out test.start_tb(...) and all ins=
tances of=C2=A0test.start_test(...) and=C2=A0test.end_test() in the testben=
ch?</div><div><br></div><div>Jonathon</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 7, 2021, 12:49=
 C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
I have an issue with a testbench for a custom RFNoC block.<br>
The testbench template is taken from host/example/rfnoc-example<br>
and generated with rfnoc_create_verilog.py,<br>
as stated in the wiki [1].<br>
<br>
Running &quot;make testbenches&quot; completes without issue.<br>
However, running the testbench with GUI (&quot;make testbenches GUI=3D1&quo=
t;)<br>
failed with &quot;FATAL_ERROR: Vivado Simulator kernel has discovered<br>
an exceptional condition from which it cannot recover&quot; during the wave=
<br>
generation (1%), making the soft unusable.<br>
Files: Block [2], testbench [3], log [4].<br>
Version: UHD 4.0, Vivado 2019.1.<br>
<br>
I would like to simulate signal waveforms to check latency/timing.<br>
<br>
Any idea how to fix or to check latency/timing?<br>
<br>
[1] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#G=
enerating_Your_Block_Using_the_ModTool" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Gen=
erating_Your_Block_Using_the_ModTool</a><br>
[2] <a href=3D"https://paste.debian.net/hidden/5fa3b59e/" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://paste.debian.net/hidden/5fa3b59e/</a=
><br>
[3] <a href=3D"https://paste.debian.net/hidden/281ffb17/" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://paste.debian.net/hidden/281ffb17/</a=
><br>
[4] <a href=3D"https://paste.debian.net/hidden/db686780/" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://paste.debian.net/hidden/db686780/</a=
><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a414605b8aaf54d--


--===============1987926142424106414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1987926142424106414==--

