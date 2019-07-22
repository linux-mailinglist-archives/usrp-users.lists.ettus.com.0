Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0C470B13
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 23:13:58 +0200 (CEST)
Received: from [::1] (port=57304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpfd5-0001Mp-W6; Mon, 22 Jul 2019 17:13:55 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:37136)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1hpfd2-0001Gt-CD
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 17:13:52 -0400
Received: by mail-ot1-f53.google.com with SMTP id s20so41771401otp.4
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 14:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=02/Eiv1gyt78tWHfPEar2Ml38c3zbuwpTO3lws9nswI=;
 b=kTRCG0IW7rws4bIgrZ1vMbIsgHpk9DXzMig7VBv2ObUSPQ0TiQCAcosD0Ukmx1AmAJ
 8MLtpJ11P7dFWBFUEbylx38WK1mAzHYcOL7+7r/eMrEqP1P6n/D/gagdj/8eqYPseCgt
 J2Hc2DK1+/jbbYmWaGwmh42mbVxSkafG7f9+8WV0pMistFSU61oZQCAeBnVleGMU9nD0
 6VnestkhEmrteaNO+ric8k9r5r+x9r0TOowTCrIBBptRevWszL54H0oP5pLfS3bjZD75
 CR0h4XdSAZDnkhAALIwDrWUtOxx9Lcp+zGWXEpP+78BlD+d5PIxLuC7861XOiSl4U44e
 9r+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=02/Eiv1gyt78tWHfPEar2Ml38c3zbuwpTO3lws9nswI=;
 b=Rwjuuk1Wlk7gsjnEgITlZFssLmAC4x2n0vptAfRtCBihlCxfCtCnr4PViYUHZdprTZ
 OUcdWRU6aeVIZ7lfHPo7dkss6PPuJV1DWKe/XfDPCXk4KuQKd4aK86hORy+vj2t6VpeG
 hczwJ2le1gqfQOaaAQPy2GbXxf1PKEwUTosfVtD8EvCqHztTeuBUwEhgHc/UvUF7dxVb
 fK34uQt9uqKhybHIp5Y+/lBQM3alR3BVPdyYSCykaPCKd8xgYD5L0QlcdYAoGdm2Gx04
 U3nFns2wkf6moifkQPmlcxt5d96ntKCwQ67+BPwsxtDa2qw2v5aCQg5y8qT5Sg3CPbgc
 CQ6w==
X-Gm-Message-State: APjAAAVPhb8tozz0IXAZAr91mU97mEcq4SfCt9y0zD39aIdPbi8+PMX4
 RFpHq2rbQA041Tn93JL10ttFoh3za5KxDAWZhj4=
X-Google-Smtp-Source: APXvYqzVJdl8l5m9yNWW1qpoTvRb5iHecUzC9BIJIxmyaMgysHCCOGkgMsmrl7GettRS6fPWipSqY8GdAS0P9zKLsnk=
X-Received: by 2002:a9d:7d92:: with SMTP id j18mr17894102otn.339.1563829991487; 
 Mon, 22 Jul 2019 14:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRhLMK7Z-YdCqXnjamb0d685pi+mbsWAzhzVG2_jsNw=g@mail.gmail.com>
In-Reply-To: <CAB__hTRhLMK7Z-YdCqXnjamb0d685pi+mbsWAzhzVG2_jsNw=g@mail.gmail.com>
Date: Mon, 22 Jul 2019 17:12:59 -0400
Message-ID: <CAEXYVK7UuJzmCWT==QnE0WwkZCx3SFUA0J4HSz4k6bOh2unK3g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] RFNoC Testbench for custom block with
 AXI_CONFIG_BUS
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3215464701271012032=="
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

--===============3215464701271012032==
Content-Type: multipart/alternative; boundary="00000000000021be1d058e4b8b1b"

--00000000000021be1d058e4b8b1b
Content-Type: text/plain; charset="UTF-8"

You just need to write_reg() and use an address of SR_AXI_CONFIG for
everything other than the last value, and use SR_AXI_CONFIG_TLAST for the
last one.

That should push the valid high on the config line for each write you do,
and then on the last write both valid and tlast will be held.

Brian

On Mon, Jul 22, 2019 at 3:51 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am wondering how to write a testbench for a block that uses the
> AXI_CONFIG_BUS to load a vector of coefficients - just as it is done in
> noc_block_window.v (I'm not sure why there is no tesbench file for
> noc_block_window in the repo??).  Are there any examples that show how to
> load these coefficients from the testbench?
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000021be1d058e4b8b1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You just need to write_reg() and use an address of SR_AXI_=
CONFIG for everything other than the last value, and use SR_AXI_CONFIG_TLAS=
T for the last one.<div><br></div><div>That should push the valid high on t=
he config line for each write you do, and then on the last write both valid=
 and tlast will be held.</div><div><br></div><div>Brian</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 22=
, 2019 at 3:51 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>=
I am wondering how to write a testbench for a block that uses the AXI_CONFI=
G_BUS to load a vector of coefficients - just as it is done in noc_block_wi=
ndow.v (I&#39;m not sure why there is no tesbench file for noc_block_window=
 in the repo??).=C2=A0 Are there any examples that show how to load these c=
oefficients from the testbench?</div><div>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000021be1d058e4b8b1b--


--===============3215464701271012032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3215464701271012032==--

