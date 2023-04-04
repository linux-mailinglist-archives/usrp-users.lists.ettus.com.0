Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 175936D58D5
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 08:39:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F67F384809
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 02:39:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680590356; bh=KXxjpz0qMSVazDrRkGVrxNbhkDxBC+U80fNEWllDQ04=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UZssGYwWu820uBjSGFdTFATW5dfiwxv716WFhpdIBbGdHqj/MtojLHrhIvWNds4Jg
	 7N79U2I3tOU74DnhUR/Nf5D9XtZmRvlJSyajCIzRkmWin9qUdyFFkaSH8tUFZt5s+e
	 XiU3ipDteQZUdthHl/6WcU/nItrAm7fMpPh4hdZuULP1132sUTLSrSKdBr8sjO2h0Q
	 /0tpitZds0+M4EULYExrA1kFLCqKAyHeJ3G9u0yGgYc/pq58AAKhBohXzq4NjJcK7M
	 +SXi6ZbOaag3nth7TjqJta4ECioMIS0fOe0Mpi8Vdo1y5rnJHK0oASr2IE5hTeQm1k
	 l6UNd4G5jU2vg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA597384809
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 02:39:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680590350; bh=ILdnD1dBNWj6u5bmXCksDJnBtKrDqMJlCS/+EjV7lMw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=i2/JwkW+qmRbPTGZtumtefiRcrZhbhWpsDWNYMubQUg2RGh/n2dP+mqzAkYj9BjNY
	 Ad4PH7mRITk3qCVJ/om6EF97cyrWgbhrYb5zvs14REU5C0YYza9P0bRbVMbYAV2xle
	 bytbFyb+TX7eew34Bkc5qgj54pypDgzY1jBufaM/g3P1HT6yxKv+v5uUWC0Y5BAYWb
	 H5S9gj/Dp/T7QnE4uerZ8ApGGMVebRfFz0s5diGhv3H+w3EwdjPrM0vcPoy3dO3wAp
	 rDgQy8qU15bz7Cye98EoSuLe7598A6sFqdiINcuOA9zYf8hWp/8qyc6GOdwN2gJ5Aw
	 a+kRHFIWV59mA==
Date: Tue, 4 Apr 2023 06:39:10 +0000
To: usrp-users@lists.ettus.com
From: christian.steffes@fkie.fraunhofer.de
Message-ID: <JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: DU2PR07MB806169B8D468901B4659A43B84859@DU2PR07MB8061.eurprd07.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: PT4P2KDHPHLJP7DTUVC7B4SF33NYUFRG
X-Message-ID-Hash: PT4P2KDHPHLJP7DTUVC7B4SF33NYUFRG
X-MailFrom: christian.steffes@fkie.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rx_samples_to_file doesn't maintain the phase offset in different data acquisitions for X300 with 2 TwinRx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PT4P2KDHPHLJP7DTUVC7B4SF33NYUFRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6079931198398230443=="

This is a multi-part message in MIME format.

--===============6079931198398230443==
Content-Type: multipart/alternative;
 boundary="b1_JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA
Content-Type: text/plain; charset=us-ascii

I have already tried to reply yesterday, maybe I did something wrong.

However, we are facing the same problems. We already openend an issue on [https://github.com/EttusResearch/uhd/issues/670](https://github.com/EttusResearch/uhd/issues/670 "https://github.com/EttusResearch/uhd/issues/670") with a small python example to reproduce the phase offset. We believe the LO sharing is activated correctly. We are facing the same problems with our C++ code using several UHD 4.x versions, but it works with the same code in 3.14. 

Are the offsets you are observing also multiples of 90 degrees (taking an inital offset into account)?

Can you reproduce the problem with the python example we posted on the link mentioned above?

Best regards,

Christian

--b1_JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA
Content-Type: text/html; charset=us-ascii

<p>I have already tried to reply yesterday, maybe I did something wrong.</p><p>However, we are facing the same problems. We already openend an issue on <a href="https://github.com/EttusResearch/uhd/issues/670" title="https://github.com/EttusResearch/uhd/issues/670">https://github.com/EttusResearch/uhd/issues/670</a> with a small python example to reproduce the phase offset. We believe the LO sharing is activated correctly. We are facing the same problems with our C++ code using several UHD 4.x versions, but it works with the same code in 3.14. </p><p>Are the offsets you are observing also multiples of 90 degrees (taking an inital offset into account)?</p><p>Can you reproduce the problem with the python example we posted on the link mentioned above?</p><p>Best regards,</p><p>Christian</p>


--b1_JmDGmOpUTKNkxEg7qyXGzKvMiVHpqGiBXJw6sRCA--

--===============6079931198398230443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6079931198398230443==--
