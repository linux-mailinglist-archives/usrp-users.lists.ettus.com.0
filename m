Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCF428B111
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 11:03:25 +0200 (CEST)
Received: from [::1] (port=60750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRtjo-0001OB-Ew; Mon, 12 Oct 2020 05:03:24 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:45455)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kRtjk-0001H3-51
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 05:03:20 -0400
Received: by mail-ed1-f45.google.com with SMTP id dg9so13751533edb.12
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 02:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TBtBlx+YG+j6zxjNhzsjj5ruVjOk1ihaQMz8H3sO2YQ=;
 b=1KBqElNbdxgK4YNnXD/f4/yUhGsDixVKCoiuDcyL3YOKDAbpBX9W83mepn0XOVxV74
 BZlyhGvxGAV7010VnZgiJMi1ZgtxfSkKTP/dTKM8CC1DriwfUH/FhOwLTGtmC08eohi5
 pZe9BBLTNk/hp9yC/G3QwgwG0N+5dPI0g5yC68PIKkLec9O7l/f7gjwYDbPNVZ3v/SBA
 J2HPR9cSRoY4XtUGrvquhYqI+dLld13xg0BBjeVLVJ7dYYqCNnUSnkQo+q+mcjiy+vSj
 ASbyq2/A4E0ESgQGi8YDVumV7JEAxeLZARG6TjftAWDhx6v4OQ9NKpvFjFWUsVr+dyvr
 abTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TBtBlx+YG+j6zxjNhzsjj5ruVjOk1ihaQMz8H3sO2YQ=;
 b=NCoC+qG0YOd6n0EOupxZJKwkiPhiR/fJ2EodL2GLNT81a64iQXVQz/mVPL/5KOrfRr
 9F2+sVntcDSIkxgPgYlqaUWWkRk+PTEVMhX54M9XZuVFnxClKTFXKnMF9wWTWRjV2oPp
 YkIMqazAHkQq1xOrizWMPGrR837Pp1gD6GHq0QLva4K+DKMFVKZkoMjo7bZhepzW0XYq
 5vXeF9ZLgOJVBVzXgsZ0LLgEFFwOxW0UFR4rwrlB0HhrZblHCpn0TomxKFysz53rsIwV
 2RAU6AoN6n3PZp6rKQ9M/+swSOjNjX5ey+3H8ybbLzxKiA9qfEjlxAgb3mgYHgWLmbHd
 UUcA==
X-Gm-Message-State: AOAM5335aq+i0yRed8ZjanscT3+znS7UuelAwnWOvxOyibfxz/hzqs3k
 oGWB0uhbGHIlM6J/gBA6VUdowKqtmM6RZJ3bfFeTg8ig
X-Google-Smtp-Source: ABdhPJzTCt40PKmvOP+8JptYysJi/hlyQllaLe/87GXhFqehaQwO+rKpuLWdeY6iFQkWlGJ+owWF4jTQ0sHXWhRPyl4=
X-Received: by 2002:a50:b023:: with SMTP id i32mr12681630edd.377.1602493359029; 
 Mon, 12 Oct 2020 02:02:39 -0700 (PDT)
MIME-Version: 1.0
References: <2EDBD4B9-065E-4F8C-B041-D8A7EDFEE838@gmail.com>
In-Reply-To: <2EDBD4B9-065E-4F8C-B041-D8A7EDFEE838@gmail.com>
Date: Mon, 12 Oct 2020 11:02:28 +0200
Message-ID: <CAFOi1A6GuhD86wR+uFs0VHR1BebqZUxjZ8AfQ89R=o-HdAPFRA@mail.gmail.com>
To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD on Ubuntu 20.04 and USRP N310
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============3046924005630152407=="
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

--===============3046924005630152407==
Content-Type: multipart/alternative; boundary="0000000000006ba14005b1758fcd"

--0000000000006ba14005b1758fcd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Austin,

you can update the version of your N310 as well. See e.g. here:
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_fs_=
update

--M

On Sat, Oct 10, 2020 at 7:49 AM Austin Adam via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
> It has been a few months since I used my USRP N310 and now that I am goin=
g
> back to set everything back up, it seems that I have some version issues.
> Basically, my setup was Ubuntu 19.04 and the USRP had UHD v3.14.0, but no=
w
> it seems that those versions are unsupported because I was getting a few
> errors that I have not seen before with my exact same setup.
>
> I figured I just needed to update everything so I basically updated my
> Ubuntu to version 20.04 and was still unable to get everything working.
>
> My question is, is there a supported UHD release for Ubuntu 20.04 that
> would work with my USRP N310? Would I have to update the version of UHD o=
n
> Ubuntu and the USRP to v3.15.0? Or would I be better off reinstalling
> Ubuntu on a previously supported version like 18.10? I=E2=80=99m just not=
 really
> sure what course of action to take as I do not want to have any issues
> going backwards if I need to.
>
> Open to any suggestions!
>
> Thank you,
> Austin Adam
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006ba14005b1758fcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Austin,</div><div><br></div><div>you can update the v=
ersion of your N310 as well. See e.g. here: <a href=3D"https://files.ettus.=
com/manual/page_usrp_n3xx.html#n3xx_getting_started_fs_update">https://file=
s.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_fs_update</a></=
div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 10, 2020 at 7:49 AM Austin=
 Adam via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Hi everyone,<br>
It has been a few months since I used my USRP N310 and now that I am going =
back to set everything back up, it seems that I have some version issues. B=
asically, my setup was Ubuntu 19.04 and the USRP had UHD v3.14.0, but now i=
t seems that those versions are unsupported because I was getting a few err=
ors that I have not seen before with my exact same setup. <br>
<br>
I figured I just needed to update everything so I basically updated my Ubun=
tu to version 20.04 and was still unable to get everything working. <br>
<br>
My question is, is there a supported UHD release for Ubuntu 20.04 that woul=
d work with my USRP N310? Would I have to update the version of UHD on Ubun=
tu and the USRP to v3.15.0? Or would I be better off reinstalling Ubuntu on=
 a previously supported version like 18.10? I=E2=80=99m just not really sur=
e what course of action to take as I do not want to have any issues going b=
ackwards if I need to. <br>
<br>
Open to any suggestions!<br>
<br>
Thank you,<br>
Austin Adam<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ba14005b1758fcd--


--===============3046924005630152407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3046924005630152407==--

