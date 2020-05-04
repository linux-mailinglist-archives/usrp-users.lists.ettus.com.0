Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 012BF1C4954
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 00:02:10 +0200 (CEST)
Received: from [::1] (port=38338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVjA7-00028k-Jo; Mon, 04 May 2020 18:02:07 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:39132)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1jVjA3-00022B-FN
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 18:02:03 -0400
Received: by mail-ej1-f53.google.com with SMTP id s3so15336281eji.6
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 15:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=OenYY77T5SK6T/zDHPa8NZwnxFpP/aSvOY2dSyfUlbU=;
 b=lVxV9nAmFykV9IlevYiYNpYPYSqZZSBYtBpvDqsyECBGQmE5MDWbotx/OL5UDyyxqw
 nzjtbtchmoH9qRKiA6/DgStAV9v57MXfD6CtBvT8PsPvz3UcDSMGbv8CUS6e2nEoRk5Y
 NWiTCZ8SQ6bxN02ES/QK3lkNw/pITcMV2qUJOxeuZrUITcIm8cmyuda3RsHEQtPJU7ad
 Pl2uuqvZomk6pgIdAY1iPESXj7rN91gaAOlx1/TQDm+iuLNZI3znhPfodjzwV+hXD21s
 9REOqBWDF7TeyxR4c6iYFvVy7J7WrKzZAuJj6HwlQlTcjNClHZqsR6Hi/tKUcT0ivATA
 zXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=OenYY77T5SK6T/zDHPa8NZwnxFpP/aSvOY2dSyfUlbU=;
 b=ZuBPI1HYVojVT/r3zm9dZxcWz94q5859EtrYZLu6wRxnuULi3vNDZpuHpxmpqMuo7+
 Llzlthu9efYGrDtCCSJzUnuh+JZNltC6mvHH7Y6rnzBVtP+zDhiMmHdHzeumml0p/LwG
 v+xwY9thNaPhaig+CS0YEahIN0sjSlnkD9ADNfrmFsnTo5Z9bM0ALb+ZN60coRa4bSBp
 mNh4ixcALqhxQOvdlmt4zHPYh+lnllK2OPQyoxz63XL/jGS7m4M3DtkYvZPQNtAtnAw2
 nxAUXPMg2kSggkNERSCtKmJJC6261U0b7mxTHxjpYNe0NPoqIyiD9lVBRQtTOEP8irS7
 eZ4w==
X-Gm-Message-State: AGi0PuZC3pr+JS4Ba1TzzdczAyIy1iZb8x292WUvvrgELvBRaEB6V+qD
 qsw1eHD8tHET3QfOdWwMTLxeZ5cTiVHWCOJeNgEzb+U3zZDZQw==
X-Received: by 2002:a17:907:43c2:: with SMTP id
 i2mt14467089ejs.185.1588629682273; 
 Mon, 04 May 2020 15:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
 <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
In-Reply-To: <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
Date: Mon, 4 May 2020 15:01:11 -0700
Message-ID: <CAFOi1A57F7PnKWoCcrPuh=G643TADN3_0xxHTTXNuLb2HiJLOQ@mail.gmail.com>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============5488264499785660580=="
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

--===============5488264499785660580==
Content-Type: multipart/alternative; boundary="000000000000e515bf05a4d9ab5d"

--000000000000e515bf05a4d9ab5d
Content-Type: text/plain; charset="UTF-8"

It does; the channel parameter on E310 is used to address the A- or B-side.

On Mon, May 4, 2020 at 1:39 PM Rob Kossler <rkossler@nd.edu> wrote:

> Does the 2nd argument to set_rx_antenna() indicate which radio port?  If
> so, try setting it to 1.
> Rob
>
> On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello, I'm trying to switch between all four USRP E310 inputs. For this,
>> I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX /
>> RX", 0) but I can only switch in channel A. RFNoC Radio does not have the
>> set_rx_subdev_spec command. Tell me how can I switch across all 4 channels?
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e515bf05a4d9ab5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It does; the channel parameter on E310 is used to address =
the A- or B-side.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, May 4, 2020 at 1:39 PM Rob Kossler &lt;<a href=
=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Does the 2nd ar=
gument to set_rx_antenna() indicate which radio port?=C2=A0 If so, try sett=
ing it to 1.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello, I&#39;m trying to =
switch between all four USRP E310 inputs. For this, I use the command self.=
uhd_rfnoc_streamer_radio_0.set_rx_antenna (&quot;TX / RX&quot;, 0) but I ca=
n only switch in channel A. RFNoC Radio does not have the set_rx_subdev_spe=
c command. Tell me how can I switch across all 4 channels?</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e515bf05a4d9ab5d--


--===============5488264499785660580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5488264499785660580==--

