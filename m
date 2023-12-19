Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1281860C
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 12:07:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96BD1384DB7
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 06:07:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702984046; bh=KoGO3t00bJpUpmpp61Qehqxqx89IthxdvuwclEd5t/c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dh725QQ3JoDY5EuZb04p0WhWxe+skGf+D9A2rZ2GxqMWnuiVtc0tYONAh9H/US1BJ
	 rgDjeWiLc83JIiRGcxpUt4ErTAA9ojG4LBmxzInqKzdLrOfJjbjctAIZXyGUfBrVS6
	 blhrRfSBMcFKzjeUnXQOBvIbfKQtPxYivevg76AmDrt+4ZRJjHQyDe0Q/R+13Vgwf+
	 NnGFBre8iti/XrYo4LgUmtlMUipIongqdBBv/DoxAwRPomCSEjzJR2oY+BvD1uRA9+
	 yUffQ9AAAQ1lhfnkwkOz/kKk4FDgwHVrULqrXhL8ZuKClzYwFJxCnxeKVRolxHiB92
	 eCeGWLjD2TYyw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6446380DF0
	for <usrp-users@lists.ettus.com>; Tue, 19 Dec 2023 06:06:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702984014; bh=aQ5SUyr1/oM2mRtscHa8VhgpW0Njs0+Jh7HnCK8giX4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JTlWMyubLWgCc0iAzUdki2AFYiwt+Hn+MgUPwb1iJCvJpd7CXqu1vvCTNlhu5SU7b
	 UEU1nv+LFQvE+vs0W+6VcUt5lnnwXIYHxE9srB4MvQez8/zW2QUPxNGOAgrD7JtKFm
	 NuB4GtosythTt2CKNEvayS2pm7xR6dPKjukh6mSvwKpZTUfigUtLTLAmY11qT515+f
	 6eJ04i9WfQzYg5GRornxMp696YvyzIs7dZy+9pkTkaUKBVKZuaDqppKl1m8JglGQqh
	 Rwmiu3fs0WojUETOjfUy4TEAPvGKMyFPmHVQVc7Pt09V02VNuQgkwhPpuiV68a6Ctp
	 uLkbaVvqV9DAQ==
Date: Tue, 19 Dec 2023 11:06:54 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTTB5Ew-3BW9u=-3c-gLxJmy6ZRDG9CsdpjLXxFs2JdOg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JEINJK7V3I67FZSEJPTVTUSUJDYPW6XP
X-Message-ID-Hash: JEINJK7V3I67FZSEJPTVTUSUJDYPW6XP
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JEINJK7V3I67FZSEJPTVTUSUJDYPW6XP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6159933261358221695=="

This is a multi-part message in MIME format.

--===============6159933261358221695==
Content-Type: multipart/alternative;
 boundary="b1_f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Rob,=20

You are right, when I try to run this command =E2=80=9Crfnoc_image_builde=
r -y ./e310_rfnoc_image_core.yml=E2=80=9D, **it fails**. **I also tried t=
o use your given YML file**, it was not successful because of the differe=
nt UHD version. The only command which worked for me is =E2=80=9Crfnoc_im=
age_builder -y ./e310_rfnoc_image_core.yml -t E310_SG3 --fpga-dir \~/uhd/=
fpga/=E2=80=9D.=20

Moreover I noticed that the bit file from the build folder is the actual =
file which I have to use. But I get error which I discussed earlier.

--b1_f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Rob, </p><p>You are right, when I try to run this command =E2=80=9C=
rfnoc_image_builder -y ./e310_rfnoc_image_core.yml=E2=80=9D, <strong>it f=
ails</strong>. <strong>I also tried to use your given YML file</strong>, =
it was not successful because of the different UHD version. The only comm=
and which worked for me is =E2=80=9Crfnoc_image_builder -y ./e310_rfnoc_i=
mage_core.yml -t E310_SG3 --fpga-dir ~/uhd/fpga/=E2=80=9D. </p><p>Moreove=
r I noticed that the bit file from the build folder is the actual file wh=
ich I have to use. But I get error which I discussed earlier.</p>


--b1_f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4--

--===============6159933261358221695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6159933261358221695==--
