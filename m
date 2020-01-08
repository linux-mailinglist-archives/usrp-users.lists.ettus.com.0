Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 890141346DD
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 16:59:47 +0100 (CET)
Received: from [::1] (port=49718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipDkI-00028V-Jn; Wed, 08 Jan 2020 10:59:46 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:33783)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ipDkE-0001tp-OL
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 10:59:42 -0500
Received: by mail-ot1-f42.google.com with SMTP id b18so4085830otp.0
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 07:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ruBweMXPY9tk4TZakADa6a8Sry2Gfz+7EGfqqP1h3MM=;
 b=kxHUsPh53Y6q9nqBcoL93yZlPAdUCnPH65sBby+UALZ938GpdgoP90gndx/+KQONTl
 AEIGRPKzqBet22tM692XcWGoJZ0ExBYduMq28AY6aVeleP1ViQw9HjD25KCCB8TBgXPa
 uniah3CCkd1y7cSf3+7ZDeMcs2Blsocm6vhhnBZshka0EzycFYXH+BtVh5plFlqGXeYO
 pR6SQgKfTHA5o8HDDbN7NYS63G6cWa17oP8x+b1iy9G2/dBVLDZKVQPT4QWghMHJoNBL
 g7cgpdV6BhWTAE9ho5epn7RIV+HjJMp13g0pOO4Fy3yhVLyJ71s3oTHoIPujk6pWepdb
 IRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ruBweMXPY9tk4TZakADa6a8Sry2Gfz+7EGfqqP1h3MM=;
 b=NX9HpzJJy2zgUEqVee4yjn0IIb2bICRdS9t52GjWij1xdky2I3Syv3NRPtPetd8ROa
 7mc/TjPC627ftxpkzB42yGe45xM4FGrJ+GfhxJpdNwZB7dKjpIW3YOykkYVTTLnFgVRX
 w2PywlKEGLq+rAa3ahh558LLfg0DE9Ws4le9QoJTpWZJpe3Fk5lRTy807dlmDYxiAp+l
 PvGw3jxWFTwCHVCaHxCIXHWpqDtwIu9wC/J2MLnxd/1V+aWcRkD1kfDct8K8e9z2RNcg
 9b0EjuB417lPW0sIQJKPXlCWGDYiFee9cRbPIh6Mc3ExeKusYIQLbuQPfCJgvoNVj9ns
 t2/w==
X-Gm-Message-State: APjAAAUThRxW9CyOLyNIsQ8+P1CEcA19EXKKXPGAOH1zY2W75XIV39rv
 ZBEqey29wK/yw0/MVDaGJ7LQCzcY8Jzxw2Zrh7+dxA==
X-Google-Smtp-Source: APXvYqymFYtyfxO/+c99ABseiLVZPl7movtOYQUDmSEqRUPwteGuJE0Eed17qbIYFgpkf7Y69YgCV6tw+JXT6uEbn6U=
X-Received: by 2002:a9d:3d0a:: with SMTP id a10mr4740631otc.327.1578499141836; 
 Wed, 08 Jan 2020 07:59:01 -0800 (PST)
MIME-Version: 1.0
References: <CAN1jYK2xxTUj8JLYOJW6eEJe6BxQK8z1hXyu7vmbn9yzVEXp+Q@mail.gmail.com>
 <CAB__hTTHRDOi+L+Gpf+kMNyt-RtdNQ-B+GGY=iC0DKxASQa3NA@mail.gmail.com>
 <CANf970aBsj3R2XiZwcZ0T0if1OJJkeMPzC91Xgxz2TG5vCS5JQ@mail.gmail.com>
In-Reply-To: <CANf970aBsj3R2XiZwcZ0T0if1OJJkeMPzC91Xgxz2TG5vCS5JQ@mail.gmail.com>
Date: Wed, 8 Jan 2020 10:58:50 -0500
Message-ID: <CAB__hTQEVeVizOfu8G-b05RdMw44UVO_RqXW32POYNd8LLjBkg@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] UHD RFNoC Update
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1598411622623565506=="
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

--===============1598411622623565506==
Content-Type: multipart/alternative; boundary="000000000000a0cfc1059ba2f8de"

--000000000000a0cfc1059ba2f8de
Content-Type: text/plain; charset="UTF-8"

Thanks Sam,
This looks great.  In addition, I found the following Ettus GRCON
presentation which may be of interest to some...
Rob
https://www.gnuradio.org/grcon/grcon19/presentations/uhd_four_o/Martin%20Braun%20-%20UHD%20Four-O.pdf



On Wed, Jan 8, 2020 at 10:50 AM Sam Reiter <sam.reiter@ettus.com> wrote:

