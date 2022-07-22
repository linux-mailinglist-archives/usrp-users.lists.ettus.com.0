Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420A57E6DE
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jul 2022 20:55:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CE06383F81
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jul 2022 14:55:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658516139; bh=Z5utrAD/8Ogi/p2ECvDqo3WHOgR7IpXeIXGATbfIHmI=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lWCIoauWOBzIDRHRCFqo5XzvxxLeOQOfGObPEkYxxdzU2HYzYgy4CXirIAilWwc/X
	 rU9gVArriBmPgiQytWb5nfPxaOBw3QZknD/vqKjnyvay9aNDibU7vlmuuuc7d/A84Y
	 R+HJ5I27214PCpbezgCHtnN2L2vnkYBoR/6hJg0X9Jyl6jcI8zFTbL9gUkxSULVG4a
	 SGWQNVIusRGhn5YrADG3S9wLR0oRtSr7uHFANN2xQACrg4horshcquwOjdxxPyTm14
	 JjK3ooWoTDXnWEEqEIZKzfH3tC46+onJQG/DiD6uP7bUtiNFB3GRPgbpUfyg05BGZn
	 ri2zuf/3BW0/Q==
Received: from sender4-of-o58.zoho.com (sender4-of-o58.zoho.com [136.143.188.58])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A7E938399D
	for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 14:53:53 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1658516031; cv=none;
	d=zohomail.com; s=zohoarc;
	b=FLcLsreb3Io30ta7MTpBN+9K2WiYtem3+CQeTVAkFrcFP7fbkpwMs2zlaldt7zpVzOkIytIcre2S3mlHXWVXrm44RmTyO21sMvCd/zR7GaUxglCwiyZ6japYGWY69fj7KOecrdJyQZ33R1LnrZOhDxj8o39is6EhpfGDRD5lJE8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1658516031; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To;
	bh=ASJSqBEz9lb1OMnYsD41lOarCN60giqhmSPuE6jtpEI=;
	b=OWX3SECtxe+Ie2yNLfN26VdUdB+389H7WLpLnTWqw9JlC7jTcvC5Sog2UUHnfRyYXB3S2Tandc0yXFG2DflOdVCeuYhn/PKGsXP93zj4VsnWHOks91wneYadouIUc40y0gpaBITexFvkSklHxCPqNBHFGu7rtuekh6o6/yhQ9f8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=jgallegos@uberasch.com;
	dmarc=pass header.from=<jgallegos@uberasch.com>
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1658516025919361.1620361074429; Fri, 22 Jul 2022 11:53:45 -0700 (PDT)
Date: Fri, 22 Jul 2022 11:53:45 -0700
From: Jack Gallegos <jgallegos@uberasch.com>
To: "usrp-users" <usrp-users@lists.ettus.com>
Message-Id: <182274231d9.1031c912c2324005.5412430506593081403@uberasch.com>
In-Reply-To: 
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Message-ID-Hash: ZSTS6YINF5I6LBHPQFK22AHXDLKFZKWU
X-Message-ID-Hash: ZSTS6YINF5I6LBHPQFK22AHXDLKFZKWU
X-MailFrom: jgallegos@uberasch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Stream command not executing on PPS edge
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZSTS6YINF5I6LBHPQFK22AHXDLKFZKWU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5110397836961258596=="

--===============5110397836961258596==
Content-Type: multipart/alternative;
	boundary="----=_Part_7480170_945693236.1658516025818"

------=_Part_7480170_945693236.1658516025818
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am trying to receive samples from a transmitter that sends a data burst e=
very second starting on rising edge of GPS PPS with my X310. My program str=
ucture works like this:



initialize USRP -> create stream command as MODE_NUM_SAMPS_AND_DONE and str=
eam_now=3Dfalse -> set time on USRP at next pps to 0.0 seconds -> wait 2 se=
conds in thread for supposed issue on PPS taking time to update -> set stre=
am command time_spec to be time of last PPS + 1.0 seconds (so in theory, on=
 another PPS edge) -> issue stream command -> receive samples



The ref and pps sources are from external gpsdo and I can tell they are sel=
ected because the PPS LED is blinking and the REF LED is solid and external=
 sensors are checked for lock during initialization.



However, when I run this program, I am finding that the USRP is not samplin=
g at the start of the PPS, but at seemingly random times. For example, look=
ing at the received samples, the transmitted pulse that I know for certain =
is starting with the PPS is being received at 0.1, 0.2, 0.3 seconds, etc.



How can I be sure that the USRP knows to sample directly on the PPS edge?





-Jack Gallegos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
------=_Part_7480170_945693236.1658516025818
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>I am trying to receive samples from a transmitter =
that sends a data burst every second starting on rising edge of GPS PPS wit=
h my X310. My program structure works like this:<br></div><div><br></div><d=
iv>initialize USRP -&gt; create stream command as MODE_NUM_SAMPS_AND_DONE a=
nd stream_now=3Dfalse -&gt; set time on USRP at next pps to 0.0 seconds -&g=
t; wait 2 seconds in thread for supposed issue on PPS taking time to update=
 -&gt; set stream command time_spec to be time of last PPS + 1.0 seconds (s=
o in theory, on another PPS edge) -&gt; issue stream command -&gt; receive =
samples<br></div><div><br></div><div>The ref and pps sources are from exter=
nal gpsdo and I can tell they are selected because the PPS LED is blinking =
and the REF LED is solid and external sensors are checked for lock during i=
nitialization.<br></div><div><br></div><div>However, when I run this progra=
m, I am finding that the USRP is not sampling at the start of the PPS, but =
at seemingly random times. For example, looking at the received samples, th=
e transmitted pulse that I know for certain is starting with the PPS is bei=
ng received at 0.1, 0.2, 0.3 seconds, etc.<br></div><div><br></div><div>How=
 can I be sure that the USRP knows to sample directly on the PPS edge?<br><=
/div><div><br></div><div><br></div><div class=3D"zmail_signature_below"><di=
v id=3D"" data-zbluepencil-ignore=3D"true" data-sigid=3D"426938100000003300=
1"><div>-Jack Gallegos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></div><div><br></d=
iv></div></div><div><br></div></div><br></body></html>
------=_Part_7480170_945693236.1658516025818--

--===============5110397836961258596==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5110397836961258596==--
