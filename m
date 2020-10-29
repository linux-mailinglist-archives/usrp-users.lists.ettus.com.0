Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAB429F4D1
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 20:22:33 +0100 (CET)
Received: from [::1] (port=47736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kYDVH-0007dE-Nv; Thu, 29 Oct 2020 15:22:31 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:34027)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1kYDVD-0007V4-JL
 for USRP-users@lists.ettus.com; Thu, 29 Oct 2020 15:22:27 -0400
Received: by mail-lj1-f180.google.com with SMTP id y16so4390108ljk.1
 for <USRP-users@lists.ettus.com>; Thu, 29 Oct 2020 12:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L7taBgIAUx2H2dx14JuhfPh4muePD/IgfqccT3FurxI=;
 b=iOIwbSAnp6n3FamriSb6IjAHIWXTVHohOXkYgK91Cz2zfsr9oH+JHAJC/VGq2XwIMQ
 mQTtWpClxqzJhvDrsaHr7l4pc5qXSfLdDB9HqFulpsKavWkCNitVockIBA7uTZEoCAs0
 v9R6i6Z/NfY5g2tPI4Fa3q8cPiCwKdxKB+RA8SsK3XywPF37PETjIeWJOQdbopibyl9D
 UJmrG3F9YlwfD/DxyUQ6Y5FOXuH5dgyor30zOB4CFi3aO6y+oRGhtRSA/rna5zqxwhjm
 qD8MvZPlUPhSeGN8yn5l5+8SiV14P7+pdJDo7xZ1ct4ixHiw44xc+BW37ovJQ046dtJ3
 d0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L7taBgIAUx2H2dx14JuhfPh4muePD/IgfqccT3FurxI=;
 b=a5lRF6Y35eQZ/Mp6FtpQk9L7Q6rKyrq46DkH5l04VzX35OgOCJxVTuyMrRR9as7QK9
 IifppvK2VM6OkSxBLw+1oEiW/jJDly5GGhpbsskqucvbRdPDU1Gwj1oLtI+97hEXWN/F
 qwl6ZUQ564NGYroxW7ZKLMZtS54ATcBRtYvdgwwBQLxVx0hmt7DD2QwGeDXqfs9PdNPL
 667LhePqHObeI9qaDT83cvOPE+h+cZcz4NO3OBsKQ5JGe2cq3kBmhlmP4Y9SVP7kUqIO
 2MCHo4o7nR6FWDet0iRAUDVM9u+uSii6Na7sZnTMcymN5XJNbBdyxPVi/GCzxhDkgm96
 1KTg==
X-Gm-Message-State: AOAM533MFBJPHPiS9yBTn0cxBmeunB+cMx4ShLbl3uS5NIdxwBB6k/0P
 qXZGZcg48LNWZ8NnfWKm9Gw1sxtlNT8ZOQW2wrjQ6g==
X-Google-Smtp-Source: ABdhPJwGFF8ZgDHOEqBbt4v+HqUk0ItwtCN9Vxrp9d8d1xW1yCZru4i+18vhuvWDj65PFB9cDOGOxnxDe4QQjMfi0YM=
X-Received: by 2002:a2e:9657:: with SMTP id z23mr2537236ljh.8.1603999304820;
 Thu, 29 Oct 2020 12:21:44 -0700 (PDT)
MIME-Version: 1.0
References: <1b7351208b9b471c89c06bbf261751a6@fau.de>
In-Reply-To: <1b7351208b9b471c89c06bbf261751a6@fau.de>
Date: Thu, 29 Oct 2020 12:21:34 -0700
Message-ID: <CAKJyDkJZBbKjzdz+Be9D0htO_BqiGP-XTMw8UJ86BvRO3iDHdA@mail.gmail.com>
To: "Bruckmeyer, Heiko" <heiko.bruckmeyer@fau.de>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Use of IEEE1588 PTP
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============0771740438231488379=="
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

--===============0771740438231488379==
Content-Type: multipart/alternative; boundary="000000000000c8bf9a05b2d4305b"

--000000000000c8bf9a05b2d4305b
Content-Type: text/plain; charset="UTF-8"

The X310 does not support White Rabbit or IEEE 1588.

The N310/N320 have only been validated using a White Rabbit Master such as
this one: https://sevensols.es/index.php/index/timing-products/wr-len/
A simple PTP Master will almost certainly not work with the WR FPGA
bitstream.


On Thu, Oct 29, 2020 at 1:56 AM Bruckmeyer, Heiko via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I have a question regarding the use of the simple synchronization protocol
> IEEE1588 Precision-Time-Protocol.
>
> I want to use Ettus USRP N3xx. I know that they support the White Rabbit
> protocol for synchronizing. PTP is a part of the White Rabbit. So is it
> possible to use a simple PTP Master and synchronize the USRP to it or do I
> need a White Rabbit Master?
>
> I know that the use of simple PTP will degrade the synchronization
> accuracy.
>
>
>
> Does the USRP X3xx also support White Rabbit or IEEE1588 PTP?
>
>
>
> Thanks and best regards,
>
> H. Bruckmeyer
>
>
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c8bf9a05b2d4305b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The X310 does not support White Rabbit or IEEE 1588.<div><=
br></div><div>The N310/N320 have only been validated using a White Rabbit M=
aster such as this one:=C2=A0<a href=3D"https://sevensols.es/index.php/inde=
x/timing-products/wr-len/">https://sevensols.es/index.php/index/timing-prod=
ucts/wr-len/</a>=C2=A0=C2=A0</div><div>A simple PTP Master will almost cert=
ainly not work with the WR FPGA bitstream.</div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
29, 2020 at 1:56 AM Bruckmeyer, Heiko via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"DE" styl=
e=3D"overflow-wrap: break-word;"><div class=3D"gmail-m_-5830297391217181825=
WordSection1"><p class=3D"MsoNormal">Hello,<u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-GB=
">I have a question regarding the use of the simple synchronization protoco=
l IEEE1588 Precision-Time-Protocol. <u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-GB">I want to use Ettus USRP N3xx. I know that th=
ey support the White Rabbit protocol for synchronizing. PTP is a part of th=
e White Rabbit. So is it possible to use a simple PTP Master and synchroniz=
e the USRP to it or do I need a White Rabbit Master? <u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-GB">I know that the use of simpl=
e PTP will degrade the synchronization accuracy. <u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-GB">Does the USRP X3xx also support =
White Rabbit or IEEE1588 PTP?<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-GB">Thanks and best regards,<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-GB">H. Bruckmeyer<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span>=
</p></div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c8bf9a05b2d4305b--


--===============0771740438231488379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0771740438231488379==--

