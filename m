Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 893BD7EA9C
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 05:10:45 +0200 (CEST)
Received: from [::1] (port=38216 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htNxq-0000Kq-7s; Thu, 01 Aug 2019 23:10:42 -0400
Received: from mail-oi1-f198.google.com ([209.85.167.198]:44814)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1htNxl-0008PX-HP
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 23:10:37 -0400
Received: by mail-oi1-f198.google.com with SMTP id b124so28816364oii.11
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 20:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/82IKrxifBzoDtWTdueWoZvjHgm9SEUdDaCR4domF00=;
 b=M2A6xzzthgYphP6p3Ff3XEEccJPkc6beJZBgNyjqhJ2FWR6QKVPJv52revp/nSl0ZR
 RK/O/feunw3yx0RuXSEdMm5OdMthYtEFcC2OHdjWvo6OF7C0Xp7JLjQCmn06DYX1Wuje
 b6CkyEyUMn+vgmBsE9YKf6qavC9+Bp8mqpOFuZtnt7ZRljeTr68NyrF01Bq7mvpJal0S
 DGG61MhLfh95wZgDPZgGzHQ+MxY6XaIpnb/lvVrtykHBrJ+ejc8pRIMmdIUZ+m35wjCv
 ihuapwMPmF2fDVvyzOAjy1D+L+No8o9pqqx16GEXCettNAzmQPpHDNcdHp0NTZKfbBUu
 mfsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/82IKrxifBzoDtWTdueWoZvjHgm9SEUdDaCR4domF00=;
 b=P9mXljWqAvHvr7TQ2/vdQchxFbW429CBV5MwXAxfKFSJU13SDkRbYMDogUMfbKzRsj
 GXYooYUMA/LqG7GTkBkBR3A0MvlKmnIF4qCFr4Yvk/FOOUB+FlhNQEmxKnNFS1R8V2C9
 T2uH5bTSnNVFHI36XMTidgk5ZBuygbSw82/Mkehte/L8T07c5IGPjwTZEgvSqmzejfsZ
 i4QIaS13FYLi8gsrBASnuq0wIy0VUB6DwNV4UEkNY/sLryiWPKfdaEre0CsQA6+UJjbR
 FSmOF/V+R1PA8FqGqHAzFIo6gEn/xccQeBhgeihsPM4CgE4ttmIgQUhbO5EqUrROpTaN
 ey9Q==
X-Gm-Message-State: APjAAAW4fDyHU1nZLI3mTK7iZjhDCzkvSEzbGhIlMgTa4R26Qt89tblu
 Dwn8vuIDD+exId53cE9Kmu2FOm4K3Ap4WS7IiTr5Gg==
X-Google-Smtp-Source: APXvYqx9oze3LqeTBJzBLJWDhLzaTpJdUEGso4V8DRTDxCEXYi+gNf45LJdDDFscKLPiRkacNgRBh+04Vaoj1yajCp0=
X-Received: by 2002:a9d:73cb:: with SMTP id m11mr93593471otk.276.1564715396697; 
 Thu, 01 Aug 2019 20:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
 <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
 <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
In-Reply-To: <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
Date: Fri, 2 Aug 2019 12:09:21 +0900
Message-ID: <CABfZwcf-YpuUKedeJQRt5yx6xhVbf6NNgC4cjcUOq=yUM6karA@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
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
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1030509135006663169=="
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

--===============1030509135006663169==
Content-Type: multipart/alternative; boundary="0000000000006523d9058f19b112"

--0000000000006523d9058f19b112
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for your quick reply.
Ok, I will try to compile the E310 version after updated document and I
will try to compile the *E320 version* according to your advice.

Regards,


2019=E5=B9=B48=E6=9C=882=E6=97=A5(=E9=87=91) 11:58 Nate Temple <nate.temple=
@ettus.com>:

> Hi,
>
> I hope to have the E310 version posted tomorrow. Don't have a firm
> timeline for the E320/N3xx version yet.
>
> The process is mostly the same, except you should not use rfnoc-devel, bu=
t
> instead use a modern UHD version such as v3.14.1.0, and then during the
> cmake configuration step, pass the arg -DENABLE_RFNOC=3DON.
>
> You can fetch the E320 SDK using uhd_images_downloader with the command
> (with UHD 3.14.1.0 on your host):
>
> uhd_images_downloader -t sdk -t e320
>
> I would recommend to use maint-3.7 for the GR version with the E320.
>
>
> Regards,
> Nate Temple
>
> On Thu, Aug 1, 2019 at 7:53 PM =E7=A6=8F=E5=B3=B6=E5=B9=B9=E9=9B=84 <miki=
o@dolphinsystem.jp> wrote:
>
>> Hi Nate
>> Thank you for always your support and quick reply.
>>
>> >Are you using the E320 SDK?
>> No, I use the *E310 SDK*.
>> bacause I am training to get used to build the UHD and GR for cross
>> compiling environment.
>> next step, I will use the *E320 SDK*.
>>
>> >Also that app note is outdated, and I will be posted an updated version
>> soon. Another app note that covers the E320/N3xx will follow.
>>
>> Oh!!!
>> I have no words to thank you.
>> When do you think that will be?
>>
>> Thanks.
>>
>

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0

=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=BC=8D=EF=BC=91
=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=8B =
=EF=BC=96=EF=BC=90=EF=BC=91

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--0000000000006523d9058f19b112
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>Thank you for your quick reply.<br>Ok, I will t=
ry to compile the E310 version after updated document and I will try to com=
pile the *E320 version* according to your advice.<div><br></div><div>Regard=
s,<br><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">2019=E5=B9=B48=E6=9C=882=E6=97=A5(=E9=87=91) 11:58 Nate Tem=
ple &lt;<a href=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">Hi,<br><br>I hope to have the E310 version posted tomorrow. Don&#3=
9;t have a firm timeline for the E320/N3xx version yet.<br><br>The process =
is mostly the same, except you should not use rfnoc-devel, but instead use =
a modern UHD version such as v3.14.1.0, and then during the cmake configura=
tion step, pass the arg -DENABLE_RFNOC=3DON.<br><br>You can fetch the E320 =
SDK using uhd_images_downloader with the command (with UHD 3.14.1.0 on your=
 host):<br><br>uhd_images_downloader -t sdk -t e320<br><br>I would recommen=
d to use maint-3.7 for the GR version with the E320.<br><br><br>Regards,<br=
>Nate Temple<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Aug 1, 2019 at 7:53 PM =E7=A6=8F=E5=B3=B6=E5=
=B9=B9=E9=9B=84 &lt;<a href=3D"mailto:mikio@dolphinsystem.jp" target=3D"_bl=
ank">mikio@dolphinsystem.jp</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Nate<br>Tha=
nk you for always your support and quick reply.<br><br>&gt;Are you using th=
e E320 SDK?<br>No, I use the *E310 SDK*.<br>bacause I am training to get us=
ed to build the UHD and GR for cross compiling environment.<br>next step, I=
 will use the *E320 SDK*.<br><br>&gt;Also that app note is outdated, and I =
will be posted an updated version soon. Another app note that covers the E3=
20/N3xx will follow.<br><br>Oh!!! <br>I have no words to thank you.<br>When=
 do you think that will be?<br><br>Thanks.<br></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=C2=
=A0<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>=C2=A0=E7=A6=8F=E5=
=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=A0=E6=A0=AA=E5=BC=
=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=E3=83=B3=E3=82=B7=
=E3=82=B9=E3=83=86=E3=83=A0</div><div><br></div><div>=E3=80=92171-0014 =E6=
=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=
=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=BC=8D=EF=BC=91</div><div>=E3=80=80=E3=80=
=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=
=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=8B =EF=BC=96=EF=BC=90=EF=BC=91</div><div>=
<br></div><div>Mail: <a href=3D"mailto:mikio@dolphinsystem.jp" target=3D"_b=
lank">mikio@dolphinsystem.jp</a></div><div>URL : <a href=3D"http://www.dolp=
hinsystem.jp/" target=3D"_blank">http://www.dolphinsystem.jp/</a></div><div=
>TEL/FAX : 03-6658-4949</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div>=
</div></div></div>

--0000000000006523d9058f19b112--


--===============1030509135006663169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1030509135006663169==--

