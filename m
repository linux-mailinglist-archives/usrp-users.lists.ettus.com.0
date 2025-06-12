Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE84AD7B86
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 21:56:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF91E3863DE
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 15:56:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749758209; bh=nZuGnhXlLIWBQxV0rWPPfjgF8zWZOc2hKuuSUxr7hV0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e8b5vQj7o8JcLa2Ef2i7HePlUi+GgxxClrST3O2rHCFS0shvb+CoZ29v94Xay34Uo
	 e1qGcqpjZbQqjt3oCGzPrH22QVqEfjL8s6MxwQCDTIsZSvEB8od2E9n+5KrCJu22lS
	 YfuxeKL2fM90UhAMuYSiMaj7ERKGZAx784Ya+B4UBCun4bzfQ0Ms3TMUrOEoJ9YX6e
	 HF3DUO/hAwi9+QlZo1960On9WzAxBVrX68sIYnB5O130yyhsxSd01ItcGQfGKDLUdM
	 cDMKgFjxKeYTe0iIBwVmdUkW6V9o5EhHT0hknvQpqwwfAt7TUJN71h6Zspvd+Qc59z
	 15GS1r188crYw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3147384DF4
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 15:55:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749758140; bh=CohWX5f86G9NCe9DqFQ7UWBx0kjIZRZ3rcyp9ckg7kg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mM2rmKc6bF0n9HcJEb9nIcDR670sCJe6lUo1rlYqbUpyKZSvq56oejHwT89QTZKYw
	 XOZyI9M/BtnCWpRZlJhF5flFAKF9XEgRj4WH+pvoAI7VKtvjG9smPrUstMUqTjfrC2
	 SwHJmhVf6CIrLWwEGtOU5ItbRO4N38PPKAlijhxFtvNPFQn4GEeYleylely720Inqs
	 NPLyHP1spbLfEq1FjvqJO52iAl2HmJvjcqrXIilbzRRtTBrqFgetHyogLnSMOqy9b+
	 eKgDAPOM4Jq6J4armdit+xguyDE9rqkC8+aqFWcnj2uZJQKXp8QpRL+XarZaKPfEmn
	 6STuCznbVFB1w==
Date: Thu, 12 Jun 2025 19:55:40 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQzQFJFzyaVR6O=nymQEjLm_MbO5TP7Y=RANpAXxDAM7Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JY7TJR4ZKWTRUVNGZG4ROG6VYU6BCZZY
X-Message-ID-Hash: JY7TJR4ZKWTRUVNGZG4ROG6VYU6BCZZY
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 UBX Tx issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JY7TJR4ZKWTRUVNGZG4ROG6VYU6BCZZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5710795905462342279=="

This is a multi-part message in MIME format.

--===============5710795905462342279==
Content-Type: multipart/alternative;
 boundary="b1_QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you for your reply. Indeed, when I ran UHD probe on another X310 wi=
th the old WBX daughter card installed, the old radio daughter card model=
 reported WBX-120, not WBX-40 as I first thought. Your answer on another =
post explained it all. The max lo_offset depends on the RF bandwidth of t=
he radio card and the signal bandwidth. Is such information available on =
any Ettus Research Wiki website? I don=E2=80=99t recall I had seen such e=
xplanation on internet. Anyway, thank you so much for your explanation!

Tom

--b1_QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br></p><p>Hi Rob,</p><p>Thank you for your reply. Indeed, when I ran =
UHD probe on another X310 with the old WBX daughter card installed, the o=
ld radio daughter card model reported WBX-120, not WBX-40 as I first thou=
ght. Your answer on another post explained it all. The max lo_offset depe=
nds on the RF bandwidth of the radio card and the signal bandwidth. Is su=
ch information available on any Ettus Research Wiki website? I don=E2=80=99=
t recall I had seen such explanation on internet. Anyway, thank you so mu=
ch for your explanation!</p><p>Tom</p>


--b1_QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE--

--===============5710795905462342279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5710795905462342279==--
