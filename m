Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF34E5805
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2019 04:17:43 +0200 (CEST)
Received: from [::1] (port=35806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iOBe3-0006eE-1f; Fri, 25 Oct 2019 22:17:35 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:45014)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iOBdz-0006Z4-IC
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 22:17:31 -0400
Received: by mail-oi1-f182.google.com with SMTP id s71so2837222oih.11
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 19:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I+xiufXFc4fNyiBU0sQHSg1qnCvP/8/6o9jC/HYNXxA=;
 b=nXpTp4iVAbpXPJxRxqiIrcYsZix19+GRoFggz5HO1aTsKvWZbgYWaPbbv6Aja7dgv+
 xyEjTLpHqx0OYrnuKpLnFAwwS0Kvf7AbCttpxu4+j8Xlqyhe256zdnA4VaqiGmE6qVga
 +5TDwKWPtnN3VzUc2q+x4Qe+D6OaDrAESBBu9twwm91smEp1W+nXuPE6eovWTcylEW7e
 6gHahAKOfhSM50NnIrWrAWR/SD0+6VBfY0nQD63hjpxSwcGpZ0/Yl4dcXEY4ODbbLBiZ
 nqaAUxgAJQd3t1QHLcAJZTMHVNzpKj8mPzzK9f+246RfoT1O3OH89oXeue7L31wK9X7K
 E53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I+xiufXFc4fNyiBU0sQHSg1qnCvP/8/6o9jC/HYNXxA=;
 b=Diy+j1OglvgtwiTmRXAvyRw4pP7JHbNK1mhQbFgUSP5mzqzZL1YYTmHUW+mbNQm6No
 MjME7rNN3hm5U7Hx+pMo/tokVH3tiLQXrohLHGtwsb64V9g1KqtVe5heCLapDO6kPJG8
 ywhRMIo2VYXvyyLAed849fxT6R4iqJiD6W590girG2wzHdPYdGNEQSC2aaD/WnS8SnV3
 WBbhdLAMdpsan2AtBg+hmnhpy0F4y1hnYYZqQ+M1ObnaKnc0i1+waCBvN2p3zZsv9c8v
 R8ZqEfA1HETZnLraAEF7DuJ+C4u/nV22x/OdcpihR8XuTavBlbqrA5uO6STIA2JD5yk3
 Hoxw==
X-Gm-Message-State: APjAAAVF1ad/WCNK02O5Z5RohB0ncIGHiptMoDLMl9azK5taqAPYjEUr
 n777ekEIUQr2qGBoNpn/+18pl7ziejkYR8qOnHTq8wShPCeEGA==
X-Google-Smtp-Source: APXvYqxYMoHsbjwJrALZiK+cVqK59F2dp2EaJ0FF1DYN1JqGwyCeE+kAqzC5lfRQbjgTjlAgFfoYVxUX+5CFQBjEjqs=
X-Received: by 2002:a54:4716:: with SMTP id k22mr5576407oik.158.1572056210639; 
 Fri, 25 Oct 2019 19:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <F479266F97CCAE47854721C82406934E1CFD7097@EXDAG0-B2.intra.cea.fr>
In-Reply-To: <F479266F97CCAE47854721C82406934E1CFD7097@EXDAG0-B2.intra.cea.fr>
Date: Fri, 25 Oct 2019 19:17:48 -0700
Message-ID: <CAL263iyN5i_aL3yzArwMPDwNyHpNvx9vNAnKfc93EY8ASvmfgQ@mail.gmail.com>
To: BERTOLINI Rodolphe <rodolphe.bertolini@cea.fr>
Subject: Re: [USRP-users] X310 and N310: using multiple RF
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4226455066933567379=="
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

--===============4226455066933567379==
Content-Type: multipart/alternative; boundary="00000000000000a2410595c6dc90"

--00000000000000a2410595c6dc90
Content-Type: text/plain; charset="UTF-8"

Hi Rodolphe,

It is only possible to have one application "claim" the USRP at any given
time. So two instances of OAI can not run on the same device.

The max sample rate (using sc16) on 1Gb is ~ 25 MS/s. The max sample rate
(on X310) is 200 MS/s for a 10Gb link. If you have two RF DBs in a single
X310 and want to run at faster than 100 MS/s per card, you need to use both
10Gb interfaces to a single host, however, you're still limited to a single
instance of an application claiming the X310. The N310 has the same in
behavior, for example, if you want to run 4x channels at 61.44 MS/s, you
would need to use both SFP ports as 10Gb links with a single application
claiming it at a time.

