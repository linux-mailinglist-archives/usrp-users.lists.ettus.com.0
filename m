Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AAA46B21B
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 06:11:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E3CE3844D1
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 00:11:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="yPNf+DPi";
	dkim-atps=neutral
Received: from resqmta-po-09v.sys.comcast.net (resqmta-po-09v.sys.comcast.net [96.114.154.168])
	by mm2.emwd.com (Postfix) with ESMTPS id B9BD63844BC
	for <usrp-users@lists.ettus.com>; Tue,  7 Dec 2021 00:10:33 -0500 (EST)
Received: from resomta-po-06v.sys.comcast.net ([96.114.154.230])
	by resqmta-po-09v.sys.comcast.net with ESMTP
	id uSihmqJQmd9fnuSkKmhXhG; Tue, 07 Dec 2021 05:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1638853832;
	bh=c0FtCcVgH5e5JciunZ8PcKYHz5Kz6cYG+XNNFatk6qU=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=yPNf+DPiM5EgxxlVWCziOs1tPmNxjZy/sXfO6l5dStMQMyNJS83tz07oNqL8ywKOL
	 OJHsw3LdgY6u/JhUhFjtXv0zEoxoLfGWRzXvm8fBYYHeTNz0A7Px5uRmiHUr8IZ5hp
	 FYMmWL3ySZ8bXqHHI9g0ZeF2pBVPpJ+PgcudOhPQswi11Yi5y/OUQNFAtqHHwXHZxo
	 ccyk6gpqVEYXxHuSiDu7TDlYCRkcls3gQFMJjRx7W5df1dJTr7P2Zy/MtGbY2FZDdf
	 oWYe+3PhBg9yC9jDgRWBdaJittO2TA3XvcSshjCegzr1qjnMW9cM0o4FGxLA15gCVQ
	 bYrwNCi6ibqYQ==
Received: from [IPv6:2601:647:4700:284:3753:ebb3:bc4f:c514]
 ([IPv6:2601:647:4700:284:3753:ebb3:bc4f:c514])
	by resomta-po-06v.sys.comcast.net with ESMTPSA
	id uSkJm4SL9BX4cuSkKm1gGC; Tue, 07 Dec 2021 05:10:32 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <K8v41G78gIKh3zMZadGJ1xGBmSebKeSJLhRpyEUL0@lists.ettus.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <ba86a5c0-440c-12b7-40d6-36a90389f1dd@comcast.net>
Date: Mon, 6 Dec 2021 21:10:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <K8v41G78gIKh3zMZadGJ1xGBmSebKeSJLhRpyEUL0@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: DWNYOEE52V4KNUYWCBSG3675FXCZW6XO
X-Message-ID-Hash: DWNYOEE52V4KNUYWCBSG3675FXCZW6XO
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWNYOEE52V4KNUYWCBSG3675FXCZW6XO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4217987306841957299=="

This is a multi-part message in MIME format.
--===============4217987306841957299==
Content-Type: multipart/alternative;
 boundary="------------D42E35A79B1060959464B7E6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D42E35A79B1060959464B7E6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

It's the family name of the USB3.0 controller on the B210, the CYUSB3014.

https://www.cypress.com/documentation/datasheets/cyusb301x-cyusb201x-ez-u=
sb-fx3-superspeed-usb-controller

The program is in the directory:

<uhd_install_dir>/lib/uhd/utils

Which is the same directory as uhd_images_downloader.py.

Ron

On 12/6/21 8:54 PM, condicionjohnexekiel@gmail.com wrote:
>
> May i know what is =E2=80=9Cfx3=E2=80=9D?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------D42E35A79B1060959464B7E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>It's the family name of the USB3.0 controller on the B210, the
      CYUSB3014.</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.cypress.com=
/documentation/datasheets/cyusb301x-cyusb201x-ez-usb-fx3-superspeed-usb-c=
ontroller">https://www.cypress.com/documentation/datasheets/cyusb301x-cyu=
sb201x-ez-usb-fx3-superspeed-usb-controller</a></p>
    <p>The program is in the directory:</p>
    <p>&lt;uhd_install_dir&gt;/lib/uhd/utils</p>
    <p>Which is the same directory as uhd_images_downloader.py. <br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 12/6/21 8:54 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:condicionjohne=
xekiel@gmail.com">condicionjohnexekiel@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:K8v41G78gIKh3zMZadGJ1xGBmSebKeSJLhRpyEUL0@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>May i know what is =E2=80=9Cfx3=E2=80=9D?</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------D42E35A79B1060959464B7E6--

--===============4217987306841957299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4217987306841957299==--
