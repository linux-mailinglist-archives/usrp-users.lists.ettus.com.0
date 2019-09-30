Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD37C2424
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 17:21:02 +0200 (CEST)
Received: from [::1] (port=50378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iExTv-0003nj-H5; Mon, 30 Sep 2019 11:20:59 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:43789)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1iExTq-0003eM-Ma
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 11:20:54 -0400
Received: by mail-oi1-f177.google.com with SMTP id t84so11430497oih.10
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4uiZtoHPMrezF8y8O1NX5ugj2C/Q21b9Cq3VfRq3Ehw=;
 b=Tp1HZ3iUqxT6Q6+rPxuj3db74S7nCM1lnMLs+PEkdXrAw6aP9oV/nqAEt49nZ5MJnU
 KbnR9Nv29X+bPtzMz9PZtQD6nmZt3UUqAsxP3S44rELBCGgluKT0HHR/FrYExTBUx2gO
 PbXYjPd5qknfVzfKU3FJU6LHgdE5ym8ZElBZb3lxu05CKzWnx0vjLRg8LbbyMgTed3k+
 O5d5Q1baqpQS7KDG5Lj482f0rZ7tPKBfbxSb5u6wiF9uKDryBxzc0/ETMlSAzgdWPv6E
 m7eeUEeZhgDHP8enTsJL8KXbHuVqO4OukLXM3Mc8DsO7MyriqAGH1O6a29meflCoRZ+t
 Cw/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4uiZtoHPMrezF8y8O1NX5ugj2C/Q21b9Cq3VfRq3Ehw=;
 b=qpF3hGH7HZjcz1tCY0UgsSeJJPXumkT75ASSnxI55NYl0dvVJlRPGdwC5wUY4Dtyk5
 91Mm+0AiKF7EqqvtHXpXQN9LeyfcOR3Q6RRq3QU6UNZZquHLChi+0nFCJT4f4XqnTkjG
 hhO1PYDCJezjaZJfhCvO7M6HcFV9uHIArQbUdrE6Yop3R4YRbs76rINJxsu4v7UpSotr
 iCgGxL7dn6Xyy9vtgmn8nby5RbAW856khTedLd1HOUg+3IXZW85KklwWCgEMwxsaExiR
 Rvu1wCbc00TDBweH23zrwd/AlpF0B3QK8v/0LP9XL55Kuq6DywW3LxfvdD1zVwPRf1hm
 Fspg==
X-Gm-Message-State: APjAAAUUVuStLs6M2PFnkJaI9k8ek7o/TaNa8WftlkRoAEP8IUZFA/nc
 pvIypTALILDvIj9f8crmOQP6x9FjdiB9Ze2JMGmqGtkV
X-Google-Smtp-Source: APXvYqxzDj6qIutbiRkrn2JeMVwv2H0WQPgxsHr6VwJvkU5C6JQpuB6XdobNe4LdUuc7dTyNbguVEJTzo5DvcdoYjDM=
X-Received: by 2002:a54:4e05:: with SMTP id a5mr19006297oiy.91.1569856814022; 
 Mon, 30 Sep 2019 08:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340E8912EBC7072A9D3C46FAF820@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340E8912EBC7072A9D3C46FAF820@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Mon, 30 Sep 2019 10:19:57 -0500
Message-ID: <CACaXmv-DJFq2VQeZXCh-YKF-P=++xOga9o=KJ-_azwBmNFHiKA@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] next pps issues with TwinRX
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7436461355642610474=="
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

--===============7436461355642610474==
Content-Type: multipart/alternative; boundary="000000000000bf942f0593c6c5bb"

--000000000000bf942f0593c6c5bb
Content-Type: text/plain; charset="UTF-8"

Hello Jason:

We'll look into this and get back to you shortly.

If you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?

Which version of GNU Radio are you using?

--Neel Pandeya



On Mon, 30 Sep 2019 at 10:10, Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> We are having another issues with our TwinRXs.  A co-worker has been
> trying to get this to work for a while, but has had no luck with the PPS
> timing.  Here is the notes:
>
> We are running UHD_3.14.1.HEAD-12-g5f75f73f.
>
> The setup is a single X310 (revision: 11,  revision_compat: 7) with two
> TwinRX boards. The device gets Ref/PPS from an Octoclock.
>
> The attached script has a hard-coded IP address and clock rate. It works
> for other X310s with UBX/SBX daughter boards as well as the E320.
>
> Good results are (note line 5 below):
>
> Synchronizing Radios to Reference Signals
> Checking PPS synchronization
> next_pps from 1569851984.633563 is 1569851985.000000
> Setting time for radio `gr uhd usrp source`: 2019-09-30 09:59:45
>
> *PPS alignment PASSED!: [1569851986.0, 1569851986] *
> All radios are Synchronized
>
> Bad results are:
> Synchronizing Radios to Reference Signals
> Checking PPS synchronization
> next_pps from 1569851508.136703 is 1569851509.000000
> Setting time for radio `gr uhd usrp source`: 2019-09-30 09:51:49
> *PPS alignment mismatch: [1569851509.9999995, 1569851509]*
>
> Any thoughts of why this might be happening?
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bf942f0593c6c5bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Jason:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">We&#39;ll look into this and get back to you =
shortly.<br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif">If you get a chance, could you please try it with the tag=
ged UHD 3.14.1.1 ?</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif">Which version of GNU Radio are you using?<br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
--Neel Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, 30 Sep 2019 at 10:10, Jason Matusiak =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We are having another issues with our TwinRXs.=C2=A0 A co-worker has been t=
rying to get this to work for a while, but has had no luck with the PPS tim=
ing.=C2=A0 Here is the notes:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
We are running UHD_3.14.1.HEAD-12-g5f75f73f.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
The setup is a single X310 (<span style=3D"margin:0px">revision: 11</span>,=
=C2=A0 revision_compat: 7) with two TwinRX boards. The device gets Ref/PPS =
from an Octoclock.</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px">The attached script has a hard-coded IP address =
and clock rate. It works for other X310s with UBX/SBX daughter boards as we=
ll as the E320.<br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px">Good results are (note line 5 below):</span></di=
v>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"margin:0px"></span><span style=3D"margin:0px">Synchronizing =
Radios to Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851984.633563 is 1569851985.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:59:45<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment PASSED!: [1569851986.0, 15698519=
86]<br>
</b></div>
<div style=3D"margin:0px">All radios are Synchronized</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px">Bad results are:<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px"><span style=3D"margin:0px">Synchronizing Radios t=
o Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851508.136703 is 1569851509.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:51:49<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment mismatch: [1569851509.9999995, 1=
569851509]</b></div>
<div style=3D"margin:0px"><b><br>
</b></div>
<div style=3D"margin:0px">Any thoughts of why this might be happening?</div=
>
</div>
</div>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bf942f0593c6c5bb--


--===============7436461355642610474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7436461355642610474==--

