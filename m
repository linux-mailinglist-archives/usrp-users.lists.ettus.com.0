Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC6914E4C3
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 22:24:51 +0100 (CET)
Received: from [::1] (port=54518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixHIv-0005bf-7H; Thu, 30 Jan 2020 16:24:49 -0500
Received: from mail-qv1-f53.google.com ([209.85.219.53]:40514)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ixHIr-0005UI-OP
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 16:24:45 -0500
Received: by mail-qv1-f53.google.com with SMTP id dp13so2242539qvb.7
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 13:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dYqHu9SC7CcsJwnF3JR0+56dPZD/NSdyktrgGX4W2II=;
 b=qLS+59xcxPpIDbQv0lTAqPoTi4E6LP4tIH6eTOqm0aCTl+UOr1iWIQ1BN3tRrJUbDh
 4UJUw92IaQiRkEC9QjG03D9GSm0Juiz+K4ELS/5ae5MLwotRoL6HoP/jZzMS2nbRgYiX
 q2jPdCS5E8jfYSaN8RketaC77GHvtFGx2Igsm6QiRcCGKlRBdPS6U2u3sgdDw/d/Ln9p
 BuCF9FHQpreud2WWXrsazy8InxiicecVgxnPj8Aao6OVVrlKYBzvTvNCvFHCzmuRvgtg
 YtHsNjGB45w35mSKP/4kNCR7jz8Gd72vnbJqIIfxEzgiz9eRaedq6tPD7UNya0rMTHx/
 YUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dYqHu9SC7CcsJwnF3JR0+56dPZD/NSdyktrgGX4W2II=;
 b=m+sj1uUMDf/Zv2znZFVDdQgg4YsbdJT3TGJjzDHqQ8tcKV/PFgGo6UasdRCjiJudLP
 cUMIbQB03AR1e1U/fShumhIBunQKX7cm8p3MKQGK56JmYWFpYk1T8maGudwxcnvJKem5
 V/a7SLlM/hYACazEx7HJw1r2eaqhbClOMSkNBv2sPVLUIu9JRX2RAGbUYUsVPGnBTqY4
 B9PjFfS4KQQn13SUn2vMnF7uVtRkuRnVvxrXcVtjP+Q9BGntvcmS75wMNsmHqBGlAqwi
 uByKsQ/gkbGhGejxwg01dnSY/7OIZAXue9bVDzHYohY1MuyUUDAB1m6lp4PsZnlyXHcm
 D8tg==
X-Gm-Message-State: APjAAAU61ULBweAqnEbRRN8NPFhF3zCen1sqdG5TaWxNBu64a3060x04
 dvmIwvdqwVPCDdFs2Z2L656wE9EOSTdvCzT9q1nHVA==
X-Google-Smtp-Source: APXvYqwcGs7ZpjtkOEmjVY2il5X//QbvLmhsu/mhVFKzjnnnxMnszBOu/ohL4qARQQl4vH/E8G4E5OLvLHIpYszdHCU=
X-Received: by 2002:a67:6341:: with SMTP id x62mr4536293vsb.88.1580419443701; 
 Thu, 30 Jan 2020 13:24:03 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
 <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
 <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
 <CAB__hTTzqkdo7VPH8aSiEj8U2ha_32p1-Xj1ik16RV1Wq0djbw@mail.gmail.com>
In-Reply-To: <CAB__hTTzqkdo7VPH8aSiEj8U2ha_32p1-Xj1ik16RV1Wq0djbw@mail.gmail.com>
Date: Thu, 30 Jan 2020 16:23:52 -0500
Message-ID: <CADRnH22c_QAkYUG-pzo5_m5E7KAHP6otL4bTHwhQqkGDo-w7gA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7082665963760077675=="
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

--===============7082665963760077675==
Content-Type: multipart/alternative; boundary="00000000000089e422059d621384"

--00000000000089e422059d621384
Content-Type: text/plain; charset="UTF-8"

Ah -- It's fairly common for the "OOT.inc" builds to break between releases
or when new devices are added, so I usually send in the PRs to clean it up.

In this case, I havent tried 3.15 yet, so I wouldnt have found any issues
with the OOT builds yet.

EJ

On Thu, Jan 30, 2020 at 4:03 PM Rob Kossler <rkossler@nd.edu> wrote:

> EJ,
> I don't quite understand your comments. I'm talking about Ettus code in
> the 3.15 release.
> Rob
>
> On Thu, Jan 30, 2020 at 3:57 PM EJ Kreinar <ejkreinar@gmail.com> wrote:
>
>> Whoa there,
>>
>> I havent updated any of my code to UHD-3.15 yet so you're a bit ahead of
>> me! I usually make the relevant PRs if/when OOT build process breaks -- so
>> I'd recommend sending over the relevant PR to fpga repo? Will probably help
>> me a few months down the line :P
>>
>> Thanks!
>> EJ
>>
>> On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I had the same issues! I just ended up putting my verilog file paths in
>>> Makefile.n3xx.inc and it works. This might need to be fixed unless I did
>>> something wrong.
>>>
>>> On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> I have been struggling all day with why I can't build my OOT rfnoc
>>>> blocks for the N310 using v3.15.0.0.  It appears that the problem is that
>>>> there is a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS
>>>> variable after it is set in the users OOT makefile. I just commented the
>>>> line in top/n3xx/Makefile.srcs and that seems to do the trick.  Is this a
>>>> known issue?
>>>>
>>>>
>>>> # Makefile.n3xx.inc
>>>> ...
>>>> include $(BASE_DIR)/n3xx/Makefile.OOT.inc
>>>> include $(BASE_DIR)/n3xx/Makefile.srcs
>>>> ...
>>>>
>>>> # Makefile.srcs
>>>> RFNOC_OOT_SRCS = \
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000089e422059d621384
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah -- It&#39;s fairly common for the &quot;OOT.inc&quot; b=
uilds=C2=A0to break between releases or when new devices are added, so I us=
ually send in the PRs to clean it up.<div><br></div><div>In this case, I ha=
vent tried 3.15 yet, so I wouldnt have found any issues with the OOT builds=
 yet.=C2=A0</div><div><br></div><div>EJ</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 30, 2020 at 4:03 P=
M Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">EJ,<div>I don&#39;t quite understand your comments. I&#39;m talki=
ng about Ettus code in the 3.15 release.</div><div>Rob</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 30,=
 2020 at 3:57 PM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" targ=
et=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Whoa there,=C2=A0<div><br=
></div><div>I havent updated any of my code to UHD-3.15 yet so you&#39;re a=
 bit ahead of me! I usually make the relevant PRs if/when OOT build process=
 breaks -- so I&#39;d recommend sending over the relevant PR to fpga repo? =
Will probably help me a few months down the line :P<br></div><div><br></div=
><div>Thanks!<br>EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div><div dir=3D"auto">I had the same issues! =
I just ended up putting my verilog file paths in Makefile.n3xx.inc and it w=
orks. This might need to be fixed unless I did something wrong.=C2=A0</div>=
</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>I have been struggling all day with why I can=
&#39;t build my OOT rfnoc blocks for the N310 using v3.15.0.0.=C2=A0 It app=
ears that the problem is that there is a file top/n3xx/Makefile.srcs that i=
s clearing the RFNOC_OOT_SRCS variable after it is set in the users OOT mak=
efile. I just commented the line in top/n3xx/Makefile.srcs and that seems t=
o do the trick.=C2=A0 Is this a known issue?</div><div><br></div><div><br><=
/div># Makefile.n3xx.inc<div>...<br><div>include $(BASE_DIR)/n3xx/Makefile.=
OOT.inc<br>include $(BASE_DIR)/n3xx/Makefile.srcs<br></div></div><div>...</=
div><div><br></div><div># Makefile.srcs</div><div>RFNOC_OOT_SRCS =3D \<br><=
/div></div>
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
</blockquote></div>

--00000000000089e422059d621384--


--===============7082665963760077675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7082665963760077675==--

