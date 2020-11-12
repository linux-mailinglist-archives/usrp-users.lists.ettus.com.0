Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4872B0D02
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:52:26 +0100 (CET)
Received: from [::1] (port=60110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHhp-0001qC-Fv; Thu, 12 Nov 2020 13:52:25 -0500
Received: from mail-lf1-f53.google.com ([209.85.167.53]:35692)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kdHhl-0001gQ-J6
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:52:21 -0500
Received: by mail-lf1-f53.google.com with SMTP id a9so8971710lfh.2
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 10:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fyln7jTjvNK3uc5AkIvuWpcx8exf9ofIvjOi9QRS7Qg=;
 b=c4Lxgzjo+PMg066NAl9vchpKJgIs8+7ksOPwwQp8TxUgpAEeI71uOS/Fjj6nfDl4nV
 XEAmQc9zJ6WiPckYVMeMpdeHNcpnniKClROlSYDOmIc0qG+iIQ41P5jZIT4ximeP1aN4
 d2BwQivXREc9opOgZaOgjVxC3ovp4yzx6DFZiL4WUGOKBx2ftFlgZOMDPd4XMvBzfEKD
 EdIgLk8huKq3g1v+/9QdXL61m7p3MpWEXuOknWleKRsfaHBeLwXUwBfWbickVaaggY3F
 RjZU17HiVOcDfOrTECEDZ/TLWKtKj0rdeN+cuR7YQT0JtPqvT0kaCJ0sZH1W3TZVOe8C
 Nwbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fyln7jTjvNK3uc5AkIvuWpcx8exf9ofIvjOi9QRS7Qg=;
 b=cQkWAByXwjxnOeEIgqI29hrG6vEtihr5gaPJM03Nzz6ijxScNPxPYYhkpzbj25hVaq
 4EF5AQPBs9hQcqMpACzd+SdHHqRpFocihZNaREgorQ7cI65XmBPzjqBialzN9Hud0qvi
 DNfpSAI7MhopPpXb/vf71WM0h2QAr/aUMz5q4X/wsGe1ZUEgwBUAow0p+dKvbec6haHz
 hxZBXqdkuHLei2RusHdOjzGOhsLC0uUmDFjbZfZ6kW2WN5zLBXhNb2crlFxNWk+D+lwP
 qOylwOV1rWXwB1FAL1ziKyzbRU44OqDi8QrMPlNwhW7ClFe1pDYYLriCa44GMS1SnerN
 rhsQ==
X-Gm-Message-State: AOAM533mLyn5pDY4PEAggEe/UrzAxrNAhaXdO3SSygKuXGf096+LrBhQ
 iHL1WdYSsU+agfh23kWnRQUApwnqhXfNHsENodU=
X-Google-Smtp-Source: ABdhPJycfPQjMmC+LP0C86NMbIJs01LMLk/+P7Hlkh1w1fMIrybUCmTclpUMnNFLeRTEFYehHPygMgZAOn7n+mUR49k=
X-Received: by 2002:ac2:46ce:: with SMTP id p14mr285115lfo.590.1605207100394; 
 Thu, 12 Nov 2020 10:51:40 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
 <CAB__hTS7UmY9mgmb9N=dUcOVga5vOg-iveQYqu_c8AeyzpjjOA@mail.gmail.com>
In-Reply-To: <CAB__hTS7UmY9mgmb9N=dUcOVga5vOg-iveQYqu_c8AeyzpjjOA@mail.gmail.com>
Date: Thu, 12 Nov 2020 11:51:30 -0700
Message-ID: <CACryqrH4-YinuO4ELrhNF_31nVMu8tqenNmqTxEUo2Bn=H_-FQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Rx time sychoronization
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============4342564107775390932=="
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

--===============4342564107775390932==
Content-Type: multipart/alternative; boundary="00000000000002902e05b3ed67f0"

--00000000000002902e05b3ed67f0
Content-Type: text/plain; charset="UTF-8"

I am using gnuradio with some OOT modules. I will look through this example.

Thank you.

On Thu, Nov 12, 2020 at 11:47 AM Rob Kossler <rkossler@nd.edu> wrote:

> Are you using gnuradio or writing your own c++ or python application to
> interface to UHD?  If you are writing your own C++ application, maybe the
> Ettus example rx_multi_samples.cpp will be helpful.
> Rob
>
> On Thu, Nov 12, 2020 at 1:41 PM Xiang Ma via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>>
>> I want to use this as two receivers by the two RX in the two
>> daugherboards respectively, and receive the signal at the same time. Do I
>> have to synchronize them or they will automatically start to receive the
>> signal at the same time?
>>
>> Thank you,
>>
>> Xiang Ma
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--00000000000002902e05b3ed67f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am using gnuradio with some OOT modules. I will look thr=
ough this example.<div><br></div><div>Thank you.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020=
 at 11:47 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>Are you using gnuradio or writing your own c++ or=
 python application to interface to UHD?=C2=A0 If you are writing your own =
C++ application, maybe the Ettus example rx_multi_samples.cpp will be helpf=
ul.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Nov 12, 2020 at 1:41 PM Xiang Ma via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I have a USRP x310=
 with 2 UBX daughterboards and GPSDO.</div><div><br></div><div>I want to us=
e this as two receivers by the two RX in the two daugherboards respectively=
, and receive the signal at the same time. Do I have to synchronize them or=
 they will automatically=C2=A0start to receive the signal at the same time?=
</div><div><br></div><div>Thank you,</div><div><br></div><div>Xiang Ma</div=
><div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"=
ltr"><font face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(13=
6,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(13=
6,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)">=
<font color=3D"#444444">College of Engineering</font></div><div><font color=
=3D"#444444">Utah State University</font></div><div style=3D"color:rgb(136,=
136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail=
.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com<=
/a></font></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--00000000000002902e05b3ed67f0--


--===============4342564107775390932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4342564107775390932==--

