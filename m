Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 175AA2621AB
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 23:06:11 +0200 (CEST)
Received: from [::1] (port=53612 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFkoa-0005Af-31; Tue, 08 Sep 2020 17:06:08 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:44023)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kFkoV-00052R-Vg
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 17:06:04 -0400
Received: by mail-oi1-f176.google.com with SMTP id i17so189874oig.10
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 14:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LtyDj0KOfs6od9sCCKScpqbpVQ9bXZ0qlF8VVn95ljo=;
 b=eKh796HdCUQONkLdaltsosqqaggyc448HDN60LFxRCk/P+T4vx9Olf3w1zaAOr/0ZE
 pNNXFGLYpPot8k/UdW4QCbXx6n7PKQEphdPipElnDxr8ZVh6pOQlnYnJmROc16ZhUGao
 gJ7Lf3yRTZegwond6qbHEw+4yP4Brv175j2b1k8wGCGCSWvNDY0WPW89bKmI+XyHpNs8
 dYh7ejQxAM5zbIRqED9FgoaIQLJQdYxnW5dZdRcK4K0aRq8glNLGobCAtiuuw4yeL74y
 Up/ahaP3Ovj4IOp0Nu+u9ZZARbxkhq7qUeQaLj/9iXYDmf0Ijx9xGIyMndp58uWrZM1U
 sp8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LtyDj0KOfs6od9sCCKScpqbpVQ9bXZ0qlF8VVn95ljo=;
 b=Gt6b/pqUaQ3aBlL48gs2WCaTRKU5O0f8srjm2GKdulNU/2UsZZydzCgxXQtTJjbP0P
 6JFyfIAZzdk50pIpllJqm/egFqA1RZiCN3z0ZQuQjnskmsjQv+WA95+I6E2s173rXj7t
 CEsNdsq8aFpf4AWr6h3u2Ggq01VOzlWNiPmWgkVOgOtSechHFDh9+zeZrJpU0dWlXj/b
 xZ+LFr9uMwyjxO9E65/3tskqxvfFT9jIhSMiKdvI8NOIKGxieXQFixwV7MimiuvltUpn
 s82eq333voxz06CBwh11Q+4tbWFSdiCbXVeDR2b/c5EXEUJ2AXQE62FMz98ePJRpaCh5
 6zaA==
X-Gm-Message-State: AOAM531wo+fy39IqiTvtdhcUwEwYlo1Z9J9SVVETipsp66/+Mc6R6CcE
 sGf42wp1gd6+bcr9je1OT7P9800uqQNBZ5eaj8I4/w==
X-Google-Smtp-Source: ABdhPJxD9rRifAFi+Vxiq++s75Hqj2FnS19kH4utdFxNViDAOHggZzd7lbAvp6Ak9QeS0gOqfUWU755hBmQP0Tyrg5g=
X-Received: by 2002:aca:f0d:: with SMTP id 13mr585929oip.124.1599599122944;
 Tue, 08 Sep 2020 14:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTxYJoOW1Sk64CGui+1iH7P+i_frNjrF8RbyO4TunUeOA@mail.gmail.com>
 <CAFche=jzoK9A_d9GH8-n-0V9B4T553LU9V0scO_oH_29BcYc4g@mail.gmail.com>
 <CAB__hTQMTJSxHusMh5Ck_yKQQ70OseUE=bGND6cCrQpVxdyEDg@mail.gmail.com>
 <CAFche=g5FvqUAy+b4H2i950hJ3r2pqJ0TW+0DMx9t=XS+P0cUg@mail.gmail.com>
 <CAB__hTSympre24Kx=j4gxXvW0BbmvA8x=jjUUwHx1e-P0WveBg@mail.gmail.com>
 <33a527f9-552e-3c37-c659-02995d484a8e@ettus.com>
