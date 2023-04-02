Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FDD6D3A21
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 22:05:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63152384111
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 16:05:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680465923; bh=7RFttSLi8ABqoRLsmv7UkGjWPc9I5dKW01tWEnm1AQE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nx72We86V4mQ8oqA7qL+CPd5qzs/776tkzlsdcXKJrhpYi/f9F7e0hp32HuA5f7+p
	 J/eH6ymhDS4kmeMNspyrUTIwCAt7KjDDSQ+b6naLjTcV4UxqmKjqQ6rUxDbs8Yqalm
	 cEtjJUJ8ZI/cLorecSDJx3mZnEG6IrOyEbYc3axxfaS+oL5xR7ZaxF4UKa1FIf9Ryz
	 oZ0B+A6HgZ1dHqiEdmGlsbkuqDezv+F1G7XQa+o2HA0a9M1tdpOvrIdPx+MpO5Ztlx
	 ekNP2dF29o9DchrzwObB3DeQz/8OLkPFHolfZ7FLYG1diSvL9F+gLEf50+GRtCSARC
	 +7UkUew6MskTw==
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mm2.emwd.com (Postfix) with ESMTPS id C0C36380CB9
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 16:04:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="EYitcuJl";
	dkim-atps=neutral
Received: by mail-pg1-f174.google.com with SMTP id z10so16270604pgr.8
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 13:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1680465888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lulCWvX7fBLj+WwUf20VomqauZugiboBVZiT+SRxPLw=;
        b=EYitcuJlePJ3d4REUJDVMeo2ql20bXgk5bBSKI2qqZ5EUw85gIY53ddDf87k78f3Ct
         g1+vbIVW0z/Pzzi6fGvcZ9PYZ7U6BynkSC3ZNwktPlFZNIC0BfOPYJr8GzcGV4eRySyu
         tt6I1k6zTmNsmUWK7jcTeMOLDPptxWbRlz4ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680465888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lulCWvX7fBLj+WwUf20VomqauZugiboBVZiT+SRxPLw=;
        b=seqfeYYnl5WOHgl9wQtySHlEGvHTl+SZPGrpWxuJahNtBDDzbJxHS7lTcjvRZPx6ou
         Llt64pZn3ltXBnkl+EKozsfDuUFMBbTKMIEqPWYUh/32r8Wp/ebZAf470FyRpD7ggNjl
         WrN5b/ycdLfkh7z9PnsW/skqWVWooB28iEpD7Zn7AuqlUHVwj2OdiIfNUDhjYYeLDRo8
         2bDPuHY85Dsf1fZLUExEE1aWRpfo9gStOFxNxrrY1aXfQBZJR+TghgwD2NnG7EM4K7HY
         mU8GHGrMhEYpOknEc+ML20RQ9chCX+A2L1lahQB7/V7I0Hnyf5IrnHtBgtCo3XoL5bss
         mp1w==
X-Gm-Message-State: AAQBX9cvVm51JWK8TX6e+fqZvoFyr/20eJ8nFVcZYVwOR1WoOsm0mq4A
	Hl+KL8OtNvDi7CBnPS/oOcKQv4zTK5gpFMOQ3Go7W/DsyzOFbqRBx4hrAtFTHOi2HL4rtGnJwY0
	nMdB4w2mqnCn4EX7pdl69WElHa05fAOdAMy1xBL3ifIt9iQ==
X-Google-Smtp-Source: AKy350asncwMmT9ILp+rErRdHIaw1lh0eu4z44rJXOlks1DBFPQ5pTMr8FPBfRmcrpPXJn2fxi5o88KPAkBYbRbvPNg=
X-Received: by 2002:a05:6a00:1150:b0:627:fb45:9279 with SMTP id
 b16-20020a056a00115000b00627fb459279mr8280158pfm.0.1680465888427; Sun, 02 Apr
 2023 13:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
 <650df62f-683c-925d-330d-be87fa636a33@gmail.com>
In-Reply-To: <650df62f-683c-925d-330d-be87fa636a33@gmail.com>
Date: Mon, 3 Apr 2023 01:34:38 +0530
Message-ID: <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RTPAVRAZSXGCQZDNQTACLCWYKSFRALV3
X-Message-ID-Hash: RTPAVRAZSXGCQZDNQTACLCWYKSFRALV3
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTPAVRAZSXGCQZDNQTACLCWYKSFRALV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============3748727844892598732=="

--===============3748727844892598732==
Content-Type: multipart/alternative; boundary="00000000000056b83e05f85ff442"

--00000000000056b83e05f85ff442
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the response.

Sir, both of my ports are "Gigabit Ethernet," so I was hoping two N200
might respond on ping in the windows command window since I have changed
the IP of both N-200 to "192.168.10.1" and "192.168.10.2". Is there any way
to connect multiple N-series in windows with my setting or a way to resolve
the issue?

