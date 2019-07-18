Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA336C828
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 05:50:54 +0200 (CEST)
Received: from [::1] (port=51988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnxRS-00054t-JD; Wed, 17 Jul 2019 23:50:50 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:42004)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hnxRP-00050c-OW
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 23:50:47 -0400
Received: by mail-lj1-f178.google.com with SMTP id t28so25772334lje.9
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 20:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UFWaWETIhdnuTQuCKHU8NTpgSBqiGmvDQuA+9fRSzfU=;
 b=hVyJSGJnA+FBm6euVYLV6ZfufOYEB6j2kH+vQVlj3COUWXaFwlnl/WdbOfgFvzyzmA
 iOnOuuFb4sRtWEItP2bn9mjiIBQZgYOXrlb5JJ0oJgC3vQbvDdhlvRYycWYdjQLby+eO
 wzHB83N5MB/9qKPLLwSQpmNwSh6HTN3pMjqgvetsSt+cLAYYEMPccV3rzmZ9x/qwdpTv
 EGglgtM0g03e0AgN4+Lt6wpmcNfEeKRGllFxoY/W1xv/SSm5zSKcqPJAQGGjCQUCsKxA
 2GshQG1a7FT22YcZQSkHtg8br9imC8lte26GT/mMIN4j8DMP8A/tUdsE5McVBpiF/MjB
 DzPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UFWaWETIhdnuTQuCKHU8NTpgSBqiGmvDQuA+9fRSzfU=;
 b=BEKUdDUuzOPe20HJT/U55CtOFe/C3U9c9c17MFUuWzv87QRm3kWz3cOHBaLw8OQToK
 fHehTLugTnsVGzUcEXRPY1XvxKflH+sf+VFy9ZL7KBruKr4pXdNtvpCceLYQ7Vg2pmTb
 Q+zFJ8Cz/32MrCZzc0tvOGOd4JcL4/k9ekT0UtIKG7dHX75GjYhZGoPwqs+8Y0lSB+Ss
 Ba/BonfXBnFrftjd+5dGo1xvCT62ZHqtt/Rr1znXBQnwjy01sgRXjcQz8Jhlkn8tMElV
 GdxkR624a1ynncYeuRfc3dlD+EzaaTIcQrH7x7iJPMWx5xZCIrOMPirgLgbfVG3JE/t7
 wkLw==
X-Gm-Message-State: APjAAAXcry/DSYevX2Q867l7QA8AGVo+Uk7QUHMKjG2/steGY6Dl1FE/
 1JUqxDcOtaK6wxyZQwVgDAxMXG1Aej1TMLSOhBj+xYk2
X-Google-Smtp-Source: APXvYqybG81cf4EG31xm47DglrnH6H6WcqKheprI5i0Mkdgj4IuY1YxZHNfb9Io2XjD2xbE9k4KuOLKBn4+AqP9U6S0=
X-Received: by 2002:a2e:9b81:: with SMTP id z1mr23090447lji.101.1563421806324; 
 Wed, 17 Jul 2019 20:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <CALVKaGf-6NCbGO2ACQ+Oaz_4GYgpMPOU=BsAe5AcigmzdH7w9w@mail.gmail.com>
In-Reply-To: <CALVKaGf-6NCbGO2ACQ+Oaz_4GYgpMPOU=BsAe5AcigmzdH7w9w@mail.gmail.com>
Date: Thu, 18 Jul 2019 12:49:30 +0900
Message-ID: <CAL7q81sPt2Ewf5TQu1Z0jY9ySeDGAYwzstnExK+0Da=TityWXQ@mail.gmail.com>
To: Scott Mullin <smullin2@nd.edu>
Subject: Re: [USRP-users] Noc_block_Schmidl_cox Timing error
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2110435188467144254=="
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

--===============2110435188467144254==
Content-Type: multipart/alternative; boundary="00000000000066839e058dec8128"

--00000000000066839e058dec8128
Content-Type: text/plain; charset="UTF-8"

Hi Scott,

What paths are failing timing? Also, the Schmidl Cox block has some design
issues that need fixed before it can be useful again. If I remember
correctly, I think there is an issue with the peak detection logic.

Jonathon

On Wed, Jul 17, 2019 at 2:28 AM Scott Mullin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I am trying to use the schmidl_cox noc block but when I build an fpga
> image for an x310 with uhd_image_builder I get a timing error.  I have
> tried building an fpga image with only one CE, the scmidl_cox noc block,
> and it still gives me a timing error, so its not due to resource
> utilization, which is when I typically get a timing error.
>
> Has anyone else had this issue? Any help would be appreciated.
>
> --
> Scott Mullin
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000066839e058dec8128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Scott,<div><br></div><div>What paths are failing timing=
? Also, the Schmidl Cox block has some design issues that need fixed before=
 it can be useful again. If I remember correctly, I think there is an issue=
 with the peak detection logic.</div><div><br></div><div>Jonathon</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Jul 17, 2019 at 2:28 AM Scott Mullin via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hello,</div><div><br></div><div>I am trying to use the schmidl_cox noc =
block but when I build an fpga image for an x310 with uhd_image_builder I g=
et a timing error.=C2=A0 I have tried building an fpga image with only one =
CE, the scmidl_cox noc block, and it still gives me a timing error, so its =
not due to resource utilization, which is when I typically get a timing err=
or.=C2=A0 <br></div><div><br></div><div>Has anyone else had this issue? Any=
 help would be appreciated.</div><div></div><br>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail-m_-9123974367893188567gmail_signature"><div dir=3D"ltr"><div st=
yle=3D"font-size:small">Scott Mullin</div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000066839e058dec8128--


--===============2110435188467144254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2110435188467144254==--

