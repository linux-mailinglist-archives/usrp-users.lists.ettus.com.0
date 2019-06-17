Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F41491E9
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:02:23 +0200 (CEST)
Received: from [::1] (port=56138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcyli-0003O1-5F; Mon, 17 Jun 2019 17:02:22 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:28235)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@opensdr.com>) id 1hcyla-0002xP-O0
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:02:14 -0400
Received: (qmail 32556 invoked by uid 1003); 17 Jun 2019 21:01:38 -0000
Received: from unknown (HELO ?11.66.208.236?)
 (philip@opensdr.com@99.203.32.138)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 17 Jun 2019 21:01:38 -0000
Date: Mon, 17 Jun 2019 16:01:30 -0500
User-Agent: K-9 Mail for Android
In-Reply-To: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
MIME-Version: 1.0
To: Donnie C <dbc23910@gmail.com>,
 Donnie C via USRP-users <usrp-users@lists.ettus.com>,
 usrp-users@lists.ettus.com
Message-ID: <767D238E-54EC-4DCC-BC77-9C96533F8EAA@opensdr.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@opensdr.com>
Content-Type: multipart/mixed; boundary="===============6932102327157272165=="
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

--===============6932102327157272165==
Content-Type: multipart/alternative; boundary="----7QUPVGQ7CKJE7VOIUI7CBNQAAG0QE2"
Content-Transfer-Encoding: 7bit

------7QUPVGQ7CKJE7VOIUI7CBNQAAG0QE2
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

As I recall, the LEDs default tonon and then an image is loaded into the fp=
ha that turns them off=2E If they stay on, it suggests things are going wro=
ng very early=20

Philip

On June 17, 2019 3:52:54 PM CDT, Donnie C via USRP-users <usrp-users@lists=
=2Eettus=2Ecom> wrote:
>Hello,
>
>I'm currently trying to get the E310 to boot with the most recent image
>release (
>http://files=2Eettus=2Ecom/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdim=
age-gnuradio-demo=2Edirect=2Exz
>) which I burned onto an microSD card using bitmap, but I cannot serial
>connect into it and the device has all the antennae LEDs on=2E I cannot
>find
>what the LEDs mean or why the E310 wont boot

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------7QUPVGQ7CKJE7VOIUI7CBNQAAG0QE2
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>As I recall, the LEDs default tonon and then an im=
age is loaded into the fpha that turns them off=2E If they stay on, it sugg=
ests things are going wrong very early <br><br>Philip<br><br><div class=3D"=
gmail_quote">On June 17, 2019 3:52:54 PM CDT, Donnie C via USRP-users &lt;u=
srp-users@lists=2Eettus=2Ecom&gt; wrote:<blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 2=
04); padding-left: 1ex;">
<div dir=3D"ltr">Hello,<div><br></div><div>I'm currently trying to get the=
 E310 to boot with the most recent image release ( <a href=3D"http://files=
=2Eettus=2Ecom/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-d=
emo=2Edirect=2Exz">http://files=2Eettus=2Ecom/e3xx_images/e3xx-release-4/et=
tus-e3xx-sg1/sdimage-gnuradio-demo=2Edirect=2Exz</a> ) which I burned onto =
an microSD card using bitmap, but I cannot serial connect into it and the d=
evice has all the antennae LEDs on=2E I cannot find what the LEDs mean or w=
hy the E310 wont boot</div></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail=2E=
 Please excuse my brevity=2E</body></html>
------7QUPVGQ7CKJE7VOIUI7CBNQAAG0QE2--


--===============6932102327157272165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6932102327157272165==--

