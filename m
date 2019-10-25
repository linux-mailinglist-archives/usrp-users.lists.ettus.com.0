Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2798E574E
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2019 01:56:13 +0200 (CEST)
Received: from [::1] (port=41170 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iO9RB-0007vn-GZ; Fri, 25 Oct 2019 19:56:09 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:38882)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1iO9R7-0007rf-Ta
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 19:56:05 -0400
Received: by mail-qt1-f173.google.com with SMTP id o25so5857847qtr.5
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 16:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O5bItbCb8I1BPtFVNVTSTHKpxgdurcCLXNGLvuqpqt0=;
 b=sqkTuUbPAyFRRXOO1VOfp2pts2qgAY1IEYVtZ7NgGOUMOXdK//twUWYLMLN0xjF3PJ
 fUNnvVA2hjvTTyOyPtpNlB6QL4VFi+6DaPGTJ14C6+bZ+bNbv5KxqcHFdkh58gAMIAw5
 /0ZY9PlGSqpbo4NxgPh/rVDtBtD1jxmo8U4XsSoH7ATskMs7ARU1lf7EITa8wEhjXJEO
 wjmovhIzMCs6W26B3Q/cQpYXzKrP1p9RV097kqZzzJ2eYrxsIwkBwfVkxSAH2E2aBCAJ
 WdM/d0XCZ+UggnY2jo5xThd8duiO2qB6efzRWhU3Y2bKFtAor8mp0mkYbYPXq161u789
 iSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O5bItbCb8I1BPtFVNVTSTHKpxgdurcCLXNGLvuqpqt0=;
 b=AtcNgRM679UFOy2Dng7ZbXexga9k/0mlvnwYif7kokI8swUcGYBMJkrLUQVw7c75h+
 pECvv6b8NC2dAz+U1yLAEntI/XOy6UB13dqg4ofd9MwqKxI7uQoV4VciRCvUNygcoZOj
 q2jR5v4aCwdhROTIVPnuAhXDRtVVHlbU5j892pJtT2YUPq0FMJ3vPdJTYKQbxMLTt9HH
 TglmECyV6BVVIq5aOJo0ETuv7Jb2Ycat+8JMiqJlm+jVbW+WS6cYlRDrgHJwAjwLZR2q
 YKENlPq9k8pHCmQcaIiEvclPdC0eFLE48/g+hM8tBY08J9mTTJ+zUREUOQcCZDedhDge
 NPCw==
X-Gm-Message-State: APjAAAXDdPS2X+yscNZLudoJLDGavFVGonWwrK2U/g1jhQckFNSWeEvF
 uS4Au5d7TXp/nxhhS2vPpn/wpDTuaCrMO6nw+N8=
X-Google-Smtp-Source: APXvYqz7B1Ims/m7AGRvB89PA5vGbs3W/Gd0kcGJSzzH2MXAPsbl9YviR1J8i5nMeTbtTicrBcPXHFAK+ptkDw6B7H0=
X-Received: by 2002:ac8:542:: with SMTP id c2mr6112982qth.338.1572047725245;
 Fri, 25 Oct 2019 16:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALSKgPy9YoLX2fXWJPiy5kWDxswB_0oQ4VC1chWw6EqCVKJ+Rw@mail.gmail.com>
 <CANf970YQrC0_ZXOYQhyr9SqaqP8gj6rjuiMszESpPv769PnxgA@mail.gmail.com>
 <CALSKgPxmmkkxu-9nfeCFrK81MD7A4P7p6xqQMbWagK+HwttF5g@mail.gmail.com>
 <CANf970Yg4YF+Hvcdaa9GMdfQ6xwO75ZN15qsUUdoihmCc5Khog@mail.gmail.com>
In-Reply-To: <CANf970Yg4YF+Hvcdaa9GMdfQ6xwO75ZN15qsUUdoihmCc5Khog@mail.gmail.com>
Date: Fri, 25 Oct 2019 20:55:13 -0300
Message-ID: <CALSKgPwFnAZMzPEiAAarLWXT3tu6n0X4SeaFyVMKtrA5AK1rCQ@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] X310 over PCIe not found in Ubuntu 18
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2985434493148176289=="
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

