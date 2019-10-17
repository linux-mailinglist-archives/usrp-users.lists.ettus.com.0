Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F59EDB339
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2019 19:25:04 +0200 (CEST)
Received: from [::1] (port=37974 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iL9WI-0002yu-4z; Thu, 17 Oct 2019 13:25:02 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:42041)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iL9WD-0002qo-Rz
 for usrp-users@lists.ettus.com; Thu, 17 Oct 2019 13:24:57 -0400
Received: by mail-ot1-f46.google.com with SMTP id c10so2566038otd.9
 for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2019 10:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m/IziHKI/AHQYPC/1Dcv1aBJuNtFuTpaWcHuULJz9I8=;
 b=L48CAcD2EvpWZUBZsKdaEQ5/jOcYENhOq5h0wldMbS68p0x3JtpojWSilTPQmV45Vd
 4gAZWEvKgiyorapFyVduBkNIsDty4Gc2cyrMk6tzn2fkOb/Sew2iNAcqGZRID0gLdwi6
 BATS/cmLTaNUEWRw1yE2tS3BSm/pHSF2icGUZnbfL/pRrXX9HnOLbavIjxjqeL7B3tsM
 x3gLogeeJ0/OqKHWMq9IW8PtVad1ETLExzRJNvjvNmADA1x4z8Yw1P0+jLnNYeyP05+5
 Nqe6YWyuGLOnvhBNqRDEBtW5zBg5zSLvbA7p8wOHFhOBg8OoDp0SFXqhyOgkKswlO+c+
 Rh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m/IziHKI/AHQYPC/1Dcv1aBJuNtFuTpaWcHuULJz9I8=;
 b=l2lAdNvcHji7xwbKhI7O6X+NLOoRiih1PDS/gyHCA9gdkPWkMoaQ7pirspMwknh/L0
 rp509DdhLs6y4ceKvVQBrfFdZslFC5pv0gHEao8VCHunVVUX0XG1H0yzPM5I6N6h0ghH
 899CYUQLU7WE3jH4nYcfx5t5vlMWm5BiAgcVik1YQ2fbxi0nk+f2yPKEgyjqC14lZUWG
 iTdUrQs9JcBXFiSLPmhDOaJ0kFczVlBMFdOzsbtJhf+cWTsBPmqe3LOJDyfu0YsC7uFR
 hGYZv8c6YMjAfX950djxSImIyk6uW6imktoEy8EDJB4zp1RqSSovXYNaiOVWhcV33J7Z
 FdLg==
X-Gm-Message-State: APjAAAXLN7Q233cnDgorlhuSauX717GODEtOCBcDsEM4d9MmUoK/gvpe
 3KRjySqUbuZEl9sMO/1dbrLm8IrJQFU9cSuLLK9hJBNzOdbbBQgn
X-Google-Smtp-Source: APXvYqzxmBS36g4M+vuxExyklGzgZlv24zY5j+asXyFhSPIaDwsj0/9dyDRrh5ySpE6wBog1y934bsJ+hicbcIgi+N8=
X-Received: by 2002:a9d:6a50:: with SMTP id h16mr4030195otn.120.1571333057011; 
 Thu, 17 Oct 2019 10:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
 <1956590264.2783788.1569054790193@mail.yahoo.com>
 <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
 <1152458035.2395130.1571195474088@mail.yahoo.com>
 <CANf970bSqxR19HC-33jLx6N5qgYaU7ROqeYzV+7OPviH5qHq=w@mail.gmail.com>
 <1919960921.2923231.1571254501791@mail.yahoo.com>
In-Reply-To: <1919960921.2923231.1571254501791@mail.yahoo.com>
Date: Thu, 17 Oct 2019 13:24:06 -0400
Message-ID: <CAGNhwTOSMW54nN6mdXt=1PkzWWgRnqpx6t5x=E-cKHo3nMZf4g@mail.gmail.com>
To: Arun kumar Verma <arun.verma@eiwave.com>
Subject: Re: [USRP-users] X310 and 8bit complex sampling
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0249177675114822546=="
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

--===============0249177675114822546==
Content-Type: multipart/alternative; boundary="000000000000aff4f305951e7c20"

--000000000000aff4f305951e7c20
Content-Type: text/plain; charset="UTF-8"

Hi Arun - Short answer: No, the X310 doesn't support "sc8" OTW yet; we're
still working on the RFNoC converter from "sc16" to "sc8". As noted, the
X310 provides dual SPF+ 1GbENET and 10GbENET, and obtaining the ENET
hardware interface to a host computer is very doable, providing a lot of
possible sample rates.

