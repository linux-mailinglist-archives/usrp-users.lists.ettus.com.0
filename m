Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DED24F168C
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 15:52:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7037F38480C
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 09:52:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649080371; bh=E7SOphvTnNFkJrA1ZTbEU21myW1S3zcda72Mw/6qeq8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FGTT/zx14hSKlIE9DE+Z1vJOFlNa2FQkLmadWRpeEQJY4nZGun0Quxchvi/DsyXlo
	 BfPFj2+FvEGTDssytb35441Btpfan3VV9FwDCMWVE+yMlVWA/KXYpgy9XLzwXNhS+A
	 mTIIeLvmafNRgWKW+zXYbj8Sxac7Als3Z90IKZj3ofVCHwLsYeWyjTg5E13hcNHTJB
	 VTnmYOR/9y2OOLNuORPo0B89LdOKCBUBoqqxOoQ11cZrTUOIQXHqpV5piufb9SKZn/
	 iWGPXwJrikLjNwcxEqv081ltZbQLISyJ9am0G3achOcULLKVRcG0xr5bEfMYcmwrLf
	 mEDiGjhCWr/RQ==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D4A83846B2
	for <usrp-users@lists.ettus.com>; Mon,  4 Apr 2022 09:51:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Z3Zwi9Xr";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id g9so8082475ybj.9
        for <usrp-users@lists.ettus.com>; Mon, 04 Apr 2022 06:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=KD3/YdlpTa3R+RE2hzvK32eOpV9zCOkhX5IfebkjPYM=;
        b=Z3Zwi9XrnvLlfmfKqa38bh/WQ0Ii1OS0NoRRff5hzB6ILIlIEiPj2QZqsH/L29G6C3
         nHJspFLo7YPgBEyzUMKqE/G0CdZ48j9/Srrm4O6jiuSLltzoqswUn73znfmTEB7pA2Id
         H33KGA8fjlG64XdD90Uf4aqaP5miadhzKrGyV+iy+hgsqpqWcL1IK82fmut9DgWgb6Wj
         y1HpX+yRqpMjtUqdegipR/oHpmCR+cnAaYKU+3gBUJfFHpsfOJ9QQb0pWVhspLDVt2Ox
         fHhqwnf7pj09FW2FWnW8B6mFMG53tf2yahYsaqm6uYPuYFKjjIIFDEF5jk4H5VHI3Sx9
         xIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=KD3/YdlpTa3R+RE2hzvK32eOpV9zCOkhX5IfebkjPYM=;
        b=fqB6+zPezeB/NwQBa12kg0yirf5ZcGjZfE06ZOLXwG3+aMfDy4MwKUoaiJ8haWy0zA
         P3r3znSwggJ6xGvLYU0lRTeK4NJp6wXy7aBC59aenW4PbJ85gPNP5HguRa0NeKmzInJk
         cBOjaoUBfW05TKicQ67vSM6JfAshy+WGeZ/xTS0FMnR29vrQMcAQYlyDuncu1Kn9qjhr
         hfBzR73Hdj5tTCLoVf36jkuZiXLcS2Acyr97cTft7+ReaG9x/MGWzQ9NP9+p+6qrbzhL
         WOBmGeCb6/eIaPKB8sRj3EcWKyp5hDo7DI/G13TpZtTm/oeFZX3zI0wiYGjjg4ZhIfMc
         OVuA==
X-Gm-Message-State: AOAM532TwCUZFvkl0+zQ5f3zcazRHjWHWla0vt61BgL54IBCyW8e1ZNs
	aBP69/cfRL23QFUYcFvY+oxLyzJ8UR9RuMzv65X2sA==
X-Google-Smtp-Source: ABdhPJzILxHG9vgeAR9I39pYeL41qLre+OyrMNe1A8EfYWkpwKsH9OWWSc8qiFQU0icev26rGtx3FRCPJz26ryXdAJw=
X-Received: by 2002:a25:b991:0:b0:610:bf4e:1b33 with SMTP id
 r17-20020a25b991000000b00610bf4e1b33mr20791983ybg.352.1649080317678; Mon, 04
 Apr 2022 06:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
 <20220401165020.kdzbyckz7xrxhk5o@barbe> <CAB__hTTF4xa=bdJ3QwOySCiNYDG_RZWaCebETCS7bvA=ORDwEQ@mail.gmail.com>
 <20220404083141.rylumcponsws6npm@barbe>
