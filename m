Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFF8669C27
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 16:29:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E619138437E
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 10:29:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673623745; bh=eMs0fg7/LVOC2vcC68qoH5Q/i+TTCTXuxs6ABzzq0UI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=i592K8n8fJnQaBha6WZ9qVgzmHGhMCGJ7G4vKvwcQoYZ6oEVwA+UPjlUR1QsMFnN5
	 sg75Oj+4udqVlqcOmmsc4h8oEyVlwWlDHOnZti9EAP1c6IWtsHsZw5oLbwMpd1KCDe
	 RZPmNvAoC1kdlbiB5nrVPgJBJo5TbKtmW6EsJde090YWMVkC5g2FdXkmbGxy+YyFTu
	 RHIltvzOPcLV3rd7bJesj6wLUx7fEBaWvaYY4YB+sBPmE5YBzWBWoTW5S3J3Ty2X3E
	 6xhpnYUiJYDeoJPX7wfGQbqk3wLONCHrvJEdyzgmg5Hj1vVAQYSIG56vhwT9qTApCr
	 3vETNwbUoepLA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BEF3384280
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 10:28:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673623689; bh=21AvxovtreaHtoKVYNMlwyXO8D/39nUNNzt6PmGCDHQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CEOp74bBWAR6fhr/0MB/QE/gd9Qotf4pOImckbHNQEzEGtVV40t00I955AqMYq601
	 ywzZcIORQ5vWQjx9GbwoDbWk75PdBfLexvxvvtEv/YghGEFx5S//TKQ/r8cX86vVqX
	 L6a5ahCtGX3D5wmT/EmzJ06sE6Xkl85zuYN7RsJCg91qedLA7vVHBwUCTeGCUdn07X
	 CP9JoxwIsHNUGaSoAK7l/LFM6CM5rVZaR0BydartA91lKMfEvkFusgovjcat5fOPBy
	 V2EfBIbF1RBF0lImv4B/gMJR4i4w6WsvUm5xYM9pzo8bnirFhhBRBO7I0CwRvr1YuH
	 RXo6Aoc+OLq8Q==
Date: Fri, 13 Jan 2023 15:28:09 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8e2047c4-25cf-ead3-1f3c-e02c26e03764@gmail.com
MIME-Version: 1.0
Message-ID-Hash: MQF6YOS7P2TBBYPXMKHR7W4XDZM22TA6
X-Message-ID-Hash: MQF6YOS7P2TBBYPXMKHR7W4XDZM22TA6
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQF6YOS7P2TBBYPXMKHR7W4XDZM22TA6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5650205853753917535=="

This is a multi-part message in MIME format.

--===============5650205853753917535==
Content-Type: multipart/alternative;
 boundary="b1_lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for the reference. We are building from the images listed in my=
 original email. We have UHD4.1.0.4 Up and running, and the sd card image=
 working in the device.

We are setting up the cross compiler which is retrieved using the images =
downloader from the installed UHD.

The images listed above have a gnuradio 3.8 install, which some patches (=
that we don=E2=80=99t know how to apply). We are going to attempt a Gnura=
dio 3.10 (gr-rfnoc) install using the UHD4.1.0.4 installed in the VM. I b=
elieve we do not need to cross compile gnuradio, as we only use that on t=
he host side.

Eventually, we need to create an RFNOC block that performs specialized fu=
nctions required by out client. (We are currently using the stock 3.15.0.=
0 LTS stock blocks).

mcg

--b1_lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you for the reference. We are building from the images listed in=
 my original email. We have UHD4.1.0.4 Up and running, and the sd card im=
age working in the device.</p><p>We are setting up the cross compiler whi=
ch is retrieved using the images downloader from the installed UHD.</p><p=
><br></p><p>The images listed above have a gnuradio 3.8 install, which so=
me patches (that we don=E2=80=99t know how to apply). We are going to att=
empt a Gnuradio 3.10 (gr-rfnoc) install using the UHD4.1.0.4 installed in=
 the VM. I believe we do not need to cross compile gnuradio, as we only u=
se that on the host side.</p><p>Eventually, we need to create an RFNOC bl=
ock that performs specialized functions required by out client. (We are c=
urrently using the stock 3.15.0.0 LTS stock blocks).</p><p>mcg</p>


--b1_lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps--

--===============5650205853753917535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5650205853753917535==--
