Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D47C3F0B
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 19:53:11 +0200 (CEST)
Received: from [::1] (port=44164 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFMKj-000122-1N; Tue, 01 Oct 2019 13:53:09 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:42472)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iFMKf-0000iX-Cd
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 13:53:05 -0400
Received: by mail-qk1-f174.google.com with SMTP id f16so12092693qkl.9
 for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2019 10:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/YMi7i40Dw0dLqMbioa4gXu/I9YSxtKnJiRblwIBzD4=;
 b=gQ1z7l/60Xbyru4lHGavEoFpcoS9xOI9jos1XmifEYOm1dMFK4D30wFvFphAu7gH79
 EZ/aJNfEP1wZXJtH5YBym50DmAqA/VFtNYG0+bDDKF7fqCWeKsT48AiodmP+iwRanoMv
 NHLy+RoMMyxHXB7X3S2xs9FC+2oOgno23Qmy2/ZuTlgZLzr5PwJiSk93e3NkOQbrYUj5
 srHxVbu4Wqp4gKLDiYp+Z9bGYsebGAaSMJSRyy2YbcVYOhgoZYE/t9K4sVqbX+itkoZv
 kN+H/FnjoDtSXQW0CdvUxkjn2GsJk3YP3G0DV0/gIlP0x8wkDyOR0xECVOx82fs+COUP
 MELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/YMi7i40Dw0dLqMbioa4gXu/I9YSxtKnJiRblwIBzD4=;
 b=pHK1AIUnsBwkwe1o0g9g0lA1vHS7/HcVajq4xq1UWteBpbtvw3aL1Q0SVkOkTKKMmB
 FhCGN5wr8fVoFtET1jpOm3rPpYc4YZDPHARHxNoQb6/jMpbWRskFCsQK8M/njXGZm72d
 FzedMoJxK9nS6FtSlgaZg7SWpkoCzlpcn0JV4PKVI2q3VTJs110HgK45ZaJd7KkuZG/9
 QEbuHZ6upqcsEVVVfehAl8vcFJ0d+7iy/vCuKrWQvmFXbMInccxgdvULrOI3PONapfAP
 2+0rKK7ECTEClayqzTcCmuvVf9oQPe374rou1AW2aeSCk92mQj4/gXp/X/+7YrbqfE4R
 RVPQ==
X-Gm-Message-State: APjAAAXhh5+bQVjPF6UOC6WXbPQTsvxTob9BJCZT+c/KJ81XQ+1U9FHn
 Nz+Ey/Bh5PjN2Sv7CPorr3crNZT4
X-Google-Smtp-Source: APXvYqyDwbnc8NAH/Gw1nNOfX9Yqx4w4GvqRyLUKEa0lHU82XDZgPAGixDc0movn6QhJezLNHGI2/A==
X-Received: by 2002:a05:620a:1335:: with SMTP id
 p21mr7101141qkj.321.1569952344811; 
 Tue, 01 Oct 2019 10:52:24 -0700 (PDT)
Received: from ?IPv6:2605:b100:d14:b81a:19b4:2e1d:8cf5:4250?
 ([2605:b100:d14:b81a:19b4:2e1d:8cf5:4250])
 by smtp.gmail.com with ESMTPSA id r1sm9790299qti.4.2019.10.01.10.52.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 10:52:24 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <BL0PR12MB23404CB926FD14B0E4FB6B23AF9D0@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Tue, 1 Oct 2019 13:52:23 -0400
Message-Id: <97A84D63-7989-4368-85C3-0894E35B88AC@gmail.com>
References: <BL0PR12MB23404CB926FD14B0E4FB6B23AF9D0@BL0PR12MB2340.namprd12.prod.outlook.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] RFNoC not re-tuning consistently
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5994755083710835553=="
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


--===============5994755083710835553==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-50BABE9A-285E-44F4-879B-EFB94D83FB5D
Content-Transfer-Encoding: 7bit


--Apple-Mail-50BABE9A-285E-44F4-879B-EFB94D83FB5D
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I wonder if this is just because in RFNoC the DDC is explicitly visible, so y=
ou have to program it to account for synthesizer step size?



Sent from my iPhone

> On Oct 1, 2019, at 12:52 PM, Jason Matusiak via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> I have an issue that is very odd to me.  I have tried two different X310s w=
ith different daughter cards and they are all exhibiting this behavior.  It f=
eels like I am doing something stupid, but I can't quite figure out what. (a=
 picture is attached)
>=20
> If I have a usrp source connected to a freq sync, everything is golden.  I=
f I instead use an RFNoC source connected to a DDC to the freq sync, I get i=
nconsistent results.  I think the settings are the exact same, but it feels l=
ike the radio is not being reset properly.  Sometimes it tunes to where I te=
ll it to and I can see my signal of interest perfectly, other times it off-t=
unes anywhere from a few MHz to way off the screen.  Subsequent retuning see=
ms to actually make changes to the tune frequency, but not consistently (may=
be I need to tune to 943MHz one time to mimic a tune to 910MHz. the next tim=
e I would have to tune somewhere else).
>=20
> I am using the stock image and have tried with both XG and HG (though I am=
 mostly testing with XG).
>=20
> UHD_3.14.1.HEAD-0-g5491b80e
>=20
> GR v3.7.13.4
> <Screenshot from 2019-10-01 12-51-07.png>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-50BABE9A-285E-44F4-879B-EFB94D83FB5D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto">I wonder if this is just because in RFNoC the DDC is explicitly visible, so you have to program it to account for synthesizer step size?<div><br></div><div><br><br><div id="AppleMailSignature" dir="ltr">Sent from my iPhone</div><div dir="ltr"><br>On Oct 1, 2019, at 12:52 PM, Jason Matusiak via USRP-users &lt;<a href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockquote type="cite"><div dir="ltr">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I have an issue that is very odd to me.&nbsp; I have tried two different X310s with different daughter cards and they are all exhibiting this behavior.&nbsp; It feels like I am doing something stupid, but I can't quite figure out what. (a picture is attached)</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
If I have a usrp source connected to a freq sync, everything is golden.&nbsp; If I instead use an RFNoC source connected to a DDC to the freq sync, I get inconsistent results.&nbsp; I think the settings are the exact same, but it feels like the radio is not being reset
 properly.&nbsp; Sometimes it tunes to where I tell it to and I can see my signal of interest perfectly, other times it off-tunes anywhere from a few MHz to way off the screen.&nbsp; Subsequent retuning seems to actually make changes to the tune frequency, but not consistently
 (maybe I need to tune to 943MHz one time to mimic a tune to 910MHz. the next time I would have to tune somewhere else).</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am using the stock image and have tried with both XG and HG (though I am mostly testing with XG).</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
UHD_3.14.1.HEAD-0-g5491b80e<br>
</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style="font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
GR v3.7.13.4</div>


</div></blockquote><blockquote type="cite"><div dir="ltr">&lt;Screenshot from 2019-10-01 12-51-07.png&gt;</div></blockquote><blockquote type="cite"><div dir="ltr"><span>_______________________________________________</span><br><span>USRP-users mailing list</span><br><span><a href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br><span><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body></html>
--Apple-Mail-50BABE9A-285E-44F4-879B-EFB94D83FB5D--


--===============5994755083710835553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5994755083710835553==--