In-Reply-To: <33a527f9-552e-3c37-c659-02995d484a8e@ettus.com>
Date: Tue, 8 Sep 2020 17:05:11 -0400
Message-ID: <CAB__hTR3hvmig1_nzB-PkJdXi1P27ftZG_yrAvnsK4U880H1Jw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using Replay block in UHD-4.0
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3803926594707743174=="
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

--===============3803926594707743174==
Content-Type: multipart/alternative; boundary="00000000000081ceb205aed3b1fc"

--00000000000081ceb205aed3b1fc
Content-Type: text/plain; charset="UTF-8"

Thanks Martin, Wade,
BTW, with the new N310 default FPGA image and UHD code, I just ran 4
simultaneous Replay/DUC/Radio channels at 125MS/s (for about a minute) with
no issues.  So, it appears that the RAM I/O is fast enough to handle all
channels at the full rate.
Rob

On Tue, Sep 8, 2020 at 11:21 AM Martin Braun via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 9/8/20 3:51 PM, Rob Kossler via USRP-users wrote:
> > One more question.  I just looked at the latest commits which include
> > the Replay block in the default images.  I notice that for each device
> > only one multi-port Replay block is added rather than multiple one-port
> > Replay blocks (e.g., for N310, one 4-port Replay is added rather than
> > four 1-port or two 2-port Replay blocks).  Is there still a performance
> > issue related to this choice? In the past (UHD 3.x), the max streaming
> > to/from a block was limited such that it mattered how you allocated
> > these ports.  I think that is why the DUC and DDC are populated as two
> > 2-port blocks so that they can handle the streaming rates (which they
> > couldn't handle if they were single 4-port blocks).
>
> With UHD 4.0, a single four-port DUC/DDC might even work, but we prefer
> to match the DDC/DUC blocks to the radios. The block controllers also
> have a shared state, which would be a bit odd if the channels aren't
> related.
>
> So the short answer is, there's no performance onus for having a single
> replay block. It's more a matter of how are the FPGA resources allocated
> and located.
>
> --M
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000081ceb205aed3b1fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Martin, Wade,<div>BTW, with the ne=
w N310 default FPGA image and UHD code, I just=C2=A0ran 4 simultaneous Repl=
ay/DUC/Radio channels at 125MS/s (for about a minute) with no issues.=C2=A0=
 So, it appears that the RAM I/O is fast enough to handle all channels at t=
he full rate.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 8, 2020 at 11:21 AM Martin Bra=
un via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On 9/8/20 3:51 PM, Rob Kossler via USRP-users wrote:<br>
&gt; One more question.=C2=A0 I just looked at the latest commits which inc=
lude<br>
&gt; the Replay block in the default images.=C2=A0 I notice that for each d=
evice<br>
&gt; only one multi-port Replay block is added rather than multiple one-por=
t<br>
&gt; Replay blocks (e.g., for N310, one 4-port Replay is added rather than<=
br>
&gt; four 1-port or two 2-port Replay blocks).=C2=A0 Is there still a perfo=
rmance<br>
&gt; issue related to this choice? In the past (UHD 3.x), the max streaming=
<br>
&gt; to/from a block was limited such that it mattered how you allocated<br=
>
&gt; these ports.=C2=A0 I think that is why the DUC and DDC are populated a=
s two<br>
&gt; 2-port blocks so that they can handle the streaming rates (which they<=
br>
&gt; couldn&#39;t handle if they were single 4-port blocks).<br>
<br>
With UHD 4.0, a single four-port DUC/DDC might even work, but we prefer<br>
to match the DDC/DUC blocks to the radios. The block controllers also<br>
have a shared state, which would be a bit odd if the channels aren&#39;t<br=
>
related.<br>
<br>
So the short answer is, there&#39;s no performance onus for having a single=
<br>
replay block. It&#39;s more a matter of how are the FPGA resources allocate=
d<br>
and located.<br>
<br>
--M<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000081ceb205aed3b1fc--


--===============3803926594707743174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3803926594707743174==--