> Hey Rob,
>
> We're working on updating our RFNoC materials on kb.ettus.com currently.
> This RFNoC specification should be a good supplement in the meantime:
>
> https://files.ettus.com/app_notes/RFNoC_Specification.pdf
>
> Sam
>
> On Tue, Jan 7, 2020 at 9:32 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Brent,
>> Is there any documentation or info that describes the major changes for
>> RFNoC and UHD that you mentioned?
>> Rob
>>
>> On Tue, Jan 7, 2020 at 3:23 PM Brent Stapleton via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hey All,
>>>
>>> A couple months ago, we released the next iteration of the RFNoC
>>> framework in the master-next branch of the UHD repository. Recently, we've
>>> merged that into our master branch, and today we've pushed our most recent
>>> work public. This includes large and sweeping changes to our core RFNoC
>>> infrastructure, as well as the UHD API, and brings us one (or maybe a few)
>>> steps closer to the UHD 4.0 release.
>>>
>>> If you'd like to update your MPM-based device to the most recent
>>> changes, you'll need to update to the most recent filesystems (based on the
>>> OpenEmbedded Thud release), then update MPM itself, as described in the
>>> "Modifying and compiling UHD and MPM" sections of the UHD manual (1).
>>> Again, master is an unstable branch, and these are large changes, so if you
>>> would like to use a stable API, we recommend using the recent v3.15.0.0
>>> release.
>>>
>>> Happy hacking,
>>> Brent
>>>
>>> (1) https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev
>>> and https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000a0cfc1059ba2f8de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Sam,<div>This looks great.=C2=A0 In addition, I fou=
nd the following Ettus GRCON presentation which may be of interest to some.=
..</div><div>Rob</div><div><a href=3D"https://www.gnuradio.org/grcon/grcon1=
9/presentations/uhd_four_o/Martin%20Braun%20-%20UHD%20Four-O.pdf" target=3D=
"_blank">https://www.gnuradio.org/grcon/grcon19/presentations/uhd_four_o/Ma=
rtin%20Braun%20-%20UHD%20Four-O.pdf</a><br></div><div><br></div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Jan 8, 2020 at 10:50 AM Sam Reiter &lt;<a href=3D"mailto:sam.re=
iter@ettus.com">sam.reiter@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Rob,</div><di=
v><br></div><div>We&#39;re working on updating our RFNoC materials on <a hr=
ef=3D"http://kb.ettus.com" target=3D"_blank">kb.ettus.com</a> currently. Th=
is RFNoC specification should be a good supplement in the meantime:</div><d=
iv><br></div><div><a href=3D"https://files.ettus.com/app_notes/RFNoC_Specif=
ication.pdf" target=3D"_blank">https://files.ettus.com/app_notes/RFNoC_Spec=
ification.pdf</a></div><div><br></div><div><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></div></div></div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Jan 7, 2020 at 9:32 PM Rob Kossler via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi Brent,<div>Is there any documentation or info that des=
cribes the major changes for RFNoC and UHD that you mentioned?</div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jan 7, 2020 at 3:23 PM Brent Stapleton via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><span style=3D"color:rgb(32,33,36);font-famil=
y:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter=
-spacing:0.1px;white-space:pre-wrap">Hey All,</span><br style=3D"color:rgb(=
32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-l=
igatures:none;letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color=
:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-vari=
ant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"><span style=
=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;=
font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap">A co=
uple months ago, we released the next iteration of the RFNoC framework in t=
he master-next branch of the UHD repository. Recently, we&#39;ve merged tha=
t into our master branch, and today we&#39;ve pushed our most recent work p=
ublic. This includes large and sweeping changes to our core RFNoC infrastru=
cture, as well as the UHD API, and brings us one (or maybe a few) steps clo=
ser to the UHD 4.0 release. </span><br style=3D"color:rgb(32,33,36);font-fa=
mily:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;let=
ter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);fo=
nt-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:non=
e;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33=
,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatu=
res:none;letter-spacing:0.1px;white-space:pre-wrap">If you&#39;d like to up=
date your MPM-based device to the most recent changes, you&#39;ll need to u=
pdate to the most recent filesystems (based on the OpenEmbedded Thud releas=
e), then update MPM itself, as described in the &quot;Modifying and compili=
ng UHD and MPM&quot; sections of the UHD manual (1). Again, master is an un=
stable branch, and these are large changes, so if you would like to use a s=
table API, we recommend using the recent v3.15.0.0 release.</span><br style=
=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;=
font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"><br =
style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:=
16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"=
><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;fon=
t-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space:pr=
e-wrap">Happy hacking,</span><br style=3D"color:rgb(32,33,36);font-family:R=
oboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-sp=
acing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-f=
amily:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;le=
tter-spacing:0.1px;white-space:pre-wrap">Brent</span><br style=3D"color:rgb=
(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-=
ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"colo=
r:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-var=
iant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"><span style=
=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;=
font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap">(1) =
</span><a rel=3D"nofollow" href=3D"https://files.ettus.com/manual/page_usrp=
_n3xx.html#n3xx_software_dev" style=3D"color:rgb(102,17,204);font-family:Ro=
boto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spa=
cing:0.1px;white-space:pre-wrap" target=3D"_blank">https://files.ettus.com/=
manual/page_usrp_n3xx.html#n3xx_software_dev</a><span style=3D"color:rgb(32=
,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-lig=
atures:none;letter-spacing:0.1px;white-space:pre-wrap"> and </span><a rel=
=3D"nofollow" href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3=
xx_software_dev" style=3D"color:rgb(102,17,204);font-family:Roboto,Arial,sa=
ns-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;wh=
ite-space:pre-wrap" target=3D"_blank">https://files.ettus.com/manual/page_u=
srp_e3xx.html#e3xx_software_dev</a><br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a0cfc1059ba2f8de--


--===============1598411622623565506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1598411622623565506==--

