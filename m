Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C831CE160
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 19:16:46 +0200 (CEST)
Received: from [::1] (port=55962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYC2l-00025o-RC; Mon, 11 May 2020 13:16:43 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:35333)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jYC2i-0001zY-Fv
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 13:16:40 -0400
Received: by mail-io1-f43.google.com with SMTP id 79so1452701iou.2
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 10:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sAGhCojfPN4lm12V8YfNMGADbThKUiYFFfEsozgOWXc=;
 b=KUeW3v8+glM8hTqMmrRCUG+YerdzBOR1cEawPxulGxXN3ic+v/O2lyi9nnkjJV1GlK
 Is/R4UDchXWRJfQvPhQRwMaua+45UaXpoprtETi0lJVchoBnIxsdiRhA1GCurVbklJV5
 WWXhde/fW/kPRdbuh7E0d9HSRzyT84U4LbOdmvIuqd+Rgw9AVy7+cRXLfT6AN/fxIHYN
 qHimQzrXYuMeb0X3doybdE3FBgWNYpVsUVSBqf2Ky1xrUadf1zkX6Ize/eU0LBi+PM7G
 8ZXyQjC2Jvh7mc8FCrihLhX2++H3g9l9l6RkQjOQT1ldzmq7cvkm8OVig+oBCvOTGwjy
 X9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sAGhCojfPN4lm12V8YfNMGADbThKUiYFFfEsozgOWXc=;
 b=k0BD9hQswB7Qn0oOlu4wFZ6cgjjo327b4CsxjxKJ8Xp6tVoB7FEMbzvuaiaiWpTJS8
 KbgKNe79ngGMWJeFbyTtH54BuN0jpJ3STxRHCgNgkrmRyIhGMrZr9+QfGJakFIpXVl32
 bBsiOSRdvu7M6U6TKOAesT7LKQJbWXs46p2ltAeThfA9MdoWBCnm1/smknCzejdPdYMd
 r/0DtSXNCi6D20BKhwO7IZyA/vpd+6rrYmTzsirWhflgGtv4KSph1dwjEx+P9cbCyf5L
 oI3/DeABwnQzVjlHe2I7ZJuQem9pe7SofNfMVCW9OFMApkqnNBekVcRpAvf1cs6P+P+w
 8tFg==
X-Gm-Message-State: AGi0PuaGMzRT0KRTB9WgqnO+VRSVxEE2UzwhvsXD41IMVNNtX7PH7NpN
 KMebemETf8x9nJoqjSnnUaDEFlCh+RMFaD1eal2Lx3gL
X-Google-Smtp-Source: APiQypKflUHVQYrhw7nL01sUUt7s1hb0w5tAXyqF7C+vmr3KuYWQoXXGbnb/NdLG+fgSJj+K5HNnPNiN7no7yrKaZLY=
X-Received: by 2002:a02:9a0d:: with SMTP id b13mr16110814jal.60.1589217359822; 
 Mon, 11 May 2020 10:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPgGrfNJSnX=W5dmKOSnJqA4Ud1-VirMDynjRynTnD_brw@mail.gmail.com>
 <CAEXYVK6nt2wNTH+f42WNYzoJRVgGLAqsS6GJLsRO8=7BcM4xQw@mail.gmail.com>
In-Reply-To: <CAEXYVK6nt2wNTH+f42WNYzoJRVgGLAqsS6GJLsRO8=7BcM4xQw@mail.gmail.com>
Date: Mon, 11 May 2020 19:15:48 +0200
Message-ID: <CAP2eGPg4HfXapOxAhXWDhWn9iAdpLDjW0UP2jOXU6L5NHgz8+Q@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] USRP X310 sample rate of 184.32 MHz
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3002016702508227159=="
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

--===============3002016702508227159==
Content-Type: multipart/alternative; boundary="000000000000340aa105a56280f5"

--000000000000340aa105a56280f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Brian! It runs fine :)

El lun., 11 may. 2020 a las 17:08, Brian Padalino (<bpadalino@gmail.com>)
escribi=C3=B3:

> On Mon, May 11, 2020 at 6:20 AM Carlos Alberto Ruiz Naranjo via USRP-user=
s
> <usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I'm using the USRP X310 with CBX-120. I set the radio sample rate to
>> 184.32 MHz but I have the following message:
>>
>> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device:
>> 184.32 MHz. Actual rate is: 200 MHz.
>>
>> Isn't it possible to set it to that sample rate?
>>
>
> You need to set the master_clock_rate in the arguments of the USRP to be
> 184.32MHz.
>
>   https://files.ettus.com/manual/page_configuration.html
>
> Brian
>

--000000000000340aa105a56280f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Brian! It runs fine :)<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun., 11 may. 202=
0 a las 17:08, Brian Padalino (&lt;<a href=3D"mailto:bpadalino@gmail.com">b=
padalino@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, May 11=
, 2020 at 6:20 AM Carlos Alberto Ruiz Naranjo via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<br><br>I&#39;m usi=
ng the USRP X310 with CBX-120. I set the radio sample rate to 184.32 MHz bu=
t I have the following message:<br><br>[WARNING] [X300 RADIO] Requesting in=
valid sampling rate from device: 184.32 MHz. Actual rate is: 200 MHz.<br><b=
r>Isn&#39;t it possible to set it to that sample rate?<br></div></blockquot=
e><div><br></div><div>You need to set the master_clock_rate in the argument=
s of the USRP to be 184.32MHz.</div><div><br></div><div>=C2=A0=C2=A0<a href=
=3D"https://files.ettus.com/manual/page_configuration.html" target=3D"_blan=
k">https://files.ettus.com/manual/page_configuration.html</a></div><div><br=
></div><div>Brian</div></div></div>
</blockquote></div>

--000000000000340aa105a56280f5--


--===============3002016702508227159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3002016702508227159==--