--===============2985434493148176289==
Content-Type: multipart/alternative; boundary="0000000000003bb82e0595c4e2c7"

--0000000000003bb82e0595c4e2c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This computer has a mini-ITX board (ASUS ROG Strix Z390-I ) with just one
x16 slot.
However, on monday I can get the full output of the lspci command.

Em sex, 25 de out de 2019 =C3=A0s 18:28, Sam Reiter <sam.reiter@ettus.com>
escreveu:

> Would you be able to try shifting this card to another PCIe slot in your
> machine?
>
> I'm also interested in knowing what other PCIe devices you have connected
> to the computer. It might be worth making the X310's PCIe link the only
> connection, at least for testing purposes.
>
> Sam
>
>
> On Wed, Oct 23, 2019 at 6:58 PM Wheberth Damascena Dias <
> wheberth@gmail.com> wrote:
>
>> Hi Mr Reiter,
>> Thank you for your answer.
>>
>> Actually yes, the same X310 runs perfectly in another machine. Its a i7
>> 6th gen with ubuntu 18.04 kernel  4.15.0, libuhd and uhd-host on same
>> version.
>>
>> I think this can be some PCIe related setting on the BIOS, since the
>> lspci shows [disabled] next to the base address, but I can't find any
>> option to change it on the BIOS.
>>
>> Best Regards
>>
>>
>>
>>
>>

--=20
*Wheberth Damascena Dias*
_______________ _____ _____ __ ___ __ _ _ _  _
http://www.linkedin.com/in/wheberth
e-mail:wheberth@gmail.com

--0000000000003bb82e0595c4e2c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This computer has a mini-ITX board (ASUS ROG Strix Z3=
90-I ) with just one x16 slot.=C2=A0</div><div>However,=C2=A0on monday I ca=
n get the full output of the lspci command.<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Em sex, 25 de out de=
 2019 =C3=A0s 18:28, Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com"=
>sam.reiter@ettus.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Would you be able to try shifting =
this card to another PCIe slot in your machine?<div><br></div><div>I&#39;m =
also interested in knowing what other PCIe devices you have connected to th=
e computer. It might be worth making the X310&#39;s PCIe link the only conn=
ection, at least for testing purposes.=C2=A0</div><div><br clear=3D"all"><d=
iv><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam=C2=A0</div><=
/div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2019 at 6:58 PM Wheberth D=
amascena Dias &lt;<a href=3D"mailto:wheberth@gmail.com" target=3D"_blank">w=
heberth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">Hi Mr Reiter,=C2=A0</d=
iv><div dir=3D"auto">Thank you for your answer.</div><div dir=3D"auto"><br>=
</div>Actually yes, the same X310 runs perfectly in another machine. Its a =
i7 6th gen with ubuntu 18.04 kernel=C2=A0 4.15.0, libuhd and uhd-host on sa=
me version.<div dir=3D"auto"><br></div><div dir=3D"auto">I think this can b=
e some PCIe related setting on the BIOS, since the lspci shows [disabled] n=
ext to the base address, but I can&#39;t find any option to change it on th=
e BIOS.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best Regar=
ds</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><br><div dir=3D"auto"><br></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><span style=3D"font-size:1=
2.8px"><b>Wheberth Damascena Dias</b></span><br></div><div><span style=3D"c=
olor:rgb(80,0,80);font-size:12.8px">_______________ _____ _____ __ ___ __ _=
 _ _=C2=A0 _=C2=A0</span><br><div><a href=3D"http://www.linkedin.com/in/whe=
berth" target=3D"_blank">http://www.linkedin.com/in/wheberth</a></div><div>=
<a href=3D"mailto:e-mail%3Awheberth@gmail.com" target=3D"_blank">e-mail:whe=
berth@gmail.com</a></div><div><div><div><br></div></div></div></div></div><=
/div>

--0000000000003bb82e0595c4e2c7--


--===============2985434493148176289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2985434493148176289==--