Regards,
Nate Temple

On Thu, Oct 24, 2019 at 5:52 AM BERTOLINI Rodolphe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello USRP-users mailing list,
>
> We are using an X310 for OpenAirInterface (OAI). It has one RF card.
> I wonder the following:
>
>
>    - With the following configuration:
>       - USRP X310, HG image, one RF card
>       - host connected to USRP through 1*10Gbps and 1*1Gbps
>    - I run OAI on the 10Gbps ethernet interface, and while it is running
>    I tried to run an other instance via the 1Gbps ethernet interface. I didn't
>    expect it to work, but I didn't expect neither the error message: uhd tells
>    me that no USRP was found (I made sure it looks-up through the 1Gbps
>    interface).
>       - My interpretation is that once that all of the available RF cards
>       have an established link with the host, USRP closes all of the free
>       interfaces (PCIe, ethernet...)
>       - Thus, if I put an other RF card, and tell the USRP to use only
>       one ethernet interface per RF card, then I would be able to run one OAI
>       instance through an ethernet interface + an RF card, and an other instance
>       through the other ethernet interface + the other RF card. Is it correct?
>       - Now if we consider the N310, its 4 RF cards and its 2 ethernet
>       interfaces: (ignoring limitation from OAI bandwidth requirements) is it
>       possible to run two instances of OAI through a single ethernet interface,
>       so that I could run four instance through two ethernet interfaces?
>       - If all of the above is correct, do you have any idea on how to
>       achieve this?
>
>
> Thank you
> Regards,
> Rodolphe
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000000a2410595c6dc90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Rodolphe,<br><br>It is only possible to have one app=
lication &quot;claim&quot; the USRP at any given time. So two instances of =
OAI can not run on the same device. <br><br>The max sample rate (using sc16=
) on 1Gb is ~ 25 MS/s. The max sample rate (on X310) is 200 MS/s for a 10Gb=
 link. If you have two RF DBs in a single X310 and want to run at faster th=
an 100 MS/s per card, you need to use both 10Gb interfaces to a single host=
, however, you&#39;re still limited to a single instance of an application =
claiming the X310. The N310 has the same in behavior, for example, if you w=
ant to run 4x channels at 61.44 MS/s, you would need to use both SFP ports =
as 10Gb links with a single application claiming it at a time. <br><br>Rega=
rds,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 5:52 AM BERTOLINI Rodolphe=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:1=
0pt">
<div>Hello USRP-users mailing list,</div>
<div><br>
</div>
<div>We are using an X310 for OpenAirInterface (OAI). It has one RF card.</=
div>
<div>I wonder the following:</div>
<div><br>
<ul style=3D"font-family:Tahoma;font-size:10pt">
<li>With the following configuration:
<ul>
<li>USRP X310, HG image, one RF card<br>
</li><li>host connected to USRP through 1*10Gbps and 1*1Gbps</li></ul>
</li><li>I run OAI on the 10Gbps ethernet interface, and while it is runnin=
g I tried to run an other instance via the 1Gbps ethernet interface. I didn=
&#39;t expect it to work, but I didn&#39;t expect neither the error message=
: uhd tells me that no USRP was found (I made
 sure it looks-up through the 1Gbps interface).
<ul>
<li>My interpretation is that once that all of the available RF cards have =
an established link with the host, USRP closes all of the free interfaces (=
PCIe, ethernet...)</li><li>Thus, if I put an other RF card, and tell the US=
RP to use only one ethernet interface per RF card, then I would be able to =
run one OAI instance through an ethernet interface + an RF card, and an oth=
er instance through the other ethernet interface + the
 other RF card. Is it correct?<br>
</li><li>Now if we consider the N310, its 4 RF cards and its 2 ethernet int=
erfaces: (ignoring limitation from OAI bandwidth requirements) is it possib=
le to run two instances of OAI through a single ethernet interface, so that=
 I could run four instance through two
 ethernet interfaces?</li><li>If all of the above is correct, do you have a=
ny idea on how to achieve this?<br>
</li></ul>
</li></ul>
<div><br>
</div>
<div>Thank you</div>
<div>Regards,</div>
<div>Rodolphe<br>
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

--00000000000000a2410595c6dc90--


--===============4226455066933567379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4226455066933567379==--

