Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E2220016C
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 06:49:42 +0200 (CEST)
Received: from [::1] (port=46960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm8yB-0005mT-0w; Fri, 19 Jun 2020 00:49:39 -0400
Received: from mail-vk1-f172.google.com ([209.85.221.172]:43528)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jm8y6-0005iF-V9
 for usrp-users@lists.ettus.com; Fri, 19 Jun 2020 00:49:34 -0400
Received: by mail-vk1-f172.google.com with SMTP id q69so1995037vkq.10
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 21:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PQuzmOWUV+wXskL2B2U0LhSTp6EoFCxRLpvshSN0Erc=;
 b=c4LjVbsMj6vqt9y4OXASqfetLGHUZ8uE0ThNnNYNrvrsN9O2MDkzNXUKGS3B+SFudJ
 2//zqAJekD8oAQQcDVJVKQwTrE074QfB2fOyHYktqGiuWx6CCgMhvHG4z6XRb2PvTS95
 /AKVDK3oXRuEkEFAQI6Gd82MYXyAMqVHMZdu8wBoCx9nyvM9JUPYXfXSDDt5XjG4xW4y
 W2diuHGAGxIwg0ZRp3zuWfRKDduV5Jt8IKjcoSQi2U/1JS39MdKppG4k9cOKiME/30qw
 2hxWH0x3bXryWUcW6C7/xzEYAlYaRb3FxF8SDu287G3MrNwgs0ttRZxbvDy1vVPZ8gHY
 smCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PQuzmOWUV+wXskL2B2U0LhSTp6EoFCxRLpvshSN0Erc=;
 b=qMAPwxrl3H+YSdsqMVeKV35mfabkiD+AVvURb8FKJRRIKC9zafSoVG/7a2paXnn8aN
 L9ZXKik7+92n6UCim9iycbr5tYJhL0I5rIa5ZYMzJanGfONzbkA8T0PVDyj0HoX0dHCq
 5l/kiJwMZ8+3FrJSD1cf+K6aJTs0dXSUm+KMuk1adJlJZvLcjrjLd5jqNM9fagM6C3Yd
 eL/w+iis1bXPq/Rfrmzi5zxozVgpI5SevwiwNvpb/tMI59KXS5x/5ojGliQR+V9Vu/VW
 EcX4P28Z//1jQumEZklIxddLSGmIAF5oApzwbNmFA86FwPlSeW6Yb1PTNLa+CwyKXnTD
 fKFw==
X-Gm-Message-State: AOAM532rfzKtR1NXr+Jr/AePLmG3Woca7q+it0aSGUbepaA+m50whBsq
 s+kPne8f78d6VHjAWpQD1oQV+VQUqV/bIO0BklmN/jER
X-Google-Smtp-Source: ABdhPJwoSAPGY/ULFe8OZsgvLm2cMSrLTlLnASYfzQd9JF6US2A/7azGbNSAW28HnG432v0cMH17QuvXHRM1AtG5Uuc=
X-Received: by 2002:a1f:9189:: with SMTP id t131mr6214029vkd.88.1592542134328; 
 Thu, 18 Jun 2020 21:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <42d41cc37586429590768c2cbaca516f@gtri.gatech.edu>
In-Reply-To: <42d41cc37586429590768c2cbaca516f@gtri.gatech.edu>
Date: Fri, 19 Jun 2020 00:48:18 -0400
Message-ID: <CAL7q81vNz0QxpjMeGzeqFoJdLqMkPq5cC=POvr3ic9=OHminNQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] uhd_image_builder_gui.py cannot select makefile.src
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
Content-Type: multipart/mixed; boundary="===============5881980383396201847=="
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

--===============5881980383396201847==
Content-Type: multipart/alternative; boundary="00000000000034f40605a8689c5d"

--00000000000034f40605a8689c5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

Are you using the rfnoc-devel branch as shown in the KB article? If so, I
would suggest switching to the UHD-3.15.LTS branch for both UHD and the
FPGA repo and using the master branch for gr-ettus. That might completely
solve your issue.

Jonathon

On Tue, May 26, 2020 at 7:02 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> When I run ./uhd_image_builder_gui.py, the GUI cannot select the
> makefile.src from my OOT block. The file is grayed-out when I try to sele=
ct
> it from the OOT directory:
> {USER_PREFIX}/src/{USER-OOT-moddir}/rfnoc/fpga-srcs/
>
>
>
> In addition, it gives the following warning message, which may or may not
> be related:
>
>
>
> Gtk-Message: GtkDialog mapped without a transient parent. This is
> discouraged.
>
>
>
>
>
> I=E2=80=99m following the guide to build the OOT gain block. I have writt=
en built
> the OOT gain block and run the test bench successfully and ran make insta=
ll.
>
>
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
>
>
> Any ideas?
>
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000034f40605a8689c5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>Are you using the rfnoc-devel =
branch as shown in the KB article? If so, I would suggest switching to the =
UHD-3.15.LTS branch for both UHD and the FPGA repo and using the master bra=
nch for gr-ettus. That might completely solve your issue.</div><div><br></d=
iv><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, May 26, 2020 at 7:02 PM Hodges, Jeff via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6468182103347877771WordSection1">
<p class=3D"MsoNormal">When I run ./uhd_image_builder_gui.py, the GUI canno=
t select the makefile.src from my OOT block. The file is grayed-out when I =
try to select it from the OOT directory: {USER_PREFIX}/src/{USER-OOT-moddir=
}/rfnoc/fpga-srcs/<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In addition, it gives the following warning message,=
 which may or may not be related:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Gtk-Message: GtkDialog mapped without a transient pa=
rent. This is discouraged.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m following the guide to build the OOT gai=
n block. I have written built the OOT gain block and run the test bench suc=
cessfully and ran make install.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_Development" target=3D"_blank">https://kb.ettus.com/Getting_Started_=
with_RFNoC_Development</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any ideas?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
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

--00000000000034f40605a8689c5d--


--===============5881980383396201847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5881980383396201847==--

