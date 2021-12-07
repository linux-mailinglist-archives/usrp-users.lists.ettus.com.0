Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4149746B1F9
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 05:42:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 308BE3845D9
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 23:42:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="KB89PYIW";
	dkim-atps=neutral
Received: from resqmta-a1p-077721.sys.comcast.net (resqmta-a1p-077721.sys.comcast.net [96.103.146.58])
	by mm2.emwd.com (Postfix) with ESMTPS id E7D133844D1
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 23:41:48 -0500 (EST)
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
	by resqmta-a1p-077721.sys.comcast.net with ESMTP
	id uSINm4Mvk5v0AuSIVm960p; Tue, 07 Dec 2021 04:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1638852107;
	bh=kf3kcYXFSkRKpFsejIScOt+HMrmPxTwGj8uB4NEUdAc=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=KB89PYIWTwzIz8Oficzq4kSzU17rNiRs/L1+vzsLhehrPgFHOQRAY5g27+HqaMxYI
	 /2KkRA2Rn+ROMCInr7AmxCYroqoCimCBVuwTOFd8DejYUutdrX38bW7SRT+JETkvu3
	 2yziUdA1n3RkHJZNB52RgWnNpDjjpraaemqnNFQd14lyt0vYZhc74TWSfsfuzQvmZz
	 K6h8ojmLTqTJvfFRS83Vml6x/tkXtTvOPi7QMCepyfgVGvkoqtWBZTK3ieu5Y4Cc4n
	 tdBUyNLKHPVPf+MdrK50csfVvu8+1vnHGzQ8y4tGUDAkWlgSQFc+Cfk7+2zd9DCXt6
	 K4T57+d2WZzJg==
Received: from [IPv6:2601:647:4700:284:3753:ebb3:bc4f:c514]
 ([IPv6:2601:647:4700:284:3753:ebb3:bc4f:c514])
	by resomta-po-04v.sys.comcast.net with ESMTPSA
	id uSIRm1iZAtbLYuSIVmZ3z7; Tue, 07 Dec 2021 04:41:47 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <8YiJxOznyxlU1uscRWn4tzthcrmsNFMANYxEt6y8oyI@lists.ettus.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <ac3387fd-f92d-6090-ed08-7f79386586de@comcast.net>
Date: Mon, 6 Dec 2021 20:41:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <8YiJxOznyxlU1uscRWn4tzthcrmsNFMANYxEt6y8oyI@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: LW47MH3H5PYM43LMTETPPO6QGVTYU3CQ
X-Message-ID-Hash: LW47MH3H5PYM43LMTETPPO6QGVTYU3CQ
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LW47MH3H5PYM43LMTETPPO6QGVTYU3CQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7424990927147520169=="

This is a multi-part message in MIME format.
--===============7424990927147520169==
Content-Type: multipart/alternative;
 boundary="------------9AA8C3FC339DEE79DFB16AC5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9AA8C3FC339DEE79DFB16AC5
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I've seen this error. I'm able to clear it by running:

b2xx_fx3_utils -D

This resets the B210 and the next run will download both the firmware 
and FPGA images.

Ron

On 12/6/21 7:18 PM, condicionjohnexekiel@gmail.com wrote:
>
> Both of the power (External and USB) were pulled off that time i 
> tried. It takes some amount of time before we get it back on, and 
> surprisingly it run.
> i experience this kind of error to all the B210 board i have.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------9AA8C3FC339DEE79DFB16AC5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>I've seen this error. I'm able to clear it by running:</p>
    <p>b2xx_fx3_utils -D</p>
    <p>This resets the B210 and the next run will download both the
      firmware and FPGA images.<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 12/6/21 7:18 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:condicionjohnexekiel@gmail.com">condicionjohnexekiel@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:8YiJxOznyxlU1uscRWn4tzthcrmsNFMANYxEt6y8oyI@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Both of the power (External and USB) were pulled off that time
        i tried. It takes some amount of time before we get it back on,
        and surprisingly it run.<br>
        i experience this kind of error to all the B210 board i have.</p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------9AA8C3FC339DEE79DFB16AC5--

--===============7424990927147520169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7424990927147520169==--
