Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28DD496D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 22:48:32 +0200 (CEST)
Received: from [::1] (port=42352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ1pt-0006h3-NS; Fri, 11 Oct 2019 16:48:29 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:46274)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iJ1pp-0006Ye-Vb
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 16:48:26 -0400
Received: by mail-lf1-f46.google.com with SMTP id t8so7910374lfc.13
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 13:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wg0S7+dA/Xv3Z+YKT7wJ5M6vKdbeMagRvmkJ5CQxkaQ=;
 b=fgsN2+AquBA1TbXVfN9HD222vxepTxxXthpSzf0Vqg4Q1LycC3NLuzyOb6tDapbNNT
 ajSCftC8JtdGuX6ovnEhqdvWii/UPZUDYv4FI7hwLIOuIC96AYHzGBVaSJ0+wihuOg4u
 8BDOrlggV3vI8MD57vtu+hTJXgJGbl0SbWii8bDGIdo7cOoG+yvbJIwd0ew5jdPE0IhO
 vBleGAekyD+LFmMNl+lVG/AuBtn8lZrH3To1mbwsX/bbthw0BER6SA9zgw3z69bLDQbD
 ZxHmLB+25LQidQT3PpVz0ct1bbqcqH+56ooBM3tZ6vdMGoxTwsOACVFKn7vah8Qx6Wow
 j5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wg0S7+dA/Xv3Z+YKT7wJ5M6vKdbeMagRvmkJ5CQxkaQ=;
 b=cUODzNXyatwNFZpxzeATDtsCwHItBJlfy1s/jJTI91oKnMIzTjxs+gt6w40eQLi37k
 0a9nFPGSg92fJO2vmbiVaQU24wD4UTpfDezX+VOzOfWSVnrha3oSJZR1Ou/8WBTPE5yA
 57JCuCYQy1NEs+NzFTlt5Rp0eL9OECeiMI9mm+aHJneiJ3y2mvTEw9RhD3k+mc65OPuA
 m3EG6oRsyWu1Ke5uemyQRu2sPOn3lfabAQ3pBnW4Lj7mDX4fKyAMIp+sd/93zMXeYHYO
 Lk5OvvkbPvrD9D0je0kJYJaN0HrT3pPSPsP8AD6b46/XNrReWXmNCfbXqa0FBCPb3lll
 yX0w==
X-Gm-Message-State: APjAAAVUNzJob45doZUkke/M4wWkCHMJuRaEMiMzNOpKil0hfx0A2hzr
 eRitTj7HY9EeceiZbLbDhCmCUuNlGBgAeT/5aRs=
X-Google-Smtp-Source: APXvYqwXRXIn7b21J1jEvqR4UUTXlqJM5WeztCnJr6ab9KYU8KK4S65HvFvG7H8mOpVQ+428ACiXBBRzmvYnEAe4d7I=
X-Received: by 2002:a19:7409:: with SMTP id v9mr9089343lfe.125.1570826864716; 
 Fri, 11 Oct 2019 13:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
In-Reply-To: <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
Date: Fri, 11 Oct 2019 16:47:31 -0400
Message-ID: <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] uhd_fft failure
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2978345637566315540=="
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

--===============2978345637566315540==
Content-Type: multipart/alternative; boundary="00000000000046712f0594a8a1e2"

--00000000000046712f0594a8a1e2
Content-Type: text/plain; charset="UTF-8"

It's Ubuntu 16.04.1, but yes, I will follow the source build instructions.

On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Saeid - Thanks for the followup. I totally agree that if you just "sudo
> apt install gnuradio", compatible versions should be installed. Are you
> using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
> source, you can follow instructions such as the GR recommended way here <
> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
> but maybe the guide is outdated for older Ubuntu; or, our packages need to
> be updated for that OS version ... Cheers! - MLD
>
> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> I will follow your advice, but it's worth mentioning I simply did apt-get
>> gnuradio and should therefore have a compatible version of uhd installed
>> automatically as a dependency. I did not install uhd separately.
>>
> --
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>

--00000000000046712f0594a8a1e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s Ubuntu 16.04.1, but yes, I will follow the source=
 build instructions.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a =
href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the followup. I totall=
y agree that if you just &quot;sudo apt install gnuradio&quot;, compatible =
versions should be installed. Are you using Ubuntu 16.04.6 LTS (Xenial Xeru=
s)? If you choose to install from source, you can follow instructions such =
as the GR recommended way here &lt;=C2=A0<a href=3D"https://wiki.gnuradio.o=
rg/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" target=3D"_blank">http=
s://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a> =
&gt;. I have an Ubuntu=C2=A018.04 install that went very=C2=A0smoothly usin=
g this guide, but maybe the guide is outdated for older Ubuntu; or, our pac=
kages need to be updated for that OS version ... Cheers! - MLD</div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 1=
1, 2019 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" ta=
rget=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">I will follow your advice=
, but it&#39;s worth mentioning I simply did apt-get gnuradio and should th=
erefore have a compatible version of uhd installed automatically as a depen=
dency. I did not install uhd separately.</div></blockquote></div>-- <br><di=
v dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ett=
us Research Technical Support<br>Email: <a href=3D"mailto:support@ettus.com=
" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.=
com/" target=3D"_blank">https://ettus.com/</a></div></div></div></div></div=
>
</blockquote></div>

--00000000000046712f0594a8a1e2--


--===============2978345637566315540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2978345637566315540==--

