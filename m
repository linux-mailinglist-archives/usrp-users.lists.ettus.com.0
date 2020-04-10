Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C20F1A4B73
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 22:52:16 +0200 (CEST)
Received: from [::1] (port=47502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jN0dI-0000QO-T6; Fri, 10 Apr 2020 16:52:12 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:44694)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jN0dE-0000K7-Qj
 for usrp-users@lists.ettus.com; Fri, 10 Apr 2020 16:52:08 -0400
Received: by mail-ua1-f50.google.com with SMTP id 74so1058404uau.11
 for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2020 13:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwLqlp0agcxYoBWOFd5sJRsoEvNEbh35kg+FTiGg8Xs=;
 b=lfbi3O/xXD89jzMBFgp+T/9RdQxxv41Ug3DRida5+XtpRZ5BG9rA0EntXfdYZNJXaj
 mzl0tCv5F22wxtqtjU/P34NBRtZ8MzHBvFeH/zXWORpbI1cw7/T3keLX93VEPzmxDnQI
 /Zd0k3qX9xtLcK+f1FepCm0So/WGRmJGP1X/YewV/xs6NVmTwuS58DhsrU7s4PqZxiSy
 x6doiz1zQJPBOaT056ZhU0p9Sb8gcQNV86hyRQl+94FkDk/Wvuz1/OGwF4vJHgPB+cqN
 dY9IWZkyPRW6pdcGKIEPzUefFa4lMf/1Y2D3c4os/kktD2UGUrFTaxuDgCDBgJV2tDmj
 6WUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwLqlp0agcxYoBWOFd5sJRsoEvNEbh35kg+FTiGg8Xs=;
 b=gVxhtpyaadq43rt9q7JZ1pjxh0ZuqJBNzRpDlFwYF7+YwMb2BufrTOuzzIAgRWzUk/
 xIPrAcQF1GsRxdI3Iq7ftA1jw0ps9ch05mySHvsqujDZ4y3e5txZbU5Oq418jJUcd7Eh
 jjXvrEptgor55zVnYj5kpSl4N3HO1TPhRxTFUV4taUWatesSV1AqG0UIWxEQuXTX/y6R
 JKaXaUrCv36wqrvzddQ7qepxeU+4gaDf7yVugIokqD4perfvwJ82EkS5TAAzvqUZmtqJ
 UXBNfJv7z1q2TYygeKp2JegLfYhM/M54Vh2xAtKF2+w7EPkFcumWHD+bjCFJskc1fyvi
 esYg==
X-Gm-Message-State: AGi0PubqigUop4mgk3SKROrjqqmX4Pe3QUDfKYvaRq9W1z1g1+OpI59Q
 j5VwIJmXqXYzuvGsnu/EmGnc/FFwtV4y7GoP0MvzEIyM
X-Google-Smtp-Source: APiQypLF34P+v7YOAZZXx5bmT2R5yG6WvsbxyiL1DaYzRTx2SanRbVm8rYpmzIC8E745trCwoAbPm07OO8henTRnx6Y=
X-Received: by 2002:ab0:63c3:: with SMTP id i3mr4512904uap.127.1586551888191; 
 Fri, 10 Apr 2020 13:51:28 -0700 (PDT)
MIME-Version: 1.0
References: <331d9c2e396b4f499b1af018f335899c@dlr.de>
 <CAANLyuajEUuAZ8CamF4F=1pT9_F4H9cU6MiQjDxn+tNGen6_7Q@mail.gmail.com>
In-Reply-To: <CAANLyuajEUuAZ8CamF4F=1pT9_F4H9cU6MiQjDxn+tNGen6_7Q@mail.gmail.com>
Date: Fri, 10 Apr 2020 16:51:17 -0400
Message-ID: <CAGNhwTPNq6gvHDqBMafCfSC6W9PNarmZFbPxSPabT_J+EqJNgA@mail.gmail.com>
To: Devin Kelly <dwwkelly@gmail.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2116482343325361423=="
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

--===============2116482343325361423==
Content-Type: multipart/alternative; boundary="000000000000b6b5a305a2f5e59d"

--000000000000b6b5a305a2f5e59d
Content-Type: text/plain; charset="UTF-8"

Maybe this KB info is what you're looking for?
<
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO
 >
Maybe not, too. Worth a look IMHO. - MLD

On Fri, Apr 10, 2020 at 4:23 PM Devin Kelly via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Emanuel,
>
> Did you get the timed GPIO commands to work for you?
>
> Thanks,
> Devin
>
> On Thu, Dec 5, 2019 at 3:34 AM Emanuel via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi everybody,
>>
>>
>>
>> could the GPIOs, e.g., on a B200mini be set/unset precisely in time
>> (limited to the sampling rate used)?
>>
>>
>>
>> Best regards,
>>
>> Emanuel
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

--000000000000b6b5a305a2f5e59d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe this KB info is what you&#39;re looking=C2=A0for?<di=
v>&lt;=C2=A0<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using=
_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO">https=
://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Examp=
le:_Using_Timed_Commands_to_Control_GPIO</a>=C2=A0&gt;</div><div>Maybe not,=
 too. Worth a look IMHO. - MLD</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 10, 2020 at 4:23 PM Devin K=
elly via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi Emanuel,</div><div><br></div>=
<div>Did you get the timed GPIO commands to work for you?</div><div><br></d=
iv><div>Thanks,<br></div><div>Devin<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2019 at 3:34 AM=
 Emanuel via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b6b5a305a2f5e59d--


--===============2116482343325361423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2116482343325361423==--

