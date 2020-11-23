Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DAD2C191B
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 00:10:35 +0100 (CET)
Received: from [::1] (port=51738 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khKyc-00008t-9y; Mon, 23 Nov 2020 18:10:30 -0500
Received: from mail-lj1-f181.google.com ([209.85.208.181]:36044)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1khKyY-0008UY-Qg
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 18:10:26 -0500
Received: by mail-lj1-f181.google.com with SMTP id i17so19918065ljd.3
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 15:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=187dcNOQtLT70URUc6nBBn//Y7DqhLdfjkUothcc80c=;
 b=dDAXuHaLsGbkLwRGj4Duy3WKVkh7Baxn5NZWDpp0vmT6iS8fzzTLLWYdl5vGWE9sdh
 fxwj1VM1NpXDrlpxjz2VCs6icxGJg7Sx1A07igcT/zZnJLIFu+Ff5kXlFyMZT45AvPaU
 4CwLZU4rSCvx+EONHEOqQ+c5NDqAyvDBnPUgLJIH6KAacbXpGaqdOpjLUmW3sMhGy4iI
 auxlJei7vnLyQMOcBvC6a6kRfy3b0uWLJ83WlTa0Kn+O0FgBIu25YJZ+pyxNqM9pO0zn
 jD18niBTwVZs9R+EsuxVhDDv/QEzVu/RkBdYEdjIs7bWrVl8i+6SYXY4kU+Ahlje7hUX
 xw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=187dcNOQtLT70URUc6nBBn//Y7DqhLdfjkUothcc80c=;
 b=RopWO9gBuHGerLhlrlZTHUzSihUMbwRGjdly0xgP6t2To+B4D5QzBp6BP8SQehBSVy
 UQM0K5vi0K8Ls0xlul3utG++hO4WyW6HtxxbWvwgco/p8bzJdM9SxPWVvuaFuw9vePGL
 t2VeC3UKQRpPg4QnCyD9GTHdjx/pGVgRCgBWr5ZNWHbISSoQi6/cQWy7+ns8BQeeHIvL
 optJwivh9zEghiVKdMoCET4bvra4Kbf4SyGZMgduskLl7L4pDaVw7w/3s6ZoBPDyAvTJ
 ko7FPqwX7cxGLD2PBCBmviebf8R1R1ZprQaM5k4ivH0I4l55HqUYsT9VzQhUCo4iB/VM
 j+GA==
X-Gm-Message-State: AOAM5315rBjeQnJWb2Nchz5f++mP1XGFCvKFjzcFiqicYt40hFFEi6SE
 AJZV5pgu19jZxOgXxT4L4hR1vwPJvDTGRaBEZYmjHA==
X-Google-Smtp-Source: ABdhPJzGqVV4xuEOoJ5wQ3ZTmHXNX2kn6YR3uykHvQ2PiW9S7qHJJCBPVW2ggbXN3eZHbuipOqliIMSsAdNLCSbEHWI=
X-Received: by 2002:a2e:95d7:: with SMTP id y23mr643990ljh.461.1606172985293; 
 Mon, 23 Nov 2020 15:09:45 -0800 (PST)
MIME-Version: 1.0
References: <3d725267-832c-ea0f-ae74-8040f9d0504a@insa-toulouse.fr>
 <b18a6a8d-57fe-8d67-eb21-3a4bb268c653@balister.org>
 <01853c24-f428-2970-baee-5ad822fdbdb6@insa-toulouse.fr>
In-Reply-To: <01853c24-f428-2970-baee-5ad822fdbdb6@insa-toulouse.fr>
Date: Mon, 23 Nov 2020 15:09:34 -0800
Message-ID: <CAKJyDkK_rL1vHpLgRwT5MNJU=UeFL2_yrVnqJZDZhJomDTTmXA@mail.gmail.com>
To: =?UTF-8?Q?S=C3=A9bastien_DI_MERCURIO?= <dimercur@insa-toulouse.fr>
Cc: Philip Balister <philip@balister.org>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP E100/E110 linux update
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============8445955960605622706=="
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

--===============8445955960605622706==
Content-Type: multipart/related; boundary="0000000000003d562205b4ce4a9f"

--0000000000003d562205b4ce4a9f
Content-Type: multipart/alternative; boundary="0000000000003d562105b4ce4a9e"

--0000000000003d562105b4ce4a9e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is a legacy Ettus E100 github repo that may or may not be useful:
https://github.com/EttusResearch/ettus_oe

This product has been EOL for >5 years, so as Philip points out, the
institutional memory of it is basically non-existent.

On Mon, Nov 23, 2020 at 5:22 AM S=C3=A9bastien DI MERCURIO via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Philips,
>
> thank you for your answer. I will have a look to your git repository. I'm
> not very good with linux kernel intrinsics but I will try to have driver
> work with newer kernel.
>
> If I succed, i will post my results.
>
> Thank you !
> Le 23/11/2020 =C3=A0 14:10, Philip Balister a =C3=A9crit :
>
> On 11/23/20 7:09 AM, S=C3=A9bastien DI MERCURIO via USRP-users wrote:
>
> Hi,
>
> I've got several USRP E100/E110 with outdated Linux and Gnuradio
> software on it. So I decided to build a Yocto image, more up-to-date and
> succeeded in after several tries.
> The new image boots and run a reasonable updated version of Linux and
> Gnuradio.
>
> But, because of Ettus proprietary kernel driver, I cannot connect to
> FPGA and so the board is useless.
>
> It's an open driver, just non of us remember how it works. I did find
> the code:
> https://github.com/balister/linux-omap-philip
>
> The linux DMA architecture has likely changed, so the driver will need
> work, but the code is out there. Let me know if you have questions, it
> would be great to see these running. I'll answer as best I can. It has
> been like 6-7 years since I last looked at it though.
>
> Using it like an N-series is likely not possible. The fpga is connected
> to the Overo via the GPMC (General Purpose Memory Controller).
>
> Philip
>
>
> My questions are:
>
> - Did someone achieve to get an updated Linux base and Gnuradio
> software, with working FPGA communications (whatever the method)
>       - Is it possible to get source code of Ettus kernel driver, as the
> board is now End-of-life
>       - Is it possible to enable Ethernet communication pass-throughto
> FPGA, a bit like in N series, in order to use it over Ethernet(not
> standalone)
>
> Regards!
>
> Sebastien
>
>
>
>
>
>
>
>
>
> .
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> --
> [image: INSA Toulouse]
>
> *S=C3=A9bastien DI MERCURIO*
> *Ing=C3=A9nieur d'=C3=A9tude Syst=C3=A8mes embarqu=C3=A9s et IoT*
> D=C3=A9partement GEI
> T=C3=A9l. : 05 61 55 98 34
> dimercur@insa-toulouse.fr
>
> INSA Toulouse
> 135 avenue de Rangueil
> 31077 Toulouse CEDEX 04
>
> *www.insa-toulouse.fr <http://www.insa-toulouse.fr> *
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003d562105b4ce4a9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is a legacy Ettus E100 github repo that may or may n=
ot be useful:=C2=A0<a href=3D"https://github.com/EttusResearch/ettus_oe">ht=
tps://github.com/EttusResearch/ettus_oe</a><div><br></div><div>This product=
 has been EOL for &gt;5 years, so as Philip points out, the institutional m=
emory of it is basically non-existent.</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 23, 2020 at 5:22 AM=
 S=C3=A9bastien DI MERCURIO via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p><font size=3D"-1">Hi Philips,</font></p>
    <p><font size=3D"-1">thank you for your answer. I will have a look to
        your git repository. I&#39;m not very good with linux kernel
        intrinsics but I will try to have driver work with newer kernel.</f=
ont></p>
    <p><font size=3D"-1">If I succed, i will post my results.</font></p>
    <p><font size=3D"-1">Thank you !</font><br>
    </p>
    <div>Le 23/11/2020 =C3=A0 14:10, Philip Balister
      a =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>On 11/23/20 7:09 AM, S=C3=A9bastien DI MERCURIO via USRP-users w=
rote:
</pre>
      <blockquote type=3D"cite">
        <pre>Hi,

I&#39;ve got several USRP E100/E110 with outdated Linux and Gnuradio
software on it. So I decided to build a Yocto image, more up-to-date and
succeeded in after several tries.
The new image boots and run a reasonable updated version of Linux and
Gnuradio.

But, because of Ettus proprietary kernel driver, I cannot connect to
FPGA and so the board is useless.
</pre>
      </blockquote>
      <pre>It&#39;s an open driver, just non of us remember how it works. I=
 did find
the code:

<a href=3D"https://github.com/balister/linux-omap-philip" target=3D"_blank"=
>https://github.com/balister/linux-omap-philip</a>

The linux DMA architecture has likely changed, so the driver will need
work, but the code is out there. Let me know if you have questions, it
would be great to see these running. I&#39;ll answer as best I can. It has
been like 6-7 years since I last looked at it though.

Using it like an N-series is likely not possible. The fpga is connected
to the Overo via the GPMC (General Purpose Memory Controller).

Philip

</pre>
      <blockquote type=3D"cite">
        <pre>My questions are:

- Did someone achieve to get an updated Linux base and Gnuradio
software, with working FPGA communications (whatever the method)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Is it possible to get source code of Ettus=
 kernel driver, as the
board is now End-of-life
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Is it possible to enable Ethernet communic=
ation pass-throughto
FPGA, a bit like in N series, in order to use it over Ethernet(not
standalone)

Regards!

Sebastien









.



_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>

</pre>
      </blockquote>
    </blockquote>
    <div>-- <br>
      <div>
        <img src=3D"cid:175f75d6d4d35421bd31" alt=3D"INSA Toulouse" width=
=3D"200">
      </div>
      <br>
      <div style=3D"font-size:12px;color:rgb(94,94,93);font-family:arial,ve=
rdana">
        <b>S=C3=A9bastien DI MERCURIO</b> <br>
        <b>Ing=C3=A9nieur d&#39;=C3=A9tude Syst=C3=A8mes embarqu=C3=A9s et =
IoT</b> <br>
        D=C3=A9partement GEI </div>
      <div style=3D"font-size:12px;color:rgb(94,94,93);font-family:arial,ve=
rdana">
        T=C3=A9l. : 05 61 55 98 34 <br>
        <a href=3D"mailto:dimercur@insa-toulouse.fr" style=3D"font-size:12p=
x;color:rgb(94,94,93);font-family:arial,verdana;text-decoration:none" targe=
t=3D"_blank">dimercur@insa-toulouse.fr</a><br>
        <br>
      </div>
      <div>
        INSA Toulouse <br>
        135 avenue de Rangueil <br>
        31077 Toulouse CEDEX 04<br>
        <b><a href=3D"http://www.insa-toulouse.fr" style=3D"font-size:12px;=
color:rgb(228,38,18);font-family:arial,verdana;text-decoration:none" target=
=3D"_blank">www.insa-toulouse.fr</a><b><br>
          </b></b></div>
      <b><b> </b></b></div>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003d562105b4ce4a9e--
--0000000000003d562205b4ce4a9f
Content-Type: image/jpeg; name="bbkebdlbmdgbkdig."
Content-Disposition: inline; filename="bbkebdlbmdgbkdig."
Content-Transfer-Encoding: base64
Content-ID: <175f75d6d4d35421bd31>
X-Attachment-Id: 175f75d6d4d35421bd31

iVBORw0KGgoAAAANSUhEUgAAAMgAAAAsCAMAAAAXUwc4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAwBQTFRF+dK9/f7/ent95kYs4wwZ+M21+vr6Wlpc4yAZ5TIj63NNYWJk
SEhK8vLz/fXxUlJU4xsZ9bGRz9DS3N3e4QAa51Iy7X1V/fv69rqd4yoh4eLi5kUnm5ye/ObZ86WC
5kks7YNd/fPs5CcY9K2NcnN15Dkk8qF9+Mat6WlE4hAZ2Nna7u7u8JNu9fX17oliamts+dXBzM3P
+t3N+tbD9beZ8PDx1dbX4x0Z98Cl4iQZubu8goOF/ezi9r2hnZ6gxMXGysvMwcLEuLm7/fHqhYaI
yMnK8Zl1/OjdxcbIoqOlo6SmmZqckZKUpaao//j0p6mrwMHCh4iK3t/gjpCR0tPUsbO07oZg+uDR
4hUZqquttLW3ra+w8Zx4k5WX0NHSvb/A6F064ycZy8zN4gYa6WE+np+h/fj0RERGiYqMrK2v/vv6
tre5fX6A/fTu+trJ5kww/O3ljY+R4x8f8JZx98Wr/v79sLKzlZaYvL2/5T4o/Ovg75Bq86qJ9KmK
6m5I4zAf+uHT5OTl4iIe63ZRgIGD5Cwc/vn24ykZZWZo+tfFbW5w9rWW+tzKTU1P741p6GNB9LKU
++TW6Fg1VlZY4xkcdXZ451o6XV1f4y0h4yca/fn3++vi7X9Y4yQZ5CkY4ycg51k351Y04hUc7HpU
7HdQ4yoc/v///v7+5CMZ9vb3/N7M+fn5+Pn5/f39/Pz84yUZ6+vs5+fo+/v86Ojp6urr9vb29/f3
3+Dh29zd4+TlqKqr7+/w6Onqi4yO7O3t///+kJGT09TVg4SG8fLyw8TG5ufnnJ2flJaXf4CCt7i6
6erqiImLX2Bizs/Q/v/++Pj4v8DCjI2P1tfYmJmbhIWH5ebn7e3u6+zs19jZr7Cy2tvc8/PzpKan
x8jJ4uPkq6yun6Gi5OXl/f38Z2hql5iau7y+//7+s7S2b3By/f3+eHl6/v38/f7+98iv//v4//7/
9KqH+MqxPz9B9fb3+9/P/O/n74pm++zj++3l9bCQ7XtS9KyL9K+P4gAa5CUY////gTBrbwAAESpJ
REFUeNrEmglYU9e2gDkBGSukcFCLgILCNaGIaQnB0EJik8pYBIJGkNIYsVBiFVsZqtW+llK00taK
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
fwIMACC39QjwrpoeAAAAAElFTkSuQmCC
--0000000000003d562205b4ce4a9f--


--===============8445955960605622706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8445955960605622706==--

