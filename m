Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F6C9B4B3A
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 14:49:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E62D73865C6
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 09:49:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730209767; bh=ZwbsRNo6druHs2CbMssNRDJZQ/ZVftza04/UFj/AxcA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=aYtS3RQnpQCdqvt69d6VWxRCWwrdjWqpWD76v5iNSD8zNPcVAHKfNEu2LJzj1um6F
	 HrXQS95wlErX/4BL3Fq7SH7tfOEhEtlMpQo4iAscnMx2y6jrpVO5kHtCG6GeqZE2rv
	 3Xhnb8Uw7rMo9Jr3hR/6Nu4Ob19/2YK/I4QZetArtOlu/pLZTUDzMuUHl+1MPZMehZ
	 ncaWCadqEB7PkGpHHdgiBaxrAKxGnS/XlzSVrBe3FIHBeUpYu5eARO2eSj6l5gYhpS
	 DC+DS5zJsKFZnGRRZz+2GLFzk4BAH3v6oitqOCXZ6EdDfCuv0q6FEep5i3zQYYWbiQ
	 S3tBzV6R0jtAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D961438657D
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 09:49:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730209753; bh=zMraEiWOwtZM5D+yfojiZA4o0FHmg6dclscc8qbYtEA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BqgHwB73h4snQ6MWS+5zCv3dvRjutiyiaIIanrU0QWZTpKagJO4tPmV02XZDg/Bl+
	 hlpygpvYOnTIQP9v4+Ux3XcW05b97WLnyo7E0U3np/tp4vYq0acbFx7deoV+aDKk9H
	 Dk68/UNTcDJvKPJGzREk4iOZ2dUSQpS4STGAjGL1NtMwmbxUoop0UC1QHBZAQs5qrc
	 D2O587dw4UTX8pETvyb67WCIgf7Q2Ylhve5jockrphyudtkQ4cRw6G5Kh2gC5DY9KW
	 N3RDEwPNYker8Jhdf3BqxI9fYP5h08PN7YUG8Vba62L+JuXkYBLLmr4hJQMhXY7wh4
	 AeV8C/JMGeilw==
Date: Tue, 29 Oct 2024 13:49:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: V6OF6IVFBRJEAGDQLJPHQQNK6YB2UME7
X-Message-ID-Hash: V6OF6IVFBRJEAGDQLJPHQQNK6YB2UME7
X-MailFrom: rubenthill@ymail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V6OF6IVFBRJEAGDQLJPHQQNK6YB2UME7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: rubenthill--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rubenthill@ymail.com
Content-Type: multipart/mixed; boundary="===============1048875043070850236=="

This is a multi-part message in MIME format.

--===============1048875043070850236==
Content-Type: multipart/alternative;
 boundary="b1_rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Hui could you solve this Issue? I am trying sth very similar. Since=
 the hints you got from wade, more precisely the two examples you were po=
inted at are python and C++ my question is, can this be done using python=
 only? Say transmit num_x (say 500k-2mio samples)  and receive num_x + ma=
rgin at the same time. So that Tx and Rx are triggered exactly at the sam=
e time (regarding the precision the USRP can give)=E2=80=A6=20

Since I already have a lot of Signal processing already done in Python. O=
therwise I=E2=80=99ll have to figure go deeper into C++

--b1_rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Hui could you solve this Issue? I am trying sth very similar. Si=
nce the hints you got from wade, more precisely the two examples you were=
 pointed at are python and C++ my question is, can this be done using pyt=
hon only? Say transmit num_x (say 500k-2mio samples)  and receive num_x +=
 margin at the same time. So that Tx and Rx are triggered exactly at the =
same time (regarding the precision the USRP can give)=E2=80=A6 </p><p>Sin=
ce I already have a lot of Signal processing already done in Python. Othe=
rwise I=E2=80=99ll have to figure go deeper into C++</p>


--b1_rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4--

--===============1048875043070850236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1048875043070850236==--
