Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 378E3252611
	for <lists+usrp-users@lfdr.de>; Wed, 26 Aug 2020 06:17:27 +0200 (CEST)
Received: from [::1] (port=44272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAmsF-0006B2-Gs; Wed, 26 Aug 2020 00:17:23 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:41264)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1kAmsC-00065e-7K
 for usrp-users@lists.ettus.com; Wed, 26 Aug 2020 00:17:20 -0400
Received: by mail-qk1-f169.google.com with SMTP id o196so256566qke.8
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 21:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D7I16n6lgH6TDNQtIsTr8NuDCsF3AS5e001ua2dOAYI=;
 b=UW254puZ/PR1lYxOoafKh7WrTuTT0fQsZWPOErx0wJklM3J4jK8NEqClLxcLXhKsws
 OaTxXAgqbWiKjGfBtRu1uzT85RIAqnK/Or36MtoRwd3e12IiA0Qk9DbNyAL7TyyiaD7w
 2waLJUdC+TTx9GlUzCBIv2W58WfTlFjhieeX65JsY06ZYkDHnhOo0pqMAYxKdRRq/BhS
 YefpEWX117I95pew7whMSEV27ptsHBqTmu9ySX/A6TV7YVgEJ/OzUW+2p7IfUiIrGwfW
 cGbhPoKr+CKM1poNExzdNfMXUaXvtS3wuMn8IiNLMkudK8MudiS4fabIdT8ykmsqxjBM
 R/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D7I16n6lgH6TDNQtIsTr8NuDCsF3AS5e001ua2dOAYI=;
 b=HZhgppPNOQZgfxFFKKz9s6RiL6rt+XSSFiyrqmnhYZUwhfV2P/BRy6Y48nVGERhq76
 uA7JMelc7shGiAf7skJrJleC9955NUeHmPvl6BrwknsqHVRCVkx/r1GRcsDVE9WIXIh4
 G6uJ2E20WkARBBa4MFZQ+Zy1F90p85HiQ7M++0/luLdDc3LL5EEyESitD7cMcP+TX/yx
 YRPBQhC5BLzClVQrXB5bpOLaRSwMueG8PGhNZpZXaVCYNC5Q/p4T4aCvgm7kkyszMTGY
 yAU3Y9EVdZvwSom3gsti8gUezYZil1xfhi4Y14v9h3y31YzGdyIXfbzwovjpe6oR9ves
 LIBg==
X-Gm-Message-State: AOAM533jEXyOkB2YpLOiB8CoJhhBYI9VUDWSwAxCg/MhZNodud2mEqTV
 o5f/+EeA+1pcubzojQxhydFk8KmtShewD66gTxJjuhJIHkw=
X-Google-Smtp-Source: ABdhPJzPjPnK+ZDG0WGLxkA/Erho/59gcGKHZccXJ9wo5zhC5JucNFkHGWe5rs/ClTu38fTkcxzbV/+Ri8j6vIO3TCw=
X-Received: by 2002:a37:3d4:: with SMTP id 203mr1855395qkd.497.1598415399562; 
 Tue, 25 Aug 2020 21:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
 <79405f9e-125a-8947-5530-eca1e909e5b6@elitecoding.org>
In-Reply-To: <79405f9e-125a-8947-5530-eca1e909e5b6@elitecoding.org>
Date: Wed, 26 Aug 2020 06:16:28 +0200
Message-ID: <CA+w2Zyshn2yyJw9b0nhP_xAGSr75RGkJm0C8BvajtaFLG8kLxw@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] List of filters and where they are located
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============6823930565537307696=="
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

--===============6823930565537307696==
Content-Type: multipart/alternative; boundary="0000000000001832d805adc016a8"

--0000000000001832d805adc016a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok thanks a lotJulian, this is very helpful.
Does your example allow to list FPGA filters also ?

Le mar. 25 ao=C3=BBt 2020 =C3=A0 21:57, Julian Arnold <julian@elitecoding.o=
rg> a
=C3=A9crit :

> David,
>
> take a look at the ad9361 user guide [1]. It has all the information you
> are looking for.
>
> If you want to know which filters you can configure and how, take a look
> at [2]. It's a simple example I wrote quite a while back but it should
> still be good to get you started.
>
> Hope that helps!
>
> Cheers,
> Julian
>
> [1]
>
> https://form.analog.com/Form_Pages/Catalina/CatalinaDesign.aspx?prodid=3D=
AD9361
> [2] https://github.com/jarn0ld/uhd-filter-tool
>
> On 8/25/20 9:09 PM, David Carsenat via USRP-users wrote:
> > Hi, I am using a B205 and I'd just like to know what are the
> > difference filter stages (analog and digital) seen by the signal (both
> > Tx and Rx), in the AD936x and in the FPGA.
> > Another way to help me, should be to have a description of the filter
> > that I can address with the filter.hpp functions : Can I address and
> > change filters behaviours that are part only on FPGA or also the AD9361
> > filters ?
> >
> > Many thanks
> >
> > David
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--0000000000001832d805adc016a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok thanks a lotJulian, this is very helpful.<div>Does your=
 example allow to list FPGA filters also ?</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 25 ao=C3=BBt 2=
020 =C3=A0=C2=A021:57, Julian Arnold &lt;<a href=3D"mailto:julian@elitecodi=
ng.org">julian@elitecoding.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">David,<br>
<br>
take a look at the ad9361 user guide [1]. It has all the information you <b=
r>
are looking for.<br>
<br>
If you want to know which filters you can configure and how, take a look <b=
r>
at [2]. It&#39;s a simple example I wrote quite a while back but it should =
<br>
still be good to get you started.<br>
<br>
Hope that helps!<br>
<br>
Cheers,<br>
Julian<br>
<br>
[1] <br>
<a href=3D"https://form.analog.com/Form_Pages/Catalina/CatalinaDesign.aspx?=
prodid=3DAD9361" rel=3D"noreferrer" target=3D"_blank">https://form.analog.c=
om/Form_Pages/Catalina/CatalinaDesign.aspx?prodid=3DAD9361</a><br>
[2] <a href=3D"https://github.com/jarn0ld/uhd-filter-tool" rel=3D"noreferre=
r" target=3D"_blank">https://github.com/jarn0ld/uhd-filter-tool</a><br>
<br>
On 8/25/20 9:09 PM, David Carsenat via USRP-users wrote:<br>
&gt; Hi, I am using a B205 and I&#39;d just like to know what are the <br>
&gt; difference=C2=A0filter stages (analog and digital) seen by the signal =
(both <br>
&gt; Tx and Rx), in the AD936x and in the FPGA.<br>
&gt; Another way to help me, should be to have a description of the filter =
<br>
&gt; that I can address=C2=A0with the filter.hpp functions=C2=A0: Can I add=
ress=C2=A0and <br>
&gt; change filters behaviours that are part only on FPGA or also the AD936=
1 <br>
&gt; filters ?<br>
&gt; <br>
&gt; Many thanks<br>
&gt; <br>
&gt; David<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>

--0000000000001832d805adc016a8--


--===============6823930565537307696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6823930565537307696==--

