Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA295B0741
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 16:43:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36D76385ECF
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 10:43:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561819; bh=eJ0oHzZ7sLWyhb9uRd7UzkDh3kcE3EZXmfQcSGwh4l4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kK7ZYHJ21GcliUX4wodX55yvyf0eP6QsXaSJwO69pfVEuyNWiCDF/d17r5ljO+CZb
	 qbVQKL4tSD9otItqeOhsOMZpW/gbs3T4cTEq7bMPa/33oEaFh2VEy4H6ivorPktYE+
	 dkPdXeH/VuRtQUBywoZ3MSC6FM8WMz0LfxzTsTlDvHIZ87acefhdwJXtXjjkbMTV79
	 7oM/jX6X8bBOy1uZilTHqXAuvsGrvEKI3bhKak4ja3RpeA7oV7v9H01U/e956D9pSQ
	 PeriiGOoAQJhGoqVD+S4ieEwCzWarfM7OEoXqI/2bCrxi+ylXIFf9ADlLYPdffM/7S
	 XWhgN9akjh9sQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A19B83844F5
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 10:15:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662560158; bh=H4PvXz8aVhBBiJXMnLSDxXa9lsIi6LpRVv1FewEoQpg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=dU0qclSzhWXjQV+BEWAV3SKpG5vQ1+M04+raKLgW5e41FjomWI9qayY/juRxeOblq
	 S6xFJrjrkUqQIbj5K0hZ1JJ1810wk7B2XsUJC/xmXVdG/WC9WLnHOa7T6WbVCO4XTK
	 boOFIpqzGMnICbNlFE84Vuh/DqDrmxSCi+1z65avmM+YxRbGMHyl4HY3lYI2xOg3EN
	 pyML8sW3SH4+zylYNpmg2go+3h9VeGrwncffY9ulL8KqOfQFJvszeZvB0rXpOEfum2
	 pQN89E8BOWSrg7VQeFk447oLzEBGifNCL6lJyXvy/s/xIEdX4sSfjGTtY017T1Hl+C
	 RsXoQOU0ZxHSw==
Date: Wed, 7 Sep 2022 14:15:58 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BVo0xAhLYGgNrbZr2i8yotEU67B41GKGMLl2G9rHo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: DAB66DSHMUF4UIJ5VRASAFBB7NG5RGK4
X-Message-ID-Hash: DAB66DSHMUF4UIJ5VRASAFBB7NG5RGK4
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DAB66DSHMUF4UIJ5VRASAFBB7NG5RGK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4843489366167505907=="

This is a multi-part message in MIME format.

--===============4843489366167505907==
Content-Type: multipart/alternative;
 boundary="b1_5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> Hi,
>
> I can only confirm that I see the same result: 24MHz is working, starti=
ng from about 24.5MHz there=E2=80=99s a lot of underruns.
>
> My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X399=
.

=E2=80=A6 and the system is Ubuntu 20.04 with UHD 4.2.0.1.

--b1_5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>Hi,</p><p>I can only confirm tha=
t I see the same result: 24MHz is working, starting from about 24.5MHz th=
ere=E2=80=99s a lot of underruns.</p><p>My CPU: AMD Ryzen Threadripper 29=
90WX, 128GB RAM, motherboard Asus X399.</p></blockquote><p>=E2=80=A6 and =
the system is Ubuntu 20.04 with UHD 4.2.0.1.</p>


--b1_5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8--

--===============4843489366167505907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4843489366167505907==--
