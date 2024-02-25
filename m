Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1257862A0A
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 11:59:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DBC0384ED0
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 05:59:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708858746; bh=arUzv4cqCqumYtPKCsYQeEKIaAic4diIriD59tle4Y8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RX1IIxfAGalOWu8VmCavdmyeZ02PjKVinpsRzkoCnZgpkfFiOmZ8L5AlrTvu26F38
	 M/KMs2Zv/DFGuCy+HKCtNaoCa7UaCnvzpGWriUa2uYwnbblYrshWRvhFkoAVDiydwy
	 CFPY5576LatFCPVisbzuDvZmTdWme/qKVipnDdYbCDVfWRiAfnTb32omPhnDrNsl1G
	 CAvz81IWDzHBUo1niCIqSlFEPZxU/vPlTVX8SAOtry1Ah63FDg1yTe4FgtRwlfZdF/
	 z8Lucaihmcd0FFlRbyBfzFCXxA5CFfairS7kJyR8iRgDf/7XEyjxFPfQ3rZBfdRsA3
	 gzq+oGzidzEtg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 740AF384D6E
	for <usrp-users@lists.ettus.com>; Sun, 25 Feb 2024 05:58:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708858738; bh=FWEWRb+/E1Y9PKdc2lUOcU8pJsPEbyphRI8Gs5gFv5k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=OkcWQGKCnBIV/wwJaK20mwhDaQSxk0k8aB3JvyDGCPW34H6WLAMrluZJOggL6k5H4
	 79QRwuROcFQ0nFBnzmkkJf3HkVMPR2upHx7MwfOxvLi2ufqx5NEvL0WLktHvnoKn2N
	 t/tXKJWVR5cxG4fE+qjMrFvoaHOAO7km8FYHnmQ7KE+Kssy1zhxYW1IQcQBE7xYHBW
	 DgAQgJ8VDyTGEtY93/re5CzJVrADZXIRQGa2LbjjHlZsKeHRS2Io13Aw/Kx7J0KJWA
	 PHaBo9aPBP8GYaXwBMH1pF3O9xpinY/sHvG7A/NqWkPFI/hxnyNL5oDvm7nZtES1tk
	 kgJD/sPoBJ8Bg==
Date: Sun, 25 Feb 2024 10:58:58 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <lr1rKppdD6vLYQ5ffR16nGVVii2hs3PH2HHAcsHcjX8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 594483410.184130.1708807813286@mail.yahoo.com
MIME-Version: 1.0
Message-ID-Hash: KLGC75J7XR5XXX7LNIKYIUJK4HK34ZIZ
X-Message-ID-Hash: KLGC75J7XR5XXX7LNIKYIUJK4HK34ZIZ
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building rfnoc image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLGC75J7XR5XXX7LNIKYIUJK4HK34ZIZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4981055056785126999=="

This is a multi-part message in MIME format.

--===============4981055056785126999==
Content-Type: multipart/alternative;
 boundary="b1_lr1rKppdD6vLYQ5ffR16nGVVii2hs3PH2HHAcsHcjX8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lr1rKppdD6vLYQ5ffR16nGVVii2hs3PH2HHAcsHcjX8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi naseri,

could you provide an elaborate explanation, the steps you have taken up t=
o that point? the tool may require a directory to be executed from, or it=
 could be a version mismatch. i recommend you to follow the rfnoc [worksh=
op](https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf "thi=
s") 2. check out [this](https://github.com/EttusResearch/uhd/tree/master/=
host/examples/rfnoc-example "rfnoc example"), you will see that they use =
an xci file while generating the gain block using vivado tools. if you ar=
e using the rfnoc example as a template, in your project, make sure that =
on there is not a relative path on your vivado ip descriptive xci file=E2=
=80=99s before generating ips for your project

--b1_lr1rKppdD6vLYQ5ffR16nGVVii2hs3PH2HHAcsHcjX8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi naseri,</p><p>could you provide an elaborate explanation, the steps=
 you have taken up to that point? the tool may require a directory to be =
executed from, or it could be a version mismatch. i recommend you to foll=
ow the rfnoc <a href=3D"https://www.gnuradio.org/grcon/grcon20/grcon20_RF=
NoC_4_Part2.pdf" title=3D"this">workshop</a> 2. check out <a href=3D"http=
s://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-example"=
 title=3D"rfnoc example">this</a>, you will see that they use an xci file=
 while generating the gain block using vivado tools. if you are using the=
 rfnoc example as a template, in your project, make sure that on there is=
 not a relative path on your vivado ip descriptive xci file=E2=80=99s bef=
ore generating ips for your project</p>


--b1_lr1rKppdD6vLYQ5ffR16nGVVii2hs3PH2HHAcsHcjX8--

--===============4981055056785126999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4981055056785126999==--
