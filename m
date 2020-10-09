Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD6D288AC1
	for <lists+usrp-users@lfdr.de>; Fri,  9 Oct 2020 16:24:07 +0200 (CEST)
Received: from [::1] (port=60664 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQtJV-0006Qq-5h; Fri, 09 Oct 2020 10:24:05 -0400
Received: from mail-ej1-f49.google.com ([209.85.218.49]:43738)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kQtJR-0006KX-0y
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 10:24:01 -0400
Received: by mail-ej1-f49.google.com with SMTP id md26so13309302ejb.10
 for <usrp-users@lists.ettus.com>; Fri, 09 Oct 2020 07:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kSB18rQMb2MSH2zzNLvXZkVTWnd+u5T1tzUoFfypNRI=;
 b=wJB4PM1Q744/NZgyu66P70mShzB2brOSow0nGuEBHJsJMb8wbxqecR56GU90nbUEiB
 WzWFl8/4Vo0ULo9mfKqetxYGrtMTaACKb4l6RE3RorvvKf/J2oRE+3f8LOoP4N4n1C2c
 lyZNsWt4I21xXss1dlXjZYQSizOXzN7XgLKDkfbQuXOxVnLLESirZNTqxWnFh6DcOt+2
 jJB8emJr/DxYkCVr++KB8DpLEnE8ICxVzT7cxWfdwpjVQ3O48auYnbBxswc8ftEHbXMz
 PxsZyG1c7Zve2/pHtbEBc2oIw4EBBwWDJoeXZyxv6wBMRt84bCIMcsUMZ5UeB7I3Ys9b
 quzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSB18rQMb2MSH2zzNLvXZkVTWnd+u5T1tzUoFfypNRI=;
 b=L8ACWq9Yz+qX0mV17V8KEpuzigbcszbDUXhGDus30bJ7ZmIBbfPCTvLWNqiVL8TVhQ
 q06EVS7NhMEJ0LQvrStWNRJzjOW3VtnfvXA2PWu/HjrYt1YLpc4H7Ys4fWB0EHRE+cGl
 gLchhHvhKV311p0fc9/HOX69oieyMKUi/VgCIlABlRSMUtavmW/z4tsJEFu+bI1Ogw1V
 OOQZWhxVpT/PN7RxlnbdA3ucVF7qJAJYJ6+BPefH1M2yOGxkx/0ZYrIQgEFESnZniPqL
 3ODliqzOaaZZoUIveGQkhENbbiCA0cnLWHH3vRT9ZytT3rL3KS7TlbE3qCCKZW1Flst7
 QTtQ==
X-Gm-Message-State: AOAM533jeleLP0+lcyGD4Jwh2I+pOC/RyI5Ej57BweNIJ/ayISth7LIk
 gjHSg03CgRCqPNjTXpkbZIDlsmPZc4X2wkQ3pb8q8XTY
X-Google-Smtp-Source: ABdhPJz0Hh9pDjTLUbmR+PrgqM2VYrbv4/M2gW8gxwTCBo93dBl7z5maD7aI7Ta2y1UTLurKqve6JS8FI3E87DZVBEc=
X-Received: by 2002:a17:906:af10:: with SMTP id
 lx16mr14617416ejb.400.1602253399989; 
 Fri, 09 Oct 2020 07:23:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ1azFd2KFH-g0+ASGSfBjCp1FpizqaZS4zcm4i51JJxg@mail.gmail.com>
 <CAGNhwTN+g3Vt=Ox68igLx1TSgXgF65eb7ftk-+=zXM-OphQxOQ@mail.gmail.com>
In-Reply-To: <CAGNhwTN+g3Vt=Ox68igLx1TSgXgF65eb7ftk-+=zXM-OphQxOQ@mail.gmail.com>
Date: Fri, 9 Oct 2020 16:23:08 +0200
Message-ID: <CAFOi1A7yH57V=bOxAPAVsSe_2qUA4we44tCETEAM2Pboz7naeA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Cc: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Operating E310 from host?
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
Content-Type: multipart/mixed; boundary="===============4360321868397295183=="
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

--===============4360321868397295183==
Content-Type: multipart/alternative; boundary="000000000000bf3acc05b13db030"

--000000000000bf3acc05b13db030
Content-Type: text/plain; charset="UTF-8"

Note that on UHD 3.15, the N310 will also not let you do that over the RJ45.

--M

On Fri, Oct 2, 2020 at 8:01 PM Michael Dickens via USRP-users <
usrp-users@lists.ettus.com> wrote:

> UHD 3.15: just on the E310. No network mode.
>
> UHD 4.0: either.
>
>
> On Fri, Oct 2, 2020 at 1:57 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> Is it possible to run an Ettus example app  & UHD on the host PC with an
>> E310 (rather than running the app/UHD directly on the E310)?  This is a
>> typical mode for the N310, but I wasn't sure if the E310 supported it.  I
>> am interested in the answer for both 3.15 and 4.0.
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bf3acc05b13db030
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Note that on UHD 3.15, the N310 will also not let you=
 do that over the RJ45.</div><div><br></div><div>--M<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2=
, 2020 at 8:01 PM Michael Dickens via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">UHD 3.15=
: just on the E310. No network mode.<div><br></div><div>UHD 4.0: either.<br=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Oct 2, 2020 at 1:57 PM Rob Kossler via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi,<br><div>Is it possible to run an Ettus ex=
ample app=C2=A0 &amp; UHD on the host PC with an E310 (rather than running =
the app/UHD directly on the E310)?=C2=A0 This is a typical mode for the N31=
0, but I wasn&#39;t sure if the E310 supported it.=C2=A0 I am interested=C2=
=A0in the answer for both 3.15 and 4.0.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bf3acc05b13db030--


--===============4360321868397295183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4360321868397295183==--

