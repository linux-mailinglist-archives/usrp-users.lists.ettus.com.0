Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07B1220E9F
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 16:03:38 +0200 (CEST)
Received: from [::1] (port=60938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvi0X-0008Pt-Cp; Wed, 15 Jul 2020 10:03:37 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:46344)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jvi0T-0008Ae-ME
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 10:03:33 -0400
Received: by mail-ej1-f51.google.com with SMTP id p20so2240754ejd.13
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 07:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ISINcyBMYLAyaOYStHV4hOcG57zpoRxWOPe8QTE5l58=;
 b=syRQQp8HpW+i/cEJegKRsoOBzYbaObCxbPeduCkRqKHgq7c+RmQbW6p/BGbFigFQxA
 L3F09pRodb2ZNDHlE00jYDj87mhLn17Ueq0PgFZ3m/MZzNO8+PGta4j+j+2GdjRk4g2A
 hjfp7EdwdRt3cxTFOqmhNOZyPwbbqFnu9STMoOESNJU0S3HfE5fTctkeN9Mde2wLu/j4
 LsKP4pQgXlN1nFFOBQme/vlX3F25eqjElQ2IEj/HGpTr5kXVUITwzgiPYkk4Zx49e0je
 TPhzPXXcUwitKZ3xRxGsh3R/dNtRoKdkGBGoMtUXxq5e8r+1/C4H1zQv513r/Y1v70CB
 oFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ISINcyBMYLAyaOYStHV4hOcG57zpoRxWOPe8QTE5l58=;
 b=ptTkVXG4uCXm7qaCWhGte9jkwae/DYyNE8LlXLBqHu4n2ygdfh8s+fewsYGOp8D7km
 sGxi/ZUaosXqqrS3mCvXmCIdRThMJzFm1+CXyMlj61vxP4tV/WP+HOjYQUq3BiOl6dM2
 wgt6o6eg/zA1vCQnEVYZWAb49HOJZr/ii/+4oEF7iLqIPzNTyNB9VjqymN8RkbVN/bzb
 OwtIPeio0xclq5Hfi6RmyPH0lGjOcgvRIm8wjeIK9YGf5FRdQiD5Cc6tilTGyRxx6I1e
 WY6rT8IkJCcSjgkuigw+PsaxdzuMC3zq3H+/dZCfyw6BGUQd1og3Uo3ZdLOw8eHykXmh
 s2NA==
X-Gm-Message-State: AOAM530VMARYQ8nssumjA0JDMhoOUo7IwMFM44YVK32LuSrasxV14/aK
 2gssNpoyR5iEoBgNlvSd1JqxsOlxrAJxADBxwy4=
X-Google-Smtp-Source: ABdhPJxCToYOflnmpHkLyVVik0rHMwuVMYOKGs9hKkPu/m/PQghcUAepbtGLlbDctyhtwRZIrgUA/8xwlN4mWlbqbQU=
X-Received: by 2002:a17:906:e089:: with SMTP id
 gh9mr9272568ejb.482.1594821772537; 
 Wed, 15 Jul 2020 07:02:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
 <5F0F0A47.3020100@gmail.com>
In-Reply-To: <5F0F0A47.3020100@gmail.com>
Date: Wed, 15 Jul 2020 17:02:41 +0300
Message-ID: <CAMVZM+-rUvuBzq_zEwq-72imHMuQ+XaMePDYUvmJq2B69GJPUQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
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
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============7380832951222343080=="
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

--===============7380832951222343080==
Content-Type: multipart/alternative; boundary="0000000000003b762f05aa7b61b9"

--0000000000003b762f05aa7b61b9
Content-Type: text/plain; charset="UTF-8"

Hello,

thank you very much for your prompt reply.

i copied the .mender file by using the "scp" command.
Yes, i am running the command on the USRP.

I am not sure if this is a problem but --initially when i created the
.mender file, the host was running the UHD 3.14.0.0 and the USRP had
3.14.1.0. This is when the problem appeared first.
Then i changed the uhd to 3.14.1.0 on the host to match exactly the UHD on
the usrp, but the error still persists (or course i deleted the old file
from the usrp).

any ideas?

best,
P.


