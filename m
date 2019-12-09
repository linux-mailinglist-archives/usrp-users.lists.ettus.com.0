Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF241117831
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 22:16:36 +0100 (CET)
Received: from [::1] (port=50138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieQOR-0002bT-QX; Mon, 09 Dec 2019 16:16:35 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:35544)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ieQON-0002Ti-GI
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 16:16:31 -0500
Received: by mail-lj1-f169.google.com with SMTP id j6so17369903lja.2
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 13:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XWOqkdswpY+4RBrYxnFzHFAGteel7rEY1oFM/vp1unY=;
 b=WM9fCr4P8JRbv2txYeDNw/Z9osQvRPLPbDcd+bPi0ACUCPdU/2umfC7Ry4f4FTBPjF
 3uCiWHegJpIjcJuMepqAMl4L1w69PKB1Jowl9ecTy1cDTaNBE8+NJBoYCvL/GmguTdrU
 wt8jQLi13xkexTg/rfUmtOxVwqHClvX8LqQLxJrSFuiXOR7T4OzgOLJ/zkPNDWFtkKCk
 N4cYDmEoiA9gfIJ077dXQShM34KRGKakeSznu2kuiRl6NNK7dJjsolLa24xNh1ZtTpY2
 uotxpVzLm6DHuChIoDEcy+THVVo3Mv3qRfd/tYO+GOT9bt1y4YlMI4Ml6ubE97gi3HU+
 qJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XWOqkdswpY+4RBrYxnFzHFAGteel7rEY1oFM/vp1unY=;
 b=RMvclVLugf4westEKT7Oe1OYtqdkr0hRwQEUzw7JDi7AbOIWccoiL1S9NJfuqVRMVc
 /vzr+UiO0kXrQqBq0dPGd+9cuMFvOdHYkOD4OaRjo780NswDNP348CTqvlaZBWmiRAH5
 UXoYoX1oky6uwago9cUp9cHb6vVj+sxVcf8XtcLI7afKSU9vg3XwFVl9lrnG15KWjfsu
 UnDxGc9nwylxqcCNrZdo0ioZ5X1Dlksu8UPv94/EUHiog2Z5BCFHOBx74TF6a6rzBhzO
 tQmgF6kv52/lmfI8jC4Jm97hrWQcQv3R3YpRsWLAQG4mDRaX4fENzFasTQcX63oBfIAm
 DsbA==
X-Gm-Message-State: APjAAAVlBYsTLvvmWtg36Np/csZueXQS7PohP3lUGb2S8mg/laf9c5zh
 RC32nj7OXgcSzMGAhPhkslkhIm10MY/rmeEtk64a192oCEKSPg==
X-Google-Smtp-Source: APXvYqxrikHOUO5aAwGKfnrGa2cdxhyQ6cWm47a9uhBrOa4wG6fptaqTQ7XTMJEcTi0RiIEADUkbkzMwXQdnpSAT1Lw=
X-Received: by 2002:a2e:585e:: with SMTP id x30mr18897253ljd.141.1575926150250; 
 Mon, 09 Dec 2019 13:15:50 -0800 (PST)
MIME-Version: 1.0
References: <331d9c2e396b4f499b1af018f335899c@dlr.de>
In-Reply-To: <331d9c2e396b4f499b1af018f335899c@dlr.de>
Date: Mon, 9 Dec 2019 15:15:38 -0600
Message-ID: <CANf970b9UjxkmFrz3ASkpzvgedtUo69FEaZ8+JBk4rpKH6xJvg@mail.gmail.com>
To: Emanuel.Staudinger@dlr.de
Subject: Re: [USRP-users] GPIOs timed commands
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5470072883385392438=="
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

--===============5470072883385392438==
Content-Type: multipart/alternative; boundary="00000000000060d6fe05994be653"

--00000000000060d6fe05994be653
Content-Type: text/plain; charset="UTF-8"

I believe this will work. It should just be a matter of setting the command
time before you send over a usrp->set_gpio_attr()

Sam Reiter
Ettus Research


On Thu, Dec 5, 2019 at 2:34 AM Emanuel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everybody,
>
>
>
> could the GPIOs, e.g., on a B200mini be set/unset precisely in time
> (limited to the sampling rate used)?
>
>
>
> Best regards,
>
> Emanuel
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000060d6fe05994be653
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I believe this will work. It should just be a matter =
of setting the command time before you send over a usrp-&gt;set_gpio_attr()=
</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sa=
m Reiter <br><div>Ettus Research<br></div></div></div></div></div></div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Dec 5, 2019 at 2:34 AM Emanuel via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5266756029369804498WordSection1">
<p class=3D"MsoNormal">Hi everybody,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">could the GPIOs, e.g., on a B200mini be set/unset pr=
ecisely in time (limited to the sampling rate used)?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Emanuel<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000060d6fe05994be653--


--===============5470072883385392438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5470072883385392438==--