In-Reply-To: <20220404083141.rylumcponsws6npm@barbe>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 4 Apr 2022 09:51:46 -0400
Message-ID: <CAB__hTQ8ya2nWa4rEdZdx2qGEjXVMhrPAFREiqOb4V0wCG-njw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6OR7GB3CZWXYLA25AYCBLXAC2W4SD4G2
X-Message-ID-Hash: 6OR7GB3CZWXYLA25AYCBLXAC2W4SD4G2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OR7GB3CZWXYLA25AYCBLXAC2W4SD4G2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0068106155929943478=="

--===============0068106155929943478==
Content-Type: multipart/alternative; boundary="0000000000008ae31605dbd46e7a"

--0000000000008ae31605dbd46e7a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks C=C3=A9dric,
This was a big help.  On the N310, this improved the data rate from about
12MB/s to 42MB/s.
Rob

On Mon, Apr 4, 2022 at 4:31 AM C=C3=A9dric Hannotier <cedric.hannotier@ulb.=
be>
wrote:

> Hi Rob,
>
> On 01/04/22 16:27, Rob Kossler wrote:
> > Thanks C=C3=A9dric,
> > Yes, the CPU is at 100%. I am unfortunately not fluent in python and so
> I'm
> > confused about your suggested non-encrypted transfer.  What would I run
> on
> > the N310 and what on the host in order to transfer the file?
>
> On N310, you run "python -m http.server" [1].
> It should printout that it is listening on any interface (0.0.0.0),
> on port 8000 (to use another port: "python -m http.server <port>").
>
> On the PC, you can open a web browser, go to http://<N310-IP>:8000,
> and should get an index of the directory
> where the python server has been started.
> wget seems to be a good candidate (e.g. [2])
> if you need some automation for downloading lots of files.
>
> Please note that the connection is unencrypted
> and is available to any device that can communicate with the N310.
>
> [1] https://docs.python.org/3/library/http.server.html
> [2] https://apple.stackexchange.com/a/100573
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>

--0000000000008ae31605dbd46e7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks=C2=A0C=C3=A9dric,</div><div>This w=
as a big help.=C2=A0 On the N310, this improved the data rate from about 12=
MB/s to 42MB/s.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Apr 4, 2022 at 4:31 AM C=C3=A9dric Ha=
nnotier &lt;<a href=3D"mailto:cedric.hannotier@ulb.be">cedric.hannotier@ulb=
.be</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi Rob,<br>
<br>
On 01/04/22 16:27, Rob Kossler wrote:<br>
&gt; Thanks C=C3=A9dric,<br>
&gt; Yes, the CPU is at 100%. I am unfortunately not fluent in python and s=
o I&#39;m<br>
&gt; confused about your suggested non-encrypted transfer.=C2=A0 What would=
 I run on<br>
&gt; the N310 and what on the host in order to transfer the file?<br>
<br>
On N310, you run &quot;python -m http.server&quot; [1].<br>
It should printout that it is listening on any interface (0.0.0.0),<br>
on port 8000 (to use another port: &quot;python -m http.server &lt;port&gt;=
&quot;).<br>
<br>
On the PC, you can open a web browser, go to http://&lt;N310-IP&gt;:8000,<b=
r>
and should get an index of the directory<br>
where the python server has been started.<br>
wget seems to be a good candidate (e.g. [2])<br>
if you need some automation for downloading lots of files.<br>
<br>
Please note that the connection is unencrypted<br>
and is available to any device that can communicate with the N310.<br>
<br>
[1] <a href=3D"https://docs.python.org/3/library/http.server.html" rel=3D"n=
oreferrer" target=3D"_blank">https://docs.python.org/3/library/http.server.=
html</a><br>
[2] <a href=3D"https://apple.stackexchange.com/a/100573" rel=3D"noreferrer"=
 target=3D"_blank">https://apple.stackexchange.com/a/100573</a><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
</blockquote></div></div>

--0000000000008ae31605dbd46e7a--

--===============0068106155929943478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0068106155929943478==--
