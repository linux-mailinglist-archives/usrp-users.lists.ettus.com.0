Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B966BBBF
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 13:46:51 +0200 (CEST)
Received: from [::1] (port=38668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hniOY-00058p-6L; Wed, 17 Jul 2019 07:46:50 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:46008)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hniOU-0004ll-QN
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 07:46:46 -0400
Received: by mail-ot1-f46.google.com with SMTP id x21so24627466otq.12
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 04:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/DahtCtS5iweC2AG+nFnQOV2EUNkEteIEzz0qC2QK2E=;
 b=Mqv1bElLj6bgde1Mtz7iRcvXeFsPy4GPbMkU/qOMRmATGBaE79YpUAr/yb1hd9HTtc
 eDr9zHbsC9XcMCRzRnS2xACh0CNRctfV+VgP2We+sl4PLr4xGvtnVCf+WDfh9totw3FD
 GGDc2sE8hzWW6tugrfJMiEkzieGuGevwOyOD0tG8LkAQeqOI7GxnuVcweOlsN1YjddZS
 q3n7M6mif6P3YhiGO2lVIuP50avsjeXyDtdt/AG7KEaANGzR5RAzExr9NaENzcaMwt9H
 CfzYw1zR7vDw4YwsGeLuqW0QM3fQSDnwO6jUg4g74m19QnAXrYdnErf4MARTCLC9J4FZ
 zkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/DahtCtS5iweC2AG+nFnQOV2EUNkEteIEzz0qC2QK2E=;
 b=FhLSuWVQ9Z4t7B1SQQDqcOD+XD+U9jgjVnsJG8ofABi+/TMiTVqbh4MEACWL4kvZg7
 nskSEVf3x7ah3NvaGVjaQujMkseBib3cFcDWtIE+oEeh/RUtYR5fWtrJhHm8JvmVCaL/
 PUHgCKodvzsBIyaNlLXBMHLv7MOssvXEeRvApEsMba/nzFSSW8EYbMaENwUJCaBTl/WQ
 fhFBrcgfdv94ngfpUNyayCePL7o0Cv47J7LuTD28101lh/RdyMyRlGaP7vXsSrLIseIY
 e7gfpbtojnCQMjmWt7PHdOle30maTbB1TmPDNW6AjRIIHGhUegZr7ASaXymqh++3BUP9
 gFzA==
X-Gm-Message-State: APjAAAWz63KICJzKFXzQW12T+rqPCicwmQXunUPUAwtc3Hf5R4iFn0ZE
 3R/5Ujmo0I7znEVZM5p4mIhe0mgIJZp/lujohKQt6Q==
X-Google-Smtp-Source: APXvYqyS5Wy+egFqufFGPMSZiIUXIxBFy0UdbYkoDHxRS8ZJEk7ZqHlgGcCby1t5Av8c1iRnPlE81AMsQyxWG5FBzGY=
X-Received: by 2002:a9d:6f91:: with SMTP id h17mr21845898otq.67.1563363966178; 
 Wed, 17 Jul 2019 04:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Wed, 17 Jul 2019 13:45:55 +0200
Message-ID: <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3928363118771963531=="
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

--===============3928363118771963531==
Content-Type: multipart/alternative; boundary="000000000000dbd8fb058ddf0917"

--000000000000dbd8fb058ddf0917
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,

Yes they are consistent, I mean the output of uhd_usrp_probe for both N200
is exactly the same (except the ip, serial and mac addr).
I do not know where the problem is! Hardware or software

Regards
Sumit

On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
jason@gardettoengineering.com> wrote:

> I am not really an N-series guy, so this probably won't be helpful.  Have
> you tried doing a uhd_usrp_probe on both devices and seen that the
> responses are consistent?
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, July 17, 2019 7:15 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Sequence Errors N200
>
> Hi,
> I am trying transmit using Ettus N200 (call it A) but getting this error
> message on the console
>
>
> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
..................................
>
> I looked for it on google and found these links
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/0374=
95.html
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032=
838.html
>
> Both the links  suggested problem related to the gigabit port. Then I
> connected another USRP N200 (call it B) to the same laptop and tried
> transmitting using that as there were no such sequence error messages.
>
> This makes me believe there is some problem with the first USRP, i.e., A.
>
> Further I tried with different versions of UHD 3.11, UHD 3.15.. but its
> the same.
>
> Receive is good only transmit is throwing error.
>
> Not only with UHD, even in labview, when I transmit, I see nothing coming
> out from the N200 (A).
>
> I am using SBXv2 daughter board.
>
> Any clue!
>
> Regards
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>

--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000dbd8fb058ddf0917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jason,<div><br><div>Yes they are consistent, I mean the=
 output of uhd_usrp_probe for both N200 is exactly=C2=A0the same (except th=
e ip, serial and mac addr).</div><div>I do not know where the problem is! H=
ardware or software=C2=A0</div><div><br></div><div>Regards</div><div>Sumit=
=C2=A0=C2=A0</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak &lt;=
<a href=3D"mailto:jason@gardettoengineering.com">jason@gardettoengineering.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_9014729813065413461appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_9014729813065413461divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of S=
umit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi,=C2=A0
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console=C2=A0</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links=C2=A0</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links=C2=A0 suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.=C2=A0<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.=C2=A0</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.=C2=A0</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).=C2=A0</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.=C2=A0</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"gmail-m_9014729813065413461x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--000000000000dbd8fb058ddf0917--


--===============3928363118771963531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3928363118771963531==--

