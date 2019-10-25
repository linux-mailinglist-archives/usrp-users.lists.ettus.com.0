Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B14E4C16
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 15:27:50 +0200 (CEST)
Received: from [::1] (port=35916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNzd7-0006ca-17; Fri, 25 Oct 2019 09:27:49 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:38560)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iNzd3-0006Vk-VO
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 09:27:45 -0400
Received: by mail-qk1-f173.google.com with SMTP id p4so1715945qkf.5
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 06:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vuz9OSl49W/PwA082JUeSjl1wWi5oY8HHelry/yfZY8=;
 b=P3oVhlX/IzzVFpa3Ld0fxfeAhSi19Dj0oC5i2esWuzDUuQdk2V0M2AZ00WeaOjzHSU
 jZS7TM3mvJk4gJmtkcpg+BlKPiVTNXOEJcPKsDqkGXq++Zt5YEiCgy8EC/sM+Wwx+P/u
 hXhXVMzE9GJpoAf5GYUoTrsv98AJZXK5oMhYm/8dYLtbnoD/rPJ7ZcBQaAizEdlBKMOf
 y1OHxhaOpIXpWRM6DTeu7r8SFyrpOgM/OINeT0MLx6zDDa9cC79FrzXNpR323jiW4inz
 niRNwsGCdFDlndpp1YUefQJatS1GHkDZRW3qAQ6HOur51+v+JmUVQ4XMbV9fgCjtuheq
 3yvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vuz9OSl49W/PwA082JUeSjl1wWi5oY8HHelry/yfZY8=;
 b=OOoY9N3Swuavlye3On+JRQZfWZHRmmRaEtJZ4Lhuhq91VfCI6Z0NeJRhGE14E8SoeD
 AiPmMQsB5MyF5Sjrf2ZgnbGEtrmpDad+isXkzsVnM8htuSgIP3gQvLjQior9cpZWz8e5
 k9S1YloVhMxOuMaECtI3LN20qQHZR1xIEh3uvZNrNBDJ1EF0jm4Ab+mA9bY63unEJbXo
 cL2w8NZIFjxZd59PYHxAzkT//99vLWG2vf0uCMW8Y3bDysn2YMDDGF4ydduGd1Qw9I0h
 C/2sf+G7a4LvOQJi3qX+PRa/bZmpbnwGgcNVjEdkiSGApXBNVolHmUhoRN37faVREHMW
 Gq5g==
X-Gm-Message-State: APjAAAVSl4BNlNgD3mExaenIO0rlwRCJRsnPJvi2ej1BqP0TSCmOL4ZO
 6fUUrMCd771vhk+hF9+rTJXj/H+yRUjz5gFlBbE2RA==
X-Google-Smtp-Source: APXvYqxdmWnmhjy1jAaNnMOxcCY6JXmcrq6B2BzpGSX+AcxG4+ArOeAusHeCslZcjP2yNCo2ZQqKS87IFaIaa6dCDfY=
X-Received: by 2002:a37:6155:: with SMTP id v82mr2681273qkb.319.1572010025229; 
 Fri, 25 Oct 2019 06:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLANcwo6NGC8TcKbWc_Un1qSgRx9qUkTcm1FkxBRc05qEcQ@mail.gmail.com>
In-Reply-To: <CALLKLANcwo6NGC8TcKbWc_Un1qSgRx9qUkTcm1FkxBRc05qEcQ@mail.gmail.com>
Date: Fri, 25 Oct 2019 09:26:54 -0400
Message-ID: <CAB__hTQx+ZyX3pG5Xbj8YrHoPBcUFu1Wg1ih9xFpbNgyRXDv3A@mail.gmail.com>
To: Mark Wagner <m2wagner@eng.ucsd.edu>
Subject: Re: [USRP-users] Error when trying to run USRP N310s using external
 LO
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: Usrp Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0744274328343309356=="
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

--===============0744274328343309356==
Content-Type: multipart/alternative; boundary="0000000000002350550595bc1bbb"

--0000000000002350550595bc1bbb
Content-Type: text/plain; charset="UTF-8"

The N310 data sheet (in one of the footnotes) indicates that external LO is
limited to the frequency range 300-4000 MHz.  Are you trying to operate
below 300MHz?
Rob

On Thu, Oct 24, 2019 at 3:42 PM Mark Wagner via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I'm currently trying to run a set of USRP N310s all using the same
> external LO, but I seem to be getting this error
>
> "[ERROR] [0/Radio_1] RX LO lowband does not support setting source to
> external"
>
> which will repeat for all the radios. I tried looking online for the
> source of the error but no dice. It seems like the radios are ignoring the
> LO I'm giving them and using their internal ones instead. Any thoughts?
>
> -Mark
>
> --
> Mark Wagner
> University of California San Diego
> Electrical and Computer Engineering
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002350550595bc1bbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The N310 data sheet (in one of the footnotes) indicates th=
at external LO is limited to the frequency range 300-4000 MHz.=C2=A0 Are yo=
u trying to operate below 300MHz?<div>Rob</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 3:42=
 PM Mark Wagner via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<=
div><br></div><div>I&#39;m currently trying to run a set of USRP N310s all =
using the same external LO, but I seem to be getting this error=C2=A0</div>=
<div>=C2=A0<br></div><div><div>&quot;[ERROR] [0/Radio_1] RX LO lowband does=
 not support setting source to external&quot;</div><div><br></div><div>whic=
h will repeat for all the radios. I tried looking online for the source of =
the error but no dice. It seems like the radios are ignoring the LO I&#39;m=
 giving them and using their internal ones instead. Any thoughts?</div></di=
v><div><br></div><div>-Mark</div><div><br></div>-- <br><div dir=3D"ltr"><di=
v dir=3D"ltr"><div><div>Mark Wagner<br></div>University of California San D=
iego<br></div>Electrical and Computer Engineering<br>=C2=A0<br></div></div>=
</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002350550595bc1bbb--


--===============0744274328343309356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0744274328343309356==--

