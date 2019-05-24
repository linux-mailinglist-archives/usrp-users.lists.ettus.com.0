Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8358229935
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2019 15:46:39 +0200 (CEST)
Received: from [::1] (port=55876 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hUAWq-0004vZ-Hx; Fri, 24 May 2019 09:46:36 -0400
Received: from mxout4.rambler.ru ([81.19.78.115]:28352)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <andrew4010@rambler.ru>)
 id 1hUAWI-0004nd-AB
 for usrp-users@lists.ettus.com; Fri, 24 May 2019 09:46:32 -0400
Received: from saddam3.rambler.ru (saddam3.rambler.ru [10.32.16.3])
 by mxout4.rambler.ru (Postfix) with ESMTP id 43DF6140250
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 16:45:20 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
 t=1558705520; bh=/HHAi1xaavwKRMuhwzSu9vaXHDgD9WPUg5r9o0L5fOg=;
 h=From:To:Reply-To:Subject:Date;
 b=l/nnoyV5TWBv3e3iKGvovG4iLeoU9Uk1ZLTVkedi8cuXbMIY+VWKKW57UnRzTbKZh
 U0CFyR/zFQnjdfSkKYBCTQvlGqQkf5vuOiwdL7F+MQqWwxHzMRbYj52HhYslUbWa7z
 wcfSduPKt107xH5GfyKw7ZjHNwYpYOht04tJLApk=
Received: from localhost.localdomain (localhost [127.0.0.1])
 by saddam3.rambler.ru (Postfix) with ESMTP id 2604CC3930A
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 16:45:20 +0300 (MSK)
Received: from [79.171.124.155] by mail.rambler.ru with HTTP;
 Fri, 24 May 2019 16:45:20 +0300
To: "Usrp Users" <usrp-users@lists.ettus.com>
Date: Fri, 24 May 2019 16:45:20 +0300
Message-Id: <1558705520.107201.10964.51254@mail.rambler.ru>
MIME-Version: 1.0
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: andrew4010@rambler.ru/79.171.124.155
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] TwinRX min frequency
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?0JDQvdC00YDQtdC5IDEgdmlhIFVTUlAtdXNlcnM=?=
 <usrp-users@lists.ettus.com>
Reply-To: =?koi8-r?B?4c7E0sXKIDE=?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============6547669746947359113=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


This is a multi-part message in MIME format.

--===============6547669746947359113==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_15587055201096431"


This is a multi-part message in MIME format.

--_----------=_15587055201096431
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

this is my tuning code
tune_request.target_freq =3D Frequency*MHzToHz;tune_request.rf_freq_policy =
=3D
UHD_TUNE_REQUEST_POLICY_AUTO;
tune_request.dsp_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO;

if frequency is less 50 MHz signal in spectrum is out (banwidth 1 MHz)

.

--_----------=_15587055201096431
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<div><div>this is my tuning code</div><div><br data-mce-bogus=3D"1"></div><=
div>tune_request.target_freq =3D Frequency*MHzToHz;</div><div>tune_request.=
rf_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO;<br> tune_request.dsp_freq_=
policy =3D UHD_TUNE_REQUEST_POLICY_AUTO;<br> </div><div><br data-mce-bogus=
=3D"1"></div><div>if frequency is less 50 MHz signal in spectrum is out (ba=
nwidth 1 MHz)</div></div><div><br></div><div><br></div><div>.</div><div><br=
></div>=

--_----------=_15587055201096431--


--===============6547669746947359113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6547669746947359113==--

