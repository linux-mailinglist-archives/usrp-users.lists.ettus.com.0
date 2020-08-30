Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAEC256BDA
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 07:43:41 +0200 (CEST)
Received: from [::1] (port=40268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCG7w-00016a-5u; Sun, 30 Aug 2020 01:43:40 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:35332)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kCG7s-0000zI-Cg
 for usrp-users@lists.ettus.com; Sun, 30 Aug 2020 01:43:36 -0400
Received: by mail-vs1-f52.google.com with SMTP id j188so1696004vsd.2
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 22:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ta4QehOnohB9OEvHBJeEoYs7TOQw0AVzUaAtEKUFQHI=;
 b=q5tX3D33MOOviN6Dg4Bj0oZE04pmtPFNg7AXAn7/6O0oz1PuAO2mLjgFySNYuRL5Er
 t7bXaG2QIGtvdbnWRXse3Zt67MPFzAQjgi2VoJ2RIAGZGzGS0cUZfQT6DUaN+EosmIkt
 v2SnuM12xUOIcD4jtaSLmKhCiKtu61l3tO/5VL9dIJie3iyk8LLCteAFmx6SpixH+PKg
 ha9AdTvoOGJrHdDMB3npJEuP8SxFxVPrit3QmjmroBpP82BUXjeP9s4w3gIi5q72TNTt
 ndIBfGg97Zr72ed091DHc0WeZJKpqb3A0+li/8ATBQ/ZJ6fxR65u1ocgUBZdvH37VHWw
 XUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ta4QehOnohB9OEvHBJeEoYs7TOQw0AVzUaAtEKUFQHI=;
 b=mRN/SThzB652RJvBtNoGTYvok79xzHQjdnoyseUGmJPk36N9meyVYoC/vGkcOnaCB1
 bJODSAH8BOZ+tHomY0A41lGHsp4t3+NQSzyRj0UN/rXHS2EJi9Y5O80ww7GAHGwOduCl
 bgtePcNTtoiJuiY6zcym+0DjwirDrTEBI4R7yyyw5lRTtwsbetV2I3LP1H6Bv8d5BSJE
 y77/28CjoeXinarJAZr1GZN1x6kjpOxdU7o2dAqFghjtZoSFzkg8jlrt01Y/QBYBM8WO
 L0/HG7YzYSaAPP7+QkzRtW1gBQi2NhQya4gKUt5pSythC4BA95pCHdJxw3t+XETLylcF
 vTPw==
X-Gm-Message-State: AOAM530FeChu14Vp11+AiPoOp/E9jUWscUS4NG5KqpopH2OGenhuRL5e
 AlCt3zVXQphbR8P1WYiA5aHSxZxYVua9brav2BKlNJ5E
X-Google-Smtp-Source: ABdhPJy/DcYX9eB+Ge1wGQByLDiz37BLew8INcIS0o0b1w2nEm6AbfIcHVwu+NkPkaOqzFjUERV5TGrrxIk6uaOq//Q=
X-Received: by 2002:a05:6102:242c:: with SMTP id
 l12mr3038161vsi.21.1598766175796; 
 Sat, 29 Aug 2020 22:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF_3i7gu0QMiY3pVc7Qt7pyG2NNBsXjut292g_4E4HEV_t6wg@mail.gmail.com>
In-Reply-To: <CAJF_3i7gu0QMiY3pVc7Qt7pyG2NNBsXjut292g_4E4HEV_t6wg@mail.gmail.com>
Date: Sun, 30 Aug 2020 01:42:20 -0400
Message-ID: <CAL7q81vKgWaSKbX61E+Sfr7ahF-RBimt73r2Lvwj-DFMo65XRw@mail.gmail.com>
To: Eric Blossom <eb@comsec.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Speeding up build of usrp3 fpga code??
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
Content-Type: multipart/mixed; boundary="===============1822156985500902871=="
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

--===============1822156985500902871==
Content-Type: multipart/alternative; boundary="000000000000fcc93105ae11c117"

--000000000000fcc93105ae11c117
Content-Type: text/plain; charset="UTF-8"

Hi Eric,

Unfortunately no, but luckily that is usually a one time ordeal. The built
IP is kept separately from the main build, and it is not removed when you
run 'make clean'. Instead, you have to run 'make cleanall' if you want to
remove the IP build directory, which can be necessary if you switch UHD
releases and the supported Vivado version changed.

Jonathon

On Sat, Aug 29, 2020 at 8:07 PM Eric Blossom via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Folks,
>
> I'm in the midst of building the fpga code for the x310 on master.  I'm
> building on a 24-thread xeon with plenty of memory.
> Is there a magic flag, setting, etc that enables parallelism in generating
> the ip (the invocations of viv_generate_ip.tcl)??
> I tried make -j4 to no avail.
>
> I really like how the build system regenerates the ip for different
> families and part numbers.  NIcely done!
>
> Thanks!
> Eric
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fcc93105ae11c117
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Eric,<div><br></div><div>Unfortunately no, but luckily =
that is usually a one time ordeal. The built IP is kept separately from the=
 main=C2=A0build, and it is not removed when you run &#39;make clean&#39;. =
Instead, you have to run &#39;make cleanall&#39; if you want to remove the =
IP build directory, which can be necessary if you switch UHD releases and t=
he supported Vivado version changed.</div><div><br></div><div>Jonathon</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Sat, Aug 29, 2020 at 8:07 PM Eric Blossom via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hi Folks,<div><br></div><div>I&#39;m in the midst of building the fpga =
code for the x310 on master.=C2=A0 I&#39;m building on a 24-thread xeon wit=
h plenty of memory.</div><div>Is there a magic flag, setting, etc that enab=
les parallelism in generating the ip (the invocations of viv_generate_ip.tc=
l)??</div><div>I tried make -j4 to no avail.</div><div><br></div><div>I rea=
lly like how the build system regenerates the ip for different families and=
 part numbers.=C2=A0 NIcely done!</div><div><br></div><div>Thanks!</div><di=
v>Eric</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000fcc93105ae11c117--


--===============1822156985500902871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1822156985500902871==--

