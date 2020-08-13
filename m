Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5786D243FBB
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 22:15:39 +0200 (CEST)
Received: from [::1] (port=45360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6JdQ-0008C5-Dd; Thu, 13 Aug 2020 16:15:36 -0400
Received: from mail-vs1-f48.google.com ([209.85.217.48]:33320)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k6JdM-00084m-BO
 for USRP-users@lists.ettus.com; Thu, 13 Aug 2020 16:15:32 -0400
Received: by mail-vs1-f48.google.com with SMTP id o184so3589806vsc.0
 for <USRP-users@lists.ettus.com>; Thu, 13 Aug 2020 13:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UyzkYaWrL7l0joafJJIUYzyk59ZV/SwOyEcrrHeRUJ8=;
 b=Wh354z+YaSWqnH/xz9y6DAhKVIQ5zroJ21lZ+sbBe5OJHaoLB5qyeV4YbN33HZI/oa
 7fl0+YRHdt4TlZspJxUSeDa1jBEBRjqExhhAjRWhaMmqpiANqgvzDZ3YxEr0BrPf4T+k
 qfmkE7azNln+XOaGTMSRiO0IMaQNLSfN/TBxQWB2BnBv4uR7zEQCb7Xk0eAgTbFTidFL
 ziBrCVS0L2++R/7xcAz5kx2doYHe12mfOQ1rQBMDEbhoymRFpEXWigp7kbSas7W0idDc
 LN/9zoOYFHhuDRuHjhG/z7oBugopVCHXy0ELdlCe0YWWnMbwnd4l11sPjr9Z6BhIwxFO
 RTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UyzkYaWrL7l0joafJJIUYzyk59ZV/SwOyEcrrHeRUJ8=;
 b=EVRgqv+NengrCcG1Zq/xTXT92FWXfDyBxI4F8MwBOnzZhbRAOpJA9mXI8lmvQujHwU
 H75l16FLCmGhfcCTUcV2pJguQr7X3RxSh6g9Y/OCN/UElAq/8vJ4yYwdQwvf/rRNk12h
 FUawkeygYVBLvM191U1EFE0q/3tPPJTJaj4vk5vBw3qlj07pQy+ntVVBDcNIuEYH0Qow
 eRZxXa2USU64MGX7/mbt+5QkTk+O6SWcLm70Bz3R+9gs2mA8E+4tUI9v6PubKO4gr1+C
 mhIMgzn258W48wBWU3OLiQJJ9G0QeU8366Xgys+OXFkQvZQCu38rOaL86CT66FU5IV9Q
 FECQ==
X-Gm-Message-State: AOAM533wbdc5zUpJAU+F4s1AdRe6lloSjgxmmePwUKIGZuys8AhrlEhe
 p+IvxOKQ+sZ0ookDP6ep/D5ZaFV70LztnUMI5brpXJTD
X-Google-Smtp-Source: ABdhPJxx38jzLrultmv3eWiFedJIMijDmDulS+BnKJkkWlyBWDWKJgrTO0rJwJJ50BlYQPcjIDgJObb5HQuT3YktWdI=
X-Received: by 2002:a67:de9a:: with SMTP id r26mr5053814vsk.197.1597349691741; 
 Thu, 13 Aug 2020 13:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAN6+Rz=SZQ9UMYk5Nr_8L-ACG4n6nu3NcfNiVMMULzjCa3=bVw@mail.gmail.com>
In-Reply-To: <CAN6+Rz=SZQ9UMYk5Nr_8L-ACG4n6nu3NcfNiVMMULzjCa3=bVw@mail.gmail.com>
Date: Thu, 13 Aug 2020 16:14:16 -0400
Message-ID: <CAL7q81v-NGYS7ZKzC_zjP8c-Y0WxjNzQMfHGF+4-FYKVEGv-vw@mail.gmail.com>
To: cherif chibane <cherif.chibane@gmail.com>
Cc: usrp-users <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Version for UHD, GNU radio and Gr-Ettus
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============4192273787316880127=="
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

--===============4192273787316880127==
Content-Type: multipart/alternative; boundary="000000000000f57cd805acc7f481"

--000000000000f57cd805acc7f481
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Cherif,

Here the versions you should use:
UHD: branch UHD-3.15.LTS
GNU Radio: tag v3.7.14.0
gr-ettus: branch maint-3.7

Jonathon

On Thu, Aug 13, 2020 at 3:47 PM cherif chibane via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello folks,
>
> Following up on yesterday=E2=80=99s discussion, can somebody send me the =
right
> versions for GNU radio and gr-ettus to use with UHD 3.15.LTS.
>
> Thanks
> Cherif
> --
> ____________
> Cherif Chibane
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f57cd805acc7f481
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Cherif,<div><br></div><div>Here the versions you sho=
uld use:</div><div>UHD: branch UHD-3.15.LTS</div><div>GNU Radio: tag v3.7.1=
4.0</div><div>gr-ettus: branch maint-3.7</div><div><br></div><div>Jonathon<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Aug 13, 2020 at 3:47 PM cherif chibane via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"auto">Hello folks,</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Following up on yesterday=E2=80=99s discussion, can somebody send me the ri=
ght versions for GNU radio and gr-ettus to use with UHD 3.15.LTS.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div dir=3D"auto">Che=
rif</div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>____________</div>Ch=
erif Chibane</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f57cd805acc7f481--


--===============4192273787316880127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4192273787316880127==--

