Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A583ED20D
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 12:35:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8159D384319
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 06:35:02 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79BA4383E52
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 06:34:15 -0400 (EDT)
Date: Mon, 16 Aug 2021 10:34:15 +0000
To: usrp-users@lists.ettus.com
From: maximilian.engelhardt@tu-ilmenau.de
Message-ID: <Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: KNEFWCCDG5LMD664NHMPDNCGXHWOC34G
X-Message-ID-Hash: KNEFWCCDG5LMD664NHMPDNCGXHWOC34G
X-MailFrom: maximilian.engelhardt@tu-ilmenau.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Rx Input Damage Limit for TwinRX/UBX independent of gain setting?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KNEFWCCDG5LMD664NHMPDNCGXHWOC34G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6009189429816584297=="

This is a multi-part message in MIME format.

--===============6009189429816584297==
Content-Type: multipart/alternative;
 boundary="b1_Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello=C2=A0everyone,\
\
I have a question regarding the Rx input damage threshold: Is the value g=
iven in the datasheet acceptable in every possible receiver configuration=
 or does it only apply when the Rx gain is set to the lowest possible val=
ue?\
\
I am using two types of daughterboards here: The UBX and the TwinRX. In t=
he planned application, strong in-band and out-of-band interferers have t=
o be expected and I want to ensure that they cannot cause any damage to t=
he daughterboards, even when they are set to high Rx gain values.\
\
I found two related questions on this mailing list, but their answers do =
not explicitly state whether the damage limit applies to all gain setting=
s:\
<https://lists.ettus.com/empathy/thread/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST>=
 \
<https://lists.ettus.com/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ>=
 \
\
Thanks\
Max

--b1_Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello&nbsp;everyone,<br><br>I have a question regarding the Rx input dam=
age threshold: Is the value given in the datasheet acceptable in every poss=
ible receiver configuration or does it only apply when the Rx gain is set t=
o the lowest possible value?<br><br>I am using two types of daughterboards =
here: The UBX and the TwinRX. In the planned application, strong in-band an=
d out-of-band interferers have to be expected and I want to ensure that the=
y cannot cause any damage to the daughterboards, even when they are set to =
high Rx gain values.<br><br>I found two related questions on this mailing l=
ist, but their answers do not explicitly state whether the damage limit app=
lies to all gain settings:<br><a href=3D"https://lists.ettus.com/empathy/th=
read/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST">https://lists.ettus.com/empathy/thre=
ad/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST</a> <br><a href=3D"https://lists.ettus.=
com/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ">https://lists.ettus.co=
m/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ</a> <br><br>Thanks<br>Max=
<br><br></p>

--b1_Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414--

--===============6009189429816584297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6009189429816584297==--
