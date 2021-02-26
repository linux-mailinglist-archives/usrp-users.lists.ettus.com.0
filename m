Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E14326768
	for <lists+usrp-users@lfdr.de>; Fri, 26 Feb 2021 20:24:45 +0100 (CET)
Received: from [::1] (port=46808 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lFijA-00067T-Ib; Fri, 26 Feb 2021 14:24:40 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:44009)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1lFij7-000637-9q
 for usrp-users@lists.ettus.com; Fri, 26 Feb 2021 14:24:37 -0500
Received: by mail-oi1-f177.google.com with SMTP id d20so10825581oiw.10
 for <usrp-users@lists.ettus.com>; Fri, 26 Feb 2021 11:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rsLQZL0MVk+HFboAXhQQ5dRPaUDJfCvSD4YoxAcvPyE=;
 b=v1zpvH6X2jtVSTJSINGc79z1yVzQ5YUHo2dIXjyp+FIRGcKhnkGHQRwqA6du2ogQA9
 Pmgig+GAn4LiqsfL4zbFizBKh07udGiibuc0vo/QkwIiQbd1FGXg6QlUbi5fgqcGx3lM
 L15QP2gI/87n+HZcxVVWTrshrCrTPdN4fNoS+GN+n3h/6adRv579mhI3zZm4V+87bgnv
 6745N5R89CjL4gGX9iVZJ9yFfcYq9iNvrUQi5sIF5AaQ5O3YjRSCiczeTKvDd9hGbw2/
 3MYHWQ95eh45CqYJOSMec+mRqiiUw/tJjFlBqTbSGJYIpen0LlAaMdcEjdS5EB2lI5Xt
 cYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rsLQZL0MVk+HFboAXhQQ5dRPaUDJfCvSD4YoxAcvPyE=;
 b=JT17im+CjJCfALc8hwB/QO8+WSDNcNEzng0oYy0p5XzZJHFLZKXyqKUDyFywKwenla
 5zgroEoE3NWj2DckEccuj0LBFrn7wW4ZmtIZBiEL+YGV+CwHV3L+O2w9VNKU4bF++EOe
 obTSWsaoDRvbXaeEYz02sAttA7axumSUF74b/INRHTi266RsRWbO+Iu0n7xYxz5LNxwL
 CcDEjbAbuDhat2jgDsHR9FfORnRrFnTYQM3lksdnvadKtd92F8msvKxlO9g9vDCUvip3
 BR7Flin6bM66SZctAGVp4T3iHj/2Y08zKhbQx3qdQFDRrLlcak9jbwHtX6GUKRE1ZDTf
 0auw==
X-Gm-Message-State: AOAM532QaLrz5A5bNb+xzrZH3ZRkFMy6JGFYoO8K+mC73VoxrX8Rg9tN
 qrIVRyc6uXdOWJPJqGtT1eSxhp5qFY2QnJW+Eecsnmr3
X-Google-Smtp-Source: ABdhPJz7wmPOpeNLLyP0mRiSPFb/fnPUnZ/4sKpXNycn6yt9uAL67o6VMika9FAqaM1ScVUnuUOSN2wKt/zz5wN+/PM=
X-Received: by 2002:a05:6808:97:: with SMTP id
 s23mr3246162oic.23.1614367436515; 
 Fri, 26 Feb 2021 11:23:56 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTepTD=OzJDHNV_ve7WdKiEYHcx-NsZ1G1cQX65YJ92Qw@mail.gmail.com>
In-Reply-To: <CAB__hTTepTD=OzJDHNV_ve7WdKiEYHcx-NsZ1G1cQX65YJ92Qw@mail.gmail.com>
Date: Fri, 26 Feb 2021 13:23:46 -0600
Message-ID: <CAFche=h2sTRnzufr4J4G5fVZ=v9S-7duS4-xZjsLAdp1Q_ZrYg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc architecture suggestions
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============6519660904077463674=="
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

--===============6519660904077463674==
Content-Type: multipart/alternative; boundary="00000000000097415805bc4235c4"

--00000000000097415805bc4235c4
Content-Type: text/plain; charset="UTF-8"

Rob,

