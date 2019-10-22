Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8644E0DEC
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 23:50:34 +0200 (CEST)
Received: from [::1] (port=54022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iN22q-00075e-7N; Tue, 22 Oct 2019 17:50:24 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34225)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iN22n-00071q-QA
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 17:50:21 -0400
Received: by mail-lj1-f177.google.com with SMTP id j19so18819682lja.1
 for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2019 14:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=olIc07dzp6ASdI+tpuWiPaBdmZLe9xDEQS/T7ujOak4=;
 b=JyUn+lkWCnzr+FJjlJ3DmXNZAZssESD+5W8PwcgzG9PS6BEZqasFCshrvPqtYiFiZh
 zH6LfiS8m4N2ukuW9J7zMr6Heh7fmCVZ2+tcSBy7Wur7U+fsTFsBuqidPepta7hDmjIZ
 2IG2qRQV1NazHVf3fLHJ6TdyunHgf6obt6/4t3pVIHCbABB2SbItRh7EK3/Ph8h6VxKo
 rgw7D1gikY52Nz5XU3nAyx11is/TdTbsG+FY4Hr7NzDSyBPU68vFFp58XvNJt1KW5qoH
 6Jm5JqzQDpskhjbm03llBLJH8g6JNZl8GeyktWJsBDC1m3NOJr6csxsmRGiwJ2BcFsun
 r24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=olIc07dzp6ASdI+tpuWiPaBdmZLe9xDEQS/T7ujOak4=;
 b=WI8Y6/rFxq9J+CLaWrJhThE/ng9UYfA80JCJIFdGCF1xvDrsZAWEo9JiqDp1twTbaf
 MxUTekmfd0WlCpNH6Q2Dq7MUQ/X4R8N3arxu+i721EjrjcAaqwDuvzgGwRMe/hrhaAir
 QcipljC7XneMTHxOF4IoRnSSpzJYpYo+QMHY9QUACB7sZ7cfoOVXpIKfhu9swEgX1akV
 C36hgwV8g1IxSjNXhuVpWkGVNb+RM7r709gEpzqcZURwKGapytT99XQJbQGwGWCRiV24
 xv8BLxw7LqoDFHZSx72BSFxc95sR7GbUa9+6RWkjCu6F53a5K4bGq8aFrOPuAKw5YONU
 v2Xw==
X-Gm-Message-State: APjAAAXVxrZaUC/HbUm+2oHFMpOYmgP1A25lnxizIFOGiH3FXrfLkeWP
 x78XDCTAYRmsTa3gjUi61cwxLszGzzfwEVX/xr1o3hfN
X-Google-Smtp-Source: APXvYqy2ao7ExD3ajFs8WHqapB9eGe2A1x+owbH92fToeu23UdPlpLlFROuK4vHSdnrxDefbDkZRqvj3ayU6nAqXFT8=
X-Received: by 2002:a2e:5354:: with SMTP id t20mr20149319ljd.227.1571780975255; 
 Tue, 22 Oct 2019 14:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <eebdb6dc-867a-46ff-92f9-89a3480d810b@email.android.com>
In-Reply-To: <eebdb6dc-867a-46ff-92f9-89a3480d810b@email.android.com>
Date: Tue, 22 Oct 2019 16:49:23 -0500
Message-ID: <CANf970bB=uMWtk=3xgPOQZL1Nvv7YJB8CbwVN42nwxUDVu6LnQ@mail.gmail.com>
To: =?UTF-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@nkom.no>
Subject: Re: [USRP-users] E310 packet size
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8664704341231157929=="
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

--===============8664704341231157929==
Content-Type: multipart/alternative; boundary="000000000000b1fa35059586c631"

--000000000000b1fa35059586c631
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Jorn,

get_max_num_samps() is "Get the max number of samples per buffer per
packet." [1]. I haven't dug into it, but I'd guess that this is something
that's dictated by your data type and your NIC's MTU. Does that return
value change when you adjust your host side MTU?

-Sam

[1] https://files.ettus.com/manual/classuhd_1_1rx__streamer.html

On Fri, Oct 18, 2019 at 1:59 PM Skorstad,J=C3=B8rn via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> Still trying to understand some parts of the USRP that probably are quite
> elementary. When using the function get_max_num_samps it always reports
> 508. Does this mean that the number of samples returned for any requested
> sample rate will be decimated down to 508? Any way to change max_num_samp=
s?
> Not using FPGA (yet).
>
> Cheers,
> Jorn
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b1fa35059586c631
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hey Jorn,</div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif"><br></div><div>get_max_num_samps<span class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif">()</span><span class=3D"g=
mail_default" style=3D"font-family:verdana,sans-serif"> is &quot;Get
 the max number of samples per buffer per packet.&quot; [1]. I haven&#39;t =
dug=20
into it, but I&#39;d guess that this is something that&#39;s dictated by yo=
ur=20
data type and your NIC&#39;s MTU. Does that return value change when you=20
adjust your host side MTU?<br></span></div><div><br></div><div>-Sam<br></di=
v><div><br></div><div><div style=3D"font-family:verdana,sans-serif" class=
=3D"gmail_default">[1] <a href=3D"https://files.ettus.com/manual/classuhd_1=
_1rx__streamer.html">https://files.ettus.com/manual/classuhd_1_1rx__streame=
r.html</a></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Oct 18, 2019 at 1:59 PM Skorstad,J=C3=B8rn vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi all,<br>
<br>
Still trying to understand some parts of the USRP that probably are quite e=
lementary. When using the function get_max_num_samps it always reports 508.=
 Does this mean that the number of samples returned for any requested sampl=
e rate will be decimated down to 508? Any way to change max_num_samps? Not =
using FPGA (yet).<br>
<br>
Cheers,<br>
Jorn<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b1fa35059586c631--


--===============8664704341231157929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8664704341231157929==--

