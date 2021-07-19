Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 442553CCEB8
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 09:45:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54D963845D0
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 03:45:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="qomcGy7R";
	dkim-atps=neutral
Received: from resqmta-po-09v.sys.comcast.net (resqmta-po-09v.sys.comcast.net [96.114.154.168])
	by mm2.emwd.com (Postfix) with ESMTPS id 381DA383DBE
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 03:45:07 -0400 (EDT)
Received: from resomta-po-03v.sys.comcast.net ([96.114.154.227])
	by resqmta-po-09v.sys.comcast.net with ESMTP
	id 5NxamC62d6cSd5NxamVUGp; Mon, 19 Jul 2021 07:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1626680706;
	bh=GH1xeV8TDHAq7zMTXc20g5RfF2E9EoC+L155UxlaLwc=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=qomcGy7RqVHj0DwPdzxkmNbVo8y6mOExcX7TogVsq4iDkWhwaX8pikGcSypqk04si
	 uTKDhh19O1RYKg/oUXI/BasmqRApTCZsOlOEOhe8TLLpesYetWnDtZaHNiXkjXa14D
	 73t4G9ygejRmW6coIRdTel1Whu3Ic3v6ppGne3RCIqx9JotSE7WZbuS1q+uaDamyCX
	 Dc3sT4Z9cgJhkTuwt0GHX9TJ+25xQYoFWIaA5JbCLTYi8xH+2k9PSpsgUbPUKMBS7C
	 Dz7jSI+AD6B1p4J4YcCAzO7al3lj9iFHqCkSTQVR+FrCUTObEMENXCfSsiaj0z30AK
	 O5ElsWde7q3gQ==
Received: from [IPv6:2601:647:4700:284:1cfb:2923:dd8e:573d]
 ([IPv6:2601:647:4700:284:1cfb:2923:dd8e:573d])
	by resomta-po-03v.sys.comcast.net with ESMTPSA
	id 5NxGmT0WI6hGO5NxHmh246; Mon, 19 Jul 2021 07:44:55 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CABNzRJkKcuoxoUJ3HULOM5o6sLC4Nw2+xnz+LdNwEh3t_Fcs8g@mail.gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <d760ade1-ec3e-757e-91b0-1b93753b02cb@comcast.net>
Date: Mon, 19 Jul 2021 00:44:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CABNzRJkKcuoxoUJ3HULOM5o6sLC4Nw2+xnz+LdNwEh3t_Fcs8g@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 3WNCHNNC5FSMCAYLBN6QNXXMVOAS5BLY
X-Message-ID-Hash: 3WNCHNNC5FSMCAYLBN6QNXXMVOAS5BLY
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is UHD supposed to keep running after detecting overrun?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WNCHNNC5FSMCAYLBN6QNXXMVOAS5BLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5382924321577358302=="

This is a multi-part message in MIME format.
--===============5382924321577358302==
Content-Type: multipart/alternative;
 boundary="------------567D08B628F73A38AFF32C78"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------567D08B628F73A38AFF32C78
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

It is a bug in UHD v4.0.0.0, but it should be fixed in UHD v4.1.0.1 (and 
UHD v4.1.0.0).

Ron

On 7/18/21 9:37 PM, wan wrote:
> Hello,
>
> When UHD detects an overrun, is it supposed to keep going or freeze? 
> I'm using an USRP B200mini. I tested it with the rx_ascii_dft and the 
> uhd_fft GRC example using different versions of UHD on Ubuntu 20.04. 
> When using UHD 3.15.0, an overrun is detected, the application keeps 
> running and prints a sequence of "O" to the terminal. However, when I 
> use UHD 4.0.0.0 and 4.1.0.1, as soon as an overrun is detected, the 
> ascii or gnuradio QT displays stop updating.
>
> Regards,
>
> Wan
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------567D08B628F73A38AFF32C78
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>It is a bug in UHD v4.0.0.0, but it should be fixed in UHD
      v4.1.0.1 (and UHD v4.1.0.0).<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 7/18/21 9:37 PM, wan wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABNzRJkKcuoxoUJ3HULOM5o6sLC4Nw2+xnz+LdNwEh3t_Fcs8g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>
          <div>Hello,<br>
            <br>
          </div>
          When UHD detects an overrun, is it supposed to keep going or
          freeze? I'm using an USRP B200mini. I tested it with the
          rx_ascii_dft and the uhd_fft GRC example using different
          versions of UHD on Ubuntu 20.04. When using UHD 3.15.0, an
          overrun is detected, the application keeps running and prints
          a sequence of "O" to the terminal. However, when I use UHD
          4.0.0.0 and 4.1.0.1, as soon as an overrun is detected, the
          ascii or gnuradio QT displays stop updating.<br>
          <br>
        </div>
        <div>Regards,<br>
          <br>
        </div>
        <div>Wan<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------567D08B628F73A38AFF32C78--

--===============5382924321577358302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5382924321577358302==--
