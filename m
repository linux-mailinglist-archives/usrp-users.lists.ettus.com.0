Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A26DB0DF
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 18:48:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD3EB384970
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 12:48:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680886138; bh=ID3BalAwDNOYRZUdLXgduZwlDXmXoRC228gH68xPTN0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eW9MQY6iGisSAVjOsZnAf7emRebRNc8pAUry4JyxMAnqwX+gVCxcNlvd+CODPcwmM
	 TpwgwQb/4esTlOlgSESKgmYofFxjidDhrrtkjlRxENQhuXwMLnokGi7CjOpyWgi5ur
	 kM2uiNoSnjU5+3nHQ7XzJmVjSXRZV6zH9bUXWwgKmL7cXrxBLv1U67maOdlYUTmbi1
	 /I98jJ/mCEBnnpuwptAcJ9XPUpMAMt0xlOwhpCM0WP+gQ+myVt7uViJXngGLZ7LPn/
	 qOB2V3VV3iHihC2oEJqa0KKb5OEU0MRT7oAJIMJfjvX6VDtIT8dVtOETew32JwVeB0
	 uPDyRma/Avgqg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72C54384BB4
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 12:48:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680886133; bh=D4xf8K713wTyIlcYnOUiJU8n5e/cqX+tQ+JQyu7Vwv4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=f/lZzT3FY9OMCXgQv7WO0Op/6INClYmGgAgTfjAZk4q/P/GG0gyavVLdF7ElgpVdS
	 FeD1f6DoZzGwVtOMVUHDyssdENMhRMTiVgL1rFlxsQ9adibBzArs2/YbNMnCXZ1y5j
	 Z/eHkf3vsIRf3ZmUwtl4TWsDI1HppQUWNGrJeVl5wuReI7IGCaUOIqHoVwjTbE2C7C
	 mXNkLyXetKBLCwYslg0pjHA/V768oXTknz2RUr9RUD3Or5hgDIEpRKIvXkWY0kAXhP
	 lCn8ufP9c8RXtcdYTfuUIl3FDK5GQG+QEiDmv8/PshTZT6tW89qd25q3zdkCD7UYjG
	 Njo+FSWARsC3w==
Date: Fri, 7 Apr 2023 16:48:53 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YVRNLYACYJGX4IAMTMXDLC3AAM4NNIYP
X-Message-ID-Hash: YVRNLYACYJGX4IAMTMXDLC3AAM4NNIYP
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YVRNLYACYJGX4IAMTMXDLC3AAM4NNIYP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6751502150396924693=="

This is a multi-part message in MIME format.

--===============6751502150396924693==
Content-Type: multipart/alternative;
 boundary="b1_FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

If you succeed to run X410 together with Intel QSFP+ or QSFP28 card pleas=
e let everyone know.\
I couldn=E2=80=99t find information if anybody did that.

Wade Fife pointed out that someone tried with QSFP28 network adapter from=
 Intel but had problems:\
https://lists.ettus.com/empathy/thread/IA2YCIJTQOEPNJOPF3AJUXC3I6ONRCJR

Best Regards,\
Piotr Krysik

--b1_FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>If you succeed to run X410 together with Intel QSFP+ or Q=
SFP28 card please let everyone know.<br>I couldn=E2=80=99t find informati=
on if anybody did that.</p><p>Wade Fife pointed out that someone tried wi=
th QSFP28 network adapter from Intel but had problems:<br>https://lists.e=
ttus.com/empathy/thread/IA2YCIJTQOEPNJOPF3AJUXC3I6ONRCJR</p><p>Best Regar=
ds,<br>Piotr Krysik</p>


--b1_FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4--

--===============6751502150396924693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6751502150396924693==--
