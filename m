Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AD21339AB
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 04:32:58 +0100 (CET)
Received: from [::1] (port=35620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ip25V-0003WA-7y; Tue, 07 Jan 2020 22:32:53 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:40873)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ip25S-0003SI-Bb
 for usrp-users@lists.ettus.com; Tue, 07 Jan 2020 22:32:50 -0500
Received: by mail-oi1-f177.google.com with SMTP id c77so1465504oib.7
 for <usrp-users@lists.ettus.com>; Tue, 07 Jan 2020 19:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dF4lIV6UCZxjSfVI5lDqbc9jeFBFx4bdiPiL7jDOuHc=;
 b=bz33uvUezUKajUSNUCLf4T5RDJ9gPr417SkVcxTekfcL+jshpMMpMm3L96ZGMFIV6x
 kjgj4nEtQ/xwvh2RPBXwCYvTZ1AR4b/sBK1K3Hv0JatpWzzP1Qph+lPNDrzN7PUEgDRD
 UNSNz84mlgff0+hLKtyaAtCxAsR1eKYEnRP6Dz75x1H5mAEQUwT05ROXgntzvWa2W5Xw
 TR/iEg1LkG33OkbKSaa1Cy06wSP2lYB76yietbyAQXaM4qrxJL9UKenUPnVS7AriqCoq
 rRoZIevt3sVln1/DRY9uKK29u7IbvSIaihhPbub8xpYErkhzsNeMnuW0mwFqepxhYE1D
 Bapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dF4lIV6UCZxjSfVI5lDqbc9jeFBFx4bdiPiL7jDOuHc=;
 b=FHb4Bo1KFL8K0B2U5N9E8sytljATDd4ubaNZ5tObK7EglaUbTJ3eXafzuMzc86JG/J
 o/4pwVwA6oQU9+erKoTQh4KWl2abpqWRe5Gw3+G6jDmyiptR0sLwiq66zaqE4DUt01ZC
 hLLptY0v3FAr3BLalEQDt/FKfLlpxQBhG+zCx/NWkZEufBkE2LfAZAlHijGz+IfrQudM
 pako3BqUWNghCZYN21OPMVt+Vw2FxyaojLq1Sfts3QLUcPXj0r6pXrVJLqZXmz58A3wD
 vnpAWwu/otEFOb1vIqq+TgTR6e0n83qIMti3KyF1UiBrtomRa8e1R52ltqjuy70aG4vM
 LPYQ==
X-Gm-Message-State: APjAAAXn+7DqBL8cI4eT5kwYRhaXvy3R9SPk5S+nVa7H+iv1F5vNn97E
 d+Jpg1/pi26pImd5o0bD1qD3cQjAhL7l4PSwYgIOVg==
X-Google-Smtp-Source: APXvYqwE8qboSDcgVu/Rq1G3ot/0utedKGQATD5xDjRlzDQgYXUR2TmjmhaMZvSN/s9LcnStwzf74Mc15R7RB+/RXIQ=
X-Received: by 2002:aca:eb83:: with SMTP id j125mr1352999oih.153.1578454329189; 
 Tue, 07 Jan 2020 19:32:09 -0800 (PST)
MIME-Version: 1.0
References: <CAN1jYK2xxTUj8JLYOJW6eEJe6BxQK8z1hXyu7vmbn9yzVEXp+Q@mail.gmail.com>
In-Reply-To: <CAN1jYK2xxTUj8JLYOJW6eEJe6BxQK8z1hXyu7vmbn9yzVEXp+Q@mail.gmail.com>
Date: Tue, 7 Jan 2020 22:31:58 -0500
Message-ID: <CAB__hTTHRDOi+L+Gpf+kMNyt-RtdNQ-B+GGY=iC0DKxASQa3NA@mail.gmail.com>
To: Brent Stapleton <brent.stapleton@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============7019868004048800563=="
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

--===============7019868004048800563==
Content-Type: multipart/alternative; boundary="00000000000096f4c8059b988947"

