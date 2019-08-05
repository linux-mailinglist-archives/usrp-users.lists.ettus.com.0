Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6B8228D
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 18:38:31 +0200 (CEST)
Received: from [::1] (port=36850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hug0D-0007YS-MF; Mon, 05 Aug 2019 12:38:29 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:39970)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hug0A-0007PB-8y
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 12:38:26 -0400
Received: by mail-io1-f44.google.com with SMTP id h6so43432132iom.7
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 09:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FCPovnJbNl12p9SLFrJTfOCXS0u+7db9a6cUXuZI258=;
 b=sMj+I4Rp0ptGms98jZA5Sz50utpM28Z/lb+zy3h8um8yF0d90ukeVh/ncbpeocpnKz
 xm6jJIUs2HlTURoY7QlqeguRpq7OLOAnImmlL1T/UtZDksOFhOj7mpKUFKpyxIwdTzoB
 dLw96Sk9Og3RKVUEbPj+pONtfEDvYJe0vbgpWahdqMnJH30MwtFqOR6CjoBEjqu2X+I3
 tW1JF889AtgEI8v3g2tVFotkARENVNXBJdgtDyHtRZeEW9jj0UasBOLE0ITIjZTCqToi
 z+/mkzouoiyCPAMMtM0WIn/6iNgPC2RO4M5OO63YxSZZQDq6q8r/JDcVPAewiwxbD0IF
 r7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FCPovnJbNl12p9SLFrJTfOCXS0u+7db9a6cUXuZI258=;
 b=hIa6oC74a4TsspHuLQk72O/0UGRatOhEK0IpIutlC4+2Je4x0KLYxcg34s8IdbO3+I
 e9M5I3m/aWugDhPyQDzITvVl/0sJx7+oDe/dAWsEi1dxNe2x83/6fz3M30NeMItK/kNS
 yPEhxtKBnstnwsCYd8gxUs63RpzVxjdosNkj17jwUvX/KKDcCfbMY+TrUfYip8N8T6bC
 EsvnzY8zzDmLkomKdimT22KHxbps+KAps97rlGOwfE+yWSzW1iQmy9GBcCN/MJJZqla8
 NBPW+9iLi0cEymafBKo+7JZXFYQQoHH6ExiOedGk3k6RfT+5XACMzLcRQP0SKgaojfHM
 qHzA==
X-Gm-Message-State: APjAAAU3LAbgEt17AwThqZeHBdLi35bqjWxXigexnZSo2Liqx5QsD0Wy
 k7/mHPiroYFwS97S6UqrFrC85oOxYvSYOe9rPK4PAw==
X-Google-Smtp-Source: APXvYqxvxmrwAq0JcDyeH28TEhSBKPGkC3mDKP3FdD9h5LB+NYorequcpGQkw1RgPKqbnQEQ8PQYjdTSUqnpqZRMhP4=
X-Received: by 2002:a5d:8497:: with SMTP id t23mr20884260iom.298.1565023065507; 
 Mon, 05 Aug 2019 09:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
 <9c8f200ed81542cea52e138e82c74002@tudelft.nl>
In-Reply-To: <9c8f200ed81542cea52e138e82c74002@tudelft.nl>
Date: Mon, 5 Aug 2019 09:33:37 -0700
Message-ID: <CA+JMMq8nDYpcTAyabu63jvG=_NwqD6oqsMBddRyTrJj9cgOGeQ@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6217105480233447417=="
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

--===============6217105480233447417==
Content-Type: multipart/alternative; boundary="000000000000e28e5e058f6153cd"

--000000000000e28e5e058f6153cd
Content-Type: text/plain; charset="UTF-8"

The radio TX frontend backpressures upstream blocks. You don't have to
worry about providing samples at the frontend rate. There is no reason to
use a 200MHz clock in your block.

Remember: if the frontend is operating at 200Msps, then the samples your
block is producing must assume a 200Msps sample rate. It doesn't matter at
all that the clock driving your block is 214MHz -- that only means that the
logic is operating a bit faster.

Nick

On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
>
> ------------------------------
>
> Hello guys,
>
>
>
> I am working with the X310 USRP. I have developed customed RFNoC CEs
> running at ce_clk which is no more 200 MHz but rather 214 MHz.
>
> So my blocks are providing samples to the RF frontends at 214 MSps. Is
> that right?
>
> Then how the operation can be consistent when the sampling rate of the RF
> frontends is still at 200MSps.
>
>
> Is it possible to synchronize both the 214 MHz and the 200 MHz clocks to
> the same 10 MHz external reference, or to  use the 200 MHz reference clock
> as my HW blocks main clock?
>
>
>
>
> Best Regards
>
> Cherif
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e28e5e058f6153cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The radio TX frontend backpressures upstream blocks. =
You don&#39;t have to worry about providing samples at the frontend rate. T=
here is no reason to use a 200MHz clock in your block.</div><div><br></div>=
<div>Remember: if the frontend is operating at 200Msps, then the samples yo=
ur block is producing must assume a 200Msps sample rate. It doesn&#39;t mat=
ter at all that the clock driving your block is 214MHz -- that only means t=
hat the logic is operating a bit faster.</div><div><br></div><div>Nick<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6936411464282814038divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div>
<div>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Hello guys,</p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
=C2=A0</p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">I am working with the X310 USRP. I have developed cust=
omed RFNoC CEs running at ce_clk which is no more 200 MHz but rather 214 MH=
z.
<br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">So my blocks are providing samples to the RF frontends=
 at 214 MSps. Is that right?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Then how the operation can be consistent when the samp=
ling rate of the RF frontends is still at 200MSps.</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Is it possible to synchronize both the 214 MHz and the=
 200 MHz clocks to the same 10 MHz external reference, or to=C2=A0 use the =
200 MHz reference clock as my HW blocks main clock?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">=C2=A0</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Best Regards</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Cherif</span></p>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e28e5e058f6153cd--


--===============6217105480233447417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6217105480233447417==--

