Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0419B1A893
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 19:21:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40F123862D6
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 13:21:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754328101; bh=dKCm1Pk6Zxhm7RspUPoq5ZyCwkqb7zO/DpZ627l45Rk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ru2FhGRk/IZ7dcCb4shamv/Knw4lukGUUuhXZjgJ1B8N5EL9sEkGvi03gX8AcqywA
	 jSFdOf0gztMIKfkDOiV56hxZmwwWCuvspcJkCr50X9owiNurgcjN3UKvILJFKeSjou
	 6mRTu1ad+N/u27knrWud+DBwLHqjwgcsJV+KhnjgdOXiV+rWCVhh2L2Kx/8Q3pQPaf
	 eS3Gdb/ISKndjsasKEpCWwA7Ax5a00g55uYGA0YxAImMPm3RJlDgv48NtX0SNu8KWl
	 E8GVwAL35Z1pF39hxGJcnUc9vtjbNYrLE+19EnNgrbIWOwWNq6Xm7kWuQDIxrRGr6q
	 nMMUGcTZ5Gxsw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 026E6386257
	for <usrp-users@lists.ettus.com>; Mon,  4 Aug 2025 13:20:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754328050; bh=NHAcOEtOrAnSWsLRjcwy/dRJX8nE4TVUzjJqf/BTDWc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RWNS72EUEpjgdRMHUvcTg7G4DEE/BFUQLn4H1EjQZxIeZwTY0+bHSY+31PuVOAiAR
	 7tXWwpzogM8o4k8Tm03T5vyin/iZWM7i0TL/AVcuVf9fUSOsJKHYyyf48yCy2N4Zu1
	 MtosXqifMhEM57EjkDeQWB4JQg3tqhhQS1Tli6aQVaccUV1VyliOdMzhuZBPPpLZnO
	 dh2PQDfIBCi3/8lGr2FxCirCJE8IoAnyQgy+zea0aTKvCg3H/IsLo2iWy9sT+zAzJl
	 F9+ngbp4xg7rzcTmpkcUTBI5sSqNF+NNg2KiqinzILdqiK1q0pSle+QxVjrgtfObA/
	 eEYiE2WWK8LRw==
Date: Mon, 4 Aug 2025 17:20:50 +0000
To: usrp-users@lists.ettus.com
From: gechb21@gmail.com
Message-ID: <esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTg+V11HrAx4=zHe+0QhxnsS3H_=P6ZJbjiMH7CFuww1A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AMRORT6V4WNFNLBBN442IBAU753AV4UA
X-Message-ID-Hash: AMRORT6V4WNFNLBBN442IBAU753AV4UA
X-MailFrom: gechb21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Subject=3A_Inquiry_Regarding_Maximum_FPGA_Buffer_Capacity_for_Transmission_on_USRP_X310_=C2=A0?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMRORT6V4WNFNLBBN442IBAU753AV4UA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3915170544520368284=="

This is a multi-part message in MIME format.

--===============3915170544520368284==
Content-Type: multipart/alternative;
 boundary="b1_esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks for the detailed explanation. I=E2=80=99m currently using a single=
 channel with a sample rate of 20=E2=80=AFMS/s. The UHD version is: Linux=
; GNU C++ version 13.3.0; Boost_108300; UHD_4.7.0.HEAD-0-ga5ed1872.

Thanks!

--b1_esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Thanks for the detailed explanation. I=E2=80=99m current=
ly using a single channel with a sample rate of 20=E2=80=AFMS/s. The UHD =
version is: Linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.7.0.HEAD-0=
-ga5ed1872.</p><p>Thanks!</p>


--b1_esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40--

--===============3915170544520368284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3915170544520368284==--
