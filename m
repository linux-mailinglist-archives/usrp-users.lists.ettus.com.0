Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B777244514
	for <lists+usrp-users@lfdr.de>; Fri, 14 Aug 2020 08:50:58 +0200 (CEST)
Received: from [::1] (port=50144 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6TYB-0003sn-N3; Fri, 14 Aug 2020 02:50:51 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:45851)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <anthonyld508@gmail.com>)
 id 1k6TY7-0003n3-Nn
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 02:50:47 -0400
Received: by mail-io1-f46.google.com with SMTP id u126so9731576iod.12
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 23:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=scgXkTPswRwpFqoPhj925gag0TQJl7KVfIjwQZy1DUU=;
 b=Vbr5OjFuLXJ3njNtcU0lAgMSgaSLRkaJqvUyVI4yBRKA+GSOhQ2olyGln6vUuggze4
 lJg4fwWVLy62aM0a3JTWKIs+AaX713xDoLJ8DDQhysHRtPJo60rJPschvNCJlxM3NKWP
 +6ynbM2lNo0jeMy3KOEx5TIxVsJ3IJ+dVZXrwlBbp3FaeVaKApwforMeGnmc8nbS/XKC
 Ia49Kyxq77Ba7Ox/z+78DalhbDTRjEA6BHXv79TDf+bfsGdnTK3AGRSrlOsVm4PWaCBf
 hXPO4CH07Rn1y0bRFU6BX5w/UukQ14lWfDBah7HKeGLbTcByosey0pO76LkIo++n9XsI
 vQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=scgXkTPswRwpFqoPhj925gag0TQJl7KVfIjwQZy1DUU=;
 b=mASJPwPk2J0Li29lr8Tj14dUCG3T1JDPv2a4vIWt7CGb3Ge1gQwp1gI4DJ3MS4UFaj
 pPAXgLccPD/zXKVgYbSvfZ7KKncreAL2BcqiglA25bIpKiEw8tcXJkmMB8h4a2QHZvq/
 ybY/StkOUYc6mJ6Sr2YR7zmPrcD8uyEAhImm7kDwYAyb55sbBs6g2dR6KDCKM6ExD50U
 aLHxN9pVJPathEKNrxsHaaaup/Flcv30ZfzRuTHC0lwhhX0OWguOynm0EjUZkRh8lCrJ
 oKnZ5GuZs39P6OBufq8faKHhFe96kPjcn7GgpJMD+nV6huKdfxUDhWiKPJ4rIpVKeJX9
 wS6g==
X-Gm-Message-State: AOAM532bhX/XLU3VFr2+5lWjdeGq/yvLHYsgPWZ03y/OtBN6hlIhE04o
 aqKp09LvTL/Qgn6igDmTpt/aJTYWntVEvl0SJQU=
X-Google-Smtp-Source: ABdhPJwr/bG6VzCFoP2jtfx43fkc4N9RHQu9yl/jSeAkSjndQTMyGRMqwycZTeXbXQubh8nf6kyk/SoWs5Zgb9met3k=
X-Received: by 2002:a02:6a6b:: with SMTP id m43mr1525191jaf.79.1597387807037; 
 Thu, 13 Aug 2020 23:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAP+KAYBS2ga8fHhAH7S-ii_ubhdx-6DMv=QB+E-bwAF60UKnPQ@mail.gmail.com>
 <CAL7q81s87XnMPca0WyqSEPAz8ZyEw4YZmYuQA2o7NQE7JPYWeQ@mail.gmail.com>
In-Reply-To: <CAL7q81s87XnMPca0WyqSEPAz8ZyEw4YZmYuQA2o7NQE7JPYWeQ@mail.gmail.com>
Date: Fri, 14 Aug 2020 08:49:53 +0200
Message-ID: <CAP+KAYBb6iM=chsEaGU3ZwfTVDb2GDn=uQpuhACLTGhh-QjL=Q@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Starting with FPGA USRP
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
From: "Anthony B. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anthony B." <anthonyld508@gmail.com>
Content-Type: multipart/mixed; boundary="===============7190452827749524904=="
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

--===============7190452827749524904==
Content-Type: multipart/alternative; boundary="000000000000ce9dbc05acd0d425"

--000000000000ce9dbc05acd0d425
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

Thank you, that is what I was looking for.
I did read this option, but didn't use it then haha.

Best,
Anthony

Le jeu. 13 ao=C3=BBt 2020 =C3=A0 19:54, Jonathon Pendlum <jonathon.pendlum@=
ettus.com>
a =C3=A9crit :

> Hi Anthony,
>
> You can generate an ISE project by going to the directory usrp3/top/b200
> and running "make PROJECT_ONLY=3D1 B200". The project file will be locate=
d in
> the build directory.
>
> Jonathon
>
> On Wed, Aug 12, 2020 at 8:51 AM Anthony B. via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello all,
>>
>> I recently acquired a USRP B200 and I would like to start developing
>> within it. I've followed the FPGA Manual :
>> https://files.ettus.com/manual/md_usrp3_build_instructions.html
>>
>> So I have now Xilinx ISE and the build files from the FPGA. I was
>> wondering where to start with these files - can we somehow open them in =
the
>> Xilinx Tools ? How can we have a starting view on how the USRP B200 FPGA=
 is
>> composed ?
>>
>> Thanks for your answers !
>>
>> Best,
>> Anthony
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ce9dbc05acd0d425
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonathan,</div><div><br></div><div>Thank you, that=
 is what I was looking for.</div><div>I did read this option, but didn&#39;=
t use it then haha.</div><div><br></div><div>Best,</div><div>Anthony</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">L=
e=C2=A0jeu. 13 ao=C3=BBt 2020 =C3=A0=C2=A019:54, Jonathon Pendlum &lt;<a hr=
ef=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt;=
 a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi Anthony,<div><br></div><div>You can generate an IS=
E project by going to the directory usrp3/top/b200 and running &quot;make P=
ROJECT_ONLY=3D1 B200&quot;. The project file will be located in the build d=
irectory.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 12, 2020 at 8:=
51 AM Anthony B. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>He=
llo all,</div><div><br></div><div>I recently acquired a USRP B200 and I wou=
ld like to start developing within it. I&#39;ve followed the FPGA Manual : =
<br></div><div><a href=3D"https://files.ettus.com/manual/md_usrp3_build_ins=
tructions.html" target=3D"_blank">https://files.ettus.com/manual/md_usrp3_b=
uild_instructions.html</a></div><div><br></div><div>So I have now Xilinx IS=
E and the build files from the FPGA. I was wondering where to start with th=
ese files - can we somehow open them  in the Xilinx Tools ? How can we have=
 a starting view on how the USRP B200 FPGA is composed ?</div><div><br></di=
v><div>Thanks for your answers ! <br></div><div><br></div><div>Best,</div><=
div>Anthony<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ce9dbc05acd0d425--


--===============7190452827749524904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7190452827749524904==--

