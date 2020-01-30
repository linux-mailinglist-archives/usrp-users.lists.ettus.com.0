Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE0F14E466
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 22:04:23 +0100 (CET)
Received: from [::1] (port=38334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixGz8-0000hA-SY; Thu, 30 Jan 2020 16:04:22 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:44386)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ixGz4-0000ZK-Fa
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 16:04:18 -0500
Received: by mail-ot1-f47.google.com with SMTP id h9so4439717otj.11
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 13:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bj03iq9GJOIbB3A5iblGK4AGEg8ShpNQ/+/GF8bbu6U=;
 b=B0atycdnqTzmnWGqRLCwCdYkjWmUiJH78aFL5jvmYu0F0Sd3EY1eLGXbuMKyz+LjBx
 snbatR4JQz1wAB6MwM3ozrcF32KZPjApBz32Dv6y3eAeDE6lDCwLn+MZrGa2ost+qX5T
 QRD9DPm0cv161Glq1tWykO3Tw+R5oKk3WFl2F8o5CjRJ8tEok/FgiU5IVkulANbPtKoz
 oGxS9TNSWF/a1TSB8RBbbCMzy4jxEtevrexTBwjZA4utmgGzAwBvCHBMU87wobl0SqhT
 BGwUpHyfpR83LzkQrIs1oQ/CWnzFPTeqs+ojxWA4JBZDw8oirlA5gqJvggAuSocFjuCQ
 oEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bj03iq9GJOIbB3A5iblGK4AGEg8ShpNQ/+/GF8bbu6U=;
 b=i7atBLTwoTJmtuVwXb647pZfZjB9M20I2kvdbJPFGhOEkjiAKiMd/tKJCsoRyO5FWx
 di4Dsf79W4cVrpOIOcpiCH/4aptenc8qGIIjV5ZKegVnkBlwGmA3wvsSe8ay3RfllZu1
 9YXIuAGR/cLDXZdI6jLgotKMcU03EdMKwbwX4F3hbPmLks5uUxM4sD+1IpWF3myBAKvI
 Qck6bpIr3Znope4rK3UIYroMl812Zy6kMhgyFKsrMCksLglbt46YHvJxmps8RP+v+05R
 24q7ba37rQNnQ4Wo9vvhvY++nFAhalNM0vpID7C9dzoyKBkoVzPzyW+KhaDeARdk6P77
 S7EQ==
X-Gm-Message-State: APjAAAWdcii6g9mafVQPBB3/BwjNJqXwfmdsKs7a4C9AU34/la8uTOVI
 z8FdC3D6iCwLDypcjMPsrir5hJwXNLvdt6nJ41CXIw==
X-Google-Smtp-Source: APXvYqwqEIKZ3nLi6vF/tfTcD9l9uxCDoUFy3G891hFWdl8SBaqkmvfDsAeAPQ5ie4q9wXFCv2h8pz3T7Bbej0XnMSU=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr4921963otp.211.1580418217333; 
 Thu, 30 Jan 2020 13:03:37 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
 <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
 <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
In-Reply-To: <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
Date: Thu, 30 Jan 2020 16:03:26 -0500
Message-ID: <CAB__hTTzqkdo7VPH8aSiEj8U2ha_32p1-Xj1ik16RV1Wq0djbw@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] RFNOC_OOT_SRCS cleared in top/n3xx/Makefile.srcs
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6451926275184612196=="
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

--===============6451926275184612196==
Content-Type: multipart/alternative; boundary="00000000000070ffdc059d61cab2"

--00000000000070ffdc059d61cab2
Content-Type: text/plain; charset="UTF-8"

EJ,
I don't quite understand your comments. I'm talking about Ettus code in the
3.15 release.
Rob

On Thu, Jan 30, 2020 at 3:57 PM EJ Kreinar <ejkreinar@gmail.com> wrote:

> Whoa there,
>
> I havent updated any of my code to UHD-3.15 yet so you're a bit ahead of
> me! I usually make the relevant PRs if/when OOT build process breaks -- so
> I'd recommend sending over the relevant PR to fpga repo? Will probably help
> me a few months down the line :P
>
> Thanks!
> EJ
>
> On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I had the same issues! I just ended up putting my verilog file paths in
>> Makefile.n3xx.inc and it works. This might need to be fixed unless I did
>> something wrong.
>>
>> On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I have been struggling all day with why I can't build my OOT rfnoc
>>> blocks for the N310 using v3.15.0.0.  It appears that the problem is that
>>> there is a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS
>>> variable after it is set in the users OOT makefile. I just commented the
>>> line in top/n3xx/Makefile.srcs and that seems to do the trick.  Is this a
>>> known issue?
>>>
>>>
>>> # Makefile.n3xx.inc
>>> ...
>>> include $(BASE_DIR)/n3xx/Makefile.OOT.inc
>>> include $(BASE_DIR)/n3xx/Makefile.srcs
>>> ...
>>>
>>> # Makefile.srcs
>>> RFNOC_OOT_SRCS = \
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000070ffdc059d61cab2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">EJ,<div>I don&#39;t quite understand your comments. I&#39;=
m talking about Ettus code in the 3.15 release.</div><div>Rob</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Jan 30, 2020 at 3:57 PM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.co=
m">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Whoa there,=C2=A0<div><br></div><div=
>I havent updated any of my code to UHD-3.15 yet so you&#39;re a bit ahead =
of me! I usually make the relevant PRs if/when OOT build process breaks -- =
so I&#39;d recommend sending over the relevant PR to fpga repo? Will probab=
ly help me a few months down the line :P<br></div><div><br></div><div>Thank=
s!<br>EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div><div dir=3D"auto">I had the same issues! I just en=
ded up putting my verilog file paths in Makefile.n3xx.inc and it works. Thi=
s might need to be fixed unless I did something wrong.=C2=A0</div></div><di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>I have been struggling all day with why I can&#39;t buil=
d my OOT rfnoc blocks for the N310 using v3.15.0.0.=C2=A0 It appears that t=
he problem is that there is a file top/n3xx/Makefile.srcs that is clearing =
the RFNOC_OOT_SRCS variable after it is set in the users OOT makefile. I ju=
st commented the line in top/n3xx/Makefile.srcs and that seems to do the tr=
ick.=C2=A0 Is this a known issue?</div><div><br></div><div><br></div># Make=
file.n3xx.inc<div>...<br><div>include $(BASE_DIR)/n3xx/Makefile.OOT.inc<br>=
include $(BASE_DIR)/n3xx/Makefile.srcs<br></div></div><div>...</div><div><b=
r></div><div># Makefile.srcs</div><div>RFNOC_OOT_SRCS =3D \<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000070ffdc059d61cab2--


--===============6451926275184612196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6451926275184612196==--

