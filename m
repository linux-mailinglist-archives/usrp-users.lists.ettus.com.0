Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E9D2B9BD7
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 21:12:20 +0100 (CET)
Received: from [::1] (port=40460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfqHn-0003eL-NQ; Thu, 19 Nov 2020 15:12:07 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:46469)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kfqHk-0003Sn-Ly
 for USRP-users@lists.ettus.com; Thu, 19 Nov 2020 15:12:04 -0500
Received: by mail-lj1-f172.google.com with SMTP id h23so7586483ljg.13
 for <USRP-users@lists.ettus.com>; Thu, 19 Nov 2020 12:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=rXoA9oIkqgLmRKR3J68fw/+CiMXSrtBr6DkMp0Yac+I=;
 b=BJs9PJBqXUJ07UMek18IgJH14VB3FP7TtCfjM1Yn8IdVgqI0nzEmHuvvtcsXhxOTvm
 4KzGFaDNeBaeC+zQHZL6bLIVBldcv5DMlqMxnEcubEMvulQXiqJe+AYh8LWLZxhTmdRF
 RLqkhK+eZJskXDqy+kOAZbGm+fiCgD1LfN0TRXjunm9v+kjdoD5zWzpxbJ9XGLRPQKKl
 QmZnZwcF8IVt7e4ZApdRgmukrM142HbfF/KRGiBHer7uVdAywHA8OFrVPI3Nn1XvgC62
 okRiuUQD3Ha41NwsgMoQMy/uBhCL/LH9j8hi3zX49q8RhzHhM/6mpjzLxqAcvsk40xE2
 n5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=rXoA9oIkqgLmRKR3J68fw/+CiMXSrtBr6DkMp0Yac+I=;
 b=Ou96sD6ArT1czlGzcFbYrNhILKzBsXXtsDeiQfdL8oxkp8EPoa7b6met4cWTdFs3M0
 T4wvxZmalPbpBoIYiTjubpB0jSTlctgU3rgv2e+aIZuMkUg05x5E97oyGXeLxO+X4duk
 1npqH4HKkLfij0ZDWK0cwLqFo7ShmZuG6SdaUZRfGkMK1vfBBINhgVvKzjL7FEI6mbcG
 4mN+puFhV7BwXTxv8W3C3rTeXCVXUCRKA0KdgpJfQStQVrpHilPsdNc4j+9OEZZlcFJx
 DIU3eqpt1thxxyZO0mmnbxT7EUounT4HBW2p3AHh9LeBQNDIkoFSATWaf6a0sbIy04Fl
 Mymw==
X-Gm-Message-State: AOAM530LgBStNvjU/GEdwI6k7+1nNcMALmnENCwMYMei7uEm+jTe+Mv1
 N2jtcX8ZSCx7AzDrNj4990yTFMaUw3tgUqWEpxweYA==
X-Google-Smtp-Source: ABdhPJzjFbbqTSbfUI8thlCJDlb+TM0XB0Zb6UACPojooqesydDsh3PBoWHQzaRFK3GmCBn3QHf/LXLR49q4bsUwgdg=
X-Received: by 2002:a2e:b8c3:: with SMTP id s3mr7041915ljp.181.1605816683357; 
 Thu, 19 Nov 2020 12:11:23 -0800 (PST)
MIME-Version: 1.0
References: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
 <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
In-Reply-To: <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
Date: Thu, 19 Nov 2020 13:11:11 -0700
Message-ID: <CAM+cdhKDOrpZ-Ghyv=NZgNSKaa1OTKNB+Xwd=G7aY4zyAMpu+w@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Ettus N310 LO IN RX Synchronization
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============2847860573966233345=="
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

--===============2847860573966233345==
Content-Type: multipart/alternative; boundary="000000000000fc813d05b47b54c0"

--000000000000fc813d05b47b54c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, the signal should be at +3dBm, the Vrms is ~300mV into a 50 ohm load.
The frequency of the signal is also twice the frequency of the signal I'm
trying to gather data on. However, due to the way the documentation is
phrased, I wasn't sure if 20MHz is too low of a frequency for the LO RX IN.