If two USRP are recognized by PC, the rest is easy to use in MATLAB.


On Mon, Apr 3, 2023 at 12:26=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 02/04/2023 13:34, Arhum Ahmad wrote:
> > Respected sir,
> >
> > I am trying to connect multiple USRP N200 simultaneously to the same
> > system to use in MATLAB. However, It is not recognized by the system.
> > My PC has 2 ethernet ports (10 and 5 Gbit). N-200 connects via a
> > 10Gbit port but not by 5 Gbit. I have changed the IP of N-200, but it
> > doesn't work. I have tried to use a router to make a local LAN to
> > connect the PC to 2 N-200, but it did not work either. Is there any
> > specific way to connect multiple N-200 in the PC and use it in MATLAB
> > for simultaneous operation?It will be very helpful for my experiment.
> The N200 ONLY supports 1GBit connections.  It doesn't autoconfigure.  It
> MUST use a standard 1GIGe connection.
>
> Each N200 will need to have a unique IP address.    Your network ports
> need to be configured accordingly.
>
> I'm doubting that your report of a successful connection to a *10Gbit* po=
rt
>    is actually correct.  It must be a *1GiGe* port.
>
> I can't help with MATLAB.  And indeed, there are only a handful of
> MATLAB users on the usrp-users mailing list.
>
>
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--00000000000056b83e05f85ff442
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the response.<div><br></div><div>Sir, both o=
f my ports are &quot;<span style=3D"color:rgb(0,0,0);font-family:Roboto,san=
s-serif;font-size:14px">Gigabit Ethernet,&quot; so I was hoping two N200=C2=
=A0 might respond on ping in the windows=C2=A0command window=C2=A0since I h=
ave changed the IP of both N-200 to &quot;</span><span style=3D"background-=
color:rgb(251,252,253);color:rgb(0,0,0);font-family:monospace,fixed;font-si=
ze:14.7px">192.168.10.1&quot; and &quot;</span><span style=3D"background-co=
lor:rgb(251,252,253);color:rgb(0,0,0);font-family:monospace,fixed;font-size=
:14.7px">192.168.10.2&quot;. Is there any way to connect multiple N-series =
in windows with my setting or a way to resolve the issue?</span><div><span =
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:mon=
ospace,fixed;font-size:14.7px"><br></span></div><div><span style=3D"color:r=
gb(0,0,0);font-family:monospace,fixed;font-size:14.7px;background-color:rgb=
(251,252,253)">If two USRP are recognized by PC, the rest is easy to use in=
 MATLAB</span><span style=3D"background-color:rgb(251,252,253);color:rgb(0,=
0,0);font-family:monospace,fixed;font-size:14.7px">.</span></div><div><span=
 style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:mo=
nospace,fixed;font-size:14.7px"><br></span></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 =
at 12:26=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 02/04/2023 13:34, Arhum Ahmad wrote:<br=
>
&gt; Respected sir,<br>
&gt;<br>
&gt; I am trying to connect multiple USRP N200 simultaneously to the same <=
br>
&gt; system to use in MATLAB. However, It is not recognized by the=C2=A0sys=
tem. <br>
&gt; My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-200 connects via a =
<br>
&gt; 10Gbit port but not by 5 Gbit. I have changed the IP of N-200, but it =
<br>
&gt; doesn&#39;t=C2=A0work. I have tried to use a router to make a local LA=
N to <br>
&gt; connect the PC to 2 N-200, but it did not work either. Is there any <b=
r>
&gt; specific way to connect multiple N-200 in the PC and use it in MATLAB =
<br>
&gt; for simultaneous operation?It will be very helpful for my experiment.<=
br>
The N200 ONLY supports 1GBit connections.=C2=A0 It doesn&#39;t autoconfigur=
e.=C2=A0 It <br>
MUST use a standard 1GIGe connection.<br>
<br>
Each N200 will need to have a unique IP address.=C2=A0=C2=A0=C2=A0 Your net=
work ports <br>
need to be configured accordingly.<br>
<br>
I&#39;m doubting that your report of a successful connection to a *10Gbit* =
port<br>
=C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1GiGe* port.<br>
<br>
I can&#39;t help with MATLAB.=C2=A0 And indeed, there are only a handful of=
 <br>
MATLAB users on the usrp-users mailing list.<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);f=
ont-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=
=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall"><span style=3D"font-family:&quot;times new roman&quot;,serif">Thanks =
and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,100,100)=
;font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhu=
m Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT R=
opar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;wid=
th:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p=
 style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+=
91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" targ=
et=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,10=
2,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"di=
splay:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"co=
lor:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.i=
n</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb=
(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communicat=
ion Research Lab, J.C.Bose Building</span></td></tr></tbody></table></div><=
/div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--00000000000056b83e05f85ff442--

--===============3748727844892598732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3748727844892598732==--
