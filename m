Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3ED80AD3E
	for <lists+usrp-users@lfdr.de>; Fri,  8 Dec 2023 20:41:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41EC43853EE
	for <lists+usrp-users@lfdr.de>; Fri,  8 Dec 2023 14:41:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702064462; bh=IFb6WihQSYsCISIIEXoo/fKI6rswBmpAQlDqkPnGFdg=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YYNuoKiqUZv29voAn9DvOCWuDtcu+kNyp4NAUkOI1iFFwAMOm9wAmWYQgPtg7+nE0
	 dTZivDvCn1IoXyLzUjQDGSvVTVG2iyBN5fNGfPJPwIfd0auoTsCo2gn8GbZIo2HZ8S
	 LSo3tM/BruYhpfZ55uPrGw3pzq/Dk71W9vAEAcbOn4n9DA9dp0DOBhn/Ufas9rTQ3u
	 T0k80qlz+HIvzwi5THKu8Of4mbIrYhf2U49O+4Q+BRja6DG+MEBgnSG/T2SHo9L3SM
	 Lnp+p/Rgc3bhdXa8EUxhv1xNERNbYk+n4tsRRtJEZnh7yYu7tueaH4upc/dxeUN+jA
	 YYJGB/8/7E0xw==
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com [136.143.188.55])
	by mm2.emwd.com (Postfix) with ESMTPS id 24808385181
	for <usrp-users@lists.ettus.com>; Fri,  8 Dec 2023 14:40:13 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; t=1702064411; cv=none;
	d=zohomail.com; s=zohoarc;
	b=DZOPxsRnEYzkYDTKz4x63uV7gGwGefk/ttHNfVsQR+yu7nj7R1XebWncoGDjGbozHR4kJSqaPw/RoCxZkRLunTZgtKwdjpExbMXWLy47qg5rRNdZBqtmx9edVAkPcDSN/hNsnvCHLLgdfR4k511TvXkrJ+MDPVm273UG0iLkyr8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1702064411; h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
	bh=rsJL7qAhSHw+gWeUAFZxGlNlPqVDs7FK3kGkCugcSfw=;
	b=YCf3NS45gW58LciLJbGvauzHogYIvGwckDU8uRW+LnoyF1FIq6STd6lnVWfydMsvOqH/wfldMX8o0Qm5jG+T5LDqHh9f1Y9c5k6Un+v9o9BHRNG3gwKz7oMsSXzhW6RSItGuNxSeWhnfB6ESCbujt3CvNegPFCNDhVOfrkkeyoA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=jgallegos@uberasch.com;
	dmarc=pass header.from=<jgallegos@uberasch.com>
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1702064404607193.4966940821273; Fri, 8 Dec 2023 11:40:04 -0800 (PST)
Date: Fri, 08 Dec 2023 11:40:04 -0800
From: Jack Gallegos <jgallegos@uberasch.com>
To: "usrp-users" <usrp-users@lists.ettus.com>
Message-Id: <18c4af1b837.11a45e1bb826208.2104971221830417350@uberasch.com>
In-Reply-To: 
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Message-ID-Hash: WYNJCG2ZRV7GRR3CKWMX66AW6CYWDCCZ
X-Message-ID-Hash: WYNJCG2ZRV7GRR3CKWMX66AW6CYWDCCZ
X-MailFrom: jgallegos@uberasch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Looking for help probing N310 with newer version of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYNJCG2ZRV7GRR3CKWMX66AW6CYWDCCZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7468056755095203926=="

--===============7468056755095203926==
Content-Type: multipart/alternative;
	boundary="----=_Part_2584138_1542879595.1702064404535"

------=_Part_2584138_1542879595.1702064404535
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I am trying to figure out why I cannot initialize an N310 from my host (UHD 4.6, Ubuntu 20.04). I get the following when I try to run uhd_usrp probe:

$ uhd_usrp_probe

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.4.2,type=n3xx,product=n310,serial=xxxxxxx,claimed=False,addr=192.168.4.2

[WARNING] [MPM.RPCServer] A timeout event occured!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'



If it helps, the mgmt IP is 192.168.1.217 (which the host has access to on another interface). I am able to ssh into the mgmt interface per the UHD manual and run this command successfully (although looks like internally the device is using UHD 3.15)



Jack Gallegos
------=_Part_2584138_1542879595.1702064404535
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>I am trying to figure out why I cannot initialize =
an N310 from my host (UHD 4.6, Ubuntu 20.04). I get the following when I tr=
y to run uhd_usrp probe:<br><br>$ uhd_usrp_probe<br></div><div>[INFO] [UHD]=
 linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1<b=
r></div><div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.4.2,type=3Dn3xx,product=3Dn310,serial=3Dxxxxxxx,claimed=
=3DFalse,addr=3D192.168.4.2<br></div><div>[WARNING] [MPM.RPCServer] A timeo=
ut event occured!<br></div><div>Error: rpc::timeout: Timeout of 2000ms whil=
e calling RPC function 'set_device_id'<br></div><div><br></div><div>If it h=
elps, the mgmt IP is 192.168.1.217 (which the host has access to on another=
 interface). I am able to ssh into the mgmt interface per the UHD manual an=
d run this command successfully (although looks like internally the device =
is using UHD 3.15)<br></div><div><br></div><div class=3D"zmail_signature_be=
low"><div id=3D"" data-zbluepencil-ignore=3D"true" data-sigid=3D"4269381000=
000033001"><div>Jack Gallegos<br></div></div></div><div><br></div></div><br=
></body></html>
------=_Part_2584138_1542879595.1702064404535--

--===============7468056755095203926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7468056755095203926==--