On Wed, Jul 15, 2020 at 4:53 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/15/2020 08:12 AM, Pavlos Basaras via USRP-users wrote:
> > Dear community,
> >
> > i am using the usrp n310 device. I am following the start up guide
> > from
> >
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection
> > for the initial setup of the usrp.
> >
> > I completed the installation instructions for the host from
> >
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
> > <
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux
> >
> > everything seemed ok.
> >
> > I can connect to the device through both ssh and by the serial port.
> >
> > I am trying to use mender to update the filesystem at the usrp device.
> >
> > I executed the command: sudo uhd_images_downloader -t mender -t n3xx
> --yes
> > at the host  to obtain usrp_n3xx_fs.mender, which i then copied to the
> > usrp.
> >
> > At the usrp i am using the command: mender -rootfs
> > /home/root/usrp_n3xx_fs.mender
> > to start the update of the system but i have the following
> > incompatibility issue :
> >
> > ERRO[0000] Installation failed: installer: failed to read and install
> > update: installer: image (device types [ni-sulfur-rev6-mender
> > ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender
> > ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not
> > compatible with device ni-sulfur-rev11-mender  module=rootfs
> > ERRO[0000] installer: failed to read and install update: installer:
> > image (device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender
> > ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6
> > ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with
> > device ni-sulfur-rev11-mender  module=main
> >
> >
> > How can i resolve this?
> >
> >
> > Details on the UHD intalled on both the host and the usrp device"
> >
> > HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> > Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
> > USRP uhd:   [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> > UHD_3.14.1.1-0-g0347a6d8
> >
> >
> > all the best,
> > Pavlos.
> >
> This seems a bit odd.
>
> Two things:
>
> (A)  How did you copy the .mender file over to the usrp?
> (B) (This seems really dumb, and I apologize in advance) are you sure
> that you're running the mender command ON the USRP?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003b762f05aa7b61b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>thank you very much f=
or your prompt reply.</div><div><br></div><div>i copied the .mender file by=
 using the &quot;scp&quot; command.</div><div>Yes, i am running the command=
 on the USRP.</div><div><br></div><div>I am not sure if this is a problem b=
ut --initially when i created the .mender file, the host was running the UH=
D 3.14.0.0 and the USRP had 3.14.1.0. This is when the problem appeared fir=
st.</div><div>Then i changed the uhd to 3.14.1.0 on the host to match exact=
ly the UHD on the usrp, but the error still persists (or course i deleted t=
he old file from the usrp).</div><div></div><div><br></div><div>any ideas?<=
br></div><div><br></div><div>best,</div><div>P.<br></div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jul 15, 2020 at 4:53 PM Marcus D. Leech via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 07/15/2020 =
08:12 AM, Pavlos Basaras via USRP-users wrote:<br>
&gt; Dear community,<br>
&gt;<br>
&gt; i am using the usrp n310 device. I am following the start up guide <br=
>
&gt; from <br>
&gt; <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Start=
ed_Guide#Setting_up_a_Serial_Console_Connection" rel=3D"noreferrer" target=
=3D"_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_G=
uide#Setting_up_a_Serial_Console_Connection</a><br>
&gt; for the initial setup of the usrp.<br>
&gt;<br>
&gt; I completed the installation instructions for the host from <br>
&gt; <a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-=
Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" rel=3D"noreferrer" target=3D=
"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_=
Toolchain_(UHD_and_GNU_Radio)_on_Linux</a> <br>
&gt; &lt;<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_O=
pen-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux" rel=3D"noreferrer" t=
arget=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open=
-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux</a>&gt;<br>
&gt; everything seemed ok.<br>
&gt;<br>
&gt; I can connect to the device through both ssh and by the serial port.<b=
r>
&gt;<br>
&gt; I am trying to use mender to update the filesystem at the usrp device.=
<br>
&gt;<br>
&gt; I executed the command: sudo uhd_images_downloader -t mender -t n3xx -=
-yes<br>
&gt; at the host=C2=A0 to obtain usrp_n3xx_fs.mender, which i then copied t=
o the <br>
&gt; usrp.<br>
&gt;<br>
&gt; At the usrp i am using the command: mender -rootfs <br>
&gt; /home/root/usrp_n3xx_fs.mender<br>
&gt; to start the update of the system but i have the following <br>
&gt; incompatibility issue :<br>
&gt;<br>
&gt; ERRO[0000] Installation failed: installer: failed to read and install =
<br>
&gt; update: installer: image (device types [ni-sulfur-rev6-mender <br>
&gt; ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender <br>
&gt; ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not <br>
&gt; compatible with device ni-sulfur-rev11-mender=C2=A0 module=3Drootfs<br=
>
&gt; ERRO[0000] installer: failed to read and install update: installer: <b=
r>
&gt; image (device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender <br>
&gt; ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6 <br>
&gt; ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with <br=
>
&gt; device ni-sulfur-rev11-mender=C2=A0 module=3Dmain<br>
&gt;<br>
&gt;<br>
&gt; How can i resolve this?<br>
&gt;<br>
&gt;<br>
&gt; Details on the UHD intalled on both the host and the usrp device&quot;=
<br>
&gt;<br>
&gt; HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;=
 <br>
&gt; Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8<br>
&gt; USRP uhd:=C2=A0 =C2=A0[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost=
_106600; <br>
&gt; UHD_3.14.1.1-0-g0347a6d8<br>
&gt;<br>
&gt;<br>
&gt; all the best,<br>
&gt; Pavlos.<br>
&gt;<br>
This seems a bit odd.<br>
<br>
Two things:<br>
<br>
(A)=C2=A0 How did you copy the .mender file over to the usrp?<br>
(B) (This seems really dumb, and I apologize in advance) are you sure <br>
that you&#39;re running the mender command ON the USRP?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003b762f05aa7b61b9--


--===============7380832951222343080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7380832951222343080==--

