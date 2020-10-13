Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF08828D177
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 17:47:34 +0200 (CEST)
Received: from [::1] (port=48448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSMWT-0001KL-Bv; Tue, 13 Oct 2020 11:47:33 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:42266)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <derekste@gmail.com>) id 1kSMWP-0001BZ-AI
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 11:47:29 -0400
Received: by mail-ej1-f48.google.com with SMTP id h24so428894ejg.9
 for <usrp-users@lists.ettus.com>; Tue, 13 Oct 2020 08:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NUcpVzHK3LsQEzpG2WdOTCm6/jiXzyzsa5oNSS///PQ=;
 b=Fbwf0v51vn0sp426dLHYE0sqzFXYtYM9hUKB2gE8FTWEDmz3v0fXifwkt2YraqxZ7u
 kqvuWqX0hvKbpJvaLcyg7HhjQOQmUPgKmUkBj8iK/sLLT99/ukImHF7abe15EMPhWihF
 RnI+1oXrh5XjT1iKOzEe6+n0sEd+pjNGcQ9H5F/Kn3jL3Js4cZdHruS2p1QFFfz4yexJ
 9g+WukOzfOQlPRIfvwRCyeImACiY8ehkLZVLG0/EatK6sb9bblPg33C98AFgSDjd+87W
 gZxVHxyIyHKRuUiXM3fRfJ2gJof+/9tFQqb/BCTx68thpEIsMYf8kMMqXjCJ8mbFaO4i
 JZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NUcpVzHK3LsQEzpG2WdOTCm6/jiXzyzsa5oNSS///PQ=;
 b=pbnMSY5Q39wvskDYVdgx4af4f9Nah4mE/ZECRLwRPC9/Q9/PyfDvn2VBoeT3a5WRHW
 j4mtN44KctTxA0CM1c5jux8NbrDo8bxfQJor7plEClN7RYq8EaT3TysWcOj5gfhntDFf
 yMfq8JAS4Gh2Jzwv513efw9Hywk4Mo6p4W6sL8ZNV8edAR8J3VdVdeQAZzkYqmR51BHx
 bKj59l7KAoNMv/wYvN1WP1Bsw3spfxggOLDfrU3YW0Ia0U/ZnvPvKtb+ddA9empbe+Qp
 0PGeSKI3httlRJ0tGKp0i4Wao9u8lqH5l2bNGwTpcU1VppcwBRYyPRVNtMq5OlUek8jx
 YbWw==
X-Gm-Message-State: AOAM533wy0HRgccPFzgghrohNM/ZeufdCUEAbPdN/fhQ17UmgrgmgZ1N
 U4aTFx/dWq3OmZuYxAeAvL5WgXmPk/1byMmAHls=
X-Google-Smtp-Source: ABdhPJzRBKc8M44iPfFTIicM/MQHx/o4bHbeeCyWt/lQv8pvxySTA5DIlTO0b6qVb7yR4KRWI/CIfwyNNhTdgPsnaSo=
X-Received: by 2002:a17:906:1955:: with SMTP id
 b21mr424934eje.42.1602604008177; 
 Tue, 13 Oct 2020 08:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Tue, 13 Oct 2020 10:46:37 -0500
Message-ID: <CAGp1hYoJS-hKQMVEDKixccCG+XLgw38WetZzTNBUnhoPckB_4g@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter
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
From: Derek Steinkamp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Derek Steinkamp <derekste@gmail.com>
Content-Type: multipart/mixed; boundary="===============3741202397081532561=="
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

--===============3741202397081532561==
Content-Type: multipart/alternative; boundary="0000000000009f83db05b18f526e"

--0000000000009f83db05b18f526e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I use the =E2=80=9CQNAP=E2=80=9D branded one on amazon with a cheapo 2m act=
ive SFP cable
and it works just fine on my N300!

Derek

On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I
> could connect it to the SFP+ connector on my X310.
>
> Has anyone done this?  And, is there a particular SFP+ to RJ45 which work=
s
> well?  All I see on the Ettus website is the recommendation for using the
> terminated cable and PC network adapter.
>
> Thanks,
> Jeff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009f83db05b18f526e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I use the =E2=80=9CQNAP=E2=80=9D branded one on amazon wi=
th a cheapo 2m active SFP cable and it works just fine on my N300!</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Derek</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 13, 2020=
 at 10:43 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Has anyone done this?=C2=A0 And, is there a particular SFP+ to RJ45 which w=
orks well?=C2=A0 All I see on the Ettus website is the recommendation for u=
sing the terminated cable and PC network adapter.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,<br>
Jeff<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009f83db05b18f526e--


--===============3741202397081532561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3741202397081532561==--

