Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEE4133082
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2020 21:23:25 +0100 (CET)
Received: from [::1] (port=58602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iovNo-00016r-Vl; Tue, 07 Jan 2020 15:23:20 -0500
Received: from mail-qv1-f53.google.com ([209.85.219.53]:36807)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <brent.stapleton@ettus.com>)
 id 1iovNl-00010b-8T
 for usrp-users@lists.ettus.com; Tue, 07 Jan 2020 15:23:17 -0500
Received: by mail-qv1-f53.google.com with SMTP id m14so450397qvl.3
 for <usrp-users@lists.ettus.com>; Tue, 07 Jan 2020 12:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=F9uWtIAwS301hP7uvao0iHwI1kLsts/GdrOr8KOOBYs=;
 b=elzUD7rlkdwq3bM/TnU+GZEukNLz7cGNUSbjUFyeT7Iv1S9LrZuZG5zply2brCQAWF
 VlqN2RFlM+Kx+cMfoeE+9KDNQJNZ8ONAs+b68yT70PX7Tg4tSJa3fFfhHHP3aq6VIwcM
 sS1H+j4PfcTJV9g/T4v5xDK+fDH3hWWEulTxt7eo9SLNlEocvRl3UFaQDGeY1zR+cC0K
 TNseI1VLp4HupcrkDsrY9LdtnXO5QVCenySxb2UT4SpzjCeIv7Vq/P7cUV41g+7Bw7f4
 2u3PnR/C/vLr/7dMK130nxx9N+uVNUd70t9ARzCYb6BGLErpjdxT/iQDAvyqRNsNIic0
 WNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=F9uWtIAwS301hP7uvao0iHwI1kLsts/GdrOr8KOOBYs=;
 b=cai2As5rPwqSdP/uWTK/X0Z1IcaQASywbaiQo/GtpEpJVSVAozOHSbHet3Q39EvUIP
 Mu26Fki8K8DDuYYfubU+mjwttewR5MilV3+TpXV5DRBmADpOd5qkzMjDqLEtW92Y4ZtG
 E58P3lCCh7PIoxyr6BqXiIWnZBzzEkA1GW3vjxQM7q1Nkq7XrY0UJ3HGRG7iWnEvnxds
 1vxH+SkofUt83DCStj1ZCMSMAVdBQzuhEN9WeJEpl75GQ+R+azyaaVx6qpMJbvNiV35S
 NoSu4a5MYSJkbnCRztSEWVinJwEQjo+hu17yAtxaWD+HTWYxX2ysHhqaSflSP9vjYTP2
 k8cw==
X-Gm-Message-State: APjAAAWKLTmAnHnlBZQIvx9CC11F06MHEcUx6KmFHOwGjKeAzhCa6k1E
 nKjbxvb0IxVdqCpX9AfF9lxxMRzSdXvjub9CYivN0C43RIZ2SQ==
X-Google-Smtp-Source: APXvYqw/GBV3DGZe8uyzzwe/C32YhL84JYl3Cy0kvNSD9YocNCSxBr1fwe1ypInu4C3fy+FnbUEdD9vnnfolwbac8iE=
X-Received: by 2002:a05:6214:1090:: with SMTP id
 o16mr1133527qvr.105.1578428556408; 
 Tue, 07 Jan 2020 12:22:36 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 7 Jan 2020 12:22:25 -0800
Message-ID: <CAN1jYK2xxTUj8JLYOJW6eEJe6BxQK8z1hXyu7vmbn9yzVEXp+Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD RFNoC Update
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
From: Brent Stapleton via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brent Stapleton <brent.stapleton@ettus.com>
Content-Type: multipart/mixed; boundary="===============7300139566990489483=="
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

--===============7300139566990489483==
Content-Type: multipart/alternative; boundary="000000000000689669059b92896c"

--000000000000689669059b92896c
Content-Type: text/plain; charset="UTF-8"

Hey All,

A couple months ago, we released the next iteration of the RFNoC framework
in the master-next branch of the UHD repository. Recently, we've merged
that into our master branch, and today we've pushed our most recent work
public. This includes large and sweeping changes to our core RFNoC
infrastructure, as well as the UHD API, and brings us one (or maybe a few)
steps closer to the UHD 4.0 release.

If you'd like to update your MPM-based device to the most recent changes,
you'll need to update to the most recent filesystems (based on the
OpenEmbedded Thud release), then update MPM itself, as described in the
"Modifying and compiling UHD and MPM" sections of the UHD manual (1).
Again, master is an unstable branch, and these are large changes, so if you
would like to use a stable API, we recommend using the recent v3.15.0.0
release.

Happy hacking,
Brent

(1) https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev
and https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev

--000000000000689669059b92896c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Aria=
l,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1p=
x;white-space:pre-wrap">Hey All,</span><br style=3D"color:rgb(32,33,36);fon=
t-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none=
;letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36=
);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures=
:none;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(3=
2,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-li=
gatures:none;letter-spacing:0.1px;white-space:pre-wrap">A couple months ago=
, we released the next iteration of the RFNoC framework in the master-next =
branch of the UHD repository. Recently, we&#39;ve merged that into our mast=
er branch, and today we&#39;ve pushed our most recent work public. This inc=
ludes large and sweeping changes to our core RFNoC infrastructure, as well =
as the UHD API, and brings us one (or maybe a few) steps closer to the UHD =
4.0 release. </span><br style=3D"color:rgb(32,33,36);font-family:Roboto,Ari=
al,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1=
px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font-family:Robot=
o,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacin=
g:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-famil=
y:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter=
-spacing:0.1px;white-space:pre-wrap">If you&#39;d like to update your MPM-b=
ased device to the most recent changes, you&#39;ll need to update to the mo=
st recent filesystems (based on the OpenEmbedded Thud release), then update=
 MPM itself, as described in the &quot;Modifying and compiling UHD and MPM&=
quot; sections of the UHD manual (1). Again, master is an unstable branch, =
and these are large changes, so if you would like to use a stable API, we r=
ecommend using the recent v3.15.0.0 release.</span><br style=3D"color:rgb(3=
2,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-li=
gatures:none;letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:=
rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-varia=
nt-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D=
"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;fon=
t-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap">Happy h=
acking,</span><br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,san=
s-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;whi=
te-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Ar=
ial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.=
1px;white-space:pre-wrap">Brent</span><br style=3D"color:rgb(32,33,36);font=
-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;=
letter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36)=
;font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:=
none;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32=
,33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-lig=
atures:none;letter-spacing:0.1px;white-space:pre-wrap">(1) </span><a rel=3D=
"nofollow" target=3D"_blank" href=3D"https://files.ettus.com/manual/page_us=
rp_n3xx.html#n3xx_software_dev" style=3D"color:rgb(102,17,204);font-family:=
Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-s=
pacing:0.1px;white-space:pre-wrap">https://files.ettus.com/manual/page_usrp=
_n3xx.html#n3xx_software_dev</a><span style=3D"color:rgb(32,33,36);font-fam=
ily:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;lett=
er-spacing:0.1px;white-space:pre-wrap"> and </span><a rel=3D"nofollow" targ=
et=3D"_blank" href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3=
xx_software_dev" style=3D"color:rgb(102,17,204);font-family:Roboto,Arial,sa=
ns-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;wh=
ite-space:pre-wrap">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx=
_software_dev</a><br></div>

--000000000000689669059b92896c--


--===============7300139566990489483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7300139566990489483==--

