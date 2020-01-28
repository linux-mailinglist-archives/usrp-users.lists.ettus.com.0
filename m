Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CD914BEBC
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 18:40:27 +0100 (CET)
Received: from [::1] (port=55070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwUqg-0002Ln-2y; Tue, 28 Jan 2020 12:40:26 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:43334)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iwUqb-0002Fj-Mx
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 12:40:21 -0500
Received: by mail-ot1-f45.google.com with SMTP id p8so12791576oth.10
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 09:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wWzJVxg3Z4uRr8yBv05OsRO2YMQOy1dq9GP8ilU3oE=;
 b=QGrmU/QCZUdvilD5g6sT7rvWGlNiBGzAPkb0rqhmgzlW5roFugRBtCSYXuhTREPvRU
 pToBPt98ksRPXae9mwPmyRk7V4iUX/psZ8YBlS5KjnWcK3SwfyXgJag8v7cGSAkjZG9b
 xFs5p7TIuszxAI+JkYZIHxSEuzvkd9OTw+KUTJLYqwSb732liQ5CLp6jWRnZayeEmUxQ
 Z2Hzm2vWEIwOMtVpY6qi0akqBYNE2GCaa6cy5BMC7TH+w7lH2iL0OenBtNt8c6L+xGIu
 UqLkmzUuSXnHto42nnqf0jaGfDTmhjSXJVYh0G45U5dbXnlS76H63QnMGELz5TAoGUAz
 CI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wWzJVxg3Z4uRr8yBv05OsRO2YMQOy1dq9GP8ilU3oE=;
 b=GztZw4dMUBF5/AqfReEABd0hAh2MbGSIrUXs4Yt/dMUl1dL3ssQiB0Yet42pcpS8Md
 dbbv8Vw/vt3uEMaQqNTtpmgAPvVrO2owbHMXykf/G1nQg8FBzDbL8GDM/cYlOb/n+gK1
 JUVU+EhBOuItvCxMiMgawRia/5aZ7fhO/mKjGb5c4RQRWWdnKV9v0yfFt52HY0VpJSaH
 FU8OGwox3YQJAFOscOEhrVXS/XPkp9HcHSSvRBDTsPG280lBY9/DjfGLiXx8tloXru2q
 iCk7RUr9yjEzYAkwKIIhQ/mEwuC1D5Tnck3TiQrvjR+a/T3sH8yrf9+K9nrfp6dsvYCt
 SWAA==
X-Gm-Message-State: APjAAAU17TWGmHV6S4kC/gQ3UWPjlxhTAXS3g1STSFQsHAbEoSoh8YEv
 tWGvPV3YaHXEalluP1SgdNCJY9IVoIFMNYd+a1OGfrCh
X-Google-Smtp-Source: APXvYqwYOkms+IisWimjVP1z2prDV5b9IdaISIW3RHXkWN9WEnEBOGlIlBdgBHGa3v8KeGwa5ONDKavVsmvVXPWPDaU=
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr16347110otf.107.1580233180737; 
 Tue, 28 Jan 2020 09:39:40 -0800 (PST)
MIME-Version: 1.0
References: <1c9ad499-7c29-be73-3ab7-36d8c03cc074@wanadoo.fr>
In-Reply-To: <1c9ad499-7c29-be73-3ab7-36d8c03cc074@wanadoo.fr>
Date: Tue, 28 Jan 2020 12:39:30 -0500
Message-ID: <CAGNhwTObwG0Mq-fE0Yx1TDJuCqTTQpQfktzu1fYnBpmSwggpJQ@mail.gmail.com>
To: Jean Marie Brieussel <f6etu@wanadoo.fr>
Subject: Re: [USRP-users] USRP N300
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3838736725501723908=="
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

--===============3838736725501723908==
Content-Type: multipart/alternative; boundary="000000000000668764059d36b55f"

--000000000000668764059d36b55f
Content-Type: text/plain; charset="UTF-8"

Hi Jean Marie - Have you tried the instructions here <
https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card
>? Guessing those will do the trick for you. Hope this is useful! - MLD

On Mon, Jan 27, 2020 at 9:13 AM Jean Marie Brieussel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello, I'm new to this discussion group.
>
> I acquired a USRP N300 Serial number PA2085939, I use Ubuntu 18.04.3 I
> installed UHD V3.14.1.1.L and I installed GNURadio V3.7.13.4 all tests are
> passed correctly. I wanted to load the image of UHD to update the micro
> SD card the result of the loading is in the screenshot attached.
>
> Can you give me the procedure to load on a micro SD card the image of UHD
> corresponding to the installed version.
>
> Regards,
>
> Sorry for my bad English.
>
> Jean Marie F6ETU
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000668764059d36b55f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jean Marie - Have you tried the instructions here &lt; =
<a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card</a> &gt;? Guessing those will do the trick for you. Hope this is =
useful! - MLD<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Jan 27, 2020 at 9:13 AM Jean Marie Brieussel via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20

   =20
 =20
  <div>
    <span lang=3D"en"><span title=3D"">Hello, I&#39;m new to this discussio=
n group.</span><br>
      <br>
      <span title=3D"">I acquired a USRP N300 Serial number
        PA2085939, I use Ubuntu 18.04.3 I installed UHD V3.14.1.1.L and
        I installed GNURadio V3.7.13.4 all tests are passed correctly.</spa=
n>
      <span title=3D"">I wanted to load the image of UHD to
        update the micro SD card the result of the loading is in the
        screenshot attached.</span><br>
      <br>
      <span title=3D"">Can you give me the procedure to load on a
        micro SD card the image of UHD corresponding to the installed
        version.</span><br>
      <br>
      <span title=3D"">Regards,</span><br>
      <br>
      <span title=3D"">Sorry for my bad English.</span><br>
      <br>
      <span title=3D"">Jean Marie F6ETU<br>
      </span></span>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000668764059d36b55f--


--===============3838736725501723908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3838736725501723908==--

