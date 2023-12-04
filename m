Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC0A803098
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 11:39:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5F2F384A75
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 05:39:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701686359; bh=gWTceO0v9FbkdocqkxNZkjS6YruF1hFDZT1OuZGCIPs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=U6tCRb6SiDX4cOu2gU7q/kWObiwuCHNXf91/m9+k1hk7lfL2fMJWCPa1G6GjRxsaD
	 h9vR22apZe81SA74UTkRuIVJcxxxvEZqdtqZD+G02k4ApnIOxUkN7DNu0ej+8/U1WN
	 fyFBXoqOz98JP2E03SHeM90TwTp70nDMxsr9IAGw4tluIwNyXZQuhn+zi7tM+XhNwH
	 NCYk3Yrgm0bc9XLYhm7oQL/rkjM4VDZrddQDNAoypThu1bYcrq+t9M9YZKzDFvkOGL
	 xzTOozjcBNCwEq4OBugKupYGR6HGcg7U6zT0d8AC/yO40VTXQ32QYy2AEZSTa0wzyZ
	 E4Gj3oAPv9GRg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37C6B384699
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 05:38:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701686335; bh=4ckcClauOzZiFNPjtX0IBf7qivBUJL5w7cyaSmupGBo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VNhLoYLyXU5494l5gRvcPiN70HbDt8FX5cQRUBkxQmH6xF7oXsid1y2UyifPnyZEj
	 9wK9dVdcbb3K+jE41CWPUCn3FMmKf/oZbGhR8FnCFvyAqXDM/ipbjh7mjmme7j+kt6
	 IU9KYLQY3a5KXVliAaCbMadlwPOujo4FnCtnzbdPSEA6YVMJk982QbV9s8sZzImgyL
	 V+WXWdo+AYHYJnyYpOCx/UeiAFG6e3nKn9P44XnvumDZHrqhHpqEmKPGmUSNDO2A6I
	 7HyoIZPGrdxKul+B4kjmI6ps3h0BHKasz/PuKuV8Tt9zeZI0oL7QJAuS26MGVN+UI0
	 yjb5fe7dghaXw==
Date: Mon, 4 Dec 2023 10:38:55 +0000
To: usrp-users@lists.ettus.com
From: enrico.petraglio@heig-vd.ch
Message-ID: <uaYam1ZqUi7RoFWGkDIrPqJgrH8lntEHw02dmCJqt4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=ipqeVtQR+v+Pq=8s-F49xuFU7kzfRJWc0ELbWXqdjWPw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4UYH72UURPWT2WNRQSFX5LONMRRR3I7F
X-Message-ID-Hash: 4UYH72UURPWT2WNRQSFX5LONMRRR3I7F
X-MailFrom: enrico.petraglio@heig-vd.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder error with uhd4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4UYH72UURPWT2WNRQSFX5LONMRRR3I7F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3628729507194951345=="

This is a multi-part message in MIME format.

--===============3628729507194951345==
Content-Type: multipart/alternative;
 boundary="b1_uaYam1ZqUi7RoFWGkDIrPqJgrH8lntEHw02dmCJqt4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uaYam1ZqUi7RoFWGkDIrPqJgrH8lntEHw02dmCJqt4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Wade,=20

Thanks to your remarks I=E2=80=99ve figured out that the tool was referri=
ng to the image_builde.py file in the wrong directory.=20

It appears that UHD4.6 installs its files in :

/usr/local/lib/python3.10/site-packages since the previous version I had =
installed the same files in /usr/local/lib/python3/dist-packages

I have updated my PYTHONPATH in order to fix the issue.

Thank you

Enrico

--b1_uaYam1ZqUi7RoFWGkDIrPqJgrH8lntEHw02dmCJqt4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Wade, </p><p>Thanks to your remarks I=E2=80=99ve figured out tha=
t the tool was referring to the image_builde.py file in the wrong directo=
ry. </p><p>It appears that UHD4.6 installs its files in :</p><p>/usr/loca=
l/lib/python3.10/site-packages since the previous version I had installed=
 the same files in /usr/local/lib/python3/dist-packages</p><p>I have upda=
ted my PYTHONPATH in order to fix the issue.</p><p><br></p><p>Thank you</=
p><p><br></p><p>Enrico</p>


--b1_uaYam1ZqUi7RoFWGkDIrPqJgrH8lntEHw02dmCJqt4--

--===============3628729507194951345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3628729507194951345==--
