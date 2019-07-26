Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5558077215
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2019 21:28:29 +0200 (CEST)
Received: from [::1] (port=43378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hr5tB-0007sJ-CD; Fri, 26 Jul 2019 15:28:25 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:35525)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hr5t7-0007kW-QX
 for usrp-users@lists.ettus.com; Fri, 26 Jul 2019 15:28:21 -0400
Received: by mail-lj1-f181.google.com with SMTP id x25so52595484ljh.2
 for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2019 12:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=etAGgD86FvHaj3p1W1KHjg4klOr0453IIW2QefGF4gY=;
 b=YhoKjtg/PDlzzG6ecHp8FXz58FS7MUP42+uIXdFshXmtLZisid/yBGba3ZmlqoC9DT
 IogUVJf7FU0Swp1c5n3c2YEoyrDQt6l7Jgjab3fqAVnQAjQIu8ibAucruWrAK0icBXdP
 WdUx16ViNHhuVueMJ+/pJ2Kt+Z0drjbCo/K5mb0ewN+LvoalLs2nETeVu++W+bcpmiB2
 L/ltvV/elrSBZTfi/uZJ4t4gQTdumvKtlIqWWgEyZhT6HsiKpIfisLX7zHVknwS2XeTN
 DP9n1h9tDXthFToA/AMDRPhVhwbJtitw30vGlBxbjSuLc0Sxdifxs0od8pj82WhAaMoZ
 THJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=etAGgD86FvHaj3p1W1KHjg4klOr0453IIW2QefGF4gY=;
 b=rB5u0zo0YH0Rnc8a1/Be44OAHKDZ84gZwDXHoX2Va6huZBTWKzMlawG4EX66mzYVhk
 wmpbNiBuW8POnXQMzxOOCyVALTyael4vRPPlrNPkis0LUVgI+7czIT8wSdseIORqJOUD
 Ixby5KvqLG6gKMprnZUHUKyA23SdivVeeODmjkJ+ifeFan9UJf+SaoB8BO/R93ODS4gC
 rhU5VfxwmuF4RVok1XQe1ZH8pi/JnbKgFZjvMxO8dn5cUXYQAFasaSwd1DM/RuTb7V0y
 1zxdLNdS7uwXawSuI2P5j/PpucKVUC0o//5azsm1f74efAuZa3M+i8fE4w2/BSMz8u49
 4Gcw==
X-Gm-Message-State: APjAAAWHo4DqDS5KZzSQhLFGss1qUkbNCSwyGG7igUXK58APeju7EaO1
 E0rcmS8Xms4N/ZArfcmQZzUMLriAABi9DBfVxtRq4LyR
X-Google-Smtp-Source: APXvYqw9W4AYUbcQgCaF846wP/5Xgkloi1MA3BMLDshTpfBDW6hlqtTFEPaK3CPttG11P5fXgyp0lMaK3JUCVLVuwow=
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr22668221lji.84.1564169260050; 
 Fri, 26 Jul 2019 12:27:40 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3-nEyp_b0aas9fdbHsz+OBMpNWJA0JZd7ABbfjsGmULQw@mail.gmail.com>
In-Reply-To: <CANQ3h3-nEyp_b0aas9fdbHsz+OBMpNWJA0JZd7ABbfjsGmULQw@mail.gmail.com>
Date: Fri, 26 Jul 2019 15:28:42 -0400
Message-ID: <CANQ3h39nn6QZvWx7RN5gGc7KYJsL+4aon8GZ9ZCqFQVdsKfPsw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD install from source with Pybombs failed
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
Content-Type: multipart/mixed; boundary="===============4458608301266599466=="
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

--===============4458608301266599466==
Content-Type: multipart/alternative; boundary="0000000000001d2b17058e9a89ab"

--0000000000001d2b17058e9a89ab
Content-Type: text/plain; charset="UTF-8"

Attempting to install boost libraries shows that they are already the
latest version:

libboost-dev is already the newest version.
libboost-all-dev is already the newest version.

On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> Hello everyone,
>
> I've attempted to install UHD using Pybombs, following up on a previous
> issue I had due to my first binary install, but this is failing.
>
> $ pybombs prefix init -a default prefix/default/ -R gnuradio-default
>
> Results in:
>
> -- Configuring incomplete, errors occurred!
> See also
> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log".
> See also
> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.log".
> PyBOMBS.Packager.source - ERROR - Configuration failed after running at
> least twice.
> PyBOMBS.Packager.source - ERROR - Problem occurred while building package
> uhd:
> Configuration failed
> PyBOMBS.install_manager - ERROR - Error installing package uhd. Aborting.
>
> I have attached the full results, and it seems that it's not finding the
> boost library, however I'm not entirely sure.
>
>

--0000000000001d2b17058e9a89ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Attempting to install boost libraries shows that they=
 are already the latest version:</div><div style=3D"margin-left:40px"><br><=
/div><div style=3D"margin-left:40px">libboost-dev is already the newest ver=
sion.</div><div style=3D"margin-left:40px">libboost-all-dev is already the =
newest version.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi &lt;=
<a href=3D"mailto:saeidh@gmail.com">saeidh@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
ello everyone,</div><div><br></div><div>I&#39;ve attempted to install UHD u=
sing Pybombs, following up on a previous issue I had due to my first binary=
 install, but this is failing.</div><div><br></div><div style=3D"margin-lef=
t:40px">$ pybombs prefix init -a default prefix/default/ -R gnuradio-defaul=
t</div><div><br></div><div>Results in:</div><div><br></div><div style=3D"ma=
rgin-left:40px">-- Configuring incomplete, errors occurred!<br>See also &qu=
ot;/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log=
&quot;.<br>See also &quot;/home/saeid/prefix/default/src/uhd/host/build/CMa=
keFiles/CMakeError.log&quot;.<br>PyBOMBS.Packager.source - ERROR - Configur=
ation failed after running at least twice.<br>PyBOMBS.Packager.source - ERR=
OR - Problem occurred while building package uhd:<br>Configuration failed<b=
r>PyBOMBS.install_manager - ERROR - Error installing package uhd. Aborting.=
<br></div><div style=3D"margin-left:40px"><br></div>I have attached the ful=
l results, and it seems that it&#39;s not finding the boost library, howeve=
r I&#39;m not entirely sure.<br><div><div><div><br></div></div></div></div>
</blockquote></div>

--0000000000001d2b17058e9a89ab--


--===============4458608301266599466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4458608301266599466==--

