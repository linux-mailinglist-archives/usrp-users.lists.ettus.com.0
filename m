Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EFD773FE
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jul 2019 00:25:27 +0200 (CEST)
Received: from [::1] (port=46026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hr8eT-0002XV-NQ; Fri, 26 Jul 2019 18:25:25 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:36825)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hr8eQ-0002TQ-2d
 for usrp-users@lists.ettus.com; Fri, 26 Jul 2019 18:25:22 -0400
Received: by mail-io1-f41.google.com with SMTP id o9so4321232iom.3
 for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2019 15:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iGBZGG3HOgpklnGu4rOAu2Lf6nNZ6+QdjFVT9Jm8zg8=;
 b=YCSkw5P9OhMp5KOurDpOieXS1C25wtE8ol30uUlSbv31+UphvbSclBECkY6siICW1B
 I7YeclfkSPBdp1eXeVhiVMMNm/VtszUPbJyDbt9sCOz/Buq8YeM53A9ASuwHhjpmudDu
 D2eh4zjLCBSHA/OjUX+2pgA4VNg9ZVAr/VN1UZrss5/lLdpB0gUPfTHwpp1/oRAIgP25
 z+8lUWkZty0Bpru+6xUgihd8zrr+/l6zsABSWIfeO7heq1ImE6MzyRWGsTHaD71sNRHC
 SUzuTf2AsWkcJPoRPV5Q8FaoTg/NiOsmSxa7FSAi/rDBDk0RiBJzWOVOket3Z3g0gVXs
 k1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iGBZGG3HOgpklnGu4rOAu2Lf6nNZ6+QdjFVT9Jm8zg8=;
 b=r9XREsobP6wHc/BURBeniBrSI9ytOGRZrqCMifevAPXxV1sOvSm7ye+y0xzrOXuz7N
 SIKAQ9qqIBbWi2cnbmOwbZV7/XLEmLKRq+Jdeqwa7eGJSBEJ3Zz4tly+W3RP7Nyk8unq
 GFsagiUpsInlt+n64tOmEnFw5oRsN622bnVxfPxB+EbbKSjdLSiUuUuPi7TPf/rp1JCM
 aug8hKASBofaizQ4EWyZDcBYOafRWkrM2FquYPUCeJOjX2lN5ai20e12H6OcO1AN4xPE
 GZhCx/RivmhGd/dkYTHvG4+3Vg+3x/xJ8o3TfR8stEptD/e1LMN+VXVU5XfSvUxbfcX+
 HnmQ==
X-Gm-Message-State: APjAAAVbGjg5KbLoHsjlmfQGkWcwaIA+04zubFFM74fu5Yu8islxyqCX
 KdnR1Yr1EW9gcXK5WbcFqEJqFREJIHlWJ/V9tho=
X-Google-Smtp-Source: APXvYqyjeS+UnUuknQSgwl/EEBZmYsaupZD7PNIJO+b/GzydnI8i5KIgkpmSfgp4XLbkhwhNhW6sREFys2oQVVt/Wp0=
X-Received: by 2002:a02:242a:: with SMTP id f42mr98887958jaa.42.1564179881245; 
 Fri, 26 Jul 2019 15:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3-nEyp_b0aas9fdbHsz+OBMpNWJA0JZd7ABbfjsGmULQw@mail.gmail.com>
 <CANQ3h39nn6QZvWx7RN5gGc7KYJsL+4aon8GZ9ZCqFQVdsKfPsw@mail.gmail.com>
In-Reply-To: <CANQ3h39nn6QZvWx7RN5gGc7KYJsL+4aon8GZ9ZCqFQVdsKfPsw@mail.gmail.com>
Date: Fri, 26 Jul 2019 15:24:30 -0700
Message-ID: <CAKJyDkLvUjxD+DaELQxJ4kem1YLQG8NwYKb=RuBNSyw7imn27Q@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4982918647758903748=="
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

--===============4982918647758903748==
Content-Type: multipart/alternative; boundary="0000000000002fd6c0058e9d0204"

--0000000000002fd6c0058e9d0204
Content-Type: text/plain; charset="UTF-8"

It looks like UHD didn't build because it's missing the Python library
numpy.   You can try "pip install numpy" and rerunning PyBombs, but to be
honest you might have better luck starting over and installing from source
by following these instructions--
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux

On Fri, Jul 26, 2019 at 12:28 PM Saeid Hashemi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Attempting to install boost libraries shows that they are already the
> latest version:
>
> libboost-dev is already the newest version.
> libboost-all-dev is already the newest version.
>
> On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> Hello everyone,
>>
>> I've attempted to install UHD using Pybombs, following up on a previous
>> issue I had due to my first binary install, but this is failing.
>>
>> $ pybombs prefix init -a default prefix/default/ -R gnuradio-default
>>
>> Results in:
>>
>> -- Configuring incomplete, errors occurred!
>> See also
>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log".
>> See also
>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.log".
>> PyBOMBS.Packager.source - ERROR - Configuration failed after running at
>> least twice.
>> PyBOMBS.Packager.source - ERROR - Problem occurred while building package
>> uhd:
>> Configuration failed
>> PyBOMBS.install_manager - ERROR - Error installing package uhd. Aborting.
>>
>> I have attached the full results, and it seems that it's not finding the
>> boost library, however I'm not entirely sure.
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002fd6c0058e9d0204
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It looks like UHD didn&#39;t build because it&#39;s missin=
g the Python library numpy.=C2=A0 =C2=A0You can try &quot;pip install numpy=
&quot; and rerunning PyBombs, but to be honest you might have better luck s=
tarting over and installing from source by following these instructions--<d=
iv><div><div><a href=3D"https://kb.ettus.com/Building_and_Installing_the_US=
RP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" target=3D"_blank">ht=
tps://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(=
UHD_and_GNU_Radio)_on_Linux</a></div></div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 26, 2019 at 12=
:28 PM Saeid Hashemi via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Attempting to in=
stall boost libraries shows that they are already the latest version:</div>=
<div style=3D"margin-left:40px"><br></div><div style=3D"margin-left:40px">l=
ibboost-dev is already the newest version.</div><div style=3D"margin-left:4=
0px">libboost-all-dev is already the newest version.<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 2=
6, 2019 at 3:26 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" ta=
rget=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello everyone,</div=
><div><br></div><div>I&#39;ve attempted to install UHD using Pybombs, follo=
wing up on a previous issue I had due to my first binary install, but this =
is failing.</div><div><br></div><div style=3D"margin-left:40px">$ pybombs p=
refix init -a default prefix/default/ -R gnuradio-default</div><div><br></d=
iv><div>Results in:</div><div><br></div><div style=3D"margin-left:40px">-- =
Configuring incomplete, errors occurred!<br>See also &quot;/home/saeid/pref=
ix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log&quot;.<br>See also=
 &quot;/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.=
log&quot;.<br>PyBOMBS.Packager.source - ERROR - Configuration failed after =
running at least twice.<br>PyBOMBS.Packager.source - ERROR - Problem occurr=
ed while building package uhd:<br>Configuration failed<br>PyBOMBS.install_m=
anager - ERROR - Error installing package uhd. Aborting.<br></div><div styl=
e=3D"margin-left:40px"><br></div>I have attached the full results, and it s=
eems that it&#39;s not finding the boost library, however I&#39;m not entir=
ely sure.<br><div><div><div><br></div></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002fd6c0058e9d0204--


--===============4982918647758903748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4982918647758903748==--

