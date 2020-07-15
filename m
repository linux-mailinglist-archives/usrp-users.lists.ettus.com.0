Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E1D220EF9
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 16:15:01 +0200 (CEST)
Received: from [::1] (port=32846 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jviBW-0001k6-Ih; Wed, 15 Jul 2020 10:14:58 -0400
Received: from mail-ej1-f46.google.com ([209.85.218.46]:35009)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jviBS-0001ZJ-Aa
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 10:14:54 -0400
Received: by mail-ej1-f46.google.com with SMTP id rk21so2337546ejb.2
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 07:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RLbP6mINB2z5A9TULvCleXXZTaZqQmIEIM3DqwQdaMU=;
 b=Zg9w5pP3pfWN+1QMmYg/Wb6ulxeI8peBVlObt+lBbOYCe6wGiGdtA9MpCQSyBKwP1F
 pyHb/v2HaNX+EOiNCS7gjWW42FK3bYdJm2i/oesaXP2fjC0x6zpgQ0wuflUDxH8eZBLx
 wSnaLmvZvW7VDM44YVlU9HMHIXLhuZkAT5y2n2tDlLn6i2tV0nvGV5BlNL4SZlFhhTXH
 WxTCZduThFqbimgUIB+Oq1z3PZpBnFE0ZY8hlakf+W7xbTRgkz/HQK47rHqp7JYdeSQb
 gnuQQbpmI1i6YI9KFP1tFrySAQmGiTYuThIJt8VJt1idXdLZcT/TTv//ytBoENehF2zO
 ebdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RLbP6mINB2z5A9TULvCleXXZTaZqQmIEIM3DqwQdaMU=;
 b=WbreEt3ZuTLOtbzip7Wk61z40WzazPMM23Yu5NzLmTxmbAypH/0B+NZIOdVAjnD3YC
 Oq7eNPgJDLhzw6OO7Mk9WIT0g6C3+bXDK8AzMpOaalVyPp8+g+6ovWRMJIUwiaoHuW9U
 OBmYeVWeuzCOBqTtL02mT3KKrmMBCUpQJBClMzXUpdj6f7t4a9nbw31X+pu2kQ+glwoo
 WkJJZD7/mJr5dXs5IVK4/Yl3kGrSTNHnjAZi6KEo0vDfQiEMnOP1JHKLzslsYATWXWxI
 YO0rzwmjyGIxQtvRfdisI4BlTYdhF2+PsaAKYcuD8/tEWL9qTkIW3mDUhtS5z4ZEHK9h
 zWDg==
X-Gm-Message-State: AOAM530jvlmLiRZ3fuDqHP8TQYEkVd5F1dsDlc71JETMiZz3bpSYCVZ7
 dwPDFBYRknsbqMZ0Fs8exc9cEIvL9AcGjncsFTo=
X-Google-Smtp-Source: ABdhPJyKzoIuTJagqcG7FOdfZtBmZKc6n7uSRS4iMtuLVmu9XtWWmKDyoEjqmjscWb0g424SPZCHaaUx0gGL5tKDal4=
X-Received: by 2002:a17:906:3c10:: with SMTP id
 h16mr9402952ejg.87.1594822453250; 
 Wed, 15 Jul 2020 07:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
 <5F0F0A47.3020100@gmail.com>
 <CAMVZM+-rUvuBzq_zEwq-72imHMuQ+XaMePDYUvmJq2B69GJPUQ@mail.gmail.com>
 <5F0F0DB4.2080708@gmail.com>
In-Reply-To: <5F0F0DB4.2080708@gmail.com>
Date: Wed, 15 Jul 2020 17:14:01 +0300
Message-ID: <CAMVZM+8oBqh3gGQmkt_aEQK53BErAEXzXfdMgG_=3fxAs358ag@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
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
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============5532222265521544796=="
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

--===============5532222265521544796==
Content-Type: multipart/alternative; boundary="000000000000ce509705aa7b89a4"

--000000000000ce509705aa7b89a4
Content-Type: text/plain; charset="UTF-8"

Hello,

that would be great!

cheers,
Pavlos.

On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
> > Hello,
> >
> > thank you very much for your prompt reply.
> >
> > i copied the .mender file by using the "scp" command.
> > Yes, i am running the command on the USRP.
> >
> > I am not sure if this is a problem but --initially when i created the
> > .mender file, the host was running the UHD 3.14.0.0 and the USRP had
> > 3.14.1.0. This is when the problem appeared first.
> > Then i changed the uhd to 3.14.1.0 on the host to match exactly the
> > UHD on the usrp, but the error still persists (or course i deleted the
> > old file from the usrp).
> >
> > any ideas?
> >
> > best,
> > P.
> >
> I'll have to bug some R&D people and get back to you.
>
>
>

--000000000000ce509705aa7b89a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>that would be great!<=
/div><div><br></div><div>cheers,</div><div>Pavlos.<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 15,=
 2020 at 5:07 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On 07/15/2020 10:02 AM, Pavlos Basaras wrote:<b=
r>
&gt; Hello,<br>
&gt;<br>
&gt; thank you very much for your prompt reply.<br>
&gt;<br>
&gt; i copied the .mender file by using the &quot;scp&quot; command.<br>
&gt; Yes, i am running the command on the USRP.<br>
&gt;<br>
&gt; I am not sure if this is a problem but --initially when i created the =
<br>
&gt; .mender file, the host was running the UHD 3.14.0.0 and the USRP had <=
br>
&gt; 3.14.1.0. This is when the problem appeared first.<br>
&gt; Then i changed the uhd to 3.14.1.0 on the host to match exactly the <b=
r>
&gt; UHD on the usrp, but the error still persists (or course i deleted the=
 <br>
&gt; old file from the usrp).<br>
&gt;<br>
&gt; any ideas?<br>
&gt;<br>
&gt; best,<br>
&gt; P.<br>
&gt;<br>
I&#39;ll have to bug some R&amp;D people and get back to you.<br>
<br>
<br>
</blockquote></div>

--000000000000ce509705aa7b89a4--


--===============5532222265521544796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5532222265521544796==--

