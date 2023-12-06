Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1604D807594
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:45:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DA21385369
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:45:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701881153; bh=Db0odiC0nl7BQixep554UcBVHbZDzhxbFe5XZP0UOCY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jwZ/6lsZ5tenqX/6EP759ZfcX0CiRKydr66hmt+RDDu1/T4yhO1opx34rGHDJPj/i
	 kvnMNybgnMmpjfSwk1Xj+XisoSmhTQ6K6RdY81V7z2Aw02ltZMp/VXvT4tmtJ4tqD8
	 uLyae2S3rpy8uu8vN9Oaaz6nTHlBNf99E1eqZRfaJGdJzj3EaUJ3mzX/s0r6aIsy0F
	 8gxvIHlZt6S/QR35DZHT3nF8EYsLjeKxkJTEFD3vJbRO2G1FfzEJBp01aFj8yDyfhF
	 rBDrrhgDqdaQpiFUHhwMzqxTd7Ee4Ndm4wXx1Sg41Ig3Biw/ajRjcKzi7g/DVFSNdV
	 Q/IXCoGqaVfcQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AF36385412
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:45:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701881127; bh=JSH8fO8NvX0P5ig6VhdBkBhEzvWPrsdYQuId1SGZciI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FWfqJT/VHNq0YqNu63enIN5MMq6CZfAKs3ldLKPSEupQ4pl5TnRxF3HnAIBBB8bUQ
	 a5bd0e1hLS1b9qmFC1sZKC1cbZ1eF4lYJWiIlWshptvSXt2SD/cISFW90ta0I1xubz
	 qSjwKqcS7zJVs4okcMylyz85ByIZj3YT9pNigOWvQlEU0m8y23AVKmnJjGEN+TX8OT
	 afL+zi/4VqLYIpeamgaGUS5yKRhQSWcIEsMo9kwBVYqgMmxhVauLzBixgSgn0kbWLJ
	 qy2ZPo9xMidNyjTrc9uLxOQ4IIcWpiH74HX+atzUExhiE0Vr7RfJelfFAAyhz2IpY6
	 t+jq2CEAEeMpA==
Date: Wed, 6 Dec 2023 16:45:27 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOcHjoL3wDeoVGmssRvuwHNMfxqyR_YhrOSRyTKtuAwJSEx37g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YBK3UW5NMWRM3XK3DU2SY6FOUXUBT6I3
X-Message-ID-Hash: YBK3UW5NMWRM3XK3DU2SY6FOUXUBT6I3
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBK3UW5NMWRM3XK3DU2SY6FOUXUBT6I3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4213080016298656015=="

This is a multi-part message in MIME format.

--===============4213080016298656015==
Content-Type: multipart/alternative;
 boundary="b1_zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi I am getting the same error when i am trying to run =E2=80=9Crfnoc_ima=
ge_builder=E2=80=9D command. could you please tell me how to resolve this=
 issue. as i am new researcher in this feild

--b1_zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi I am getting the same error when i am trying to run =E2=80=9Crfnoc_=
image_builder=E2=80=9D command. could you please tell me how to resolve t=
his issue. as i am new researcher in this feild</p><p><br></p>


--b1_zrPWw73rpT1X0JL5sLdG5GPQcrMePRmd3eYfY2S3e8--

--===============4213080016298656015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4213080016298656015==--
