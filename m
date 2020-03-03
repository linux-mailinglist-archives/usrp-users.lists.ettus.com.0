Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E779177084
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 08:53:56 +0100 (CET)
Received: from [::1] (port=45310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j92N9-0000dK-QJ; Tue, 03 Mar 2020 02:53:47 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:41032)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cogwsn@gmail.com>) id 1j92N6-0000ZG-3K
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 02:53:44 -0500
Received: by mail-ot1-f42.google.com with SMTP id v19so2071798ote.8
 for <usrp-users@lists.ettus.com>; Mon, 02 Mar 2020 23:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9kRuz8RvI0oEMXOkEEjscJQ55PNdCtjJqRSFU/HIs4Q=;
 b=rRsEbY03e6KZ4aZDY59X4Owo6CQ0tBlG/qpXkGvbtnxq7mG7NFRPxqcNE5YArxzq51
 /thK9mY7xR5pWgEVub7H+C44+u2hvY+BtV/gL9DuMFwJL7Asc5eZV/gbQescJjnVCGEY
 DXcfME8PSfOdSkW/LN2KX/SGyjRPEVtfglfWVKeDVhwKl8dq+G1RILZLqRNj5wC8u6Pe
 FuLF7BNG46W/hXn1iNE8yyHe8wOZYL8BYHv3gDrddIsb2olXw3AqUof+YTkixYTOlPZM
 6cTV2eouGsIz4t2Pc1AWvn4GJuynYp7KqCoKI8ML8qSGcbp6eFN3CHicvzJICDmJQIFR
 5Cyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9kRuz8RvI0oEMXOkEEjscJQ55PNdCtjJqRSFU/HIs4Q=;
 b=uVoevK2WmYNRRzDjG730Tvp5vHDYSYH+C8uqs0VPaazRTPw1GiIaTQnEsMMQFc72IX
 gcSx7WWZ7GuuaVoZQKfMFhDEBbYsonY8CGOkWMkTdoq0LuC6alFUIQ3c5IQu2LYJ/NSj
 r4wOPc9eouJG4K43A3Bma6WRKdYTOsJ20gR1hoOkJyPv1AFpV2aTbzgnrmV7HWrgqHHk
 AbCCwc+LMKKmjSSAdzmWnAvoask8xF945P9Y59jyIphGBOa01aV/Pm2x3HH2/SbJbebc
 hPLBuFrwXDvi4XIRz71p3HGDrdI9yCNG+oz/orNpVBCAzA6+50emTl2L6utcpPCt6Xgr
 MzIQ==
X-Gm-Message-State: ANhLgQ1ijpxYaw1xUO9tfYRvSA6JEepc3ua7J9kezO/xBkgmYIejb8z6
 +DiJqibtwRo5fdlvCFlhoIM2x2U0XgRcWIkg840=
X-Google-Smtp-Source: ADFU+vu5E/gNs4g8ZYbHyXvOBfW33h8UHHyHmi9TnmIwsAq6l2Hg33enAdaSKYgiZa319tRD80yoIX3V2XXaqMwPgmQ=
X-Received: by 2002:a05:6830:4cd:: with SMTP id
 s13mr2364750otd.181.1583221983380; 
 Mon, 02 Mar 2020 23:53:03 -0800 (PST)
MIME-Version: 1.0
References: <CAOExtcQvFTexKtz9HE84-0PU2NoGDN89cmQpEjr7XPedNSCGyw@mail.gmail.com>
 <CA+JMMq_-oACR766JM8z_UV3RiHC-OXpnVfCM7v5G-xf=E_ogqw@mail.gmail.com>
In-Reply-To: <CA+JMMq_-oACR766JM8z_UV3RiHC-OXpnVfCM7v5G-xf=E_ogqw@mail.gmail.com>
Date: Tue, 3 Mar 2020 08:52:52 +0100
Message-ID: <CAOExtcQ4ODmrcWELGnBoU69kZCRriWU5xTnkKFvcgxwW=J_ECg@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] Device Recovery N210: JTAG programmer
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2205900463495586406=="
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

--===============2205900463495586406==
Content-Type: multipart/alternative; boundary="000000000000eb893a059fee9780"

--000000000000eb893a059fee9780
Content-Type: text/plain; charset="UTF-8"

Thanks Nick. I have ordered HS3.
Regards
Sumit

On Fri, Feb 28, 2020 at 7:38 PM Nick Foster <bistromath@gmail.com> wrote:

> Sumit,
>
> Any JTAG programmer which is compatible with Xilinx iMPACT should work
> fine. I can recommend the solutions from Digilent (HS2, HS3) or Xilinx
> (Platform USB II).
>
> Nick
>
> On Fri, Feb 28, 2020 at 2:19 AM Sumit Kumar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I have 3 bricked N210 to be recovered. I was following the post
>> https://kb.ettus.com/N200/N210_Device_Recovery
>>
>> It says JTAG programmer and in the picture I can see the model no. is
>> DLC9G.
>>
>> I found something on Amazon which has the same model number but does not
>> looks the same. Can anyone confirm if this is correct.
>>
>> https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse-programmable-XILINX/dp/B07Y7PBBGQ/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=DLC9G&qid=1582884943&sr=8-1
>>
>>
>> Regards
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
-- 
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000eb893a059fee9780
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Nick. I have ordered HS3.=C2=A0<div>Regards</div><d=
iv>Sumit</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 28, 2020 at 7:38 PM Nick Foster &lt;<a href=3D"=
mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Sumi=
t, <br></div><div><br></div><div>Any JTAG programmer which is compatible wi=
th Xilinx iMPACT should work fine. I can recommend the solutions from Digil=
ent (HS2, HS3) or Xilinx (Platform USB II).</div><div><br></div><div>Nick<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Feb 28, 2020 at 2:19 AM Sumit Kumar via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<div>I have 3 bricked N210 to be recov=
ered. I was following the post=C2=A0</div><div><a href=3D"https://kb.ettus.=
com/N200/N210_Device_Recovery" target=3D"_blank">https://kb.ettus.com/N200/=
N210_Device_Recovery</a>=C2=A0</div><div><br></div><div>It says=C2=A0<span =
style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot=
;Lucida Grande&quot;,sans-serif;font-size:14px">JTAG programmer and in the =
picture I can see the model no. is DLC9G.=C2=A0</span></div><div><br></div>=
<div>I found something on Amazon which has the same model number but does n=
ot looks the same. Can anyone confirm if this is correct.=C2=A0</div><div><=
a href=3D"https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse-program=
mable-XILINX/dp/B07Y7PBBGQ/ref=3Dsr_1_1?__mk_fr_FR=3D%C3%85M%C3%85%C5%BD%C3=
%95%C3%91&amp;keywords=3DDLC9G&amp;qid=3D1582884943&amp;sr=3D8-1" target=3D=
"_blank">https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse-programm=
able-XILINX/dp/B07Y7PBBGQ/ref=3Dsr_1_1?__mk_fr_FR=3D%C3%85M%C3%85%C5%BD%C3%=
95%C3%91&amp;keywords=3DDLC9G&amp;qid=3D1582884943&amp;sr=3D8-1</a>=C2=A0</=
div><div><div><br></div><div>Regards</div>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-s=
ize:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12=
.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br=
>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, L=
uxembourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br><=
/div><br></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--000000000000eb893a059fee9780--


--===============2205900463495586406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2205900463495586406==--

