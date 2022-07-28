Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5F4584003
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:32:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2AF1380785
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 09:32:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659015163; bh=2QRS1GBbADHA+mEswMGT9B6E0XOxnWtUTCnKdt3EJ5c=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=YlyzgvnTgKZ6+iCt68bIdYjXXkmBsfQnAiXbLQeQULemwTJlC5+mJcwe328x+Sn6T
	 PEJ+ESPfbBTo5l9mioe0cLyCJz5hu1UJ7n/0oTUWgIM6Hkt2GTipruKK9m3bE9EGvA
	 dymYxhfYvdm/MDnLO1PWBc16jZUcsQYGixFw0zNEmde/lfbF4sxIfph9lrkOUx7Nx+
	 mfUCUyB16S5Bjs8DxJ4mlnhzgqEAP57MAiFP2aJP/OxxgrvALj7Q9zIosGMHHTueVb
	 qGRHFZszlrA37czwFVsGb5iRmHcQhN5OX+zKJg6Vp2w4XL+s3E83z8HWefCvwlALtY
	 XDJhdzE5d0Gug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23504380ECE
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 08:25:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659011113; bh=Bb+nMQymRyz8nuqdi6kslyC8zeggcpYfbffHfVGLuKQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cTjUdwXmVONPdbs5cI0/DbIes6Oa5j2wbrtTqI1hYsRtLvYxwwivsBdSVGT7idwlc
	 q2dA1Z1rVUTsTqyBqxtg2GLreIToPDD1ErwkbDKoPmkWmnYEA2dzF5MpkMIXQpwRtI
	 m4g1xRWiAZmfN4J+CyydAS2lL/V31ZdgLE/wSip1co6yGha9fsgiSclveyObHTOMdL
	 A/ghrBvRZCMSG0vpvajTvu7WldvBL3i6ry2B1GKE7c5FieB1CH6d6FZae0B8ovoOQx
	 2gMnl7/2nvVeW0mzcqiL56rTMyY7S8gz62mPbm8PJV5m5fVayMgpQ6Wg+2zBJpXi7C
	 0ERYaWI9px8dQ==
Date: Thu, 28 Jul 2022 12:25:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: KFBSQ2C7FVZVY7IJS5TSYNVNOJVPZF6C
X-Message-ID-Hash: KFBSQ2C7FVZVY7IJS5TSYNVNOJVPZF6C
X-MailFrom: kevin.macknight@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: meta-ettus build errors out (undefined reference to 'stime')
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KFBSQ2C7FVZVY7IJS5TSYNVNOJVPZF6C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "kevin.macknight--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: kevin.macknight@baesystems.com
Content-Type: multipart/mixed; boundary="===============7316958998691906040=="

This is a multi-part message in MIME format.

--===============7316958998691906040==
Content-Type: multipart/alternative;
 boundary="b1_HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I continue to fail in building the meta-ettus embedded image. Very straig=
htforward build process, ***has anyone successfully built meta-ettus?***

---

I have Ubuntu 20.04 setup on VirtualBox and cloned the [KAS](https://gith=
ub.com/siemens/kas "KAS") tool and [META-ETTUS](https://github.com/EttusR=
esearch/meta-ettus/tree/uhd-4.2/zeus "META-ETTUS") branch =E2=80=9Cuhd-4.=
2/zeus=E2=80=9D

Issued the command =E2=80=9C./contrib/kas_build_imgs_package.sh x4xx v4.2=
=E2=80=9D and get this error:

* \*/meta-ettus/build/tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0/qe=
mu-4.1.0/linux-user/syscall.c:7657: undefined reference to \`stime'

* Here is the patch [https://stackoverflow.com/questions/61367173/core-im=
age-minimal-fails](https://stackoverflow.com/questions/61367173/core-imag=
e-minimal-fails "https://stackoverflow.com/questions/61367173/core-image-=
minimal-fails")

--b1_HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I continue to fail in building the meta-ettus embedded image. Very strai=
ghtforward build process, <em><strong>has anyone successfully built meta-et=
tus?</strong></em></p><div contenteditable=3D"false" class=3D""><hr></div><=
p>I have Ubuntu 20.04 setup on VirtualBox and cloned the <a href=3D"https:/=
/github.com/siemens/kas" title=3D"KAS">KAS</a> tool and <a href=3D"https://=
github.com/EttusResearch/meta-ettus/tree/uhd-4.2/zeus" title=3D"META-ETTUS"=
>META-ETTUS</a> branch =E2=80=9Cuhd-4.2/zeus=E2=80=9D</p><p>Issued the comm=
and =E2=80=9C./contrib/kas_build_imgs_package.sh x4xx v4.2=E2=80=9D and get=
 this error:</p><ul><li><p>*/meta-ettus/build/tmp-glibc/work/x86_64-linux/q=
emu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657: undefined referen=
ce to `stime'</p></li><li><p>Here is the patch <a href=3D"https://stackover=
flow.com/questions/61367173/core-image-minimal-fails" title=3D"https://stac=
koverflow.com/questions/61367173/core-image-minimal-fails">https://stackove=
rflow.com/questions/61367173/core-image-minimal-fails</a></p></li></ul>

--b1_HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk--

--===============7316958998691906040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7316958998691906040==--