When using the Akitio Node (Lite etc), we've found that the Mellanox
"MCX4121A-ACAT ConnectX-4" provides very good compatibility with both the
host computer and UHD, especially if you're using DPDK for data transport
between the X310 and the host computer. Hope this is useful! - MLD

On Wed, Oct 16, 2019 at 3:35 PM Arun kumar Verma via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Users
>
> I am trying to achieve 50MHz BW (25MHz Each Channel)  with X310 and TwinRX
> using 1G Ethernet. I went through some of the forums regrading this and
> found that X310 does not support 8-bit IQ samples as mentioned in below
> link.
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-February/046123.html
>
> Is still 8-bit IQ samples are not supported in the latest UHD ?
>
> We are looking for a solution for 50MHz (25MHz Channel each) with laptop
> processing (Ubuntu).  While going through some comments from different
> users I found that using T3NL-T3DIY-AKTU (
> https://www.akitio.com/expansion/node-lite)  and  Intel X710-DA2 more
> than 50MHz BW can be achieved. Is there any other solution available for
> this kind of bandwidth as we are looking for some compact solution.
>
>
> Regards,
> Arun Verma
>

--000000000000aff4f305951e7c20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Arun - Short answer: No, the X310 does=
n&#39;t support &quot;sc8&quot; OTW yet; we&#39;re still working on the RFN=
oC converter from &quot;sc16&quot; to &quot;sc8&quot;. As noted, the X310 p=
rovides dual SPF+=C2=A01GbENET and 10GbENET, and obtaining the ENET hardwar=
e interface to a host computer is very doable, providing a lot of possible =
sample rates.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">When using t=
he Akitio Node (Lite etc), we&#39;ve found that the Mellanox &quot;MCX4121A=
-ACAT ConnectX-4&quot; provides very good compatibility with both the host =
computer and UHD, especially if you&#39;re using DPDK for data transport be=
tween the X310 and the host computer. Hope this is useful! - MLD</div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">On Wed, Oct 16, 2019 at 3:35 PM Arun=
 kumar Verma via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr" st=
yle=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><=
font size=3D"3">Hi Users</font></div><div dir=3D"ltr" style=3D"font-family:=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><font size=3D"3"><br=
></font></div><div dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif"><font size=3D"3">I am trying to achieve 50M=
Hz BW (25MHz Each Channel)=C2=A0 with X310 and TwinRX using 1G Ethernet. I =
went through some of the forums regrading this and found that X310 does not=
 support 8-bit IQ samples as mentioned in below link.=C2=A0</font></div><di=
v dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Ari=
al,sans-serif"><font size=3D"3"><br></font></div><div dir=3D"ltr" style=3D"=
font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><font si=
ze=3D"3"><span><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists=
.ettus.com/2016-February/046123.html" style=3D"color:rgb(51,143,233);text-d=
ecoration-line:underline;font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif" rel=3D"nofollow" target=3D"_blank">http://lists.ettus.com/=
pipermail/usrp-users_lists.ettus.com/2016-February/046123.html</a></span><b=
r></font></div><div dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&q=
uot;,Helvetica,Arial,sans-serif"><font size=3D"3"><br></font></div><div dir=
=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif"><font size=3D"3">Is still 8-bit IQ samples are not supported in t=
he latest UHD ?</font></div><div dir=3D"ltr" style=3D"font-family:&quot;Hel=
vetica Neue&quot;,Helvetica,Arial,sans-serif"><font size=3D"3"><br></font><=
/div><div dir=3D"ltr"><font size=3D"3">We are looking for a solution for 50=
MHz (25MHz Channel each) with laptop processing (Ubuntu).=C2=A0 While going=
 through some comments from different users I found that using=C2=A0<span s=
tyle=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(97,97,97)">T3NL-T3=
DIY-AKTU ( <span><a href=3D"https://www.akitio.com/expansion/node-lite" rel=
=3D"nofollow" target=3D"_blank">https://www.akitio.com/expansion/node-lite<=
/a>)=C2=A0 and=C2=A0=C2=A0</span></span><font face=3D"Arial, Helvetica, san=
s-serif"><span style=3D"white-space:pre-wrap">Intel X710-DA2 more than 50MH=
z BW can be achieved. Is there any other solution available for this kind o=
f bandwidth as we are looking for some compact solution.</span></font><span=
 style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(97,97,97)"><div>=
<br></div><div><br></div></span></font></div><div style=3D"font-family:&quo=
t;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px"><div styl=
e=3D"font-family:Helvetica,Arial,sans-serif;font-size:16px"><div>Regards,</=
div><div>Arun Verma</div></div></div></blockquote></div><div dir=3D"ltr" cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div></div></div></div></div>

--000000000000aff4f305951e7c20--


--===============0249177675114822546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0249177675114822546==--

