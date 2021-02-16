Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C359731CB18
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 14:29:59 +0100 (CET)
Received: from [::1] (port=51402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lC0QN-0007TA-Dm; Tue, 16 Feb 2021 08:29:55 -0500
Received: from mail-pj1-f45.google.com ([209.85.216.45]:34388)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tuanmcx58@gmail.com>) id 1lC0QJ-0007OM-MA
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 08:29:51 -0500
Received: by mail-pj1-f45.google.com with SMTP id my11so3982842pjb.1
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 05:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=HY/x0NLOAbJ21j8+yVmJTyqrk0qDGDY6o4A+v+RSiiE=;
 b=RyPB4oiH/zpD+eCTTaGaXQ7OH+ZPwp4rx+VKF0x3YYTnvNrw8+3R/N0yp5BNkKBpsc
 +oNOENVJGdSpK4yN3kyqrxMwxVZ2lQS7S8udsqnEiM8KgwUh7KQEnk+W1y780GwsgsrR
 R1rhNmVucI/FDT8NwGviTih+MeUoPqC14wgp5Hr3erDe6+yUIgcJdYsokUAHYjpSwimZ
 nGX4gE7a21L1q5o1dEKGbVkws6LnwxWDXXRhgvqyPaerWjxQ/EP+hHPOlpUJu4wpLtFK
 Sn+eZ2+qg7gGXiSb8THDbmqL+/DZc1TrwgDZJZ7sG1fk/MZB2bX07Tl94703vrCLOi3p
 11Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=HY/x0NLOAbJ21j8+yVmJTyqrk0qDGDY6o4A+v+RSiiE=;
 b=i3a8o65eZdZS316kGyDG2n1IXosXrDrYDH6r5FmVLqcCVTbghXBIsNPp7m1uDCo7GY
 1zVZSZ5jhzpJj0n/lUbg7qU74W0cj7JHXgPAI37egJIxaQnF2L1vtg3pIVADX/Vdzwzm
 A8toOS8ht8Js0pFzfJI7/YAt5WGL2NYcko8wi2GIJjm7qE0lJ+d3swu6GhwKwVBJy64D
 nIBYPr67v3qgkJ2vvAU67HVpVLnphzAywfvbz7J4ea9SISgyItSHNTWLVPKhETqtgfHH
 NF6DV+aOXgGIWeBgvCFSNlg43alJzTJrX3pQ/v6vQGwSlxy3Yc8n2QzXUoUxMGZ8JHFm
 zQNg==
X-Gm-Message-State: AOAM5309QuouIOLOGVqLbc4R+AgDj7vM8rZjeupRC9ZIAMssRxAVWSWn
 YOtzvao8w+FfEjtIA0qCUtjoYDbs/Sdv5J4Q4us=
X-Google-Smtp-Source: ABdhPJyji25B4aGWlnGI6iD2b86ARS8DJC7efJo+/S+U2zMvFP+Toaoa2brtWnto/grwpkeAP/MDnnipUWwumpn8qjQ=
X-Received: by 2002:a17:90a:d682:: with SMTP id
 x2mr4455487pju.139.1613482150642; 
 Tue, 16 Feb 2021 05:29:10 -0800 (PST)
MIME-Version: 1.0
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
 <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
 <20210216091941.yaclsgbeh7spm4tt@barbe>
In-Reply-To: <20210216091941.yaclsgbeh7spm4tt@barbe>
Date: Tue, 16 Feb 2021 22:29:00 +0900
Message-ID: <CAJZBg9WpiJ4rq-vLq1RCpfoi+rGBQM=kEE3Mkz98VzAyZccZOA@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
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
From: Tuan Hoang Dinh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tuan Hoang Dinh <tuanmcx58@gmail.com>
Content-Type: multipart/mixed; boundary="===============1588047650154109055=="
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

--===============1588047650154109055==
Content-Type: multipart/alternative; boundary="00000000000070c97005bb7416f5"

--00000000000070c97005bb7416f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear C=C3=A9dric Hannotier,

Thanks a lot for your forwarded email from Wade, it is so helpful for me at
the starting step.
Thank you too, Wade.

Best regards,
Tuan

V=C3=A0o Th 3, 16 thg 2, 2021 va=CC=80o lu=CC=81c 18:20 C=C3=A9dric Hannoti=
er via USRP-users <
usrp-users@lists.ettus.com> =C4=91=C3=A3 vi=E1=BA=BFt:

> Dear Tuan,
>
> On 16/02/21 14:03, Tuan Hoang Dinh wrote:
> > I would like to add Xilinx IP to RFNoC module and still have no idea to
> do
> > that.
> > Could you share your example to help me get started?
>
> I forwarded Wade's example to you.
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

--00000000000070c97005bb7416f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear=C2=A0<font color=3D"#000000">C=C3=A9dric Hannotier,</=
font><div><font color=3D"#000000"><br></font></div><div><font color=3D"#000=
000">Thanks a lot for your forwarded email from Wade, it is so helpful for =
me at the starting step.</font></div><div><font color=3D"#000000">Thank you=
 too, Wade.</font></div><div><font color=3D"#000000"><br></font></div><div>=
<font color=3D"#000000">Best regards,</font></div><div><font color=3D"#0000=
00">Tuan</font></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">V=C3=A0o Th 3, 16 thg 2, 2021 va=CC=80o lu=CC=81c 18:2=
0 C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; =C4=91=C3=A3 vi=E1=BA=BFt:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Tuan,<br>
<br>
On 16/02/21 14:03, Tuan Hoang Dinh wrote:<br>
&gt; I would like to add Xilinx IP to RFNoC module and still have no idea t=
o do<br>
&gt; that.<br>
&gt; Could you share your example to help me get started?<br>
<br>
I forwarded Wade&#39;s example to you.<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000070c97005bb7416f5--


--===============1588047650154109055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1588047650154109055==--

