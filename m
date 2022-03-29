Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 514EB4EAEE4
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 15:56:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E709380928
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 09:56:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648562214; bh=krjsj2SqoSYAZMlU8YjQ2cedcpirjUeo4L4v6ZDlmlw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rpoXZE2+gRsDaX1QA27BjVQCTs5Ijr7+t4pl3Q5e7xNMeQNVRwR1KoRV/s4hS+X2A
	 y650Q5r8NMHFTEVMS3XC5Lb4NkpLExQBttorw1dzR8kH3uOL/NYWE+Osrb8GkLgsTa
	 D/M7Q13/nDa1Zwie55RLfQW0rpAPMjmY/l4G5QQ4sfcO9CKYZXF8KlWHfHN7HeNmmi
	 FqQK8MzeJZ7OFlAS4DBPnJF3Oe7HdK12gj+8BrMgCmSgOgjvZfYY862T+hPnLDCJV2
	 zIdNz3SLRaZiEZp0DoUwM1JwCXrYnuyi1f+BgXe0Y8Y4fQ/VIk62EtJHSL9msU1gT9
	 VslDj+VzEPG7Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 446A938432F
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 09:55:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648562157; bh=fRoqvg1oxBE72k8D0XSTi4BkipIkT+zz9Eg9UXtUx4o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=o9XX80JLdh1y/1p0oRRb/4LKdpshM0a1tQPvRSgLLux+1IpXMTM+JGvT9hqpe76PW
	 PbuqQKDyPkZEwjrKUPj3SanrapDYNY8dus4mhtIZwnUU/ARJcDiPSkWVIl0/Gi+n5x
	 qv15ShCOg5ReA4+5HyiT0rSFF8y5n852FeP1YMAs4KMglbLH/Fv6/J+eVmftU4VpbQ
	 QmF9HSKiGYPZbJEyG4/ZTqh6qKWDx+YbUf+R/tNMbPaAB8Zk3kyc8Esrhi832s+C3h
	 j15hJaFDnn1BjrpqUMdIzd7vHlafjthUWI5NHoSrrwHANETmCy75hHvH6gLsTOvqVs
	 LfcatNPzmSfhg==
Date: Tue, 29 Mar 2022 13:55:57 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 24e50ec7-656d-b49c-36e3-a0b3dce4c04e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HZYODERX4EZM4K2ALAG55VX5K6AURW2O
X-Message-ID-Hash: HZYODERX4EZM4K2ALAG55VX5K6AURW2O
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZYODERX4EZM4K2ALAG55VX5K6AURW2O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7137225909591260462=="

This is a multi-part message in MIME format.

--===============7137225909591260462==
Content-Type: multipart/alternative;
 boundary="b1_MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m using a UBX-160 daughterboard. My application uses less than =
50 MHz of bandwidth at baseband.=20

In past experimentation I=E2=80=99ve done, changing the RF gain takes on =
the order of 1 ms, and I need to adjust for different beam angles an orde=
r of magnitude faster than that.

--b1_MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m using a UBX-160 daughterboard. My application uses less th=
an 50 MHz of bandwidth at baseband. </p><p>In past experimentation I=E2=80=
=99ve done, changing the RF gain takes on the order of 1 ms, and I need t=
o adjust for different beam angles an order of magnitude faster than that=
.</p>


--b1_MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk--

--===============7137225909591260462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7137225909591260462==--