--00000000000096f4c8059b988947
Content-Type: text/plain; charset="UTF-8"

Hi Brent,
Is there any documentation or info that describes the major changes for
RFNoC and UHD that you mentioned?
Rob

On Tue, Jan 7, 2020 at 3:23 PM Brent Stapleton via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey All,
>
> A couple months ago, we released the next iteration of the RFNoC framework
> in the master-next branch of the UHD repository. Recently, we've merged
> that into our master branch, and today we've pushed our most recent work
> public. This includes large and sweeping changes to our core RFNoC
> infrastructure, as well as the UHD API, and brings us one (or maybe a few)
> steps closer to the UHD 4.0 release.
>
> If you'd like to update your MPM-based device to the most recent changes,
> you'll need to update to the most recent filesystems (based on the
> OpenEmbedded Thud release), then update MPM itself, as described in the
> "Modifying and compiling UHD and MPM" sections of the UHD manual (1).
> Again, master is an unstable branch, and these are large changes, so if you
> would like to use a stable API, we recommend using the recent v3.15.0.0
> release.
>
> Happy hacking,
> Brent
>
> (1) https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev
> and https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000096f4c8059b988947
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brent,<div>Is there any documentation or info that desc=
ribes the major changes for RFNoC and UHD that you mentioned?</div><div>Rob=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jan 7, 2020 at 3:23 PM Brent Stapleton via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans=
-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;whit=
e-space:pre-wrap">Hey All,</span><br style=3D"color:rgb(32,33,36);font-fami=
ly:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;lette=
r-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font=
-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;=
letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,3=
6);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligature=
s:none;letter-spacing:0.1px;white-space:pre-wrap">A couple months ago, we r=
eleased the next iteration of the RFNoC framework in the master-next branch=
 of the UHD repository. Recently, we&#39;ve merged that into our master bra=
nch, and today we&#39;ve pushed our most recent work public. This includes =
large and sweeping changes to our core RFNoC infrastructure, as well as the=
 UHD API, and brings us one (or maybe a few) steps closer to the UHD 4.0 re=
lease. </span><br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,san=
s-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;whi=
te-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font-family:Roboto,Aria=
l,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1p=
x;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-family:Robo=
to,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spaci=
ng:0.1px;white-space:pre-wrap">If you&#39;d like to update your MPM-based d=
evice to the most recent changes, you&#39;ll need to update to the most rec=
ent filesystems (based on the OpenEmbedded Thud release), then update MPM i=
tself, as described in the &quot;Modifying and compiling UHD and MPM&quot; =
sections of the UHD manual (1). Again, master is an unstable branch, and th=
ese are large changes, so if you would like to use a stable API, we recomme=
nd using the recent v3.15.0.0 release.</span><br style=3D"color:rgb(32,33,3=
6);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligature=
s:none;letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32=
,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-lig=
atures:none;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color=
:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-vari=
ant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap">Happy hacking=
,</span><br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-seri=
f;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-spa=
ce:pre-wrap"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sa=
ns-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;wh=
ite-space:pre-wrap">Brent</span><br style=3D"color:rgb(32,33,36);font-famil=
y:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter=
-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font-=
family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;l=
etter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36=
);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures=
:none;letter-spacing:0.1px;white-space:pre-wrap">(1) </span><a rel=3D"nofol=
low" href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_softwa=
re_dev" style=3D"color:rgb(102,17,204);font-family:Roboto,Arial,sans-serif;=
font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space=
:pre-wrap" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.=
html#n3xx_software_dev</a><span style=3D"color:rgb(32,33,36);font-family:Ro=
boto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spa=
cing:0.1px;white-space:pre-wrap"> and </span><a rel=3D"nofollow" href=3D"ht=
tps://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev" style=
=3D"color:rgb(102,17,204);font-family:Roboto,Arial,sans-serif;font-size:16p=
x;font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap" ta=
rget=3D"_blank">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_sof=
tware_dev</a><br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000096f4c8059b988947--


--===============7019868004048800563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7019868004048800563==--

