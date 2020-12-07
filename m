Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A90342D09F5
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 06:18:29 +0100 (CET)
Received: from [::1] (port=60676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1km8uo-0008HF-4o; Mon, 07 Dec 2020 00:18:26 -0500
Received: from mail-yb1-f199.google.com ([209.85.219.199]:47928)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1km8uj-0008Ct-Op
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 00:18:21 -0500
Received: by mail-yb1-f199.google.com with SMTP id w8so16448710ybj.14
 for <usrp-users@lists.ettus.com>; Sun, 06 Dec 2020 21:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5XqYI+zG/GU/BH7LG1ieWWLT+vx2VtN4rTB4Mt+mfUQ=;
 b=LaDsWEUD/HI4WnabMehaB19BJi2S6GDFUdk9zC/I1H5d1jSJZUdJO0AzZ+mMbnVwhh
 X4k44fbmXwHUsBSo/d9ES/oeIHRmCIs7U8Y5q1qDl7MLktY9j4lGfgZA09EF2xk6/INc
 VcNlBNED/ILWTVd0S3QciTmYpHsdt8ZLHYWBVzbJbE6FzPdVlCFM5iPjRg4tZJmMg8Vb
 dHzIOHnXmR8uFlJlZFvsu0EXDeDNnTmRn4/InFM+jM1S/YTz4Ok6H04+H3aGKibnCsJ6
 9scKrpRcV9K95jiDM/XnpG9LHqGKwLwX+i6EE4pEySaGet6Ao8MBUM0OPba/r/hl7+/f
 8xUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5XqYI+zG/GU/BH7LG1ieWWLT+vx2VtN4rTB4Mt+mfUQ=;
 b=dLSwpuJ2EossEVA5azVCzN4elDEndAut2vuRE8a1yaCtO+LISLITvPlHkCmJsy0Jbv
 7jJWU9LwTAtJZOXBxaY7hWZtYRe3ZogmjwC7EL+ASwISceNqT/fLthWtHw1HSJS3YRC5
 5kRTZynwz5Oi2PmE/1uVqY7K4l1BntaicjryEmarQqzd4oNX2cZou7xqUypZDFgq5Axp
 n1jgLwgbQ+E8defVo6tWfO0I73aDVJL6OH2G89v3wkFgsELO/Apb5t2GW/tq1eERbe38
 3MyD42cAXDnZ87lsJugYWmnIbnKwCDdi8VJ9M69HVDJ6DKZPmq5SKhDajpowAUGdJJOj
 PDqQ==
X-Gm-Message-State: AOAM532FzBY7ze4el9+htaN/9vkaXqU6orI4g9u1jU6UB6ONljRDhFo1
 t3cGiT+J0bP2MX8pGT7XwKI0xat1EOpOPGz+T/wMES42zxNQsQ==
X-Google-Smtp-Source: ABdhPJyj6OslCdPIE5GzkZPker6Mt90S533iEUTSswHVydinWWNdyHDAaO63anMB1bz4dCi5e//J+Dac2YOQlvIiYRA=
X-Received: by 2002:a25:f09:: with SMTP id 9mr21562019ybp.129.1607318260740;
 Sun, 06 Dec 2020 21:17:40 -0800 (PST)
MIME-Version: 1.0
References: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
 <aba9b85d-e604-1fb0-b305-c3f5e7ec840b@ettus.com>
 <CABfZwcdR3+GS2ED95E6TGmn32UuLo+ZytgLQTaG1R109XEDszw@mail.gmail.com>
 <CAF4UVpANs2Uh9_arOGB=Sjehn2YFwf_p=dvEEU9A-50h7FS22A@mail.gmail.com>
In-Reply-To: <CAF4UVpANs2Uh9_arOGB=Sjehn2YFwf_p=dvEEU9A-50h7FS22A@mail.gmail.com>
Date: Mon, 7 Dec 2020 14:17:05 +0900
Message-ID: <CABfZwcc7AanDcYH5C_DRz83y+vs5PdJ7so-Gt=XwuCjjRGmoeQ@mail.gmail.com>
To: "Gilad Beeri (ApolloShield)" <gilad@apolloshield.com>
Subject: Re: [USRP-users] Can I detect a wiretype of USB device?
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1596915468139063457=="
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

--===============1596915468139063457==
Content-Type: multipart/alternative; boundary="000000000000f90c5105b5d8f15b"

--000000000000f90c5105b5d8f15b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gilad
I got a connected USB Bus version as follows.
Thank you.

USB 3.0
$ lsusb -v -d 2500:0020|grep bcdUSB
  bcdUSB               3.00

USB 2.0
$ lsusb -v -d 2500:0020|grep bcdUSB
  bcdUSB               2.00


2020=E5=B9=B412=E6=9C=886=E6=97=A5(=E6=97=A5) 15:16 Gilad Beeri (ApolloShie=
ld) <gilad@apolloshield.com>:

> On Linux,
> You can also run "lsusb -v -d2500:" (2500 for Ettus) and inspect the
> "bcdUSB" line.
>
> Regards,
>
> Gilad Beeri
> CTO, ApolloShield Anti-Drone Systems
> www.apolloshield.com
> gilad@apolloshield.com
>
> =E1=90=A7
>
> On Wed, Dec 2, 2020 at 11:16 AM Mikio Fukushima via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Marcus,
>> Thank you for your mail.
>>
>> I done based on your information as follows.
>>
>> >> code here <<
>>
>> uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);
>>
>> string devicename =3D
>> usrp->get_device()->get_tree()->access<string>("/mboards/0/name").get();
>> double maxrate =3D
>> usrp->get_device()->get_tree()->access<double>("/mboards/0/link_max_rate=
").get();
>> if((devicename =3D=3D "B200" or devicename =3D=3D "B200mini") and maxrat=
e <
>> 500000000)
>> {
>>
>> }
>>
>> >> code end <<
>>
>> Thank you.
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

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

--000000000000f90c5105b5d8f15b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi Gilad</div><div>I got a connected U=
SB Bus version as follows.</div><div>Thank you.</div><div><br></div>USB 3.0=
<br><div>$ lsusb -v -d 2500:0020|grep bcdUSB<br>=C2=A0 bcdUSB =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3.00<br><br></div><div>USB 2.0</div><di=
v>$ lsusb -v -d 2500:0020|grep bcdUSB<br>=C2=A0 bcdUSB =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.00<br></div><div><br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=E5=B9=B412=
=E6=9C=886=E6=97=A5(=E6=97=A5) 15:16 Gilad Beeri (ApolloShield) &lt;<a href=
=3D"mailto:gilad@apolloshield.com">gilad@apolloshield.com</a>&gt;:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_default" style=3D"font-size:small">On Linux,</div><div class=
=3D"gmail_default" style=3D"font-size:small">You can also run &quot;lsusb -=
v -d2500:&quot; (2500 for Ettus) and inspect the &quot;bcdUSB&quot; line.</=
div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div><=
div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr">







<div style=3D"font-family:sans-serif;font-size:13px"><div><font size=3D"2">=
Regards,</font></div><div><font size=3D"2"><br></font></div></div><div styl=
e=3D"font-family:sans-serif;font-size:small"><span style=3D"font-size:13px"=
>Gilad Beeri</span></div><div style=3D"font-family:sans-serif;font-size:sma=
ll"><div style=3D"display:inline"></div><span style=3D"font-size:13px"></sp=
an><span style=3D"font-size:13px">CTO, ApolloShield Anti-Drone Systems</spa=
n></div><div style=3D"font-family:sans-serif;font-size:small"><a href=3D"ht=
tp://www.apolloshield.com/" style=3D"color:rgb(17,85,204);font-size:13px" t=
arget=3D"_blank">www.apolloshield.com</a></div><div style=3D"font-family:sa=
ns-serif;font-size:small"><span style=3D"font-size:13px"><a href=3D"mailto:=
gilad@apolloshield.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">gi=
lad@apolloshield.com</a></span></div></div></div></div></div></div></div></=
div></div></div><br></div><div hspace=3D"streak-pt-mark" style=3D"max-heigh=
t:1px"><img alt=3D"" style=3D"width: 0px; max-height: 0px; overflow: hidden=
;" src=3D"https://mailfoogae.appspot.com/t?sender=3DaZ2lsYWRAYXBvbGxvc2hpZW=
xkLmNvbQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3D877b6a39-e7a7-4798-a735-13=
434c7d5525"><font color=3D"#ffffff" size=3D"1">=E1=90=A7</font></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec =
2, 2020 at 11:16 AM Mikio Fukushima via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div>Thank you for your mail.</div><=
div><br></div><div>I done based on your information as follows.<br></div><d=
iv><br></div><div>&gt;&gt; code here &lt;&lt;</div><div><br></div><div>uhd:=
:usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br></di=
v><div><br></div><div>string devicename =3D usrp-&gt;get_device()-&gt;get_t=
ree()-&gt;access&lt;string&gt;(&quot;/mboards/0/name&quot;).get();<br>doubl=
e maxrate =3D usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;double&gt;=
(&quot;/mboards/0/link_max_rate&quot;).get();<br>if((devicename =3D=3D &quo=
t;B200&quot; or devicename =3D=3D &quot;B200mini&quot;) and maxrate &lt; 50=
0000000)<br>{</div><div><br></div><div>}</div><div><div><br></div><div>&gt;=
&gt; code end &lt;&lt;</div></div><div><br></div><div>Thank you.</div><div>=
<br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div>=C2=A0<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>=
=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=
=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div=
><div><br></div><div>=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=
=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=
=BC=8D=EF=BC=91</div><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=
=80=80=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=
=8B =EF=BC=96=EF=BC=90=EF=BC=91</div><div><br></div><div>Mail: <a href=3D"m=
ailto:mikio@dolphinsystem.jp" target=3D"_blank">mikio@dolphinsystem.jp</a><=
/div><div>URL : <a href=3D"http://www.dolphinsystem.jp/" target=3D"_blank">=
http://www.dolphinsystem.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div></div></div></div></div>

--000000000000f90c5105b5d8f15b--


--===============1596915468139063457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1596915468139063457==--

