Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E5BA6B963
	for <lists+usrp-users@lfdr.de>; Fri, 21 Mar 2025 12:02:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C38E8385D6A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Mar 2025 07:02:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742554922; bh=6JISbqcAFjMp6tFHimoBqJX8ZuIG4KnO/YmlTOte0/E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vV9Vt8EQQxnpII0YFld7I+3+gPQZ3peMNy8mARfcK3O12pu/hJAO+MDt5KwFKr9oJ
	 YgKQuTotAaOlOyIX7ZgrewDGZHRgrVFRaTtOWETPR2BZFQKk/g12OguAuF+nx+O6NJ
	 RX0Azn1HbwL74R0W1M91AumuUZ59qRnVX5JVYw+aIJNUHQar0QSoRjK61AYcn0r8dN
	 gnlC4Gtre6Ipd8aa6gIoXZ0Roc3YIyNfYknC8ipW7n0K+mrTtXPD7TaResAnFLb6HZ
	 7XWF6zbXd2HZ6qCI/wMFUClWS8f3iwD82FDNKbely/4pnLj50mkenxy/7mTkcvpEbL
	 esjSv9XH/VAMA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5170D385C2B
	for <usrp-users@lists.ettus.com>; Fri, 21 Mar 2025 07:00:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742554858; bh=OPPXyETusiC1ClMcQ0R66pqmtv5vyr49N/ECXnLAThw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Cxh5Wktl8mMia8mqGNWLtr9nD/30h1NXpljTUXZWbMK+Ymw2XVBaR+XTHtzdhnIRf
	 0E7+7rBKGn+bjQVgtHI9bydVKHhCOI41bhC1hL8wa0/diyahgk3fbm1Re2RoUnt+8t
	 mF4JvrB/o8C/67epY/KQlwpSMc0aGQIyMh2U6PtJNawkMIn5iEUSAjtZig0546U06X
	 ytlG+HnJ59XzGg7Thkr5EZnn+nPAKc9XIJ/7/2ZNMrew+hr2plnTqWerMKmB9+boNk
	 JVeFjqG7xl5LpKpFgc7C6JmdUUAHxhQkMB0TUBhnIHVJhrhwAAbiBkRA78e33IvSqG
	 H9L+NgEOo9fKQ==
Date: Fri, 21 Mar 2025 11:00:58 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7V6KifEi5kOsrFGO2zOZt2ROinWh3gEcSOOEEdPnZ4Ug@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZDJSVVYBXBLEFPDBIK3F2WCP5BLRVUEX
X-Message-ID-Hash: ZDJSVVYBXBLEFPDBIK3F2WCP5BLRVUEX
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDJSVVYBXBLEFPDBIK3F2WCP5BLRVUEX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5090255581796185738=="

This is a multi-part message in MIME format.

--===============5090255581796185738==
Content-Type: multipart/alternative;
 boundary="b1_mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin

I am still trying to investigate this issue, recreating it is difficult a=
s it can take long time.=20

However, on a system that crashed I observed a thread =E2=80=9Cuhd_ctrl_e=
p0001=E2=80=9D specifically its CPU utilisation (I have isolated this to =
use a single CPU and not share it). Normally it is below \~20%, (when fir=
st starting our application is is < 10%) once there is a failure (as per =
the discussion here), this thread has a higher utilisation (not 100%), ar=
ound 30-40%. When kill our process, and restart, the CPU utilisation is s=
till high from the start.   The only way to recover is to power off the U=
SRP-2974 and on again.

Kind regards

Marino

--b1_mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin</p><p>I am still trying to investigate this issue, recreatin=
g it is difficult as it can take long time. </p><p>However, on a system t=
hat crashed I observed a thread =E2=80=9Cuhd_ctrl_ep0001=E2=80=9D specifi=
cally its CPU utilisation (I have isolated this to use a single CPU and n=
ot share it). Normally it is below ~20%, (when first starting our applica=
tion is is &lt; 10%) once there is a failure (as per the discussion here)=
, this thread has a higher utilisation (not 100%), around 30-40%. When ki=
ll our process, and restart, the CPU utilisation is still high from the s=
tart.   The only way to recover is to power off the USRP-2974 and on agai=
n.</p><p>Kind regards</p><p>Marino</p>


--b1_mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4--

--===============5090255581796185738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5090255581796185738==--
