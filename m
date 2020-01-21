Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F625144278
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 17:51:46 +0100 (CET)
Received: from [::1] (port=37038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itwkj-0007Om-IS; Tue, 21 Jan 2020 11:51:45 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:34516)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1itwkf-0007HG-Ey
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 11:51:41 -0500
Received: by mail-ot1-f45.google.com with SMTP id a15so3561987otf.1
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 08:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ju1qsf7JzDvJ22YEXi/aC49zWkFy1hi41kMXb3VTEGU=;
 b=K5q+E3hhdL4/Y1bd4/fVQehVPuaGOX2kv8EmDsJYIfgOSQS31xmI+bNOGi4v34sfJ2
 uBI0f6oZz2N/UsU+6rR25brLy6p+BREro6EDWzxOpywM212cWkzqmWGNrUUZdgLd7x3Z
 gsDX29KSl2eizm7rJ2WIGgQlDxsgsQQgM+HjiJKlt4qwsh25Pb0VYNhVfwO2S5vSMnQb
 jAjd93X+3MXuZ0QAxBxfneuPrTtqtdEOBduVBa0jwstGpin/ZgZhEINOOAdXPDTVqPxH
 GRmefcm/ERBM92ACI8bDVUWJPHXSoL//CAmCoVPn32jOBDyz40+3YGxhhFpaYsL/ZTl0
 bm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ju1qsf7JzDvJ22YEXi/aC49zWkFy1hi41kMXb3VTEGU=;
 b=gN7Hv+t9vD0vIFq9Ht+tKihY6kiGwTXJZlr8xgDIMmI3wh7QktVBxD/bZ5wtd4lIz/
 am6SB30EwAqHnJITRMOuzCb2nR98QuuS9In4s9J2d/BEli2+PabnGPqSlKq0lHntwHZD
 w9GTWbxRU5mbbmwvsPy3pUaBr4qmaVnwOEyHkiNbNDXOenGpVfFvHm4iFXqe+TdnzxcG
 bBCbHSd3SqWdieCfFdhN+JM0f7RyF1pD9S0/eIRY+k3XQlCcwARSaTV3sfuywoq9tCKT
 5Lt654dkej8XWk9MQV7GJGdofRzqq6waHxam8YSPrXr6/oJGUnGewrHutwQL0aW72nJ7
 RuDA==
X-Gm-Message-State: APjAAAWjETnLV3TWHs/ZNAlpWObzicZMG10aMiPU728b2yD2IAfIk50Z
 SQMWvmEIBv4wIMlZyif4X4nsi75HEUaHPrOFHZSDhGq/
X-Google-Smtp-Source: APXvYqzifoVuQCPFSTTdpROarlThGacCxO25FSJ+bIguXqkAj5WN3u+7vwKhCq/Ijlqjty4lRrywaheT1nJ7bc0zbPk=
X-Received: by 2002:a05:6830:10c4:: with SMTP id
 z4mr4340235oto.120.1579625460625; 
 Tue, 21 Jan 2020 08:51:00 -0800 (PST)
MIME-Version: 1.0
References: <CAByKQJ6oU=TSUeptf9wr=LoHehLN_AFEW_bejWTz3JTsp2=8LA@mail.gmail.com>
In-Reply-To: <CAByKQJ6oU=TSUeptf9wr=LoHehLN_AFEW_bejWTz3JTsp2=8LA@mail.gmail.com>
Date: Tue, 21 Jan 2020 11:50:49 -0500
Message-ID: <CAGNhwTPb0ODqnmqsRWgWLy9AovSyM13gT1K+iFYHaQsbs5VPkA@mail.gmail.com>
To: =?UTF-8?Q?Pawe=C5=82_Gocyla?= <pawellgocyla@gmail.com>
Subject: Re: [USRP-users] ettus usrp B200 driver - not working on linux
 ubuntu
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1162117774710729030=="
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

--===============1162117774710729030==
Content-Type: multipart/alternative; boundary="0000000000007588b8059ca936b6"

--0000000000007588b8059ca936b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pawe=C5=82 - I'd recommend using these install instructions <
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux
>.
Please note specifically the section for "Configuring USB". It sounds like
you've done most of the work already; just a couple parts that might be
additions or different to be finalized. Hope this is useful! - MLD