I have not tried the init_cals=3Dbasic argument. I can give that a shot and
report back.

-Chris

On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Are you inputting an LO signal at twice the desired frequency and at +3dB=
m?
>
> Have you tried adding init_cals=3DBASIC to your device ages?
>
> Sent from my iPhone
>
> > On Nov 19, 2020, at 2:26 PM, Christopher Flood via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hi all,
> >
> > I've seen some discussion about this on the email lists, but I'm still
> having a bit of trouble. I'm trying to use the LO IN RX ports on the fron=
t
> of the N310 to synchronize the oscillators on the two daughterboards. I w=
as
> thinking I could generate a signal on one of the TX/RX ports of the SDR a=
nd
> feed that into the LO IN RX ports at the appropriate frequency and power.
> However, when I test this setup in GNU Radio Companion I don't get any
> meaningful data, so I must be doing something wrong.
> >
> > The input signal that I want to sample is a 10MHz signal that is going
> into an RX2 port on the front end of the SDR. When I set the device
> argument "rx_lo_source=3Dinternal" and run it, the data I get looks exact=
ly
> how I would expect. When I change the device argument to
> "rx_lo_source=3Dexternal" and run it, I don't get anything that makes sen=
se.
> >
> > Am I using the LO IN RX ports correctly? The documentation doesn't say
> much besides power and frequency ranges.
> >
> > Any help or advice would be much appreciated.
> >
> > -Chris
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> >
> http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74=
BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYI=
CiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFS=
QP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJF=
NSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC=
2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE0=
3mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettu=
s.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>
>

--000000000000fc813d05b47b54c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Yes, the signal should be at +3dBm, the Vrms is ~300=
mV into a 50 ohm load. The frequency of the signal is also twice the freque=
ncy of the signal I&#39;m trying to gather data on. However, due to the way=
 the documentation is phrased, I wasn&#39;t sure if 20MHz is too low of a f=
requency for the LO RX IN.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I have not tried the init_cals=3Dbasic argument. I can give that =
a shot and report back.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">-Chris=C2=A0<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Are you inputting an LO=
 signal at twice the desired frequency and at +3dBm?<br>
<br>
Have you tried adding init_cals=3DBASIC to your device ages?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Nov 19, 2020, at 2:26 PM, Christopher Flood via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferr=
er">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I&#39;ve seen some discussion about this on the email lists, but I&#39=
;m still having a bit of trouble. I&#39;m trying to use the LO IN RX ports =
on the front of the N310 to synchronize the oscillators on the two daughter=
boards. I was thinking I could generate a signal on one of the TX/RX ports =
of the SDR and feed that into the LO IN RX ports at the appropriate frequen=
cy and power. However, when I test this setup in GNU Radio Companion I don&=
#39;t get any meaningful data, so I must be doing something wrong. <br>
&gt; <br>
&gt; The input signal that I want to sample is a 10MHz signal that is going=
 into an RX2 port on the front end of the SDR. When I set the device argume=
nt &quot;rx_lo_source=3Dinternal&quot; and run it, the data I get looks exa=
ctly how I would expect. When I change the device argument to &quot;rx_lo_s=
ource=3Dexternal&quot; and run it, I don&#39;t get anything that makes sens=
e. <br>
&gt; <br>
&gt; Am I using the LO IN RX ports correctly? The documentation doesn&#39;t=
 say much besides power and frequency ranges. <br>
&gt; <br>
&gt; Any help or advice would be much appreciated.<br>
&gt; <br>
&gt; -Chris<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-G=
rSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pz=
OtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7d=
JfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrw=
Nqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QN=
CrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIo=
Se5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2=
F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">http://secure-web.cisco.com/1r=
pFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFM=
F-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUB=
V2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_Ko=
ENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ=
7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3j=
bvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8m=
CGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusr=
p-users_lists.ettus.com</a><br>
<br>
</blockquote></div></div></div>

--000000000000fc813d05b47b54c0--


--===============2847860573966233345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2847860573966233345==--

