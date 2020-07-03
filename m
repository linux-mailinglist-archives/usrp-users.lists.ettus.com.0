Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5572132B3
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 06:22:38 +0200 (CEST)
Received: from [::1] (port=41014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrDDe-0007Y8-Tr; Fri, 03 Jul 2020 00:22:34 -0400
Received: from mail-wr1-f47.google.com ([209.85.221.47]:40587)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <h.talaiee@gmail.com>) id 1jrDDb-0007Tn-Cc
 for usrp-users@lists.ettus.com; Fri, 03 Jul 2020 00:22:31 -0400
Received: by mail-wr1-f47.google.com with SMTP id f2so3117571wrp.7
 for <usrp-users@lists.ettus.com>; Thu, 02 Jul 2020 21:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O1UNxDaeC1tdZGNeyxjQelcoJ1D281fwW0WQ0NAJpPE=;
 b=Rxs+yXSG9spDeyhhHpAGS21KzlYfKygeHY9fN1JkDcjRq37na5svWnXmss5dHJuYW4
 g9nW0aez9e+pQnFgrjJEQTGRdb3vbHOqm8r2+DvK5Sga9Ril/NkCilQrQxhXhnF9w2eC
 x0Ui0702kTox3CmAsKleC9Ppg5bq1hvMmTO8UuDJd8qJbrC9za61Kl3tNxc7v9+MEPlp
 /nsNRVJQCpUWRekpAiyPAHuTouBAgLPf6BMVLpo+RdRToGTEzSaKMTZhQYDrVI+0BO1n
 WxlrfYjQnUFdDONcSek+YzjYKB7ro/wSbqUFUQ1ZL/4YO2bhGV3TKQ+OjT0ki9DTy2gp
 FWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O1UNxDaeC1tdZGNeyxjQelcoJ1D281fwW0WQ0NAJpPE=;
 b=q5PZ653N9fRNKYiUP1+8f6pHHW+E3C+1usMeB2hlsh6PgG6chRxArw2FKkQlQekZmw
 SdSESAfPEv91yfnEwVwIjH/xGhwNJBVaMwky/SszkcqL/3QKeGBFP4cyQYvcD5UaMzEI
 fP0sJM2RdI8A3YUZGZ2wQTn2BpJT/COBgfygpZzDJO4sni/ephhUyWgTGgiize0ULbGP
 /+G09gx/EFuzxJkI/IFv97B/LwqkNtSZYCDkpzZzyJoBsDzHPgg/JYqgrU8rVUraVAPL
 gVlAM6kmjSkZxzVZec2fmERcbTAKn33/91luYgxHJJzA6Ormi0sB2AKc+IHZN7b2JKbZ
 TOMQ==
X-Gm-Message-State: AOAM530IJ+6y7SvR+6Jbw0wAnjIommg+Ik4/uQNvUCB7a5aYd3mxFyb4
 DqkFGAwbAutdqjakAzqQXc7MJV05oPZUgvbZKZI=
X-Google-Smtp-Source: ABdhPJx3+7X+mcN0/dOpjBRN96f9Utw/nb7N7B4ahWF8ExrkvL6mexuca+Q4bvzebPSWCJ6ZhDi1rSuScBg75ibNYLY=
X-Received: by 2002:adf:e944:: with SMTP id m4mr35337953wrn.252.1593750110370; 
 Thu, 02 Jul 2020 21:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAiBEBTMR=Y1H3o3aMEy9cq6Y0OA21ua7xJvXaDRk-uQgdZGsQ@mail.gmail.com>
 <CAE0dfYZ5QSKAXX=x52K+uqcV7WeB9PxNS=kqja_e+ZRFUXxuyg@mail.gmail.com>
In-Reply-To: <CAE0dfYZ5QSKAXX=x52K+uqcV7WeB9PxNS=kqja_e+ZRFUXxuyg@mail.gmail.com>
Date: Fri, 3 Jul 2020 08:51:40 +0430
Message-ID: <CAAiBEBQNbTry5ax=psXdqNyEsXHDdOS--tUkXRiKiYDiwuthJw@mail.gmail.com>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Melbourne Users
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
From: hossein talaiee via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hossein talaiee <h.talaiee@gmail.com>
Content-Type: multipart/mixed; boundary="===============7651130968438295434=="
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

--===============7651130968438295434==
Content-Type: multipart/alternative; boundary="000000000000307f2805a981dd14"

--000000000000307f2805a981dd14
Content-Type: text/plain; charset="UTF-8"

Yes, Melbourne Australia

On Thu, Jul 2, 2020 at 9:29 AM Alex Humberstone <
alex.m.humberstone@gmail.com> wrote:

> You mean Melbourne, Australia?
> What exactly are you looking for?
> If you're asking about the community, there's an SDR group meetup there:
> https://www.meetup.com/en-AU/Cyberspectrum-Melbourne
> They been running for like 4 years, and the videos are recorded.
> The content and good speakers are pretty good.
>
>
> On Mon, 29 Jun 2020 at 05:20, hossein talaiee via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I there anyone from Melbourne ?
>>
>> Best Regards
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University
> Las Cruces, New Mexico
>
>

--000000000000307f2805a981dd14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Yes, Melbourne=20
Australia

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Jul 2, 2020 at 9:29 AM Alex Humberstone &lt;<a href=3D"mailto=
:alex.m.humberstone@gmail.com">alex.m.humberstone@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_default" style=3D"font-family:monospace;font-size:larg=
e">You mean Melbourne, Australia?</div><div class=3D"gmail_default" style=
=3D"font-family:monospace;font-size:large">What exactly are you looking for=
?</div><div class=3D"gmail_default" style=3D"font-family:monospace;font-siz=
e:large">If you&#39;re asking about the community, there&#39;s an SDR group=
 meetup there:</div><div class=3D"gmail_default" style=3D"font-family:monos=
pace;font-size:large"><a href=3D"https://www.meetup.com/en-AU/Cyberspectrum=
-Melbourne" target=3D"_blank">https://www.meetup.com/en-AU/Cyberspectrum-Me=
lbourne</a></div><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">They been running for like 4 years, and the videos are r=
ecorded.</div><div class=3D"gmail_default" style=3D"font-family:monospace;f=
ont-size:large">The content and good speakers are pretty good.<br></div><di=
v class=3D"gmail_default" style=3D"font-family:monospace;font-size:large"><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, 29 Jun 2020 at 05:20, hossein talaiee via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi,<br>
<br>
I there anyone from Melbourne ?<br>
<br>
Best Regards<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sincerely,<=
br></span></font><div><font size=3D"4"><span style=3D"font-family:monospace=
">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span style=
=3D"font-family:monospace">PhD Student</span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrical E=
ngineering<br></span></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace">New Mexico State University<br><span><span>Las Cruces, <=
/span></span>New Mexico</span></font></div><div><font size=3D"4"><span styl=
e=3D"font-family:monospace"><br></span></font></div><div><font size=3D"4"><=
span style=3D"font-family:monospace"></span></font></div></div></div>
</blockquote></div>

--000000000000307f2805a981dd14--


--===============7651130968438295434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7651130968438295434==--