Thanks for the feedback! I like your suggestions. In fact, the bypass
option is one that we've discussed a few times, since it would be very
useful for debug and would allow some blocks to be statically routed that
currently use the crossbar. We definitely want to make things easier for
users. Please continue to share suggestions you have.

Thanks!

Wade

On Fri, Feb 26, 2021 at 10:08 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> While I am a big fan of the architectural changes to RFNoC with the
> release of UHD 4.0, I have a couple of suggestions for improvement. I am
> admittedly a novice FPGA developer so it's certainly possible that these
> suggestions are "easier said than done" or poor choices for other reasons.
> But, that won't stop me from suggesting them...
>
>    - Remove to a greater extent the requirement for user logic to "care"
>    about packet lengths.  In many cases, the user logic does not care about
>    packet lengths and MTU sizes and such.  For example, if I am writing a
>    signal generator that is feeding a DUC/Radio, I may care about a time stamp
>    and EOB, but I simply do not care about RFNoC packet sizes. This is true in
>    several custom blocks I have written.  However, in the current RFNoc
>    architecture, I am forced to care about them. At a minimum, I must set
>    tlast and depending upon the context model I choose, I may also have to
>    make sure that my context payload length matches this. It seems to me that
>    the custom noc_shell could be tweaked further to alleviate this burden for
>    more use cases.
>    - Provide an automatic "bypass" mode (or an option to enable this in
>    the block yml) in the custom noc_shell. I am talking about a capability
>    that would allow the user to bypass user logic by setting a register such
>    that the custom block would become a "thru" block.  While I recognize that
>    this functionality is not appropriate to all blocks (e.g., 2 input, 3
>    output), there are a large number of blocks for which this would be
>    helpful.  Given the new capability for static routing, this would allow the
>    user to bypass a statically routed block. And, while I could certainly
>    implement such logic in all of my custom blocks, it would be more useful if
>    this were standard across all blocks including Ettus blocks such as DDC &
>    DUC.
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000097415805bc4235c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rob,</div><div><br></div><div>Thanks for the feedback=
! I like your suggestions. In fact, the bypass option is one that we&#39;ve=
 discussed a few times, since it would be very useful for debug and would a=
llow some blocks to be statically routed that currently use the crossbar. W=
e definitely want to make things easier for users. Please continue to share=
 suggestions you have.<br></div><div><br></div><div>Thanks!</div><div><br><=
/div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Feb 26, 2021 at 10:08 AM Rob Kossler via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">While I am a big fan of the architectural chang=
es to RFNoC with the release of UHD 4.0, I have a couple of suggestions for=
 improvement. I am admittedly a novice FPGA developer so it&#39;s certainly=
 possible that these suggestions are &quot;easier said than done&quot; or p=
oor choices for other reasons. But, that won&#39;t stop me from suggesting =
them...<div><ul><li>Remove to a greater extent the requirement for user log=
ic to &quot;care&quot; about packet lengths.=C2=A0 In many cases, the user =
logic does not care about packet lengths and MTU sizes and such.=C2=A0 For =
example, if I am writing a signal generator that is feeding a DUC/Radio, I =
may care about a time stamp and EOB, but I simply do not care about RFNoC p=
acket sizes. This is true in several custom blocks I have written.=C2=A0 Ho=
wever, in the current RFNoc architecture, I am forced to care about them. A=
t a minimum, I must set tlast and depending upon the context model I choose=
, I may also have to make sure that my context payload length matches this.=
 It seems to me that the custom noc_shell could be tweaked further to allev=
iate this burden for more use cases.</li><li>Provide an automatic &quot;byp=
ass&quot; mode (or an option to enable this in the block yml) in the custom=
 noc_shell. I am talking about a capability that would allow the user to by=
pass user logic by setting a register such that the custom block would beco=
me a &quot;thru&quot; block.=C2=A0 While I recognize that this functionalit=
y is not appropriate to all blocks (e.g., 2 input, 3 output), there are a l=
arge number of blocks for which this would be helpful.=C2=A0 Given the new =
capability for static routing, this would allow the user to bypass a static=
ally routed block. And, while I could certainly implement such logic in all=
 of my custom blocks, it would be more useful if this were standard across =
all blocks including Ettus blocks such as DDC &amp; DUC.</li></ul><div>Rob<=
/div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000097415805bc4235c4--


--===============6519660904077463674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6519660904077463674==--

