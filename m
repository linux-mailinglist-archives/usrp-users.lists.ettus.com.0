Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4E513FD5
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 15:55:35 +0200 (CEST)
Received: from [::1] (port=42472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNHby-0004f0-G7; Sun, 05 May 2019 09:55:26 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:45692)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hNHbR-0004aB-LA
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 09:55:23 -0400
Received: by mail-ot1-f48.google.com with SMTP id a10so9243817otl.12
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 06:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ww3Np4UY62wK7zDjojCc/8HMGc9oNokn7NRazICr+C8=;
 b=J7hkE3Lh3CZl81/e4xwCqUfWknAk56hDXRJhZZFYu4vPh89in0L7hFdbe0yFIBhrjI
 FC91L956TwFRdD0AoR36ato4QnN67Jyc1EZPp0QRA/ERNgRsLy1X+um5K/sooPS6KYQo
 osejAw/M71b8tV5b8hRCQ0Bxj+ohEXYWiz2WZudu5zRqY3I57EHBd6s5VJhptlD60sUS
 22d8OkFoqWFlSZEqpXXSWW/75CMlGCeVdtgbiO5aF5X46nJH2FaGqj56XJOQfx61aMGh
 sbtdapUGqAC1cf0334PKD2N6etEpfrdZ+Wdkh12XLJRhHcnLyET356DiYp8JqtFUAY1v
 ljNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ww3Np4UY62wK7zDjojCc/8HMGc9oNokn7NRazICr+C8=;
 b=eJ4gGSdOnD7iCHOFaSE3nHtWc77il94zXWqU0/xrlH1Op6X9enOUtSkt9QFn/3nNcq
 9xxBgxoZcb/b0ETQxkLgLa/qkrJEHAePF20hQEi9Ok523t1YPnk6+tcEpa4CJkOIKlHi
 IbfN54a0GqQfzM14zSm5TUe4/6S+8LZ5XwFo63Jf7U2+luGFA562HUBNf0Yhb+ZiEzG9
 rS9+g1du3KLwdZ+/dbQOe7ZiTkMpUFz76GV7yAL1aYJ9L17BruAkUkVtgrHUxmtRlpla
 XgLpLX4F4KqMxBHJupr4mFndyTH4MLqL93dPPJs8OUKTRaDGtkou7jLYTY6XmBipafl1
 tvYw==
X-Gm-Message-State: APjAAAV/qq1RtqqnK/r4+pnRaWtU4/kyhfstJSrQQy8BHpsTVFeRYdAX
 FtphuTqu+KCPmcbaqwL411L/dA8m2sdlq0eQLFs=
X-Google-Smtp-Source: APXvYqyQuP6A5CIWA89UtcrJSL8LIZMpSJbup3OhTrONl1poGNjHFV3/1VNs6hEeeiuPkxdienjpceZGieCXr0bYRlg=
X-Received: by 2002:a05:6830:196:: with SMTP id
 q22mr12888388ota.127.1557064452980; 
 Sun, 05 May 2019 06:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAPhW9TROoM1BBEd_8qu-LdT7tFzqcz-hWDzuye=dJXg_N_OiGg@mail.gmail.com>
In-Reply-To: <CAPhW9TROoM1BBEd_8qu-LdT7tFzqcz-hWDzuye=dJXg_N_OiGg@mail.gmail.com>
Date: Sun, 5 May 2019 09:54:01 -0400
Message-ID: <CAEXYVK7PZhA_WfdCs0WhQE2o215RBC8OHu_ps6B3fZgeE20ayg@mail.gmail.com>
To: Sam mite <mite.engr11@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Vivado versions for RFNoC
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3368496854559876131=="
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

--===============3368496854559876131==
Content-Type: multipart/alternative; boundary="0000000000009cc351058824514b"

--0000000000009cc351058824514b
Content-Type: text/plain; charset="UTF-8"

2017.4 is the latest version that is supported I believe.

Brian

On Sun, May 5, 2019 at 6:36 AM Sam mite via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I want to know what are the current supported vivado versions for X300 and
> X310 and also for E310 and E320 for generating RFNoC images?
> --
>
> Best Regards,
>
> Sam
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009cc351058824514b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">2017.4 is the latest version that is supported I believe.<=
div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, May 5, 2019 at 6:36 AM Sam mite via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>I want to know what are the current suppor=
ted vivado versions for X300 and X310 and also for E310 and E320 for genera=
ting RFNoC images?</div>-- <br><div dir=3D"ltr" class=3D"gmail-m_9002323465=
212088842gmail_signature"><br>Best Regards,<br><br>Sam<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009cc351058824514b--


--===============3368496854559876131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3368496854559876131==--