On Tue, Jan 21, 2020 at 11:33 AM Pawe=C5=82 Gocyla via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have a problem with ettus usrp B200 on linux ubuntu.
>
> I have made all steps regarding UHD and driver installation with this
> tutorial:
>
> https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000015BIZSA2&=
l=3Dpl-PL
>
> I turned on support for usb 3.0 in vmware settings.
> I installed intel drivers for support of usb 3.0 (on windows host) ->
> after that vmware was finding this device as B200 for a while but after
> host windows restart is identifying this device as before as WestBridge. =
In
> ubuntu I have warning from vmware workstation that there is a driver erro=
r.
>
> In windows host this device is properly identyfied as Ettus Research LLC
> B20/B210. On ubuntu I installed driver via apt - libuhd3.15.0.
>
> uhd_usrp_probe and uhd_find_devices can't find any usrp devices.
>
> lsusb also doesn't recognise this usrp B200 device.
>
>
> I was searching in google for more information but I don't have any ideas
> how to fix it and what is wrong.
>
> Thanks in advance for your help !
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--0000000000007588b8059ca936b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Pawe=C5=82 - I&#39;d recommend using these install=
 instructions &lt;=C2=A0<a href=3D"https://kb.ettus.com/Building_and_Instal=
ling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux">https://k=
b.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and=
_GNU_Radio)_on_Linux</a>=C2=A0&gt;. Please note specifically the section fo=
r &quot;Configuring USB&quot;. It sounds like you&#39;ve done most of the w=
ork already; just a couple parts that might be additions or different to be=
 finalized. Hope this is useful! - MLD<br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at 11:33 AM =
Pawe=C5=82 Gocyla via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div st=
yle=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:=
0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:=
13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decorati=
on:none;word-spacing:0px;white-space:normal">Hello,</div><div style=3D"text=
-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-=
spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;fon=
t-style:normal;font-variant:normal;font-weight:400;text-decoration:none;wor=
d-spacing:0px;white-space:normal"><br></div><div style=3D"text-align:left;c=
olor:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:norma=
l;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:norma=
l;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px=
;white-space:normal">I have a problem with ettus usrp B200=C2=A0on linux ub=
untu.</div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform=
:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,san=
s-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight=
:400;text-decoration:none;word-spacing:0px;white-space:normal"><br></div><d=
iv style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-in=
dent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-=
size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-dec=
oration:none;word-spacing:0px;white-space:normal">I have made all steps reg=
arding UHD and driver installation with this tutorial:</div><div style=3D"t=
ext-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;lett=
er-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;=
font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;=
word-spacing:0px;white-space:normal"><a style=3D"color:rgb(17,85,204)" href=
=3D"https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000015BIZSA=
2&amp;l=3Dpl-PL" target=3D"_blank">https://knowledge.ni.com/KnowledgeArticl=
eDetails?id=3DkA00Z0000015BIZSA2&amp;l=3Dpl-PL</a></div><div style=3D"text-=
align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-s=
pacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font=
-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word=
-spacing:0px;white-space:normal"><br></div><div style=3D"text-align:left;co=
lor:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal=
;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal=
;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;=
white-space:normal">I turned on support for usb 3.0 in vmware settings.</di=
v><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;tex=
t-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;f=
ont-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text=
-decoration:none;word-spacing:0px;white-space:normal">I installed intel dri=
vers for support of usb 3.0 (on windows host) -&gt; after that vmware was f=
inding this device as B200 for a while but after host windows restart is id=
entifying this device as before as WestBridge. In ubuntu I have warning fro=
m vmware workstation that there is a driver error.</div><div style=3D"text-=
align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-s=
pacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font=
-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word=
-spacing:0px;white-space:normal"><br></div><div style=3D"text-align:left;co=
lor:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal=
;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal=
;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;=
white-space:normal">In windows host this device is properly identyfied as E=
ttus Research LLC B20/B210. On ubuntu I installed driver via apt - libuhd3.=
15.0.</div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform=
:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,san=
s-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight=
:400;text-decoration:none;word-spacing:0px;white-space:normal"><br></div><d=
iv style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-in=
dent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-=
size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-dec=
oration:none;word-spacing:0px;white-space:normal">uhd_usrp_probe and uhd_fi=
nd_devices can&#39;t find any usrp devices.</div><div style=3D"text-align:l=
eft;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:=
normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:=
normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacin=
g:0px;white-space:normal"><br></div><div style=3D"text-align:left;color:rgb=
(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-f=
amily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-v=
ariant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-s=
pace:normal">lsusb also doesn&#39;t recognise this usrp B200 device.</div><=
div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-i=
ndent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font=
-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-de=
coration:none;word-spacing:0px;white-space:normal"><br></div><div style=3D"=
text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;let=
ter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px=
;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none=
;word-spacing:0px;white-space:normal"><br></div><div style=3D"text-align:le=
ft;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:n=
ormal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:n=
ormal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing=
:0px;white-space:normal">I was searching in google for more information but=
 I don&#39;t have any ideas how to fix it and what is wrong.</div><div styl=
e=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0p=
x;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13=
.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration=
:none;word-spacing:0px;white-space:normal"><br></div><div style=3D"text-ali=
gn:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spac=
ing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-st=
yle:normal;font-variant:normal;font-weight:400;text-decoration:none;word-sp=
acing:0px;white-space:normal">Thanks in advance for your help !</div></div>=
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--0000000000007588b8059ca936b6--


--===============1162117774710729030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1162117774710729030==--

