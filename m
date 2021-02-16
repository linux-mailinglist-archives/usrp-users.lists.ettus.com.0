Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D92E231CBDD
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 15:28:59 +0100 (CET)
Received: from [::1] (port=52136 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lC1LR-0002Qk-Vr; Tue, 16 Feb 2021 09:28:53 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:43963)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1lC1LN-0002Mk-Ea
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 09:28:49 -0500
Received: by mail-oi1-f175.google.com with SMTP id d20so11348578oiw.10
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 06:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LFMTs10oAFmT0pCFHafCEFH9tsoNHu7WOSYyZvG/KdA=;
 b=A7u1yN7VpX4b0sjxP3UTg/XaQEo8i90622G4X5ne1H6C/+NgGEzesk7VY6cfxW+S5e
 TZD3hxwImx/mYLqY347zHu7nlB7G52SO8qB1U8k3QEPvHfvgaG5pehnMHvrV3HXxcOJJ
 j3IPJK+lcrjcuj2wH9mVbXjZdoOMkmDgDLPDpq1/2IcPdsJJLl2j3JdBaM1X5PB2RDir
 /8dC+0OP4vbHdTfR0kFaHyDWiXMndC0GiZDFteLZ/zN+zFixRQAdF56BNsA3Be2hJwPJ
 Y7F5IZFin+xTEyG7bryeN0darWn8iv1pcdXS/4atxb6vYhdqePTqi2XrVcMw0meXsDiZ
 NnHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LFMTs10oAFmT0pCFHafCEFH9tsoNHu7WOSYyZvG/KdA=;
 b=cpzk65zxWDT/oRldkj4lYxN//2gyz3OFf6IJ5ye+I/f9vw1r0x9LS0iRJKqAH705Dh
 JaZzcgKSxaOTxQ+ZqlkB6+Sd2EM9jeUFhcwEEgH0AJz8MAUYKVO9sM8Xe6sk47gu0v+U
 omCmN0iNKWsPEyG67lgqCpS/GkytckI91KqS90t6OoT6Td4Nemb8KfyckeIrKIgjimOi
 uBrC0muZ/+E2/wHwT1N71tUA1+CULRh16Xkkk8DkyYiP8QkEPOY2Cfx+4t7daXsWOHLi
 XiANsYOKiuO5NJKrz6lotpfC64NMFw8YEa8kT8Xsuk6jiXQ4kKE9moFPRT2OAhPXp/4i
 Ccrg==
X-Gm-Message-State: AOAM5323cDSHndzGsRDE9EuLFbEsKPnnPxa9eDZGAIAwEO26KTFq8f4z
 NymqkwZ/PuUO7yM1UtztIKxF3ESICLCNC3ipYvA=
X-Google-Smtp-Source: ABdhPJyll5JpkA9UEWltY1y9eCg0n5mQmVWUE8ITZ+dU64IKLL0TaHbh90qd8HQUlKGkIW30F8VTJRwbT8E/u8Ozmms=
X-Received: by 2002:aca:cfd0:: with SMTP id f199mr2821951oig.64.1613485688671; 
 Tue, 16 Feb 2021 06:28:08 -0800 (PST)
MIME-Version: 1.0
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
 <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
 <20210216091941.yaclsgbeh7spm4tt@barbe>
 <CAJZBg9WpiJ4rq-vLq1RCpfoi+rGBQM=kEE3Mkz98VzAyZccZOA@mail.gmail.com>
In-Reply-To: <CAJZBg9WpiJ4rq-vLq1RCpfoi+rGBQM=kEE3Mkz98VzAyZccZOA@mail.gmail.com>
Date: Tue, 16 Feb 2021 09:27:57 -0500
Message-ID: <CAEXYVK5beXcuyjj1tD31ptiyecSM+4izRvcYrNpOAzk4oG-LVw@mail.gmail.com>
To: Tuan Hoang Dinh <tuanmcx58@gmail.com>
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8468723296827719067=="
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

--===============8468723296827719067==
Content-Type: multipart/alternative; boundary="00000000000052d16a05bb74e9cd"

--00000000000052d16a05bb74e9cd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the sake of the mailing list, can someone post the example to a
repository somewhere and link to it, so we aren't passing around secret
helpful documents?

Thanks,
Brian

On Tue, Feb 16, 2021 at 8:29 AM Tuan Hoang Dinh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear C=C3=A9dric Hannotier,
>
> Thanks a lot for your forwarded email from Wade, it is so helpful for me
> at the starting step.
> Thank you too, Wade.
>
> Best regards,
> Tuan
>
> V=C3=A0o Th 3, 16 thg 2, 2021 va=CC=80o lu=CC=81c 18:20 C=C3=A9dric Hanno=
tier via USRP-users <
> usrp-users@lists.ettus.com> =C4=91=C3=A3 vi=E1=BA=BFt:
>
>> Dear Tuan,
>>
>> On 16/02/21 14:03, Tuan Hoang Dinh wrote:
>> > I would like to add Xilinx IP to RFNoC module and still have no idea t=
o
>> do
>> > that.
>> > Could you share your example to help me get started?
>>
>> I forwarded Wade's example to you.
>>
>> Regards
>> --
>>
>> C=C3=A9dric Hannotier
>>
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

--00000000000052d16a05bb74e9cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For the sake of the mailing list, can someone post the exa=
mple to a repository somewhere and link to it, so we aren&#39;t passing aro=
und secret helpful documents?<div><br></div><div>Thanks,<br>Brian</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Feb 16, 2021 at 8:29 AM Tuan Hoang Dinh via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Dear=C2=A0<font color=3D"#000000">C=C3=A9dric Hannotier,</font><div><font=
 color=3D"#000000"><br></font></div><div><font color=3D"#000000">Thanks a l=
ot for your forwarded email from Wade, it is so helpful for me at the start=
ing step.</font></div><div><font color=3D"#000000">Thank you too, Wade.</fo=
nt></div><div><font color=3D"#000000"><br></font></div><div><font color=3D"=
#000000">Best regards,</font></div><div><font color=3D"#000000">Tuan</font>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">V=C3=A0o Th 3, 16 thg 2, 2021 va=CC=80o lu=CC=81c 18:20 C=C3=A9dric H=
annotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =C4=91=C3=A3 vi=E1=BA=
=BFt:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Tuan,=
<br>
<br>
On 16/02/21 14:03, Tuan Hoang Dinh wrote:<br>
&gt; I would like to add Xilinx IP to RFNoC module and still have no idea t=
o do<br>
&gt; that.<br>
&gt; Could you share your example to help me get started?<br>
<br>
I forwarded Wade&#39;s example to you.<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
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

--00000000000052d16a05bb74e9cd--


--===============8468723296827719067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8468723296827719067==--

